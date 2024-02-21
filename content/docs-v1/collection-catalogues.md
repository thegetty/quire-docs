---
title: Collection Catalogues 
weight: 6280
type: essay
abstract: "Learn how to publish a collection catalogue with Quire"
aliases:
  - /documentation/collection-catalogues/
---

Along with monographs, edited volumes, and serial publications, Quire is also designed with the publication of collection catalogues in mind. Collection catalogues typically feature a page focused on an individual object, images of the object, information about it, and an essay or entry text. To publish this style of publication with Quire, you’ll capture object data, create the object pages, and then, optionally, display a list or grid of the objects.

## Create Object Pages

Like all other pages in your publication, object pages are created as `.md` files in your `content` directory. To create an object entry page, add `layout: entry` and either the object data or an `id` that corresponds with your `objects.yaml` file to the page YAML, as explained in the [*Capture Object Data*](#capture-object-data-on-entry-page) section below. 

There are two different ways you can format your object entry pages. Adding `presentation: side-by-side` to the page YAML will make the image appear next to the object information and `presentation: landscape` will make the image appear above the object information. You can set a default format for all your entry pages in the `content/_data/config.yaml` by choosing either `true` or `false` for the `sideBySide` attribute.

{{< q-figure id="modern-entry-side" >}}

Whatever the presentation, you can further organize the content on the page by using Quire’s `{% accordion %}` shortcode to wrap the individual parts of the object entry into collapsible sections. Read more in the [*Accordions*](/docs-v1/accordions/) chapter of this guide.

{{< q-figure id="modern-entry-side-accordion" >}}

## Capture Object Data on Entry Page

Object data can be included on a page with a `layout: entry` in two ways: directly in the page YAML or by using an `id` in the page YAML that references the `objects.yaml` file located in the `contents/_data/` directory. 

**Object data in page YAML:**

```yaml
---
title: 
layout:
order:
object:
  - artist:
    year:
    dimensions:
    medium:
    location:
---
```

**Object data that references `id` in objects.yaml file:**

```yaml
---
title:
layout:
order:
object:
  - id: 1
---
```

## Creating An `objects.yaml` File

The first step in creating an `objects.yaml` file is determining the object information that you want to capture. This data can then be displayed in a few places. The primary place is at the top of the object entry page (either side-by-side with an object image or below it). The information is displayed as a table of data. In a collection catalogue, this is known as an object "tombstone". 

There are two steps required when setting up your `objects.yaml` page. The first step is to create an  `object_display_order` list. This controls not only what information alongside your object will appear but also the order in which it appears.  

```yaml
object_display_order:
  - artist
  - year
  - dimensions
  - medium
  - location
```

Once you have determined what information you want you will then create an `object_list`. Similar to entries in a `figures.yaml` file, each entry in this list will reference a different object featured in your publication. The data that appears in this list should match the items in the `object_display_order`.

```yaml
object_list:
  - id: 1
    artist:
    year:
    dimensions:
    medium:
    location:
  - id: 2
    artist:
    year:
    dimensions:
    medium:
    location:
```

The data attributes you choose to include for your objects are completely up to you. However, there are some attribute names that are reserved for particular uses as detailed in the table below. They are `id`, `figure`, `link`, and `thumbnail`. These should be included in the `object_list` but do not need to be included in the `object_display_order`. 

| Reserved Attribute | Description |
| --- | --- |
| `id` | Used to reference objects listed in `objects.yaml` in individual Markdown pages. |
| `figure` | One or more images related to the object. Use `id` values corresponding with `ids` in your project’s `figures.yaml` file. |
| `link` | A URL to an external page with more/current information on the object (such as link to an object page on a museum website in the case of collection catalogues).  |
| `thumbnail` | A path to a thumbnail image of the object to be displayed on an `object-grid` page. |

### Object `id`

To create an object entry page, add `layout: entry` to the page YAML along with an object `id` that refers to an entry in the `objects.yaml` file. The only time this is not required is if the object information is listed directly in the page YAML.

### Object Figure

To include one or more images alongside or above the table of object data, you include a figure `id` that references your `figures.yaml` file in the `object_list`. 

```yaml
object_list:
  - id: 1
    artist:
    year:
    dimensions:
    medium:
    location:
    figure: 
      - id: "fig-1-1"
      - id: "fig-1-2"
      - id: "fig-1-3"
```

You can add more than one image to your object entry page by listing multiple figure `ids`. Multiple images are displayed as a rotating carousel next either side-by-side or above the object data. If any of the object images have a `label`, `caption` and/or `credit`, that information will be included as an overlay in the image carousel. Object figures can also have `annotations` or `sequences` associated with them and they will display in the image carousel as well. As will video, audio or table figures.

### Object Link

If the `object_list` includes a `link` value, a “View in Collection” button is generated. The text of this button can be customized with the `objectLinkText` attribute in the project’s `content/_data/config.yaml` file.

```yaml
entryPage:
  objectLinkText: View in Collection
  ```

### Thumbnail 

You can associate a small thumbnail image with your object by using the `thumbnail` attribute and including a path to that image as the value. The image should be small, approximately 300 pixels wide. This attribute is only required if the object image does not include the setting `zoom: true` in the `figures.yaml`. Thumbnails are primarily used on object grid pages. More information on those can be found in the [*General Object Grids*](#generate-object-grids) section below.

## Generate Object Grids

In a collection catalogue, there is typically a visual table of contents that unifies all the catalogue entries/objects. In Quire, you can create this by adding `layout: object-grid` to any `.md` file in your project, whether it's an `index.md` file in a subdirectory or a regular file in the root directory. This grid will include both a thumbnail image of the object and relevant object data  The image and data appear on something referred to as an "object card". An object card will be added to the object grid for any page that includes the `object` attribute within the page YAML as described in [*Capture Object Data on Entry Page*](#capture-object-data-on-entry-page). 

```yaml
layout: object-grid
```

[Include example]

Nothing else needs to be written on this page. 


{{< q-class "box warning" >}}
As described in the [*Page Types & Structure*](/docs-v1/pages/#create-section-landing-pages) section of the documentation, the `index.md` file is used within a subfolder to create a landing page for all the contents found in that directory. An approximation of an object grid can be created by adding `layout: table-of-contents` and `presentation: grid` to the `index.md file`. However, we recommend reserving `layout: table-of-contents` for `essay` pages.
{{< /q-class >}}


### Choose What Displays on the Object Card

You can customize what information appears on an object card by adding `object_card` data to your `objects.yaml` file. This list must reference attributes found both in the `object_display_order` list as well as the `object_list` but can be paired down. 

So for example, if your `object_list` includes  `artist`, `year`, `dimensions`, `medium`, and `location` but you only want to include three of those items in the object grid, then those should be included in your `object_card` list. The information will appear on the card in the same order they are listed. 

```yaml
object_card:
  - artist
    year
    location
```



### Create Filterable Object Cards 

You can also add drop-down menus that allow your readers to filter the object cards based on attributes of your choosing. You can do this by adding a list `object_filter` along with a list of filterable values that correspond to items in the `object_list`. Not all the items have to have a value. 

```yaml
object_filters:
  - location:
  - medium:
```

```yaml
object_filters:
  - field: "artist" (this would need to match the attributed)
    label: "Artist" (Allows you to customize how the field is labeled)
  - type:
  - theme:
  - material:
```

The wording has to be exact. Date 1993 or circa 1993 are not the same. Will appear in drop-down alphabetically-numerically. Data for filters need to be as refined and clean as possible. Include a screenshot example of clean data v. messy data. Same with dimensions. 

Year and display year / or year and sort year / use sort year in the object_filter list.

Any object you are filtering on can have multiple values and each would be filterable. included in the filter. 

medium: ["graphite", "pastel", "paper"]

Dropdown will be created for all three. 

### Example `object.yaml` file

```yaml
object_display_order:
  - artist
  - year
  - dimensions
  - medium
  - location
```

```yaml
object_list:
  - id: 1
    artist:
    year:
    dimensions:
    medium:
    location:
  - id: 2
    artist:
    year:
    dimensions:
    medium:
    location:
```

```yaml
object_card:
  - artist
    year
    location
```

```yaml
object_filters:
  - location:
  - medium:
```