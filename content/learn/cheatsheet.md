---
title: Quire Cheatsheet
weight: 6300
type: essay
abstract: Quick tips for Markdown, YAML, and other formatting elements in Quire
---

## Markdown

Markdown is designed to be a simple, plain-text markup language that uses a few text rules to structure content for easy conversion into HTML. A quick overview of the key markdown rules used in Quire are below.

Individual paragraphs are created with double line breaks. If you only use one line break the text will still run in one straight line.

```md
This is the first paragraph.

This is the second.
```

Other typical Markdown formatting includes headers, italic text, bold text, blockquotes, linked text, lists, and numbered lists. Note the necessary space after `#`, `>`, `-` and list numerals.

{{< q-figure id="markdown_example" class="is-pulled-right" >}}

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

[YAML](http://yaml.org/) is designed to be a plain-text way of capturing data.

YAML is used for configuring how Quire works and for providing publication metadata in files with the extension `.yml`. In a Quire publication, each individual page or chapter written in Markdown (as noted by the `.md` extension) includes a YAML block that is generally formatted with the name of a data item (such as `title`) followed by a colon, a space, and then the data item’s value. For example the YAML block for the page you’re on right now is:

```yaml
---
title: Quire Cheatsheet
weight: 600
type: essay
---
```

`.yml` files are also used for storing information about figures, bibliographic references, and art objects. Let's take the example of `figures.yml`. For publications with more than just a handful of images, figures and all their associated attributes can be listed in the `figures.yml` file, which lives inside your `data` folder. This figure image metadata can then be called from wherever you need it in your project by using a shortcode. Here is an example of how the `figures.yml` appears in the Quire default starter.

```yaml
figure_list:
  - id: "dog1"
    src: figures/lange.jpg
    caption: "*Dorothea Lange, Resettlement Administration photographer, in California*, 1936."
    credit: "Library of Congress Prints and Photographs Division"
  - id: "dog2"
    src: figures/evans.jpg
    caption: "*Walker Evans, profile, hand up to face*, 1937."
    credit: "Library of Congress Prints and Photographs Division"
```

### YAML Tips

- If the text has a colon : or other special characters it should be surrounded in double quotes ("") otherwise you'll receive an error.
- Using a pipe character (|), and then dropping down a line and indenting allows you to include multiple paragraphs.
- YAML block entries can be in any order.
- Watch horizontal spacing to make sure things line up.
- Improperly formatted YAML can temporarily break Quire functionality. Copy and paste your YAML blocks into a validator like [YAML Lint](http://www.yamllint.com/) or [Code Beautify validator](https://codebeautify.org/yaml-validator) to double check it.


## Shortcodes

A shortcode is a snippet of code inserted in a content (`.md`) file that pulls in information from other files in your project. For example, in Quire, the `q-figure` shortcode is used to insert an image from the `static/img` folder. It additionally references the `id`, `caption`, and other optional information from your `figures.yml` data file. Other shortcodes include `q-cite`, `q-bibliography`, and `q-contributor.` Examples of proper formatting for these shortcodes are below.

```go
{{</* q-figure id="##" */>}}

{{</* q-figure-group id="##, ##, ##" */>}}

{{</* q-cite "Lastname YYYY" */>}}

{{</* q-bibliography */>}}

{{</* q-contributor range="xxxx" type="xxxx" */>}}

```
