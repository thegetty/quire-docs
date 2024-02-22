---
title: Collection Catalogues 
weight: 6280
type: essay
abstract: "Learn how to publish a collection catalogue with Quire"
aliases:
  - /documentation/collection-catalogues/
---

Along with monographs, edited volumes, and serial publications, Quire is also designed with the publication of collection catalogues in mind. Collection catalogues typically feature a page focused on an individual object, images of the object, information about it, and an essay or entry text. To publish this style of publication with Quire, you’ll capture object data, create the object pages, and then, optionally, display a grid of the objects.

## Create Object Pages

Like all other pages in your publication, object pages are created as `.md` files in your `content` directory. To create an object entry page, add `layout: entry` and either the object data or an `id` that corresponds with your `objects.yaml` file to the page YAML, as explained in the [*Capture Object Data*](#capture-object-data-on-entry-page) section below. 

There are two different ways you can format your object entry pages. Adding `presentation: side-by-side` to the page YAML will make the image appear next to the object information and `presentation: landscape` will make the image appear above the object information. You can set a default format for all your entry pages in the `content/_data/config.yaml` by choosing either `true` or `false` for the `sideBySide` attribute.

{{< q-figure id="modern-entry-side" >}}

Whatever the presentation, you can further organize the content on the page by using Quire’s `{% accordion %}` shortcode to wrap the individual parts of the object entry into collapsible sections. Read more in the [*Accordions*](/docs-v1/accordions/) chapter of this guide.

{{< q-figure id="modern-entry-side-accordion" >}}

## Capture Object Data on Entry Page

Object data can is added to a page with a `layout: entry` in two ways: directly in the page YAML or by using an `id` in the page YAML that references the `objects.yaml` file located in the `contents/_data/` directory.

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
    figure:
      - id: 
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

## Creating an `objects.yaml` File

Object data is displayed in a collection catagloue via a table of data at the top of the entry page. This is often referred to as an object "tombstone". The other place it can be displayed is on an object grid page, which is explained in greater detail in the [*Generate Object Grids*](#generate-object-grids) section of this chapter. In order for the `layout: entry` pages to populate with this table of data, as well as images, this information must be captured in an `objects.yaml` file. 

There are two steps required when setting up your `objects.yaml` page. The first step is to create an  `object_display_order` list. This controls not only what information will appear in the table of object data but also the order in which it appears.  

```yaml
object_display_order:
  - artist
  - year
  - dimensions
  - medium
  - location
```

Once you have determined the information you want to display, then you then create an `object_list`. Similar to entries in a `figures.yaml` file, each entry in this list will reference a different object featured in your publication. The attributes that are populated in this list should match the items in the `object_display_order`.

```yaml
object_list:
  - id: 1
    artist:
    year:
    dimensions:
    medium:
    location:
    link: 
    figure:
      - id: 
  - id: 2
    artist:
    year:
    dimensions:
    medium:
    location:
    link: 
    figure: 
      - id: 
```

The attributes you choose to include for your objects are completely up to you. However, there are some attribute names that are reserved for particular uses. They are `id`, `figure`, `link`, and `thumbnail`. These should be included in the `object_list` but do not need to be included in the `object_display_order`. 

| Reserved Attribute | Description |
| --- | --- |
| `id` | Used to reference objects listed in `objects.yaml` in individual Markdown pages. |
| `figure` | One or more images related to the object. The `id` values correspond with `ids` in your project’s `figures.yaml` file. |
| `link` | A URL to an external page with more/current information on the object (such as link to an object page on a museum website in the case of collection catalogues).  |
| `thumbnail` | A path to a thumbnail image of the object to be displayed on an `object-grid` page. |

### Object `id`

To create an object entry page, add `layout: entry` to the page YAML along with an object `id` that refers to an entry in the `objects.yaml` file. 

```yaml
---
title:
layout:
order:
object:
  - id: 1
---
```

The only time this is not required is if the object information is listed directly in the page YAML.

### Object Figure

To include one or more images either alongside or above the table of object data, include a figure `id` that references your `figures.yaml` file in the `object_list`. 

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

You can add more than one image to your object entry page by listing multiple figure `ids`. Multiple images will the be displayed as a rotating carousel. You can also include videos, audio clips, or table figures. If any of the object images have a `label`, `caption` and/or `credit`, that information will be included as an overlay in the image carousel.

### Object Link

If the `object_list` includes a `link` value, a “View in Collection” button is generated. The text of this button can be customized with the `objectLinkText` attribute in the project’s `content/_data/config.yaml` file.

```yaml
entryPage:
  objectLinkText: View in Collection
  ```

### Thumbnail 

If you are using the object grid feature described below and the figure associated with a particular object *does not* include the setting `zoom: true` in the `figures.yaml`, then you can create a small thumbnail image for your object by using the `thumbnail` attribute and including a path to that image as the value. The image should be small, approximately 300 pixels wide. 

If the object figure is not set to `zoom: true`, you will need to include both the figure `id` and the `thumbnail` path.

```yaml
object_list:
  - id: 1
    artist:
    year:
    dimensions:
    medium:
    location:
    thumbnail: 
    figure: 
      - id: "fig-1-1"
      - id: "fig-1-2"
      - id: "fig-1-3"
```

## Generate Object Grids

In a collection catalogue, there is typically a visual table of contents that unifies all the catalogue entries/objects. 

[Add object grid screenshot]

To create this visual table of contents, which we refer to as an object grid there are three key steps. Add `layout: object-grid` to a `.md` file, add an `object-card` list to your `objects.yaml` file, and add an `object-filters` list to the `objects.yaml` file.

{{< q-class "box warning" >}}
- As described in the [*Page Types & Structure*](/docs-v1/pages/#create-section-landing-pages) section of the documentation, an `index.md` file is used within a subfolder to create a landing page for all the contents found in that directory. An approximation of an object grid can be created by adding `layout: table-of-contents` and `presentation: grid` to the `index.md file`. However, we recommend reserving `layout: table-of-contents` for `essay` pages only.
{{< /q-class >}}

### Step 1: Add `layout: object-grid` to a designated Markdown file 

You can add `layout: object-grid` to any `.md` file, whether it's an `index.md` file in a subdirectory or a regular file in the root directory. 

```yaml
layout: object-grid
```

Similar to an `index.md` file, nothing else needs to appear below the page YAML on that page. The contents will be automatically populated. 

### Step 2: Add an `object-card` list to your `objects.yaml` file

The object grid is comprised of "object cards" that can include an image and relevant data about that object. 
An object card will be added to the object grid for any page that includes the `object` attribute within the page YAML as described in [*Capture Object Data on Entry Page*](#capture-object-data-on-entry-page). 

Add `object_card` to your `objects.yaml` file along with a list of the attributes from your `object_list` that you want to populate on the card. The `object_card` list not only controls what information appears on the card, but also the order it appears in.

```yaml
object_card:
  - thumbnail
    artist
    year
    location
```

If you want an image to appear on the card, you must include the attribute `thumbnail` in the `object_card` list, whether you are using a `thumbnail` in your `object_list` or referencing a figure `id` that has the setting `zoom: true`. 

### Step 3: Add an `object-filters` list to the `objects.yaml` file

The final step is adding an `object_filters` list to the `objects.yaml`. Quire provides the option to add drop-down menus that readers can use to filter the object cards based on attributes of your choosing. This list must be added to your `objects.yaml` file whether you want to include filters or not. 

If you do not want filters for your object grid, add the following line to the `objects.yaml` file.

```yaml
object_filters: false
```

[Include screenshot)]

If you do want filters for your object grid, include a list of attributes that match options found in your `object_list`.

```yaml
object_filters:
  - location
  - medium
```

[Include screenshot]

You can customize the phrasing of the filterable categories by using `field` and `label` attributes with values that clarify the specific wording or appearance of your text. 

```yaml
object_filters:
  - field: "artist" (this would need to match the attributed)
    label: "Artist" (Allows you to customize how the field is labeled)
  - type
  - theme
  - material
```

It's important to note that the wording must be exact. For example, `date: 1993` and `date: circa 1993` are not the same. Data for filters need to be as refined and clean as possible. A solution for this particular issue would be to create a `sort year`.

```yaml
object_filters:
  - year: "circa 1993"
    sort: "1993"
  - type
  - theme
  - material
```

Any object you are filtering on can have multiple values and each would be filterable. In the example below, a dropdown menu will be created for all three materials "graphite", "pastel", and "paper". 

```yaml
object_filters:
  - year: "circa 1993"
    sort: "1993"
  - type
  - theme
  - material: ["graphite", "pastel", "paper"]
```

### Sample `object.yaml` file

[Greg what do you think if I include a sample objects.yaml file and then a screenshot of how that data would appear on the object-grid page??]