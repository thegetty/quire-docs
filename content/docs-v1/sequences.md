---
title: "Figures Images: 360-Degree Rotations"
weight: 6230
type: essay
abstract: "Create interactive 360-degree rotations from static sequences of images"
---

360-degree rotating images are created from a sequence of static image files that show incremental views around the diameter of a three-dimensional object. Quire displays these image sequences in a click-and-drag interface that allows users to freely flip through the sequence and thereby around the object.

{{< q-class "box tip" >}}
While designed for 360-degree rotations around an object, there's nothing to say an image sequence has to be that. The same system could be used on frames of a video, pages of a flip book, a panorama, or any other incremental sequence of images you might think of or create.
{{< /q-class >}}

## Prepare the Image Files

In general, the goal should be to **minimize the number of images and their individual file size as much as possible** while still producing an image that rotates smoothly and looks crisp. You will likely need to test your sequences to find the settings that work best for your case, but following are some basic standards.

### Number of Images

For high-quality 360-degree rotations, between 45 and 90 individual images should be sufficient. 

There is no upper or lower technical limit to the number of images Quire can display in a sequence. However, the more images are included, the more bandwidth will be used both for you in hosting the site and for your users in visiting it. 

High-end captures may include one image for every one degree around an object, or 360 total images. When taking a subset of those for display in Quire, be sure to take them at equal intervals. For example, if you want 45 total images, they should be taken at 8-degree intervals. Uneven intervals will lead to uneven rotation through the final sequence.

### Image Format, Size, and Quality

We recommend JPGs, with a maximum height of 1600px, and a compression quality of 70–80%. This will generally lead to individual file sizes of 250kb or less, while still looking good on screen.

For sequences using a lot of individual images, it would be better for the images to be smaller file sizes than the above. For sequences with less individual images, you may be able to get away with larger file sizes.

Quire also accepts PNG and SVG files for image sequences.

### Filenaming

By default, Quire is expecting images in a sequence to be sequentially numbered JPGs or PNGs with three digits and the file suffix as `jpg` or `png` in lowercase: 

```
001.jpg, 002.jpg, 003.jpg ...
```

The numbers should be in order, but need not be consecutive. For example, if you started with a set that included one image for every degree around an object (001.jpg ... 360.jpg) and used only every eighth one, you would still end up with a valid sequence and there is no need to renumber them.

```
001.jpg, 109.jpg, 117.jpg ...
```

If your files do not follow the default naming scheme, you can specify this with the `regex` (regular expression) attribute as described in the section below.

### Add the Images to Your Project

All the images in your sequence should be in the their own directory, the name of which should be lowercase and not contain spaces or special characters. This directory should then be added to your `content/_assets/images/` directory with the rest of your assets. It can also be in a subdirectory if you’d like, just be sure to include that in the `id` path as shown in the next step.

## Write the Figure YAML

To create the YAML for a sequence of images, add a `sequences` entry to the standard figure YAML markup. A sequence item must have an `id` corresponding to the path to the image files and a `behavior` attribute with both `continuous` and `sequence` specified. In this example, the files are in a `rotating-figure` directory inside `content/_assets/images/figures/`.

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

(The `behavior` values are based on the [IIIF presentation API](https://iiif.io/api/presentation/3.0/#behavior). Currently only `continuous` and `sequence` are supported in Quire.)

### Change the Direction

By default, the images will be shown one after the other as the user clicks and drags from left to right. This can be changed by declaring the `viewing_direction` as `"right-to-left"`.

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

The ordering of your images determines the order they will appear in the rotating sequence. Quire will start the sequence with the first file in order (typically `001.jpg`) but this can be customized by adding a `start` value to the figure YAML. The value should correspond to one of the images in your sequence.

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

The `start` image is also what is used in Quire’s PDF and EPUB outputs, in place of the full interactive sequence.

### Change the Default File Name

As mentioned above, Quire is expecting images in a sequence to be sequentially numbered JPGs of PNGs with three digits and the file suffix as `jpg` or `png` in lowercase: 001.jpg, 002.jpg, 003.jpg, etc. 

If your files do not follow the default naming scheme, or are a different file format, you can specify this with the `regex` (regular expression) attribute in the figures.yaml entry.

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

The regex pattern must always be surrounded by slashes. The rest breaks down like this:

- `img_`: a string that exactly matches "img_"
- `\d`: any digit
- `{5}`: exactly five of the proceeding character(s), in this case, digits
-  `\.jpeg`: a string that exactly matches ".jpeg" (the leading backslash "\" is an escape character for the period which would otherwise match any character, not just an actual period)

{{< q-class "box tip" >}}
To learn more about regular expressions, check out the [RegexOne](https://regexone.com/) tutorial for beginners, and [RegEx101](https://regex101.com/) as a good tool to test your regex patterns.
{{< /q-class >}}
