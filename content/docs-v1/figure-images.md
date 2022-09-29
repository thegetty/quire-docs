---
title: Figure Images
weight: 6200
type: essay
abstract: "Incorporate multiple images, videos, and other multimedia"
---

Quire is optimized for visual publishing. It is built to support the use of images for scholarly purposes. On this page, we explain where images are placed in the project and how you can manage them. Use the `figures.yaml` file to store all the information about your images and then insert the images into your Markdown documents with the `{% figure %}` {{< q-def "shortcode" >}}.

## Include Image Files in Your Publication

Image files should be placed in the `content/_assets/images` directory. It is defined in your project's `config.yaml` file with the parameter `imageDir: "/_assets/images"` and the directory can be changed if needed.

Quire does not require a specific image file format or size, but we have some recommended best practices:

- Use JPEG, PNG, or GIF.
- If your project is web-only, 800 pixels is fine for most images, whereas 1,800 pixels on the longest side will provide both a decent web experience and work for printing in the PDF without being too large a file size.
- Watch out for file sizes, especially on animated gifs which can get to be multiple megabytes quite quickly. Use {{< q-def "Image Optimization" >}} software when possible, and consider the total number of images on a given page when choosing sizes.

{{< q-class "box tip" >}}
- To include deep-zooming images in your Quire project please see the [*Zooming Images with IIIF*](/docs-v1/zooming-images) section of this guide.
{{< /q-class >}}

## Create a figures.yaml File for Figure Image Metadata

For most publications, or, at least, those with more than just a handful of images, figures and all their associated attributes can be listed in the `figures.yaml` file, which lives in your `/content/_data` directory. The figure image metadata, along with the image itself, can then be pulled into your project through the use of a shortcode. See the API-DOCs section for [complete details on possible figure attributes](/docs-v1/for-developers/#figure_list). Below is an example of two `figures.yaml` entries with the required attributes: `id` and `src`.

```yaml
- id: "1.1"
  src: "clyfford-still_untitled96.jpg"
- id: "1.2"
  src: "portrait-of-still.jpg"
```

Other available attributes are `alt`, `caption`, `credit`, `media_id`, `media_type`, `aspect_ratio`, and `label_text`.

{{< q-class "box warning" >}}

- If your figures are organized in sub-directories within your `/_assets/images` directory they should appear as part of the file path under `src`, otherwise, only the filename is needed. So for example, if the image portrait-of-still.jpg is saved in a subfolder in your `images` directory called `catalogue` the `src` value would be `/catalogue/portrait-of-still.jpg`.s

{{< /q-class >}}

### Adding Alt Text to Your Project

Unless a figure image is purely decorative, it should also include an alternate textual description under the `alt` attribute. Shortened from “alternative text,” alt text is a short visual description, separate from your captions and other descriptive text. Alt text improves the accessibility of your content for people who use screen readers, people with cognitive differences and diverse learning needs, and people with slower internet connections, among others. We recommend using the `alt` attribute for accessibility purposes. For more information check our [*Accessibility Principles*](/docs-v1/accessibility-principles/).

{{< q-figure id="5.5" >}}

For example, the YAML for the figure above might look like this:

```YAML
- id: "5.5"
  src: rococo_cat-1.jpg
  alt: "Frontal view of a long wooden cabinet with six doors, constructed with veneer, gilt bronze, and marble"
```

## Insert Figure Images with {% figure %} Shortcode

Once you've saved your images in the `/_assets/images` directory and created entries for each image in your `figures.yaml` file, then you are ready to insert figures into your publication by referencing the assigned `ids` in a shortcode. The shortcode will not only pull in the associated image referenced in the `src` attribute but also all the other attributes you've defined in the YAML for that particular image, such as captions or credits. A basic use of the `{% figure %}` shortcode would look like this:

```md
{% figure "1.2" %}
```

Always use the figure shortcodes on their own lines in your Markdown documents, in between paragraphs. Never within a paragraph. Traditionally, figures will be placed directly *after* the paragraph in which they were first referred to.

{{< q-class "box tip" >}}

- If you would like to label your figure image add a `label` attribute to the image entry in your  `figures.yaml` file.

{{< /q-class >}}

## Style Figure Images

By default, figures will display at the width of the full-column of text. Modifier classes can be added to a shortcode to style the way the figures appear. Available classes are `is-pulled-left` and `is-pulled-right`. This will put the image in-line with the text, either to the right or left. Within the shortcode, the first value is the `id` and the second value is the class type. They should both appear in quotes, separated by a comma.

```md
{% figure "1.2", "is-pulled-left" %}
```

{{< q-figure id="1.9" >}}

## Create and Style Figure Groups with the {% figure-group %} Shortcode

If your project uses a `figures.yaml` file, you can also create groupings of figures by using the `{% figure-group %}` shortcode. Within the shortcode, the `ids` of the images you would like included should appear separated by commas within one set of quotes.

```md
{% figure-group "1.1, 1.2" %}
```

The `{% figure-group %}` shortcode additionally supports the ability to specify a preferred grid width. In the below example, the inclusion of `"2"` before the list of `ids` means that the image grid will be 2 images wide at your publication layout’s full-size. Alternately, if you specified `"4"` the grid would be 4 images wide, making each image relatively smaller.

```md
{% figure-group "2", "1.1, 1.2, 1.3, 1.4" %}
```

{{< q-figure id="1.11" >}}

{{< q-class "box warning" >}}

- Note that this is only a **preferred** grid width. With Quire’s responsively designed templates, the specific width of images is variable and their position relative to one another may also change depending on a reader’s device. For instance, on a large monitor, four images in a group may appear side-by-side in a row, whereas on a phone, they would most likely be in a 2 x 2 grid, or stacked one on top of another. This responsiveness also means that group captions that use language like “From left to right” or "Clockwise from upper left," will only be correct some of the time. To avoid this issue and ensure a clear reading experience across all devices and publication formats, we recommend labeling figures individually.

{{< /q-class >}}

## Add Video Figures

Videos can be embedded in your publication the same way as other figure images. The difference being that you’ll also need to include a `media_id` and a `media_type` attribute, along with an optional `aspect_ratio` attribute in the `figures.yaml` file.

Quire supports video embeds from either YouTube (`media_type: youtube`) or Vimeo (`media_type: vimeo`). The `media_id`s can be found in the URLs of the videos you wish to embed. For example, in https://www.youtube.com/watch?v=VYqDpNmnu8I or https://youtu.be/VYqDpNmnu8I, the `media_id` would be `VYqDpNmnu8I`; and in https://vimeo.com/221426899 it is `221426899`.

```yaml
- id: 1.5
  src: videostill.jpg
  media_id: VYqDpNmnu8I
  media_type: youtube
```

The `src` image provided in this example is a frame from the video and will be used in place of the video in the PDF and EPUB versions of your publication. In Quire this is referred to as a fallback. Along with the fallback image, Quire will also automatically append a link to the video following the caption.

{{< q-class "box tip" >}}

- Note that on YouTube, videos can be filed as “Unlisted” and this will let you embed the video, but will not include the video on your channel page, or in YouTube’s general search engine.

{{< /q-class >}}

## Add Soundcloud Files

Embedding Soundcloud files follows a similar process to embedding videos. The YAML would include `media_type: soundcloud`. For the `media_id`, go to the Soundcloud file you'd like to feature and click the "share" button. Next, click the "embed" button which will open a long line of code. After "src=" you will see a url that includes string of nine numbers. This is your `media_id`.

{{< q-figure id="cva_podcast" >}}

For example, if you wanted to include the audio clip above in a Quire project, you would click "share" and then "embed". Then look for the following url embedded in the code:

```md
src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/809104705
```

You would then grab `809104705` and add that as a `media_id` to the YAML for this audio file.

```YAML
- id: "cva_podcast"
  src: /screenshots/cva_podcast.png
  media_id: 809104705
  media_type: soundcloud
  caption: "“Moving a Hundred-Year-Old Series Online: Getty’s Corpus Vasorum Antiquorum,” from Getty’s *Art & Ideas* podcast."
```

## Add Tables

In addition to inserting tables in your project [as Markdown](https://www.markdownguide.org/extended-syntax/#tables), you can also embed tables as HTML files, a format which enables more complex formatting. In the `/_assets/images` directory of your project create a new folder called `tables`. Create an `.html` file in that folder that follows the structure below:

``` html
<table>
  <thead>
    <tr>
      <th>Heading 1</th>
      <th>Heading 2</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>table data row 1 column 1</td>
      <td>table data row 1 column 2</td>
    </tr>
    <tr>
      <td>table data row 2 column 1</td>
      <td>table data row 2 column 2</td>
    </tr>
    <tr>
      <td>table data row 3 column 1</td>
      <td>table data row 3 column 1</td>
    </tr>
  </tbody>
</table>
```

{{< q-class "box tip" >}}

-  Use a free conversion tool like [Text Fixer](https://www.textfixer.com/html/) to quickly convert Word tables to HTML. You may still need to clean up the HTML, but for long tables, it is much faster than creating them by hand.

{{< /q-class >}}

Now that you've created your .html file you will need to add the table information to the `figures.yaml`. Similarly to embedding audio clips and videos, you will need to add a `media_type` to the entry. In this case, the type would be `table`. Make sure the `src` matches the name of the .html file you added to the `/_assets/images` directory.

```YAML
- id: "table-1-1"
  src: "tables/table-1-1.html"
  media_type: table
  label: "Table 1.1"
```

Then use the `{% figure %}` shortcode as normal to insert the table into the page:

```md
{% figure "table-1-1" %}
```

For more information on HTML tables check out the [Mozilla website](https://developer.mozilla.org/en-US/docs/Learn/HTML/Tables/Basics).
