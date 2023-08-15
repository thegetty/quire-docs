---
title: Table of Contents & Sidebar Menu
type: essay
weight: 6170
abstract: "Add items and adjust the styles of Quire’s auto-generated contents lists"
aliases:
  - /documentation/contents-menu/
---

## Table of Contents

To create a Table of Contents (TOC), add a `.md` file to your project with `layout: table-of-contents` specified.

```yaml
title: Contents
order: 2
layout: table-of-contents
```

From there, Quire will automatically generate the TOC based on the structure of the files in your `content` directory including assigned page order and the metadata of each page (the title, subtitle, contributors, etc.) If you add any Markdown to the `.md` file, it will be displayed as formatted text above the contents list. Please see the [*Page Types & Structure*](/docs-v1/pages/) section of our documentation for more information.

### TOC Styles

There are several different ways you can style your TOC's appearance. TOC styles can be defined by adding the attribute `presentation` to the page YAML of your contents `.md` file. The default TOC style is `list`. The three other styles available are `brief`, `abstract`, and `grid`.

| Presentation | Description |
| --- | --- |
| `list` | The default style. Can include `label`, `title`, `subtitle`, `contributor` depending on what has been defined in the page YAML for each page. |
| `brief` | Will only show `title`, or if provided `short_title` for each page, and only for top-level pages and sections. Sub-sections will not display. |
| `abstract` | Includes everything in `list` as well as an `abstract` for each page if one is given. |
| `grid` | A graphic layout. Will show a “card” for each page. For `entry` pages, or other pages with the `image` attribute included, the card will display the image, along with any `label`, `title`, and `subtitle`. Pages without an image specified will display only the text. |

{{< q-figure-group id="modern-contents-list, modern-contents-brief, modern-contents-abstract, modern-contents-grid" grid="2" >}}

### TOCs for Individual Sections

In Quire you can include multiple levels of sub-sections. Add sections by creating new directories within existing directories. For example, catalogue entries in a collection catalogue would appear within a `/content/catalogue/` directory. You could create additional directories within the `/content/catalogue/` directory to further organize your content. You would also need to include an  `index.md` file in each sub-section to act as a section landing page and TOC. This can be useful in collection catalogues where you want a `grid` TOC displaying the objects in that catalogue section or for a collected papers volume where you want to show the abstracts for the pages in the section.

Once you have created your sub-section add an `index.md` file with `layout: table-of-contents` included in the page YAML. This will create a landing page that serves as the TOC for that particular sub-section.  The TOC name will match the title used in the page YAML of the `index.md` file.

```YAML
title: Catalogue
layout: table-of-contents
presentation: grid
order: 9
```

As mentioned in [*Pages Types & Structures*](/docs-v1/pages/), files named `index.md` always inherit the URL of their parent directory. Using the example above, the URL for the `content/catalogue/index.md` file would be `my-project.com/catalogue/`.

### Removing Pages from the TOC

While the TOC is generated automatically by Quire based on the `.md` pages in your `content` directory, you can remove or hide pages from the TOC by adding `toc: false` to the page YAML. This might be done, for example, for the project’s cover page, which would not typically be included in a traditional book TOC. Or for sub-section pages deep in the book that may clutter the TOC. In any case, hiding the page from the TOC will not change how the page appears when navigating by the Next and Previous buttons and links. Nor will it keep the page from otherwise being linked to or viewed.

{{< q-class "box tip" >}}
Adding `toc: false` will only remove the page’s listing in the TOC. To entirely hide a page from Quire’s multiple formats use the `outputs` attribute and list the formats where you want that page to appear (`html`, `pdf`, `epub`).  
{{< /q-class >}}

### Page Numbering in the PDF

When you output your project as a PDF, page numbers will automatically be added to the pages and to the corresponding entries in the Table of Contents.

Traditionally, the frontmatter pages of books are numbered in lowercase Roman numerals (i, ii, iii, iv, etc.). The Arabic numeral 1 is then assigned to the first page of true “content” for the book. Usually the first chapter, or an introduction. Quire handles things the same way.

To assign a particular `.md` file to be page 1 of your project, add `classes: [page-one]` to the page YAML. It can also be written as:

```yaml
classes:
  - page-one
```

This special class defines that page as page 1 (in Arabic numerals), and everything before it is frontmatter and will be numbered in lowercase Roman. 

{{< q-class "box warning" >}}
Only one page in your project can have the `classes: [page-one]` tag.
{{< /q-class >}}

## Sidebar Menu

Like the TOC, the sidebar Menu is generated automatically by Quire based on the structure of the files in your `content` directory and the metadata of each page. Unlike the TOC, the Menu is a built-in part of every Quire project and does not have a corresponding `.md` file.

### Removing Pages from the Menu

[As described with the TOC above](#removing-pages-from-the-toc), you can remove or hide pages from the Menu by adding `menu: false` to the YAML for that page.

### Menu Other Formats & Footer Links

Following the list of contents in the sidebar Menu is a section with download links for the other formats of your Quire project. These are listed in the `publication.yaml` file of your project in the `resource_link` list. Any link listed here with a `type: other-format` will show up in the “Other Formats” link list in the Menu. The `name` attribute provides the text for the link as it appears.

```yaml
- type: other-format
  name: PDF
  media_type: application/pdf
  link_relation: alternate
  url: /downloads/output.pdf
```

Similarly, links in the bottom footer of the Menu, are also created from links listed in the `resource_link` list, but with `type: footer-link`.

```yaml
- type: footer-link
  name: Privacy Policy
  url: https://www.getty.edu/legal/privacy.html
```

Read more about [resource links in the *Metadata & Configuration* chapter](/docs-v1/metadata-configuration/#formats-resources--links) of this guide.

### Other Menu Items

The publisher logo, copyright statement, and license information found in the Menu are all generated from YAML in the `publication.yaml` file of your project.

Read more about [copyright and licenses in the *Metadata & Configuration* chapter](/docs-v1/metadata-configuration/#copyright--license) of this guide.

Similarly, the “Cite This Page” feature in the Menu generates Chicago- and MLA-style citations for the current page based on YAML in the individual page itself, as well as that from the `publication.yaml` file.

Read more about [citation-related YAML in the *Copyright & About Pages*](/docs-v1/copyright-about-pages/) chapter of this guide.
