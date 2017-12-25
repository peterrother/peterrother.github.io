#!/bin/bash

FOLDER="./_posts"
EDITOR="Sublime Text 2"

function prompt() {
	osascript <<EOT
		tell app "System Events"
			text returned of (display dialog "$1" default answer "$2" buttons {"OK"} default button 1 with title "$(basename $0)")
		end tell
EOT
}

_VALUE="$(prompt 'Enter post title' '')"
_FILENAME="$(date +%F)"

if [ -n $_VALUE ]
then
	_NEWPOST=0
	_MICROPOSTS=($(find $FOLDER -iname "*.md" | grep -a micropost-))

	for _POST in ${_MICROPOSTS[@]}
	do
		_POSTNUM=$(echo $_POST | cut -d'-' -f5 | cut -d'.' -f1)
		if [ $_POSTNUM -gt $_NEWPOST ]
		then
			_NEWPOST=$_POSTNUM
		fi
	done

	_NEWPOST=$(expr $_NEWPOST + 1)
	_FILENAME="$_FILENAME-micropost-$_NEWPOST.md"
else
	_FILENAME="$_FILENAME-$(echo $_VALUE | sed 's/ /-/g' | tr '[:upper:]' '[:lower:]').md"
fi

echo "---
layout: post
title: \"$_VALUE\"
date: $(date +%F) $(date +%H):$(date +%M):$(date +%S) $(date +%z)
---
" > "$FOLDER/$_FILENAME"

open -a "$EDITOR" "$FOLDER/$_FILENAME"