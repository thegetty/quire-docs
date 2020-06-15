---
title: Page Types & Structure
type: essay
weight: 205
---

Every page in a Quire publication starts with a block of {{< q-glossary "YAML" >}}. The three core attributes you’re probably going to define on every page are `title`, `type`, and `weight`. All page YAML, no matter how many attributes it has, goes between a set of three dashes at the very top of the page.

```yaml
---
title:
type:
weight:
---
```

Much more information about the page than just these three attributes can be included. A more complete example would be:

```yaml
---
label:
title:
subtitle:
short_title:
object:
  - id:
contributor:
  - id:
abstract:
type:
class:
weight:
slug:
---
```

For more details on this full list of possible attributes that Quire can use in page YAML, see the [Page YAML](/api-docs/yaml/#page) section of the Quire API docs.

## Defining Page Types

```yaml
type:
```

The page `type` must be one of six possible values: `page`, `essay`, `entry`, `cover`, `contents`, or `splash`. If left blank, or if any other value besides these six is entered, the type will default to `page`. (A seventh page type, `data`, is available for special applications such as the pre-built search index. New page types can be created to customize Quire projects even further.)

{{< q-figure id="modern-cover" >}}

{{< q-figure id="modern-page" >}}

{{< q-figure id="modern-contents-list" >}}

{{< q-figure id="modern-contents-brief" >}}

{{< q-figure id="modern-contents-abstract" >}}

{{< q-figure id="modern-contents-grid" >}}

{{< q-figure id="modern-splash" >}}

{{< q-figure id="modern-essay" >}}

{{< q-figure id="modern-entry" >}}

{{< q-figure id="modern-entry-side" >}}

Along with `type`, Quire pages can also have a `class`. These can be used to facilitate custom styling, but as illustrated above, there are also a number of pre-defined classes that can be applied specifically to the `contents` and `entry` page types to give some further control over the layouts of those pages.

```yaml
type: contents
class: list (default) | brief | abstract | grid
```

```yaml
type: entry
class: landscape (default) | side-by-side
```

## Putting Pages in the Right Order

```yaml
weight:
```

In the following example publication outline, we’ve listed the files and directories as we would like them to appear in the publication’s table of contents.

```md
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

When looking in the actual `content` directory on your computer or in your text editor, however, they will almost certainly not appear in this order. More likely, they’ll appear alphabetically or by date modified, which is also how Quire will order them when building and previewing your publication. You can adjust this by assigning a numerical `weight` to each page in its page YAML.

The page `weight` is a number and will determine the order in which the page appears in the publication. For example, the `contents.md` file in the example above, the second page in our book, would be `weight: 2`.

Numbering should be unique, and sequential whole numbers, but it can skip numbers. So, if there’s no page with `weight: 3`, Quire will proceed to look for the next number. Intentionally skipping numbers in your sequence can be useful to leave room for adding content later. For example, your frontmatter might start at "0", your first section might be "100", second section "200" and so on. This makes it much easier to add a page to an early part of your publication, without renumbering every subsequent page.

{{< q-class "box tip" >}}
- Add `class: page-one` to the page/chapter where you want page 1 to start for the PDF/Print output. This is often an Introduction or first essay rather than the cover, table of contents, or other frontmatter.
{{< /q-class >}}

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

## Hiding/Showing Pages

By default, every page you create will be included in all formats of your publication (online, PDF/print, and e-book). Every page will also automatically be listed in the publication’s menu and contents pages. However, this can be overridden by setting any of the following Page YAML attributes to `false`.

```yaml
toc:
menu:
online:
pdf:
epub:
```

This allows you to do things like including an About page in your online edition, but a more traditional Copyright page in print. Or to substitute a simple splash page as a section break in the print, for the more elaborate contents grid you might use online.

{{< q-class "box tip" >}}
- Note that when setting `online: false`, the page will not be included in the linear ordering of the book or in the menu, table of contents or search index, but it is still built. When deploying your site from the built files in the `/site/` directory, simply delete any unneeded ones. Read [more about site deployment](/guide/multiformat-output/) in the chapter on *Multi-Format Output*.
{{< /q-class >}}
