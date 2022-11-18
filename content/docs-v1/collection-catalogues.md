---
title: Collection Catalogues
weight: 6280
type: essay
abstract: "Learn how to publish a collection catalogue with Quire"
---

Along with monographs, edited volumes, and serial publications, Quire is also designed with the publication of collection catalogues in mind. This can be achieved by setting `entry` as the `layout` value in the `.md` file's page YAML. For more information see the [*Page Types & Structure*](/docs-v1/pages/#define-page-types) section of this guide. Collection catalogues typically feature a page for each object, images of the object, information about it, and an essay or entry text. To publish a catalogue with Quire, you’ll capture object data, create the object pages, and then, optionally, display a list of the objects included in your publication.

## Capture Object Data

Much like `figures.yaml` or `references.yaml`, all catalogue object metadata should be captured in a single `objects.yaml` file in the `contents/_data/` directory. Here is a brief sample of an `objects.yaml` file:

```yaml
object_display_order:
  - artist
  - year
  - dimensions
  - medium
  - location
object_list:
  - id: "2"
    title: "Impression, *Sunrise*"
    artist: "Claude Monet"
    year: "1872"
    medium: "Oil on canvas"
    dimensions: "48 cm × 63 cm (18.9 in × 24.8 in)"
    location: "Musée Marmottan Monet, Paris"
    link:
    figure:
      - id: "cat2"
  - id: "3"
    title: "Reading (portrait of Edma Morisot)"
    artist: "Berthe Morisot"
    year: "1873"
    medium: "Oil on fabric"
    dimensions: "74.2 x 100.3 x 12 cm (29 3/16 x 39 1/2 x 4 11/16 in.)"
    location: "Cleveland Museum of Art"
    link: http://www.clevelandart.org/art/1950.89
    download: true
    figure:
      - id: "cat3"
      - id: "cat3a"
      - id: "cat3b"
```

There are two sections in the `objects.yaml` file:  `object_display_order` and `object_list`.

- Your `object_display_order` controls the specifics of which attributes included in your `object_list` should be displayed and in what order. Following the sample above, the attributes included on the pages would be: `artist`, `year`, `dimensions`, `medium`, and `location`.

- The `object_list` is a list of the objects and their individual metadata attributes. With the exception of a few reserved terms, as noted in the table below, any attributes can be included here. These attributes and the associated values will ultimately display on the entry pages for each object. These attributes can also be renamed based on your publication's needs. For example, you can use the term `maker` instead of `artist`. To pull object images into the entry pages, the `ids` listed below `figure` attribute should match the `ids` in your project’s `figures.yaml` file.

| Attribute | Description |
| --- | --- |
| `id` | Required. Used to reference objects on the entry pages. Only numbers and/or lowercase letters with no spaces or special characters (`001`, `fig-01a`, etc).  |
| `figure` | A list of one or more images of an object. Use `id` values corresponding with `ids` in your project’s `figures.yaml` file. |
| `link` | A URL link to a page with more/current information on the object. Usually the object in the museum’s online collection pages. |

## Create Object Pages

Like all other pages in your publication, object pages are created as `.md` files in your `content` directory. An entry page can feature any images associated with the object, a table of object information (or tombstone information), and finally an essay or entry text. To create an object entry page, add `layout: entry` and the object `id` that corresponds with that entry in your project's `objects.yaml` file to the page YAML.

```yaml
layout: entry
object:
  - id: 1
```

### Entry Presentation

There are two different ways you can format your object entry pages: `side-by-side` in which the image appears next to the object information or `landscape` in which the image appears above the object information.

You can determine the format by either adding `presentation: side-by-side` or `presentation: landscape` to each entry's page YAML. Or you can set a default format for all your entry pages in the `content/_data/config.yaml` by choosing either `true` or `false` for the `sideBySide` attribute.

```yaml
entryPage:
  sideBySide: true
```

{{< q-figure id="modern-entry-side" >}}

### Object Images

You can add more than one image to your object entry page by listing multiple figure `ids` in your `objects.ymal` file. Multiple images are displayed as a rotating carousel and are arranged in the order they are listed in the `objects.yaml` file. If any of the object images have a `caption` and/or `credit`, that information will be included as a pop-up window.

If the figure’s `download` attribute is set to `true`, a download icon will be included as well.

### Object Link

If the `object_list` includes a `link` value, a “View in Collection” button is generated. The text of this button can be customized with the `objectLinkText` attribute in the project’s `content/_data/config.yaml` file.

```yaml
entryPage:
  objectLinkText: View in Collection
  ```

## Generate Object Lists/Grids

In a collection catalogue, there is typically a visual table of contents for the catalogue entries. To create a page with a list or visual grid of all the object entries, the entries themselves need to be grouped in their own section. In Quire, this means putting them in a subdirectory within the main `content` directory. Read more about it in the [*Pages Types & Structure*](/docs-v1/pages/#create-section-landing-pages) section of this guide.

In the example below, the `content` directory has a subdirectory called `catalogue`. Inside the `catalogue` folder there are three numbered `.md` files and an `index.md` file.

```md
📁 catalogue
  📄 index.md
  📄 1.md
  📄 2.md
  📄 3.md
```

The `.md` files are the individual object entry pages and the `index.md` file creates the table of contents that displays all three objects. To populate the table of contents, add `layout: table-of-contents` and the attribute `presentation` to the page YAML of the `index.md` file. Give the `presentation` attribute one of the following values: `brief`, `list`, `abstract`, or `grid`. For more information on these different `presentation` styles, take a look at the [*Table of Contents & Sidebar Menu*](/docs-v1/contents-menu) section of this guide.

```yaml
title: Catalogue
layout: table-of-contents
presentation: grid
```

{{< q-figure id="modern-contents-grid" >}}
