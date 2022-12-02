---
title: Page Types & Structure
type: essay
weight: 6160
abstract: "Define and structure your page contents with YAML"
aliases:
  - /documentation/pages/
---

## Page YAML

Every page in a Quire publication starts with a block of {{< q-def "YAML" >}}. The three core attributes used to define every page are `title`, `layout`, and `order`. All page YAML, no matter how many attributes it has, goes between a set of three dashes at the very top of the page.

```yaml
---
title:
layout:
order:
---
```

YAML information is often found in multiple places through your publication, so for example, if you need to make a change to an essay title that appears in the top navigation, sidebar menu, contents pages, running footer, or the essay itself, that change will need to be made in the page YAML of the essay `.md` file.

Much more information about the page than just these three attributes can be included. A more complete example is:

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
layout:
presentation:
order:
---
```

For more details on this full list of possible attributes that Quire can use in page YAML, see the [Page API](/docs-v1/for-developers/#page-api) section of the Developer documentation.

## Define Page Types

```yaml
layout:
```

The page `layout` must be one of six possible values: `page`, `essay`, `entry`, `cover`, `table-of-contents`, `bibliography`, `splash`. If left blank, or if any other value besides these six is entered, the `layout` type will default to `page`.

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

Along with `layout`, Quire pages can also have a `presentation` style. These are applied specifically to the `table-of-contents` and `entry` page types to give further control over the layouts of those pages.

```yaml
layout: table-of-contents
presentation: list (default) | brief | abstract | grid
```

```yaml
layout: entry
presentation: landscape (default) | side-by-side
```

## Organize Pages in the Right Order

```yaml
order:
```

In the following example of a publication outline, we’ve listed the files and directories as we would like them to appear in the publication’s table of contents.

```md
📄 contents.md
📄 introduction.md
📁 part-one
  📄 index.md
  📄 chapter-01.md
  📄 chapter-02.md
📁 part-two
  📄 index.md
  📄 chapter-03.md
```

When looking in the actual `content` directory on your computer or in your text editor, however, they will almost certainly not appear in this order. More likely, they’ll appear alphabetically or by date modified, which is also how Quire will order them when building and previewing your publication. You can adjust this by assigning a numerical `order` to each page in its page YAML.

The page `order` is a number and will determine the order in which the page appears in the publication. For example, the `contents.md` file in the example above, the second page in our book, would be `order: 2`.

Numbering should be unique, and use sequential whole numbers, but it can skip numbers. So, if there’s no page with `order: 3`, Quire will proceed to look for the next number. Intentionally skipping numbers in your sequence can be useful to leave room for adding content later. For example, your frontmatter might start at "0", your first section might be "100", second section "200" and so on. This makes it much easier to add a page to an early part of your publication, without renumbering every subsequent page.

{{< q-class "box tip" >}}
- Add `class: page-one` to the page/chapter where you want page 1 to start for the PDF/Print output. This is often an Introduction or first essay rather than the cover, table of contents, or other frontmatter.
{{< /q-class >}}

## Create Section Landing Pages

A Quire publication can have sub-sections, created by nesting a group of one or more pages inside a sub-directory within the main `content` directory. Each sub-section must include an `index.md `file. This will be the landing page for the section.

```tx
📁 content
  📄 index.md
  📄 contents.md
  📄 introduction.md
  📁 part-one
    📄 index.md
    📄 chapter-01.md
    📄 chapter-02.md
```
Here is an example of the page YAML that might be found in a `content/part-one/index.md` file:

```yaml
---
title: Part One
layout: table-of-contents
presentation: list
order: 9
outputs:
  - pdf
  - html
---
```

Files named `index.md`, always inherit the URL of their parent directory. For example, if you have a `content/sub-section/index.md` file, and your project is hosted at the `domain my-project.com`, the URL for the landing page will be `my-project.com/sub-section/`.

If you want to have a sub-section without a landing page, you can add `outputs: none` to the page YAML of the `index.md` file.

The title of the `index.md` file will be what appears in your project’s menu and table of contents.

## Create Publication Cover Page

The way to create a publication cover page is similar to creating section landing pages. Name the `.md` file for your cover `index.md` and include the `layout` value of `cover`. The cover is usually given a page `order` of `1`. You can also include an attribute of `image` on your cover page and a link to the file. For example, `figures/my-cover-image.jpg`. You may also want to exclude the cover from the menu and table of contents. Learn how to do that in the following section.

Like in the case of sub-sections explained above, `index.md` files always inherit the URL of their parent directory. The `index.md` file used for your cover is in the root, or top-most, directory, and so the URL for it will be the base URL where you host the site.

## Hide/Show Pages

By default, every page you create will be included in all formats of your publication (html, PDF/print, and e-book). This can be overridden by including an `outputs` attribute and excluding the undesired formats from the array (`epub`, `pdf`, `html`). For example, if you want your Copyright page to appear in the PDF and EPUB formats but not in the online version, you would only list `epub` and `pdf` as page YAML values.

```YAML
outputs:
  - epub
  - pdf
```
Likewise, if you wanted to include the About page in the online version and exclude it from the PDF and EPUB formats, you would only list `html`.

```yaml
outputs:
  - html
```

Every page will also automatically be listed in the publication’s menu and contents pages. However, this can be overridden by setting any of the following page YAML attributes to `false`.

```yaml
toc:
menu:
```

{{< q-class "box tip" >}}
- Note that when omitting `html` from `outputs` the page will not be included in the linear ordering of the book or in the menu, table of contents, or search index, but it is still built. When deploying your site from the built files simply delete any unneeded ones. Read more about site deployment in the [*Deploy Your Project*](/docs-v1/site-deploy/) section of this guide.
{{< /q-class >}}
