---
title: Collection Catalogues
weight: 5100
type: essay
menu: false
abstract: "Learn how to publish a collection catalogue with Quire"
---

Along with monographs, edited volumes, and serial publications, Quire is also designed with the publication of museum collection catalogues in mind and has a specific page `type` for them (See all page types in the [*Page Types & Structure*](/docs-v0/pages/#define-page-types) section of this guide.) Collection catalogues typically feature a page for each object, images of the object, information about it, and an essay or entry text. To publish a catalogue with Quire, you’ll capture object data, create the object pages, and then, optionally, display a list of the objects included in your publication.

## Capture Object Data

Much like `figures.yml` or `references.yml`, all catalogue object metadata should be captured in a single `objects.yml` file in the `data` directory of your project and then identified as needed in the different Markdown pages of your publication. Here is a brief sample of an `objects.yml` file:

```yaml
object_display_order:
  - artist
  - year
  - dimensions
  - medium
  - location
object_list:
  - id: 2
    title: Impression, *Sunrise*
    artist: Claude Monet
    year: 1872
    medium: Oil on canvas
    dimensions: 48 cm × 63 cm (18.9 in × 24.8 in)
    location: Musée Marmottan Monet, Paris
    link:
    figure:
      - id: "cat2"
  - id: 3
    title: Reading (portrait of Edma Morisot)
    artist: Berthe Morisot
    year: 1873
    medium: Oil on fabric
    dimensions: 74.2 x 100.3 x 12 cm (29 3/16 x 39 1/2 x 4 11/16 in.)
    location: Cleveland Museum of Art
    link: http://www.clevelandart.org/art/1950.89
    download: true
    figure:
      - id: "cat3"
      - id: "cat3a"
      - id: "cat3b"
```

There are two sections in the `objects.yml` file: `object_list` and `object_display_order`:

- The `object_list` is a list of the objects and their individual metadata attributes. With the exception of a few reserved terms, as noted in the table below, any attributes can be included here. These attributes and the associated values will ultimately display on the entry pages for each object.

- You control the specifics of which attributes to display and in what order by listing them under `object_display_order`. Following the sample above, the attributes included on the pages would be: `artist`, `year`, `dimensions`, `medium`, and `location`.

Any images of the object are also included here, under the `figure` attribute. This is a list of one or more images. It is recommended that this list contains only `id` values corresponding with `id`s in your project’s `figures.yml` file. However, if you prefer, you can instead include a `src` attribute with the filename as it appears in your project’s image directory.

Here are the only defined object attributes, you can include any others you like:

| Attribute | Description |
| --- | --- |
| `id` | Required. Used to reference objects from entry pages. Should be numbers and lowercase letters only, with no spaces or special characters (`001`, `fig-01a`, etc). |
| `figure` | A list of one or more images of the object. It is recommended that this list be only of `id` values corresponding with `id`s in your project’s `figures.yml` file. |
| `link` | A URL link to a page with more/current information on the object. Usually the object in the museum’s online collection pages. |
| `date_start`, `date_end` | Reserved for future use in Quire. |
| `dimension_width`, `dimension_height`, `dimension_depth` | Reserved for future use in Quire. |

## Create Object Pages

Like all other pages in your publication, object pages are generated from the Markdown files in your `content` directory. To create an object entry page, give the page a `type: entry` in the page YAML block, and list one or more objects by `id` corresponding to those in your `objects.yml` file.

```yaml
type: entry
object:
  - id: 1
```

The page will feature any images associated with the object, followed by a table of object information and finally an essay/entry text included in the page {{< q-def "Markdown file" >}}.

{{< q-figure id="1.7" >}}

If you add multiple figures of the object, the figures are displayed in a rotating carousel and are arranged in the order they are listed in the object information in `objects.yml`. If any of the object figures have a `caption` and/or `credit`, they will be included as a pop-up window. And if the figure’s `download` attribute is set to `true`, a download icon will be included as well.

{{< q-class "box tip" >}}
- If the `object_list` includes a `link`, a “View in Collection” button is generated. The text of this button can be customized with the `objectLinkText` attribute in the project’s `config.yml` file.
{{< /q-class >}}

## Generate Object Lists/Grids

In a collection catalogue, there will typically be a visual table of contents for just the catalogue entries. To create a page with a list or visual grid of all the object entries, the entries themselves need to be grouped in their own section. In Quire, this means putting them in a subdirectory within the main `content` directory. (Read more about it in the [*Pages Types & Structure*](/docs-v0/pages/) section of this guide).

In this example, inside the `content` directory, we have a folder called `catalogue` and inside that, three numbered entries and an overview page:

```md
📁 catalogue
  📄 overview.md
  📄 1.md
  📄 2.md
  📄 3.md
```

The `overview.md` file is going to be our visual table of contents. To populate it, simply give it the attribute `type` a value of `"contents"` and the attribute `class` a value of  `"brief"`, `"list"`, `"abstract"`, or `"grid"` to determine the style. (The `"grid"` option will include an image from each entry page.) This `"contents"` page type will automatically generate from each of the Markdown files in the folder.

```yaml
title: Catalogue
type: contents
class: grid
slug: .
```

{{< q-figure id="1.8" >}}

{{< q-class "box tip" >}}

- The `slug` value in the sample above, will change the URL of the page. Instead of being `/catalogue/overview` it will be simply `/catalogue`. Read more about the function of `slug` in the [*Pages Types & Structure*](/docs-v0/pages/) section of this guide.

{{< /q-class >}}
