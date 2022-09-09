---
title: Page Types & Structure
type: essay
weight: 6160
abstract: "Define and structure your page contents with YAML"
---

## Page YAML

Every page in a Quire publication starts with a block of {{< q-def "YAML" >}}. The three core attributes used to define every page are `title`, `layout`, and `order`. All page YAML, no matter how many attributes it has, goes between a set of three dashes at the very top of the page.

```yaml
---
title:
order:
weight:
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

The page `layout` must be one of six possible values: `page`, `essay`, `entry`, `cover`, `table-of-contents`, or `splash`. If left blank, or if any other value besides these six is entered, the type will default to `page`.

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

Along with `layout`, Quire pages can also have a `presentation` style. These are applied specifically to the `contents` and `entry` page types to give further control over the layouts of those pages.

```yaml
layout: contents
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

When looking in the actual `content` directory on your computer or in your text editor, however, they will almost certainly not appear in this order. More likely, they’ll appear alphabetically or by date modified, which is also how Quire will order them when building and previewing your publication. You can adjust this by assigning a numerical `order` to each page in its page YAML.

The page `order` is a number and will determine the order in which the page appears in the publication. For example, the `contents.md` file in the example above, the second page in our book, would be `order: 2`.

Numbering should be unique, and use sequential whole numbers, but it can skip numbers. So, if there’s no page with `order: 3`, Quire will proceed to look for the next number. Intentionally skipping numbers in your sequence can be useful to leave room for adding content later. For example, your frontmatter might start at "0", your first section might be "100", second section "200" and so on. This makes it much easier to add a page to an early part of your publication, without renumbering every subsequent page.

{{< q-class "box tip" >}}
- Add `class: page-one` to the page/chapter where you want page 1 to start for the PDF/Print output. This is often an Introduction or first essay rather than the cover, table of contents, or other frontmatter.
{{< /q-class >}}

## Create Section Landing Pages

A Quire publication can have sub-sections, created by nesting a group of one or more pages inside a sub-directory within the main `content` directory. It is recommended (though not required) to designate one of the pages in each sub-directory to be the section landing page. To do so, name the `.md` file for the desired landing page `index.md`. The `title` of your `index.md` file is not only what will be used in places like the header of that page, the table of contents, and the menu of your site, it will also be used to define the URL. For example, if the `title` value of your `index.md` page is `"Landing Page"` then the URL would appear as `my-project.com/landing-page` rather than `my-project.com/index.md`

## Create Publication Cover Page

The way to create a publication cover page is similar to creating section landing pages. Name the `.md` file for your cover `index.md` and include the `layout` value of `cover`. The cover is usually given a page `order` of `1`. You can also include an attribute of `image` on your cover page and a link to the file. For example, `figures/my-cover-image.jpg`. You may also want to exclude the cover from the menu and table of contents. Learn how to do that in the following section.

## Hide/Show Pages

By default, every page you create will be included in all formats of your publication (online, PDF/print, and e-book). This can be overridden by including an `outputs` attribute and excluding the undesired formats from the array (`epub`, `pdf`, `online`). For example, if you want your Copyright page to appear in the PDF and EPUB but not in the online version, you would exclude `online` from the YAML.

```YAML
outputs: [epub, pdf]
```
Likewise, if you wanted to include the About page in the online edition only then you would exlcude `pdf` and `epub` from the YAML. 

```yaml
outputs: [online]
```

Every page will also automatically be listed in the publication’s menu and contents pages. However, this can be overridden by setting any of the following page YAML attributes to `false`.

```yaml
toc:
menu:
```

{{< q-class "box tip" >}}
- Note that when omitting `online` from `outputs` the page will not be included in the linear ordering of the book or in the menu, table of contents, or search index, but it is still built. When deploying your site from the built files simply delete any unneeded ones. Read more about site deployment in the [*Deploy Your Project*](/docs-v1/site-deploy/) section of this guide.
{{< /q-class >}}
