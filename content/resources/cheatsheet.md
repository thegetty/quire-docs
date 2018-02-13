---
title: Cheatsheet
type: page
---

## Markdown

Paragraphs are made by adding two hard returns. When working in a text editor, depending on your configuration and the source of your text, lines might have hard breaks, or might all flow together. This is seen in the example below where the first paragraph has hard breaks and the second does not. In Markdwon, these will both render as single paragraphs with no hard breaks. The only way to add a hard break in markdown is wit the HTML break (`<br />`) element.

```
Lorem ipsum dolor sit amet, consectetur
adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud
exercitation ullamco laboris nisi ut
aliquip ex ea commodo consequat.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
```

Other typical Markdown formatting is listed below. Note that the spacing after the `#`, `>`, `-` and list numerals is necessary.


```md
# Heading 1
## Heading 2
### Heading 3
#### Heading 4

*Italic Text*
**Bold Text**

> Blockquote

[Link Text](http://www.linkadress.com)

- dashes make
- a list with
- bullets
  - indenting
  - makes
  - sub-lists

1. numbers make
2. a list with
3. numbers
```

## YAML

```yaml
title:
subtitle:
multiple_items:
  - item_name:
    item_description:
  - item_name:
    item_description:
```

