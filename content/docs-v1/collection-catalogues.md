---
title: Collection Catalogues
weight: 6280
type: essay
abstract: "Learn how to publish a collection catalogue with Quire"
aliases:
  - /documentation/collection-catalogues/
---

Along with monographs, edited volumes, and serial publications, Quire is also designed with the publication of collection catalogues in mind. This can be achieved by setting `entry` as the `layout` value in the `.md` file's page YAML. For more information see the [*Page Types & Structure*](/docs-v1/pages/#define-page-types) section of this guide. Collection catalogues typically feature a page for each object, images of the object, information about it, and an essay or entry text. To publish a catalogue with Quire, you’ll capture object data, create the object pages, and then, optionally, display a list of the objects included in your publication.

## Capture Object Data

Object data can be included in the page YAML of individual markdown pages, or in a single `objects.yaml` file in the `contents/_data/` directory and then referenced from the pages by `id`.

**Objects data on a page:**

```yaml
---
title:
layout:
order:
object:
  - name:
    number:
    location:
    material:
---
```

**Objects data referenced from the objects.yaml file:**

```yaml
---
title:
layout:
order:
object:
  - id: 1
---
```

In the `objects.yaml` file, object data should be included as part of an `object_list`.

```yaml
object_list:
  - id: 1
    name:
    number:
    location:
    material:
  - id: 2
    name:
    number:
    location:
    material:
```

The data attributes you choose to include for your objects are completely up to you. As detailed below they can be configured to display in a table on the `entry` page or as part of the card on the `objects-page` page.

Although you can include highly nested data for your objects, Quire cannot (without customization) display object data that is nested in sub-attributes or as sub-lists. For example, in the following example, any values under `dates` or `owners` won’t be able to display.

```yaml
object:
  - number: ""
    name: ""
    location: ""
    dates:
      start_date: ""
      end_date: ""
    owners:
      - full_name: ""
        occupation: ""
      - full_name: ""
        occupation: ""
```

There are also some attribute names that are reserved for particular uses as detailed in the table below. They are `id`, `figure`, `link`, and `thumbnail`.

| Reserved Attribute | Description |
| --- | --- |
| `id` | Used to reference objects listed in objects.yaml file from individual markdown pages. Should be only numbers and/or lowercase letters with no spaces or special characters (`001`, `obj-01`, etc).  |
| `figure` | A list of one or more images related to the object. Use `id` values corresponding with `ids` in your project’s `figures.yaml` file. |
| `link` | A URL to an external page with more/current information on the object. Such as to an object page on a museum website in the case of collection catalogues.  |
| `thumbnail` | A path to a thumbnail image of the object, to be displayed on the cards of the  `object-grid` page. (If the first `figure` of an object is marked `zoom: true` a thumbnail image will be created automatically, and a separate `thumbnail` is not needed.) |

## Create Object Pages

Like all other pages in your publication, object pages are created as `.md` files in your `content` directory. An entry page can feature any images associated with the object, a table of object information (or tombstone information), and finally an essay or entry text. To create an object entry page, add `layout: entry` and the object data, or an `id` that corresponds with that entry in your project's `objects.yaml` file to the page YAML.

```yaml
layout: entry
object:
  - id: 1
```

There are two different ways you can format your object entry pages: `side-by-side` in which the image appears next to the object information, or `landscape` in which the image appears above the object information.

You can determine the format by either adding `presentation: side-by-side` or `presentation: landscape` to each entry's page YAML. Or you can set a default format for all your entry pages in the `content/_data/config.yaml` by choosing either `true` or `false` for the `sideBySide` attribute.

```yaml
entryPage:
  sideBySide: true
```

{{< q-figure id="modern-entry-side" >}}

Whatever the presentation, you can further organize the content on the page by using Quire’s `{% accordion %}` shortcode to wrap the individual parts of the object entry into collapsible sections. Read more in the [*Accordions*](/docs-v1/accordions/) chapter of this guide.

{{< q-figure id="modern-entry-side-accordion" >}}


### Object Images

You can associate a figure image with objects by listing the figure `id` (from your project’s `figures.yaml` file) under `figure` in the object data.

```yaml
object_list:
  - id: 1
    name:
    number:
    location:
    material:
    figure:
      - id: "fig-1-1"
```

You can add more than one image to your object entry page by listing multiple figure `ids` from your `objects.yaml` file. Multiple images are displayed as a rotating carousel next to or above the main text and are arranged in the order they are listed in the objects data. If any of the object images have a `label`, `caption` and/or `credit`, that information will be included as an overlay in the image carousel. Object figures can also have `annotations` or `sequences` associated with them and they will display in the image carousel as well. As will video, audio or table figures.

```yaml
object_list:
  - id: 1
    name:
    number:
    location:
    material:
    figure:
      - id: "fig-1-1"
      - id: "fig-1-2"
      - id: "fig-1-3"
```



### Object Tombstone

At the top of the object entry page, a table of data about the object on the page will be displayed. In a collection catalogue, this is known as an object "tombstone". The object data that is displayed in the tombstone is configured in the objects.yaml file by listing the items you want to list, in the order you want them listed, under `object_display_order`.

```yaml
object_display_order:
  - artist
  - year
  - dimensions
  - medium
  - location
```

### Object Link

If the `object_list` includes a `link` value, a “View in Collection” button is generated. The text of this button can be customized with the `objectLinkText` attribute in the project’s `content/_data/config.yaml` file.

```yaml
entryPage:
  objectLinkText: View in Collection
  ```

## Generate Object Lists/Grids


You can create a page linking to all of your objects either using `layout: table-of-contents`, or `layout: objects-page`.

The `table-of-contents` layout will list the `label`, `title`, `subtitle`, and `contributors` to every page in the section, not just object pages, in a variety of formats.

The `objects-page` will list only pages with `object` data in a grid format, and allow you to customize what information about that object is displayed. You can also add drop-down menus that allow your readers to filter the grid of objects based on attributes you choose.






```yaml
layout: objects-page
```

### Choose What Displays on the Object Card

Any of the top-level data associated with an object, can be displayed on the Object Card. For example, from the following data `number`, `name`, and `location` could be displayed on the card. Because `dates` and `owners` have sub-attributes, Quire cannot display them on the card.


```yaml
object:
  - number:
    name:
    location:
    dates:
      start_date:
      end_date:
    owners:
      - full_name:
        occupation:
      - full_name:
        occupation:
```


```yaml
object_card:
  - letter
  - thumbnail
  - name
  - artist
  - time_span
```

```yaml
object_filters:
  - type
  - theme
  - material
```






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
