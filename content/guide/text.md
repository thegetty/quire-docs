---
title: Pages & Plain Text
type: page
---

## Defining Your Page’s Configuration and Metadata

Every page in a Quire publication starts with a block of YAML. The three core attributes you’re probably going to define on every page are `title`, `type`, and `weight`. All page YAML, no matter how many attributes it has, goes between a set of three dashes, at the very top of the page.

```yaml
---
title:
type:
weight:
---
```

The page `type` must be one of eight possible values: "page", "essay", "entry", "section-head", "cover", "contents", "search", or "data". If left blank, or if any other vaule besides these eight is entered, the `type` will default to "page".

The page `weight` is a number and will determine the order in which the page appears in the publication. Sometimes it’s useful to skip numbers to leave room for adding content later. For example, your frontmatter might start at 0, your first section might be 100, second section 200 and so on.

When you need to add more page information about, this is the complete list of options:

```yaml
---
id: # for chapter/paper numbering
title:
subtitle:
short_title: # to use in site navigation and pdf running heads
type: # page | essay | entry | section-head | cover | contents | data | search
class: # theme specific and dependent on the specific page type. Values may be: frontmatter | copyright | video
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
# the following are all flags that can be set to true or false -- default is true
online:
menu:
pdf:
toc:
byline:
---
```

The `object` and `contributor` attributes above are arrays of one or more items. The details of what YAML values each of those items can have, can be found in the [Catalogue Entries](entries.md) and [Contributors](contributors.md) sections respectively.

## Formatting Text Content with Markdown

The main content of your page appears after the YAML block at the top, and will be formatted in Markdown. Markdown is a very simple, plain text markp language that uses a few text rules to structure content for easy conversion into HTML. For example, a hash or pound sign at the beggining of a line makes a heading, and asterisks wrapping text turns it italic. Here are the most commonly used tags, and note that individual paragraphs are created with double line breaks.

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

On the headings, in general you should not use the Heading 1 tag in your content as that should be reserved for the page title, which is automatically generted. Start with Heading 2. Also headings should be thought of as levels of your content outline, not as sizes large to small, though they’re often thought of and used that way. See our [notes on accessibility](accessibility.md) for more on this.

Footnotes can also be added with Markdown. Use a numbered marker like `[^1]` in the text where you want the number to go, and then at the end of the page, usually under a “Notes” heading, add the corresponding footnote:

```
## Notes

[^1]: The footnote itself is the same thing as the footnote number reference in the text, but with a colon followed by the footnote text
```

Note that the built-in Markdown processor will automatically renumber footnotes in the order they appear in the text. It will also always put the footnotes at the very end of your content, no matter where you may try to put them.


## Using Shortcodes to Add Features

Quire adds a number of specialty shortcodes which extend the functionality and possibilities of plain text markup. Shortcodes are always formatted with a combination of curly brackets and angle brackets, with the name of the shortcode inside. Hugo has a number of additional built-in shortcodes, Quire-specific shortcodes always start with a `q`.

```
{{< q-shortcode-name >}}
```

Some shortcodes act as wrappers around other text and so appear in pairs, with the second of the pair having a slash `/` preceeding the shortcode name, much like you’d find in HTML markup.

```
{{< q-backmatter >}}Text goes here{{< /q-backmatter >}}

```
The following shortcode are (or will be) avaialble in Quire. You’ll find more about them in their respective sections of the guide, as well as in the [shortcodes api reference](../api-docs/shortcodes.md).


- `q-backmatter`: Wrapping text in this shortcode will format it in a manner similar to how footnotes and bibliographies are formatted. Good for sections at the end of essays like Appendices, Acknowledgments, and Contributors Bios.
- [`q-bibliography`](bibliographies.md): Generates a bibiliography from the entries in the project's `bibiliography.yml` file.
- [`q-cite`](bibliographies.md): Adds a linked Author Date citation reference to the text, and a hover pop-up with the full citation text. It also adds the citation to a map of cited works, which can then be output as a page-level bibliography on essay and entry type pages.
- [`q-contributors`](contributors.md): Can be used to create a page of contributor biographies, a section of bios for a single page, a simple list of contributors, a byline for a particular page, or other similar outputs.
- [`q-copyright`](copyright.md): Adds a copyright statement and licensing information as you’ve defined it in your `publication.yml` file. Commonly used on Copyright and About pages.
- [`q-figure`](figures.md): Inserts a formatted figure image (includng audio and video) and caption using data from the project’s `figures.yml` file, or from values supplied directly in the shortcode.
- [`q-figure-group`](figures.md): Like `q-figure`, but with handling for multiple images at once.
- [`q-link-list`](copyright.md): Creates an unordered list of links. Makes use of the `link-list.html` partial in the site templates.
- [`q-loc`](copyright.md): Adds formatted Library of Congress Cataloging-in-Publication Data to the page, from values in `publication.yml`.
- [`q-revision-history`](copyright.md): Adds a revsion history to the page, based on values in `publication.yml`.

## Converting Your Text from Microsoft Word

Commonly, project content will start from Microsoft Word documents rather than being written originally in Markdown. In these cases, a simple conversion can be done.

We recommend using [Pandoc](https://pandoc.org/), a free, command-line text conversion tool. There are installation instructions on their site, but for Mac users with Homebrew installed (which you would have done as part of the Quire installation process), you just open your Terminal and type `brew install pandoc`.

Once installed ...

There are also some easy things you can do in the Word document prior to conversion to ensure the best possible results ...
