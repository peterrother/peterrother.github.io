---
layout: blank
title: dirtcheapcss 👨🏼‍💻
permalink: /dirtcheapcss/
exclude_header: true
css_override: dirtcheap.css
navexclude: true
---

I needed something to quickly stylize a simple HTML page
into a readable document that looked mostly good on all
devices. It weighs in at 375b and that's without any code
minification. And this is what it looks like:

```css
html {
  color-scheme: light dark;
  color: #333;
  font: 300 2.2ch/1.5 ui-sans-serif, sans-serif;
  max-width: 70ch;
  padding: 1ch;
  margin: auto;
}
h2,h3,h4,h5,h6 {
  margin-top: 3ch;
}
code,pre {
  font: 1.4ch ui-monospace, fixed;
  opacity: 0.7;
  overflow-x: auto;
}
img {
  max-width: 100%;
}
@media (prefers-color-scheme: dark) {
  html,a:link {
    color: #ddd;
  }
  a:visited {
    color: #999;
  }
}
```

This is clearly not meant for every solution, but in a pinch
it can turn an ugly blog or documentation into a decent
thing to look at.

## Design Requirements ✅

There are only a few key requirements for this style that I
wanted, though this may evolve depending on the HTML components
that I continue to utilize down the road.

### Font 🖌

This might be more of a personal preference, but I really
wanted to leverage the
[San Francisco](https://developer.apple.com/fonts/)
font native to Apple devices. To do this, I am using the
`ui-sans-serif` keyword for the font-family, which
should mean Windows/Linux could benefit from this as well.

### Headers 📰

Font size and margins need to clearly separate content
into digestable blocks. I added a margin-top to each of the
headers except `h1` since that will always be
the main site header. The extra spacing helps keep the core
content associated with its parent header.

### Lists 📝

1. Unordered and ordered lists need to look nice
2. That's pretty easy actually
3. No fiddling with anything really

### Dark Mode 🌒

I like to keep my desktop on auto-light/dark mode. By setting
a simple media query, the font color can be handled according to
whichever mode is currently active.

### Code 🤖

While syntax highlighting would be a major plus, for now I am
okay with simply using a nice monospace font with an opacity
setting to set it apart from the rest of the words on the page.
I'm using the `ui-monospace` font, which on the Mac is
SF Mono.
[Highlight.js](https://github.com/highlightjs/highlight.js)
could be used as an add-on if the document is very code-heavy.

### Images 🌄

The only issue with images in a reduced-width layout such as this
is that `img` tags will stretch beyond the main content.
To address this, a simple `max-width: 100%` will scale
images to width of this container.

#### Example

![Sample Image](/assets/img/sample.jpg)

## Future Considerations 🚀

* Tables
* Blockquotes
* Footnotes

## Suggestions? 🗳

They are most welcome. Please log an issue over at
[Github.com](https://github.com/peterrother/dirtcheapcss/issues)
or drop me a line on
[Micro.blog](https://micro.blog/peterrother). If you
have used this somewhere, I'd be curious to see your implementation,
though there are no license or legal obligations to do so.

## Credits 👋🏼

I was inspired when I came upon Leon Bambrick's
([@secretGeek](https://github.com/secretGeek))
[truly naked, brutalist html quine](https://secretgeek.github.io/html_wysiwyg/html.html).
I was intrigued towards the bottom
of the page when he describes a minimal styling, which was ultimately
adapted from _58 bytes of css to look great nearly everywhere_ (Link now dead)
by [@joshuarli](https://github.com/joshuarli).
