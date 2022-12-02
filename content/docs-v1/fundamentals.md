---
title: "YAML & Markdown"
weight: 6140
type: essay
abstract: "Understand the basics of working in plain-text format"
aliases:
  - /documentation/fundamentals/
---

Content is stored in two different plain-text formats in Quire: YAML (*yam-ul*) for data, and Markdown for more narrative or textual content. Markdown is used in standalone `.md` files in the `content` directory of every Quire project. YAML is found in the `.yaml` files in the `content/_data` directory, in the configuration files, and at the top of every Markdown file.

## YAML Basics

YAML is designed to be a plain-text way of capturing data. The general principal is to have the name of a data item (a key), followed by a colon, a space, and then the data item’s value. A key-value pair.

```yaml
title: My Project
```

Each line in YAML is a new item. Dashes represent individual items in a list. In the example below, there are two contributors, each with a first and last name.

```yaml
title:
order:
layout:
contributor:
  - first_name:
    last_name:
  - first_name:
    last_name:
```

Note that indentations matter in YAML. If any of the items above were indented even just one space more or less from where they are, the YAML would not be formatted correctly, and the Quire preview and output functions would not work. YAML items and list items should always line up with one another.

{{< q-class "box warning" >}}
- Improperly formatted YAML can temporarily break Quire functionality. Copy and paste your YAML blocks into a validator like the [Code Beautify YAML validator](https://codebeautify.org/yaml-validator) to make sure there aren’t any hidden errors.
{{< /q-class >}}

YAML can include multiple, markdown-style paragraphs by using a pipe character, dropping down a line, and indenting one level. This can be used in areas like captions, descriptions, and abstracts.

```txt
item: |
  Using a pipe character, and then dropping down a line
  and indenting like this allows you to include multiple
  paragraphs, just as you would in Markdown.

  Not all Quire YAML attributes expect Markdown though,
  so check the docs.

  - Markdown style lists
  - and other formatting are
  - also allowed
```

YAML block entries can be in any order. It doesn't matter if you write:

```yaml
---
title: Cheatsheet
layout: page
---
```
Or:

```yaml
---
layout: page
title: Cheatsheet
---
```

YAML values should always be surrounded by straight quotes (" ") to ensure Quire reads the data correctly, otherwise, certain formatting and characters (like colons or asterisks) can cause issues.

```yaml
description: "*My Chapter* is about colons :)"
```

Sometimes a caption or a chapter title will also include the use of quotations. However, two sets of straight quotes will result in an error. To avoid this, surround the caption text with straight quotes, and then use curly quotes within. To achieve this, Mac users can highlight the phrase that needs curly quotes and press `Option-[`. PC users can copy and paste the opening and closing quotes from [https://unicode-table.com/en/sets/quotation-marks/](https://unicode-table.com/en/sets/quotation-marks/).

```yaml
title: "“Ah ha!” Curly Quotes for the Win"
```

{{< q-class "box tip" >}}

- **Our Top 3 YAML Tips:**
    1. Use quotes around item values
    2. Watch horizontal spacing to make sure things line up
    3. Check your YAML with a validator

{{< /q-class >}}

## Markdown Basics

Markdown is designed to be a simple, plain-text markup language that uses a few text rules to structure content for easy conversion into HTML. Writing in Markdown should be thought of as giving your content structure, not style. You use Markdown to indicate what’s a heading, what’s a list, etcetera. Quire’s themes and stylesheets then control what those headings, lists, and other elements *look* like, from device to device and format to format.

Special characters like en- and em-dashes, and diacritics work fine in Markdown and in Quire publications. Any {{< q-def "Unicode" >}} character is allowed. The only limitation, for less common characters, is whether the font you’re using includes it. When a font does not include a specific character, most browsers will substitute one from a different font.

The following sections detail the most commonly used Markdown tags.

### Paragraphs

Individual paragraphs are created with double line breaks.

```md
This is the first paragraph.

This is the second.
```

This is the first paragraph.

This is the second.

### Headings

Headings are created with hashmarks. The number of hashmarks corresponds to the level of the heading you want.

```md
### Heading 3
#### Heading 4
##### Heading 5
```

### Heading 3
#### Heading 4
##### Heading 5

Start your content headings with Heading 2 tags rather than Heading 1. Heading 1 should be reserved for the page title and will be automatically generated in Quire. And, for truly accessible documents, headings should be thought of as levels of your content outline, not as sizes large to small. See our [*Accessibility Principals*](/docs-v1/accessibility-principles/) for more on this.

### Italic and Bold

Italics and bold are created with asterisks.

```md
*Italic Text*
**Bold Text**
```
*Italic Text*

**Bold Text**

### Blockquotes

Blockquotes (indented blocks of text) are created with the right caret, or greater-than sign.

```md
> Blockquote
```

> Blockquote

### Links

Links are created with text in brackets followed immediately by a url in parentheses.

```md
[Link Text](http://www.linkadress.com)
```

[Link Text](http://www.linkadress.com)

### Lists

Dashes and numbers create lists. Indenting creates nested lists.

```md
- dashes
- make
  - a list
  - with
  - bullets
```

- dashes
- make
  - a list
  - with
  - bullets

```md
1. numbers make
2. a list with
3. numbers
```

1. numbers make
2. a list with
3. numbers

### Footnotes

Precede footnote numbers with an up-arrow accent (`^`) and then surround it in square brackets. Footnote number one would be `[^1]`, number two would be `[^2]`, and so on.

At the end of the page, usually under a “Notes” heading, add the corresponding note with the same marker followed by a colon and the note text.

```md
## Notes

[^1]: The footnote itself is the same thing as the footnote
number reference in the text, but with a colon followed by
the footnote text
```

Footnotes can also include Markdown formatting, including lists and even multiple paragraphs. For these, indent the content inwards two levels and put a line space in between the paragraphs just as you would elsewhere.

```md
## Notes

[^2]:
    Footnotes with multiple paragraphs

    Are indented in twice, and have line breaks between.

    - Markdown lists
    - work like this in footnotes
    - as well
```

{{< q-class "box warning" >}}

- The built-in {{< q-def "Markdown processor" >}} will automatically renumber footnotes in the order they appear in the text. It will also always put the footnotes at the very end of your content, no matter where you may try to put them.

{{< /q-class >}}

## Markdown Output configuration

Quire's comes with some Markdown configuration options, which are located in the `_plugins/markdown/defaults.js`. This file currently controls the appearance of things like breaks, HTML tags, quotes, and more.

## Markdown Special Cases

### Markdown and HTML

You can also use HTML tags in a Markdown file. This can be convenient for adding HTML elements that Markdown doesn’t support, or for applying special styling. For instance, by wrapping text with a `<span>` tag with a class in order to add custom styling. (See more about this in the [*Styles Customization*](/docs-v1/styles-customization/) chapter of this guide.) Note, however, that you can do the same by wrapping multiple paragraphs of Markdown in `<div>`, `<section>` or other block-level tags.

{{< q-class "box tip" >}}
- For the things Markdown can’t do, Quire includes number of useful {{< q-def "shortcodes" >}}. You’ll read more about them in other chapters of this guide. A complete list is available in the [shortcode reference section](/docs-v1/for-developers/#shortcodes-api).

{{< / q-class >}}


### Fractions, Superscripts, and Subscripts

The fractions 1&#47;4, 1&#47;2, and 3&#47;4, will be automatically converted into proper, Unicode fractions (1/4, 1/2, 3/4). Other Unicode fractions can also be used in Markdown directly, though note that not all fonts support the eighths in which case, browsers will render them with a default font. The fractions are: ¼, ½, ¾, ⅛, ⅜, ⅝, ⅞. Any others would need to be written using superscript and subscript formatting.

While some Markdown processors support superscript and subscript formatting with ^ and ~ characters, the one built into Quire does not. You’ll need to use the HTML `<sup>` and `<sub>` tags in your Markdown. For example:

- `19 × 24<sup>3</sup>⁄<sub>16</sub> inches` = 19 × 24<sup>3</sup>⁄<sub>16</sub> inches
- `20<sup>th</sup> Century Sculpture` = 20<sup>th</sup> Century Sculpture
- `Chrome yellow (PbCrO<sub>4</sub>)` = Chrome yellow (PbCrO<sub>4</sub>)

### Markdown Gotchas

1. The built in Markdown processor will incorrectly create links even if there is a space between the bracketed text and the parentheses. For instance, a footnote reference number `[^1]` followed by a space and any text in parentheses, will incorrectly format as a link: `[^1] (Some aside text here)`. To avoid this, you can use the HTML entity reference, `&#40;`, for the first parentheses, or a backslash escape character before the first parentheses.

    ``` md
    [^1] &#40;Some aside text here)
    [^1] \(Some aside text here)
    ```

2. &#40;c&#41; will automatically render as ©.

## Markdown Resources

This guide doesn’t cover all existing Markdown tags, but there are some good sources that will help you find the right syntax to format your text. For example, the Programming Historian provides an [introductory lesson to Markdown](https://programminghistorian.org/lessons/getting-started-with-markdown), and John Gruber, the creator of Markdown, provides a comprehensive explanation of the basics and syntax on his personal site [Daring Fireball](https://daringfireball.net/projects/markdown/).

## Microsoft Word to Markdown Conversion

Commonly, project content will start from Microsoft Word documents rather than being written originally in Markdown. In these cases, a simple file conversion can be done.

There are some easy things you can do in the Word document prior to conversion to ensure the best possible results:

- We recommend not inserting any images and media into the Word document before conversion.
- Headings should be formatted [by applying Word styles](https://support.microsoft.com/en-us/office/apply-styles-f8b96097-4d25-4fac-8200-6139c8093109) instead of by manually changing font formats.
- Don’t use any font color or color highlighting, it will not convert to Markdown.
- Save as .docx rather than .doc

While there are a number of free tools, we recommend using {{< q-def "Pandoc" >}}. Before starting conversion you must first install Pandoc. For Mac users, download the macOS installer, double-click it and follow the prompts to install: [https://pandoc.org/installing.html](https://pandoc.org/installing.html). For PCs users, download the Pandoc MSI installer file, open it and a setup wizard screen will guide you through the process: [https://pandoc.org/installing.html](https://pandoc.org/installing.html).

Once install is complete, open your {{< q-def "command-line shell" >}}, use the `cd` (change directory) command to move to the folder where your .docx documents are saved, and enter the applicable Pandoc command:

To convert a single Word document (in this example it has a file name of MyFile.docx) into Markdown:

``` go
pandoc --markdown-headings=atx --wrap=none -s MyFile.docx -t markdown-smart -o MyFile.md
```

To convert all the Word documents in the folder and compile them into a **single** Markdown document:

``` go
pandoc --markdown-headings=atx --wrap=none -s *.docx -t markdown-smart -o MyFile.md
  ```

To convert all the Word documents in the folder into **individual** Markdown files:

``` go
for f in *.docx; do pandoc --markdown-headings=atx --wrap=none "$f" -s -t markdown-smart -o "${f%.docx}.md"; done
```

Note that the `--atx-header` and `--wrap=none` options in the above commands are optional, but recommended for Quire.

- Quire uses {{< q-def "ATX-style Markdown headers" >}}, these are specified adding `--atx-header` to the command.
- The lines of a Pandoc-generated file are 80 characters long. Adding the option `--wrap=none` to the command will override the default wrapping making easier to work with your files in the {{< q-def "Text editor" >}}.

The order of the extensions doesn't matter, and you can either type:

``` go
pandoc --markdown-headings=atx --wrap=none -s MyFile.docx -t markdown -o MyFile.md
```

or

``` go
pandoc -s MyFile.docx -t markdown --markdown-headings=atx --wrap=none -o MyFilemd
```
