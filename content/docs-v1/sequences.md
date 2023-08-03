---
title: "Figures Images: Sequences & Rotations"
weight: 6230
type: essay
abstract: "Create interactive 360-degree rotations and sequences from sets of static images"
---

Interactive 360-degree rotations and sequences are created from sets of static image files. For rotations, each image is an incremental view around the diameter of a three-dimensional object. Other sequences might be things like frames of a video, pages of a flip book, or sections of a panorama. Quire displays these image sequences in a click-and-drag interface that allows users to freely flip through the sequence and thereby rotate around the object, walk through the video, etcetera.

{{< q-class "box tip" >}}
View some [examples on our demo site](https://quire.getty.edu/demo/figures/sequences/).
{{< /q-class >}}

## Prepare the Sequence Image Files

In general, the goal should be to **minimize the number of images and their individual file size as much as possible** while still producing an image that rotates smoothly and looks crisp. You will likely need to test your sequences to find the settings that work best for your case, but following are some basic standards.

### Number of Images

For high-quality 360-degree rotations, between 45 and 90 individual images should be sufficient. For other sequences, the number of images may be more varied.

There is no upper or lower technical limit to the number of images Quire can display in a sequence. However, the more images are included, the more bandwidth will be used both for you in hosting the site and for your users in visiting it. 

High-end captures for rotations may include one image for every one degree around an object, or 360 total images. When taking a subset of those for display in Quire, be sure to take them at equal intervals. For example, if you want 45 total images, they should be taken at 8-degree intervals. Uneven intervals will lead to uneven rotation through the final sequence. Likewise, for non-rotating sequences. The more evenly spaced the incremental changes are from image to image, the smoother the final interactive will be.

### Image Format, Size, and Quality

We recommend JPGs, with a maximum height of 1600px, and a compression quality of 70–80%. This will generally lead to individual file sizes of 250kb or less, while still looking good on screen.

For sequences using a lot of individual images, it would be better for the images to be smaller file sizes than the above. For sequences with less individual images, you may be able to get away with larger file sizes.

Quire also accepts PNG and SVG files for image sequences.

### Filenaming

By default, Quire expects image sequences to be sequentially numbered JPGs or PNGs with three digits and the file suffix as `jpg` or `png` in lowercase: 

```
001.jpg, 002.jpg, 003.jpg ...
```

The numbers should be in order, but need not be consecutive. For example, if you started with a set that included one image for every degree around an object (001.jpg ... 360.jpg) and used only every eighth one, you would still end up with a valid sequence and there is no need to renumber them.

```
001.jpg, 109.jpg, 117.jpg ...
```

If your files do not follow the default naming scheme, you can specify this with the `regex` (regular expression) attribute as described in the section below.

### Add the Images to Your Project

All the images in your sequence should be in the their own directory within the `content/_assets/images/` directory, along with your other image assets. As always, the name of the directory should be lowercase with no spaces or special characters. For example, `content/_assets/images/rotating-figure/`. 

The image sequence can also be in a subdirectory. For example `content/_assets/images/figures/rotating-figure/`. In that case, just be sure to include the subdirectory path `figures/` in the sequence `id` as shown in the next step. 

## Write the Figure YAML

To create a `figures.yaml` entry for an image sequence, add the `sequences` attribute to the standard figure YAML markup. Within `sequences`, add an `id` that corresponds with the path of the image files and a `behavior`. 

```yaml
- id: "rotating-figure"
  label: "Fig. 1"
  caption: "My rotating image."
  sequences:
    - id: "figures/rotating-figure/"
      behavior:
        - continuous
        - sequence
```

The `id` refers to the directory where your sequence is located as described in the [Add the Images to Your Project](#add-the-images-to-your-project) section above.

The `behavior` attribute must always include both `continuous` and `sequence`. (The `behavior` values are based on the [IIIF presentation API](https://iiif.io/api/presentation/3.0/#behavior). Currently only `continuous` and `sequence` are supported in Quire.)

### Change the Direction

By default, the images will be shown one after the other as the user clicks and drags from left to right. This can be changed by adding a `viewing_direction` attribute with the value `"right-to-left"`.

```yaml
- id: "rotating-figure"
  label: "Fig. 1"
  caption: "My rotating image."
  sequences:
    - id: "figures/rotating-figure/"
      behavior:
        - continuous
        - sequence
      viewing_direction: "right-to-left"
```

(Like `behavior` above, the `viewing_direction` is based on the [IIIF presentation API](https://iiif.io/api/presentation/3.0/#viewingdirection). Currently only `left-to-right` and `right-to-left` are supported in Quire.)

### Specify a Start Position

The naming of your image files determines the order in which they will appear, as described in [Filenaming](#filenaming). Quire will start the sequence with the first file in order (typically `001.jpg`) but this can be customized by adding a `start` value to the figure YAML. The value should correspond to one of the images in your sequence.

```yaml
- id: "rotating-figure"
  label: "Fig. 1"
  caption: "My rotating image."
  sequences:
    - id: "figures/rotating-figure/"
      behavior:
        - continuous
        - sequence
      start: 032.jpg
```

The `start` image (whether the default first image, or the one defined with the `start` attribute) is also what is used in Quire’s PDF and EPUB outputs, in place of the full interactive sequence.

### Change the Default File Name

As mentioned above, Quire expects image sequences to be sequentially numbered JPGs or PNGs with three digits and the file suffix as `jpg` or `png` in lowercase: 001.jpg, 002.jpg, 003.jpg, etc. 

If your files do not follow the default naming scheme, or are a different file format, you can specify this with the `regex` (regular expression) attribute in the `figures.yaml` entry.

For example, if you have image names like img_00001.jpeg, img_00003.jpeg, img_00005.jpeg, etc., the regex pattern would be:

```yaml
- id: "rotating-figure"
  label: "Fig. 1"
  caption: "My rotating image."
  sequences:
    - id: "figures/rotating-figure/"
      behavior:
        - continuous
        - sequence
      regex: /img_\d{5}\.jpeg/
```

The regex pattern must always be surrounded by slashes (/). The rest breaks down like this:

- `img_`: a string that exactly matches "img_"
- `\d`: any digit
- `{5}`: exactly five of the proceeding character(s), in this case, digits
-  `\.jpeg`: a string that exactly matches ".jpeg" (the leading backslash "\" is an escape character for the period which would otherwise match any character, not just an actual period)

{{< q-class "box tip" >}}
To learn more about regular expressions, check out the [RegexOne](https://regexone.com/) tutorial for beginners, and [RegEx101](https://regex101.com/) as a good tool to test your regex patterns.
{{< /q-class >}}

## Display the Image in Your Project

Once the image files are in your project and you have your YAML entry complete, adding the images to your pages can be done with the `{% figure %}` shortcode. Users will be able to interact with the figure in the lightbox modal (by clicking on the image or figure label), but not directly on the page.

```
{% figure 'rotating-figure' %}
```

{{< q-class "box warning" >}}
Sequential images will not be interactive if you have `figures.enableModal` set to `false` in your `config.yaml` file.
{{< /q-class >}}

Rotating and sequential images can also be added to the lightbox on `layout: entry` pages through `objects.yaml` file (see the [*Collection Catalogues*](/docs-v1/collection-catalogues/) section of this guide). When used in the entry page lightbox, they will be ready to interact with without having to open them full screen.

```yaml
- id: 'cat-1'
  title: 'Catalogue Object 1'
  artist: 'Alicia Q. Sculptor'
  year: 'YYYY'
  figure:
    - id: 'rotating-figure'
```

Whether the sequence is included via the `{% figure %}` shortcode or the entry page lightbox, the start image (either the first image in the sequence or the image defined as `start` in `figures.yaml`) will be what is displayed in the PDF and EPUB outputs.