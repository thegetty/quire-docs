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

In a Quire publication, anything that could be considered data, is written in a plain-text data format called [YAML](http://yaml.org/).

- YAML is used for configuring how Quire works and for providing metadata about your publication in files with the extension `.yml` (both topics covered in [Publication Configuration & Metadata](../guide/metadata)).

- `.yml` files are also used for storing information about figures, bibliographic references, and art objects.

- In individual pages or chapters within the publication, written in Markdown and with a `.md` extension, there is a YAML block that contains the page metadata. For example the YAML block for the page you’re on right now is:

```
---
title: Cheatsheet
type: page
---
```

### YAML syntax basics

In pages with the extension `.md`, YAML block entries can be in any order. It doesn't matter if you write:

```
---
title: Cheatsheet
type: page
---
```
Or:

```
---
type: page
title: Cheatsheet
---
```

You’ll also notice that YAML values don’t necessarily need to be in quotes. `title: My Chapter`, without *My Chapter* in quotes, works just fine. However, certain formatting and characters (like colons within the text, or lines leading off with asterisks meant to italicize some of the text) can cause issues. In these cases, double quotes can minimize build issues: `title: "My Chapter"`.

```yaml
item: "If the text here has a colon : or other special characters it should be surrounded in double quotes"
```
[note/tip] Anything at all can go within double-quotes, except for other double-quotes. If you need double-quotes, use “curly quotes”, use a backslash to escape the double quote `\"` or Hugo will also process two single straight quotes '' as a double when building the pages.

Dashes represent individual items in a list. In the example below, there are two contributors, each with a first and last name. Note too, indentations matter in YAML.

```yaml
item:
other_item:
multiple_items:
  - item_name:
    item_description:
  - item_name:
    item_description:
```

YAML can include multiple, markdown-style paragraphs by using a pipe character, dropping down a line, and indenting one level. This can be used in areas like captions, descriptions, and abstracts.

```yaml
item: |
  Using a pipe character, and then dropping down a line and indenting like this allows you to include multiple paragraphs, just as you would in Markdown.

  Not all Quire YAML attributes expect Markdown though, so check the docs.

  - Markdown style lists
  - and other formatting are
  - also allowed
```

[note/tip] It’s always a good idea to copy and paste your YAML blocks into a validator like [YAML Lint](http://www.yamllint.com/) or [Code Beautify validator](https://codebeautify.org/yaml-validator) to make sure there aren’t any hidden errors. You don’t need to use the re-formatted YAML validators like this will sometimes give back to you, you just need to make sure it’s correctly formatted.


## Shortcodes

```
{{< q-figure id="##" >}}

{{< q-figure-group id="##, ##, ##" >}}

{{< q-cite "Lastname YYYY">}}

{{< q-bibliography >}}

{{< q-contributors range="xxxx" type="xxxx" >}}

```
