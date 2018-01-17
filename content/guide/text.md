---
title: Pages & Plain Text
type: page
---

## Defining Your Page’s Configuration and Metadata

Every page in a Quire publication starts with a block of YAML (discussed further in the [“Publication Configuration & Metadata”](../metadata.md) chapter of this guide). The three core attributes you’re probably going to define on every page are `title`, `type`, and `weight`. All page YAML, no matter how many attributes it has, goes between a set of three dashes, at the very top of the page.

```yaml
---
title:
type:
weight:
---
```

The page `type` must be one of eight possible values: "page", "essay", "entry", "section-head", "cover", "contents", "search", or "data". If left blank, or if any other value besides these eight is entered, the `type` will default to "page".

The page `weight` is a number and will determine the order in which the page appears in the publication. Sometimes it’s useful to skip numbers to leave room for adding content later. For example, your frontmatter might start at 0, your first section might be 100, second section 200 and so on.

When you need to add more page information about, this is the complete list of options:

```yaml
---
id: # for chapter/paper numbering
title:
subtitle:
short_title:
type: # page | essay | entry | section-head | cover | contents | data | search
class: # frontmatter | copyright | video
weight:
object:
  -
  -
contributor:
  -
  -
cover_contributor:
abstract:
url:
---
```

The `object` and `contributor` attributes above are arrays of one or more items. The details of what YAML values each of those items can have, can be found in the [Catalogue Entries](entries.md) and [Contributors](contributors.md) sections respectively.

### Where Your Pages Show Up

By default, every page you create will be included in all formats of your publication (online, PDF/print, and e-book) and will automatically be listed in the publication’s menu and table of contents. However, this can be overridden by setting any of the following attributes in the page yaml to "false":

```yaml
online:
menu:
pdf_ebook:
toc:
```

Note that when setting `online: false`, the page will not be included in the linear ordering of the book or in the menu, table of contents or search index, but it is still built. When deploying your site from the built files in the `public/` directory, simply delete any unneeded ones. Read [more about site deployment](output.md) in the chapter on Multi-Format Output.

## Formatting Text Content with Markdown

The main content of your page appears after the YAML block at the top, and will be formatted in Markdown. Markdown is a very simple, plain text markup language that uses a few text rules to structure content for easy conversion into HTML. For example, a hash or pound sign at the beginning of a line makes a heading, and asterisks wrapping text turns it italic. Here are the most commonly used tags, and note that individual paragraphs are created with double line breaks.

```
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

1. numbers make
2. a list with
3. numbers
```

Writing in Markdown should be thought of as giving your content structure, not style. By design, and through the stylesheets in the project theme, a list or a blockquote might look different from theme to theme, or even from format to format.

On the headings, in general you should not use the Heading 1 tag in your content as that should be reserved for the page title, which is automatically generated. Start with Heading 2. Also headings should be thought of as levels of your content outline, not as sizes large to small, though they’re often thought of and used that way. See our [notes on accessibility](accessibility.md) for more on this.

### Markdown Footnotes

Footnotes can also be added with Markdown. Use a numbered marker like `[^1]` in the text where you want the number to go, and then at the end of the page, usually under a “Notes” heading, add the corresponding footnote:

```
## Notes

[^1]: The footnote itself is the same thing as the footnote number reference in the text, but with a colon followed by the footnote text
```

Footnotes can also include multiple paragraphs.

-.......

Note that the built-in Markdown processor will automatically renumber footnotes in the order they appear in the text. It will also always put the footnotes at the very end of your content, no matter where you may try to put them.

### Fractions, Superscripts and Subscripts

While automatic fractions have been turned off in the `config.yml` file, Blackfriday will nonetheless still render 1&#47;4, 1&#47;2, and 3&#47;4 into proper, unicode fractions (1/4, 1/2, 3/4). Of course, unicode fractions can also be used in Markdown directly, though note that not all fonts support the eighths in which case, browsers will render them with a default font. The fractions are: ¼, ½, ¾, ⅛, ⅜, ⅝, ⅞. Any others would need to be written using superscript and subscript formatting.

While some Markdown processors support superscript and subscript formatting with ^ and ~ characters, Blackfriday does not. For these, you’ll need to use the HTML `<sup>` and `<sub>` tags in your Markdown. For example:

- `19 × 24<sup>3</sup>⁄<sub>16</sub> inches` = 19 × 24<sup>3</sup>⁄<sub>16</sub> inches
- `20<sup>th</sup> Century Sculpture` = 20<sup>th</sup> Century Sculpture
- `Chrome yellow (PbCrO<sub>4</sub>)` = Chrome yellow (PbCrO<sub>4</sub>)

### Previewing Markdown

Many text editors offer a preview function for Markdown, either pre-installed or as an add-on. In Atom for instance, a Markdown document can be previewed by selecting Packages > Markdown Preview > Toggle Preview (or just Shift-Control-M). The preview won’t match the style of your publication site, but will have default styling for headings, blockquotes, links and the like to allow you to confirm proper formatting.

Outside of more code-driven text editors, there are also a growing number of Markdown-specific editors. [Typora](https://typora.io/), for instance, offers a single-page live preview by displaying styled Markdown-formatted text as you type it.

### Configuring The Markdown Output

Hugo has a built-in Markdown processor, Blackfriday, which comes with some configuration options that can be applied in your project’s `config.yml` file. Details can be found [in the Hugo documentation](https://gohugo.io/getting-started/configuration/#configure-blackfriday).

### Markdown Formatting Gotchas

Links are created with text in brackets followed immediately by a url in parentheses: `[The Getty](http://www.getty.edu)`. However, Blackfriday will incorrectly also create link even if there is a space between the bracketed text and the parentheses. For instance, a footnote reference number `[^1]` followed by a space and any text in parentheses, will incorrectly format as a link: `[^1] (Some aside text here)`. To avoid this, you can use the HTML entity reference, `&#40;`, for the first parentheses, or a backslash escape character before the first parentheses:

```markdown
[^1] &#40;Some aside text here)
[^1] \(Some aside text here)
```

&#40;c&#41; will automatically render as ©.

As noted in the Fractions section above, 1&#47;4, 1&#47;2, and 3&#47;4 will automatically convert to unicode fractions (¼, ½, ¾).

As noted in the Footnotes section above, markdown footnotes will be automatically renumbered in the order they appear in the text. They will also always appear at the very end of your content, no matter where else you may try to put them.

Blackfriday does not support superscript or subscript formatting. HTML tags must be used instead.

## Using Shortcodes to Add Features

Quire adds a number of specialty shortcodes which extend the functionality and possibilities of plain text markup. While Hugo has a number of built-in shortcodes, which can also work in Quire, Quire-specific shortcodes always start with a `q`.

Shortcodes are always formatted with a combination of curly brackets and angle brackets, with the name of the shortcode inside (`{{< shortcode >}}`) and often with some additional information in quotes. The example below inserts a figure in your document, matching a corresponding `id` with figure information stored in the publication’s `figure.yml` file.

```
{{< q-figure id="3.1" >}}
```

While most Quire shortcodes work like `q-figure` as a single instance, some shortcodes act as wrappers around other text and so appear in pairs, with the second of the pair having a slash `/` preceding the shortcode name, much like you’d find in HTML markup.

```
{{< q-class "backmatter" >}}Text goes here{{< /q-class >}}

```

The following shortcode are (or will be) available in Quire. You’ll find more about them in their respective sections of the guide, as well as in the [shortcodes api reference](../api-docs/shortcodes.md).


- [`q-class`](#): Wrapping text in this shortcode will allow you to apply a class name to that block of text, which can then be used to apply custom css styles or interactions as needed.
- [`q-bibliography`](bibliographies.md): Generates a bibliography from the entries in the project's `bibiliography.yml` file.
- [`q-cite`](bibliographies.md): Adds a linked Author Date citation reference to the text, and a hover pop-up with the full citation text. It also adds the citation to a map of cited works, which can then be output as a page-level bibliography on essay and entry type pages.
- [`q-contributors`](contributors.md): Can be used to create a page of contributor biographies, a section of bios for a single page, a simple list of contributors, a byline for a particular page, or other similar outputs.
- [`q-figure`](figures.md): Inserts a formatted figure image (including audio and video) and caption using data from the project’s `figures.yml` file, or from values supplied directly in the shortcode.
- [`q-figure-group`](figures.md): Like `q-figure`, but with handling for multiple images at once.
- [`q-link-list`](copyright.md): Creates an unordered list of links. Makes use of the `link-list.html` partial in the site templates.

## Converting Your Text from Microsoft Word

Commonly, project content will start from Microsoft Word documents rather than being written directly in Markdown. In these cases, a simple conversion from DOCX to Markdown can be done.

While there are a number of free tools, we recommend using [Pandoc](https://pandoc.org/), a free, command-line text conversion tool. There are installation instructions on their site, but for Mac users with Homebrew installed (which you would have done as part of the Quire installation process), you just open your Terminal and type `brew install pandoc`.

Once installed ...

There are also some easy things you can do in the Word document prior to conversion to ensure the best possible results ...





