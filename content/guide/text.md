---
title: Pages & Plain Text
type: page
---

## Defining Your Page’s Configuration and Metadata

Every page in a Quire publication starts with a block of YAML (discussed further in the [“Publication Configuration & Metadata”](metadata.md) chapter of this guide). The three core attributes you’re probably going to define on every page are `title`, `type`, and `weight`. All page YAML, no matter how many attributes it has, goes between a set of three dashes, at the very top of the page.

```yaml
---
title:
type:
weight:
---
```

The page `type` must be one of nine possible values: "page", "essay", "entry", "cover", "contents", "about", "search", or "data". If left blank, or if any other value besides these nine is entered, the `type` will default to "page". Read more about the specific `type`s in the [Defining Page Types](#defining-page-types) section below.

The page `weight` is a number and will determine the order in which the page appears in the publication. The first page in your publication would be `weight: 1` (don’t start with zero 0), the second would be `weight: 2`, and so on. Numbering should be unique, and sequential whole numbers, but it can skip numbers. So, if there’s no page with `weight: 3`, Quire will proceed to look for the next number. Intentionally skipping numbers in your sequence can be useful to leave room for adding content later. For example, your frontmatter might start at 0, your first section might be 100, second section 200 and so on. This makes it much easier to add a page to an early part of your publication, without renumbering every subsequent page.

When you need to add more page information about, this is the complete list of options:

```yaml
---
id: # for chapter/paper numbering
title:
subtitle:
short_title:
type: # page | essay | entry | cover | contents | about | data | search
class:
weight:
object:
  -
  -
contributor:
  -
  -
abstract:
slug:
display:
  online:
  menu:
  pdf_ebook:
  toc:
---
```

The `object` and `contributor` attributes above are arrays of one or more items. The details of what YAML values each of those items can have, can be found in the [Catalogue Entries](entries.md) and [Contributors](contributors.md) sections respectively.

### Defining Page Types

*Every page has one of the following nine `type`s. If none is specified, Quire defaults to `type: page`.*

`page`: The default value. A general publication page. Used for introductions, forewords, chapters, appendices and other pages.

`essay`: Meant to be a standalone, self-contained article in a periodical or collected volume, the `essay` page type will typically include the contributor names and potentially bios, its own bibliography, and an abstract. This is also reflected in the metadata embedded in the page as well, which will describe the page more specifically and with more page-specific information than a typical publication page, whose metadata will instead point to the publication as a whole.

`entry`: An entry in a catalogue of objects. Typically includes a large, zoomable image of the object, with a table of object details and narrative text.

`cover`: The cover of your publications. Typically a full-screen splash page with large title, with cover description and publication information below. Along with defining `type: cover`, you will usually want to also add `slug: .` so that the cover page URL is the base URL of your site (your homepage). For more about URLs and the `slug` attribute in the [“File Structure”](file-structure.md) chapter of this guide.

`contents`: Automatically creates a table of contents for your entire publication, or for a section of your publication when used inside a sub-directory. The `tocType` can be set to either "full" or "short" in the publication’s `config.yml` file. The "full" option will typically list and link to all main pages, sections and section pages. The "short" option will list and link to main pages and sections only, not the pages within the section. The `contents` page type can also be customized with four classes: `brief`, `list`, `abstract`, or `grid`.

`about`: The about page will typically include the publication description, citation information, revision history, downloads and other formats, copyright and license information and more. This can be used also for a traditional copyright page for the PDF output format.

`data`: Description TK

`search`: Description TK


### Creating Section Landing Pages

As discussed in the [“File Structure”](file-structure.md) chapter of this guide, a Quire publication can have sub-sections, created by nesting a group of one or more pages inside a sub-directory within the main `content` directory. It is recommended (though not required) to designate one of the pages in each sub-directory section to be the section landing page. To do so, add `slug: .` to the page YAML. The `slug` attribute overrides the default name to be used in the URL for the page, and the period `.` refers it back to the sub-directory name. So, if in your site `mypublication.com` you have sub-directory called `part-one` and in that a landing page called `landing-page.md`, instead of the URL being `mypublication.com/part-one/landing-page/`, it would be `mypublication.com/part-one/`. Here’s the YAML:

```yaml
title: Part One
type: contents
class: grid
slug: .
```

The `title` of your defined landing page is what will be used in the header of that page, and in the Table of Contents and menu of your site. However, the filename of the sub-directory itself is also used in your publication; for the online navigation bar, and in the running page footers of the PDF version. In these two places, Quire takes the sub-directory filename and humanizes it, which means to change hyphens into spaces and capitalize with title case. So, the sub-directory `part-one` becomes “Part One”, or `sculpture-of-the-renaissance` becomes “Sculpture of the Renaissance.”

### Where Your Pages Show Up

By default, every page you create will be included in all formats of your publication (online, PDF/print, and e-book) and will automatically be listed in the publication’s menu and table of contents. However, this can be overridden by setting any of the following attributes under `display` in the page yaml to "false":

```yaml
display:
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

* asterisks make
  * a list with
      * bullets

1. numbers make
2. a list with
3. numbers
```
Indented dashes and asterisks create sub bullets in a bulleted list.

Writing in Markdown should be thought of as giving your content structure, not style. By design, and through the stylesheets in the project theme, a list or a blockquote might look different from theme to theme, or even from format to format.

On the headings, in general you should not use the Heading 1 tag in your content as that should be reserved for the page title, which is automatically generated. Start with Heading 2. Also headings should be thought of as levels of your content outline, not as sizes large to small, though they’re often thought of and used that way. See our [notes on accessibility](../resources/notes-on-accessibility.md) for more on this.

Finally, you can also use HTML tags in a Markdown document. This can be convenient for adding HTML elements that Markdown doesn’t support, or for applying special styling. For instance, by wrapping text with a `<span>` tag with a class in order to add custom styling. (See more about this in the [“Customizing Styles”](../styles.md) chapter of this guide.) Note, however, that you can’t do the same by wrapping multiple paragraphs of Markdown in `<div>`, `<section>` or other block-level tags. For this, you need the `q-class` shortcode. Read more about Quire shortcodes below.

Special characters like en- and em-dashes, and diacritics also work fine in Markdown and in Quire publications. Any unicode character is allowed, the only limitation, for less common characters, is whether the font you’re using includes it. When a font does not include a specific character, most browsers will substitute one from a different font.

### Markdown Footnotes

Footnotes can also be added with Markdown. Use a numbered marker like `[^1]` in the text where you want the number to go, and then at the end of the page, usually under a “Notes” heading, add the corresponding footnote:

```
## Notes

[^1]: The footnote itself is the same thing as the footnote number reference in the text, but with a colon followed by the footnote text
```

Footnotes can also include markdown formatting, including lists and even multiple paragraphs. For these, indent the content inwards two levels and put a line space in between the paragraphs just as you would elsewhere.

```
## Notes

[^2]:
    Footnotes with multiple paragraphs

    Are indented in twice, and have line breaks between.

    - Markdown lists
    - work like this in footnotes
    - as well
```

Note that the built-in Markdown processor will automatically renumber footnotes in the order they appear in the text. It will also always put the footnotes at the very end of your content, no matter where you may try to put them.

### Fractions, Superscripts and Subscripts

The fractions 1&#47;4, 1&#47;2, and 3&#47;4, will be automatically converted into proper, unicode fractions (1/4, 1/2, 3/4). Other unicode fractions can also be used in Markdown directly, though note that not all fonts support the eighths in which case, browsers will render them with a default font. The fractions are: ¼, ½, ¾, ⅛, ⅜, ⅝, ⅞. Any others would need to be written using superscript and subscript formatting.

While some Markdown processors support superscript and subscript formatting with ^ and ~ characters, the one built into Quire does not. You’ll need to use the HTML `<sup>` and `<sub>` tags in your Markdown. For example:

- `19 × 24<sup>3</sup>⁄<sub>16</sub> inches` = 19 × 24<sup>3</sup>⁄<sub>16</sub> inches
- `20<sup>th</sup> Century Sculpture` = 20<sup>th</sup> Century Sculpture
- `Chrome yellow (PbCrO<sub>4</sub>)` = Chrome yellow (PbCrO<sub>4</sub>)

You will see a `fractions` attribute with a value of "false" in the `config.yml` file of your publication. Changing this to true will automatically render fraction-style superscript and subscript formatting for anything written as an integer followed by a slash and another integer. However, in many instances this will catch things that are not meant to be fractions. For this reason, we recommend leaving `fractions` set to "false", and manually adding the necessary markup as it’s needed.

### Previewing Markdown

Many text editors offer a preview function for Markdown, either pre-installed or as an add-on. In Atom for instance, a Markdown document can be previewed by selecting Packages > Markdown Preview > Toggle Preview (or just Shift-Control-M). The preview won’t match the style of your publication site, but will have default styling for headings, blockquotes, links and the like to allow you to confirm proper formatting.

Outside of more code-driven text editors, there are also a growing number of Markdown-specific editors. [Typora](https://typora.io/), for instance, offers a single-page live preview by displaying styled Markdown-formatted text as you type it.

### Markdown Formatting Gotchas

Links are created with text in brackets followed immediately by a url in parentheses: `[The Getty](http://www.getty.edu)`. However, Blathe built in Markdown processor will incorrectly also create link even if there is a space between the bracketed text and the parentheses. For instance, a footnote reference number `[^1]` followed by a space and any text in parentheses, will incorrectly format as a link: `[^1] (Some aside text here)`. To avoid this, you can use the HTML entity reference, `&#40;`, for the first parentheses, or a backslash escape character before the first parentheses:

```markdown
[^1] &#40;Some aside text here)
[^1] \(Some aside text here)
```

&#40;c&#41; will automatically render as ©.

As noted in the Fractions section above, 1&#47;4, 1&#47;2, and 3&#47;4 will automatically convert to unicode fractions (¼, ½, ¾).

HTML tags must be used for superscript or subscript formatting.

As noted in the Footnotes section above, markdown footnotes will be automatically renumbered in the order they appear in the text. They will also always appear at the very end of your content, no matter where else you may try to put them.

### Configuring The Markdown Output

Hugo has a built-in Markdown processor, [Blackfriday](https://github.com/russross/blackfriday), which comes with some configuration options that can be applied in your project’s `config.yml` file. Details can be found [in the Hugo documentation](https://gohugo.io/getting-started/configuration/#configure-blackfriday).

In Quire, by default, Blackfriday’s `fraction` option has been set to "false" (text that looks like a fraction won’t be automatically formatted as such.), and the `hrefTargetBlank` option set to "true" (external links will open in new windows/tabs).

### Some Markdown Resources

This guide doesn’t cover all existing Markdown tags but there are some good sources that will help you find the right syntax to format your text. For example, the Programming Historian provides an [introductory lesson to Markdown](https://programminghistorian.org/lessons/getting-started-with-markdown), and John Gruber, the creator of Markdown, provides a comprehensive explanation of the basics and syntax on his personal site [Daring Fireball](https://daringfireball.net/projects/markdown/).

Be aware of the multiple [Markdown flavors](https://github.com/commonmark/CommonMark/wiki/Markdown-Flavors) out there and the fact that not all flavors are supported by Blackfriday.

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

Commonly, project content will start from Microsoft Word documents rather than being written originally in Markdown. In these cases, a simple conversion can be done.

While there are a number of free tools, we recommend using [Pandoc](https://pandoc.org/), a free, command-line text conversion tool. There are installation instructions on their site, but for Mac users with Homebrew installed (which you would have done as part of the Quire installation process), you just open your Terminal and type `brew install pandoc`.

Once installed, make sure you are in the folder where your .docx document is saved, and enter the following command on the Terminal `pandoc -s your_document_name.docx -t markdown -o your_document_name.md`. You can visit the [Pandoc Demos page](http://pandoc.org/demos.html) that lists the commands for the most frequent types of file conversion.

There are also some easy things you can do in the Word document prior to conversion to ensure the best possible results, like not inserting pictures and media in the document, ...
