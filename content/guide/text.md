---
title: Pages & Plain Text
type: page
---

## Structuring Your Publication

The way you organize the pages Markdown files in the `content` directory of your project defines the structure of your publication. The names of the files will effect the final URLs of your publication as well as how the *Table of Contents* is organized. By default, URLs will be the filename, minus the `.md` suffix. Files nested in a sub-directory within `content` will include that sub-directory in the URL as well. So if your site is mypublication.com, these files:

```
📄 cover.md
📄 contents.md
📁 part-one
  📄 section-overview.md
  📄 chapter-01.md
  📄 chapter-02.md
📁 part-two
  📄 section-overview.md
  📄 chapter-03.md
```

Will map to these URLs:

```
mypublication.com/cover/
mypublication.com/contents/
mypublication.com/part-one/section-overview/
mypublication.com/part-one/chapter-01/
mypublication.com/part-one/chapter-02/
mypublication.com/part-two/section-overview/
mypublication.com/part-two/chapter-03/
```

[note/tip] There are some important rules and tips to keep in mind, as well as further ways of refining and customizing the organization of your publication content:

1. Filenames should be lowercase, with no spaces or special characters.

2. Sub-directories can’t have other sub-directories within them.

3. Don't use `index.md` or `_index.md` files.

  For users with previous Hugo, static-site or other web development experience, you should not use `index.md` or `_index.md` files in your Quire project. `_index.md` is a Hugo convention for creating sections and nested sections, but in Quire it works against the linear ordering of the publication and breaks the *Next* and *Previous* page navigation. `index.md` is a web convention, but in Hugo, the presence of an `index.md` file in any directory converts that directory into a so-called “page bundle” in Hugo’s eyes and none of the other pages in that directory will be rendered.

4. Create homepage and section landing pages with `slug`.

  `index.md` files would typically be used to create pages with URLs at the root level of the directory including the homepage of your site and sub-directories (like `mypublication.com/` and `mypublication.com/part-one/`). Because `index.md` files can’t be used, you can instead define a `slug` attribute with a value of `.` (a period) in the page YAML of the page/file you want to use as a landing or homepage. You should add one `slug` attribute with a value of `.` per section. Read more about how to use `slug` to [create section landing pages](#creating-section-landing-pages) in the below section.

5. Control page ordering with `weight`.

  In the example above, we’ve listed the files and directories in the order they would appear in the publication. When looking in the actual `content` directory, however, they will almost certainly not appear in the proper publication order, but rather more likely, they’d appear alphabetically. To control page ordering in Quire, define a `weight` attribute, with a numerical value, in the page YAML.

## Defining Your Page’s Configuration and Metadata

Every page in a Quire publication starts with a block of YAML (discussed further in the [*Publication Configuration & Metadata*](metadata.md) page of this guide). The three core attributes you’re probably going to define on every page are `title`, `type`, and `weight`. All page YAML, no matter how many attributes it has, goes between a set of three dashes, at the very top of the page.

```yaml
---
title:
type:
weight:
---
```

The page `type` must be one of nine possible values: `page`, `essay`, `entry`, `cover`, `contents`, `about`, `search`, or `data`. If left blank, or if any other value besides these nine is entered, the `type` will default to "page". Read more about the specific `type`s in the [Defining Page Types](#defining-page-types) section below.

The page `weight` is a number and will determine the order in which the page appears in the publication. The first page in your publication would be `weight: 1` (don’t start with zero 0), the second would be `weight: 2`, and so on. Numbering should be unique, and sequential whole numbers, but it can skip numbers. So, if there’s no page with `weight: 3`, Quire will proceed to look for the next number. Intentionally skipping numbers in your sequence can be useful to leave room for adding content later. For example, your frontmatter might start at "0", your first section might be "100", second section "200" and so on. This makes it much easier to add a page to an early part of your publication, without renumbering every subsequent page.

When you need to add more page information, the complete list of options is available in the ["YAML"](../api-docs/yaml.md) section of the guide.


## Defining Page Types

Every page has one of the following nine `type`s. If none is specified, Quire defaults to `type: page`.

`page`: The default value. A general publication page. Used for introductions, forewords, chapters, appendices and other pages.

`essay`: Meant to be a standalone, self-contained article in a periodical or collected volume. The `essay` page type will typically include the contributor names and potentially bios, its own bibliography, and an abstract. This is also reflected in the metadata embedded in the page as well, which will describe the page more specifically and with more page-specific information than a typical publication page, whose metadata will instead point to the publication as a whole.

`entry`: An entry in a catalogue of objects. Typically includes a large, zoomable image of the object, with a table of object details and narrative text. You can learn more about entries in the [*Catalogues* page](content/guide/collection-catalogues)of this guide

`cover`: The cover of your publications. Typically a full-screen splash page with large title, with cover description and publication information below. Along with defining `type: cover`, you will usually want to also add `slug: .` so that the cover page URL is the base URL of your site (your homepage). You can find more details about how to use `slug` in [Creating section landing pages](#creating-section-landing-pages) below.

`contents`: Automatically creates a table of contents for your entire publication, or for a section of your publication when used inside a sub-directory. The `tocType` can be set to either `full` or `short` in the publication’s `config.yml` file. The `full` option will typically list and link to all main pages, sections and section pages. The `short` option will list and link to main pages and sections only, not the pages within the section. The `contents` page type can also be customized with four classes: `brief`, `list`, `abstract`, or `grid`.

`about`: The about page will typically include the publication description, citation information, revision history, downloads and other formats, copyright and license information and more. This can be used also for a traditional copyright page for the PDF output format.

`data`: Description TK

`search`: Description TK


## Creating Section Landing Pages

A Quire publication can have sub-sections, created by nesting a group of one or more pages inside a sub-directory within the main `content` directory. It is recommended (though not required) to designate one of the pages in each sub-directory section to be the section landing page. To do so, add `slug: .` to the page YAML block. The `slug` attribute overrides the default name to be used in the URL for the page, and the period `.` refers it back to the sub-directory name. So, if in your site `mypublication.com` you have sub-directory called `part-one` and in that a landing page called `landing-page.md`, instead of the URL being `mypublication.com/part-one/landing-page/`, it would be `mypublication.com/part-one/`. Here’s the YAML:

```yaml
title: Part One
type: contents
class: grid
slug: .
```

The `title` of your defined landing page is what will be used in the header of that page, and in the *Table of Contents* and menu of your site.

However, the filename of the sub-directory itself is also used in your publication; for the online navigation bar, and in the running page footers of the PDF version. In these two places, Quire takes the sub-directory filename and humanizes it, which means to change hyphens into spaces and capitalize with title case. So, the sub-directory `part-one` becomes “Part One”, or `sculpture-of-the-renaissance` becomes “Sculpture of the Renaissance.”

## Displaying your Pages

By default, every page you create will be included in all formats of your publication (online, PDF/print, and e-book) and will automatically be listed in the publication’s menu and *Table of Contents*. However, this can be overridden by setting any of the following attributes under `display` in the page YAML to `false`:

```yaml
display:
  online:
  menu:
  pdf_ebook:
  toc:
```

[note]Note that when setting `online: false`, the page will not be included in the linear ordering of the book or in the menu, table of contents or search index, but it is still built. When deploying your site from the built files in the `public/` directory, simply delete any unneeded ones. Read [more about site deployment](output.md) in the chapter on *Multi-Format Output*.

## Formatting Text Content with Markdown

The main content of your page appears after the YAML block at the top, and will be formatted in Markdown. Markdown is a very simple, plain text markup language that uses a few text rules to structure content for easy conversion into HTML. For example, a hash or pound sign at the beginning of a line makes a heading, and asterisks wrapping text turns it italic. You can learn more about Markdown syntax in the [*Markdown fundamentals* section](../fundamentals/markdown.md) of this guide.

## Applying Types of Linking

There are several types of linking that can be applied to text on your page. Stylization such as bolding, italics, underlining, and more can also be applied to linked text.

### External Links

External links can be included through the following Markdown formatting:

```
[Link text](http://www.linkaddress.com)
[Getty Museum](http://www.getty.edu/museum/)
```

### Internal Links Between Pages

Internal links between pages in your Quire publication can be included through the following Markdown formatting:

```
[Link text](../nameofpage/)
[Pea Pickers](../catalogue/2)
More info in our [about](../about/) page.
```

### Internal Links Within a Page / Between Elements

There are several types of linking between features, text, or objects on a single page that can be included through the following Markdown formatting:

- Callouts to figures (# are used for figures):
  - This linking can be applied to a piece of text that when clicked upon will take a user to the location of the corresponding figure on the page. Figure IDs can be found on the `figures.yml` page as explained in the [*Figure Images* section](figures.md) of this guide.

```
[number or name of figure](#figureid)
[fig. 1](#1.1)
```

- Linking to other page elements (# is also used for other elements on the same page):
  - The IDs for other elements can be found using the following method:
    - Use the Inspect Element tool when right clicking a page or specific element. For Safari users, refer to this [guide](https://apple.stackexchange.com/questions/139767/inspect-element-in-safari) to enable this feature.
    - In the page's code certain elements will include a piece of code, `id="idnamehere"` that designates the ID of that element. If the name of the element has a space that will be represented with a dash `-`.
    - For example, the ID of a heading will often be the name of that heading.

```
[referencetolink](#element-id)
See [heading 1](#heading-1).
```

- Linking to elements on a separate page
  - Following the formula for internal links between pages, you can also specify an element on a separate page as a link destination.

```  
[referencetolink](../nameofpage/#idname)
See the introduction [notes](../introduction/#notes)
```
[note] Blackfriday, the built in Markdown processor, will incorrectly create link even if there is a space between the bracketed text and the parentheses when there is some text in brackets followed immediately by more text in parentheses. To avoid the linking, you can use a backslash escape character before the first parentheses.  

- Footnotes within a page, NOT bibliography or citations shortcodes:
  - With this, a numbered footnote in the text when clicked upon will take a user to the corresponding area of the page where the full citation is located. The reverse is true from the linked number or arrow from the full citation.
  - This requires two parts:
    - Within the main body text, in a spot where you would like a footnote to be included will be set up as the following:
      - `Example text.[^#]`
      - `"A photographic study of use of leisure time in various income groups."[^1]`
    - At the end of the main body text, one can designate a “Notes” or related subheading using ## or ###. Underneath that heading the information of the citation will be listed using this format:
      - `[^#]: Corresponding citation information.`
      - `[^1]: Roy Stryker to all FSA (then RA) photographers, outline for first published in Carver, *Just Before the War*, n.p.`
  - You can find additional information about formatting notes text with Markdown in the [*Markdown fundamentals* section](../fundamentals/markdown.md) of this guide.

- Citation and Bibliography shortcode linking:
  - When the citation shortcode, {{< q-cite “author date” “page # if applicable” >}} is used in body of text, that corresponds to the short and full bibliographic information provided in the `references.yml`, an in-page bibliography will be generated. This linking is completed automatically.
  - When the short code is used in the page the text will appear linked and when clicked upon will take a user to its corresponding bibliography entry on the same page. However, this cannot be done in reverse as the bibliography at the bottom of the page contains no links.
  - For more information see the [Citations & Bibliography](bibliographies.md) section of this guide.

## Using Shortcodes to Add Features

Quire adds a number of specialty shortcodes which extend the functionality and possibilities of plain text markup. While Hugo[&] has a number of built-in shortcodes, which can also work in Quire, Quire-specific shortcodes always start with a `q`.

Shortcodes are always formatted with a combination of curly brackets and angle brackets, with the name of the shortcode inside (`{{< shortcode >}}`) and often with some additional information in quotes. The example below inserts a figure in your document, matching a corresponding `id` with figure information stored in the publication’s `figures.yml` file.

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
