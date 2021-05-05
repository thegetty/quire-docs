---
title: Zooming Images with IIIF
weight: 4900
type: essay
abstract: "Adding high-resolution zooming images to your project"
---

To add high-resolution zooming images to your project, Quire uses the [International Image Interoperability Framework (IIIF)](https://iiif.io/). Within your Quire project, you can either point to existing IIIF assets or create your own. IIIF zooming images can be displayed within your Markdown pages using the `q-figure-zoom` shortcode or  the built-in image viewer on entry pages. (Learn more about entry pages in the [*Collection Catalogues*](/documentation/collection-catalogues) section of this documentation.)

## What is IIIF?

IIIF (referred to when speaking as "Triple I F") stands for the International Image Interoperability Framework. It is a shared, open set of standards for storing images and image data that allows for seamless and regularized sharing and display of those images across different uses within an institution or across different institutions. While IIIF images offer a wide variety of features and applications, Quire uses them specifically for deep zooming.

{{< q-figure-zoom id="irises" >}}

You can either point Quire to an existing IIIF repository of images or add high-resolution images into a Quire project directly. When adding your own images, Quire processes them into hundreds of individual image tiles. Each tile comprises a portion of the image at a particular zoom level to then be displayed in our existing zooming image viewer. Because the images have been tiled, users of your Quire project only need their browsers to load the tiles of the image portion and zoom level they're looking at at the moment. This means much faster page loads and higher-resolution images.

{{<q-figure id="iris-zoom" >}}

## Use Existing IIIF Images

To include existing IIIF images in your project, you will need the URL for the `info.json` file for that image, as well as a static fallback version of the image (typically a JPG) for use in Quire’s PDF and e-book outputs.

The `info.json` file is a {{< q-def "JSON" >}}-formatted collection of useful information a file. It is [a required component of all IIIF images](https://iiif.io/api/image/3.0/#5-image-information) and includes basic object data about the full image and the availability of image tiles at different zoom levels.

If you are working with your own institution’s IIIF repository, your digital department will be able to help you identify the `info.json` URLs you need.

If you are working with other, open IIIF repositories, more often than not, you will find a URL to the IIIF `manifest.json` file rather than an `info.json` file. For instance, the Art Institute of Chicago has the [IIIF Manifest URL available in plain text](https://www.artic.edu/artworks/14586/the-poet-s-garden#h-iiif-manifest) on every page of its collection where IIIF is available. The Getty Museum instead includes [a IIIF logo on the artwork page](https://www.getty.edu/art/collection/objects/826/vincent-van-gogh-irises-dutch-1889/#iiif_logo), from which you can extract the `manifest.json` URL which appears at the end of the URL when you click.

The `manifest.json` file is a more fullsome IIIF document that includes much more information about the image and the resources available. Within that `manifest.json` file however, you can look under `sequences[0].canvases[0].images[0].resource.service.@id`. The URL in the `@id` field, when appended with `/info.json`, will be what you need to add the image to your Quire project.

In this example `manifest.json` file, the URL in the last `@id` field is what we’re looking for.

```json
{
  "@context": "http://iiif.io/api/presentation/2/context.json",
  "@id": "https://data.getty.edu/museum/api/iiif/826/manifest.json",
  "@type": "sc:Manifest",
  "label": "Irises (1889), Vincent van Gogh (Dutch, 1853 - 1890)",
  "sequences": [
    {
      "@id": "https://data.getty.edu/museum/api/iiif/826/sequence/main",
      "@type": "sc:Sequence",
      "canvases": [
        {
          "@id": "https://data.getty.edu/museum/api/iiif/826/canvas/main",
          "@type": "sc:Canvas",
          "width": 9073,
          "height": 7134,
          "images": [
            {
              "@id": "https://data.getty.edu/museum/api/iiif/826/annotation/main-image",
              "@type": "oa:Annotation",
              "motivation": "sc:painting",
              "resource": {
                "@id": "https://data.getty.edu/museum/api/iiif/671108/full/full/0/default.jpg",
                "@type": "dctypes:Image",
                "format": "image/jpeg",
                "service": {
                  "@context": "http://iiif.io/api/image/2/context.json",
                  "@id": "https://data.getty.edu/museum/api/iiif/671108",
                  "profile": "http://iiif.io/api/image/2/profiles/level0.json"
                },
                "width": 9073,
                "height": 7134
              }
            }
          ]
        }
      ]
    }
  ]
}
```

Test it by pasting it into a browser, adding `/info.json`, and hitting enter. If correct, you’ll get [a complete JSON document](https://data.getty.edu/museum/api/iiif/671108/info.json) that includes:

```json
"@context":"http://iiif.io/api/image/2/context.json"
"@type":"iiif:Image"
```

Once you’ve identified the URL to the proper `info.json` file, you can jump to the section below on [displaying IIIF image in your project](#displaying-iiif-images-in-your-project).

{{< q-class "box warning" >}}

- When using external resources, IIIF or otherwise, be aware that changes made to those resources by their hosts can affect the way they display in your project. Always link to reliable, permanent sources, and have a regular maintenance schedule to check for unforeseen changes that may occur after publication.

{{< /q-class >}}

## Create Your Own IIIF Images

You can create your own deep-zooming IIIF images directly within Quire. But there are a couple things you should know from the outset:

1. **Processing IIIF image tiles is a labor intensive process.** It is highly dependent on the processing power of the computer you’re working on. We’ve found that processing a single 130MB image on an average to good machine can take upwards of 20 minutes or more. Three 6–7MB images may take only two or three minutes. Dedicate time to IIIF processing in batches when you’re not running other software on your computer.
2. **You may need to setup an additional hosting service for IIIF image files, outside your main project files.** Though small in individual file size, the sheer quantity of files (hundreds and sometimes thousands) that are associated with deep-zooming images can cause preview and build issues within your Quire project. If you have more than around 12 IIIF images you’ll want to [host them outside your project](#3-host-the-iiif-image-tiles).

### 1. Prepare High-Resolution Source Images

Because the IIIF image tiles are ultimately saved as JPEGs, **we recommend starting with uncompressed, full-quality JPEG (jpg) or JPEG 2000 (jp2/jpf/jpx) files for IIIF processing**. TIFs can also work, but are typically much larger file sizes and don’t necessarily provide better end results. Quire can also process SVG and PNG files.

Use the table below to size your source images prior to IIIF processing. Images that deviate from the recommended size guidelines for source images can also end up with misalignments and glitches at some zoom levels. The longest pixel dimension should be divisible by the 256px tile size, and be as close as possible to the final tiled image size without being equal to that size.

{{< q-class "box tip" >}}

- Save some time! Images larger than the recommended size for a zoom level will work but will be downsized to the final image size regardless and will cause the image processing to take longer due to the excess file size.

{{< /q-class >}}

| Desired Zoom Levels | Final Size of Tiled Image on Longest Side | Recommended Size of Source Image on Longest Side |
| ---------------------- | -------------- | -------------- |
| 4 | 2,048px | 2,304px |
| 5 | 4,096px | 4,352px |
| 6 | 8,192px | 8,448px |
| 7* | 16,384px | 16,640px |
| 8* | 32,768px | 33,024px |

\* *Currently, Quire is currently set to do a maximum of 6 levels of image tiling. This can be expanded but requires a code change to both the Quire CLI and the JavaScript of your project’s theme.*

For images smaller than 2,304px on the longest side, we recommend including them as regular non-IIIIF images. Typically, a JPEG of around 1,800px on the longest side, and at 70–80% quality, will provide both a decent web experience and work for printing in the PDF, without being too large of a file size. Read more in the [*Figure Images*](/documentation/figure-images/) chapter of the documentation.

### 2. Process Images Into IIIF Tiles

Once they’ve been properly sized following the guidelines above, high-resolution source images should be placed in the `static/img/iiif/` directory of your project. The folder can be created if it doesn’t already exist in your project. It’s best to start with only 2–3 images to test how your computer will handle the processing.

In your command-line shell, run the following command:

```
quire process --iiif
```

Quire will then start to process the high-resolution images into IIIF image tiles. It will output warnings if it encounters any files it can’t process, as well as messaging for when each image is completed. Quire will process all images in the `static/img/iiif/` directory, including ones that have been previously processed. So, once a batch of high-resolution files are processed, it’s best to remove them from the directory to prevent duplicate processing.

The processed IIIF files will be placed in a `static/img/iiif/processed` directory with folder names matching the original filenames of the high-resolution images. Each folder includes the hundreds or sometimes thousands of individual image tiles arranged in their own directories that make up the zoomable image. The directory will also include an `info.json` file, which includes basic information about the full image and the availability of image tiles at different zoom levels.

You will need the path to the `info.json` file to include it in your `figures.yml` file when getting ready to display your IIIF images in your project. The paths are also based on the filename of the original high-resolution you processed. For example, if your high-resolution image was `00094701.jpg`, the path to the `info.json` would be `/img/iiif/processed/00094701/info.json`.

### 3. Host the IIIF Image Tiles

IIIF image tiles can be hosted statically (meaning you don’t need a special server setup), just like the website edition of your Quire project. In fact, a modest number of IIIF images (around a dozen or so) can even be hosted within the project itself. In these cases, the IIIF files you’ve processed with the `quire process --iiif` command can be left where they are. It is also fine to move the processed IIIF image folders into different locations within your `static` directory. You will just need to update the paths to their `info.json` files accordingly when you’re adding them to your `figures.yml` file, as explained in the next section.

With more than twelve or so IIIF images, you’re going to need to host them elsewhere and then point to them from your project. This is because, though small in individual file size, the sheer quantity of files (hundreds and sometimes thousands) that are associated with deep-zooming images can cause issues when trying to run `quire preview` or use GitHub or a related service to host your project code.

{{< q-class "box tip" >}}

- When quantifying IIIF images, it’s hard to say how many IIIF images will be too many for a system to handle, because the number of individual files associated with a given IIIF image is highly variable.

    **For example:**

    4 levels of zoom ≈ 100 image tiles<br />
    5 levels of zoom ≈ 329 image tiles<br />
    6 levels of zoom ≈ 1,170 image tiles

{{< /q-class >}}

For hosting the image tiles, if you have institutional support, your digital department should be able to provide a solution. If you’re on your own, there are any number of options. You might check out [Amazon S3](https://aws.amazon.com/s3/), which is very performant and self-serve but requires some technical savvy to get set up, or an independent hosting service like [Reclaim Hosting](https://reclaimhosting.com/shared-hosting/), which caters to the academic sector.

## Display IIIF Images in Your Project

To display a IIIF image in your project, you need to point to a IIIF `info.json` file for the image. Either one you’ve identified from an [external source](#use-existing-iiif-images), or one you’ve [created yourself](#creating-your-own-iiif-images) with `quire process --iiif`. If it is an image you processed yourself and it is still in the `processed/` directory, the path to the JSON file would be `/img/iiif/processed/FILENAME/info.json`.

Along with the path to the `info.json` file, you also need to include `media_type: "iiif"` and a path to a [lower-res static fallback version](#include-a-static-fallback-image) of the image, hosted in your project’s `static/img` directory (which is used for Quire’s PDF and e-book outputs). All of this goes in your `figures.yml` file.

```yaml
- id: "irises"
  src: "figures/irises.jpg"
  media_type: "iiif"
  iiif: "https://data.getty.edu/museum/api/iiif/671108/info.json"
```

The image can then be added to your Markdown files using the `q-figure-zoom` shortcode, as shown below. This will display the static image on the page, and then when clicked, will open the figure viewer for the fully zoomable IIIF version. (See the page on [*Figure Images*](/documentation/figure-images/) for more information on the `figures.yml` file and other figure shortcodes.)

```go
{{</* q-figure-zoom id="irises" */>}}
```

IIIF Images can also be displayed in the built-in image viewer on [entry pages](/documentation/pages). Do this by including the appropriate `id` in the [object data](/documentation/collection-catalogues/#capture-object-data) in your `objects.yml` file.

```yaml
object_list:
  - id: 1
    title: *Irises*
    artist: Vincent van Gogh
    year: 1889
    medium: Oil on canvas
    dimensions: 74.3 × 94.3 cm (29 1/4 × 37 1/8 in.)
    location: J. Paul Getty Museum
    link: https://www.getty.edu/art/collection/objects/826/vincent-van-gogh-irises-dutch-1889/
    figure:
      - id: "irises"
```

### Include a Static Fallback Image

The static fallback image is required for displaying a version of the IIIF image outside of the zooming image viewer on the online version of your project, as well as for Quire’s PDF and e-book outputs. This is the standard `src` attribute in your `figures.yml` listing.

```yaml
src: "figures/irises.jpg"
```

Like with other non-zooming figure images, these static images for IIIF would typically be a JPEG of around 1,800px on the longest side and 70–80% quality. These specs provide both a decent web experience and work for printing in the PDF without being too large of a file size. Read more in the [*Figure Images*](/documentation/figure-images/) chapter of the documentation.

### Set the Zoom Level

Quire will, by default, show six levels of zoom. If the IIIF image you are pointing to has less than that, you can set the number of levels in `figures.yml` with the `zoom_max` property. This will ensure your users can’t zoom further in than the image is sized for, which would result in blurred images.

```yaml
- id: "irises"
  src: "figures/irises.jpg"
  media_type: "iiif"
  iiif: "/img/iiif/processed/07138601/info.json"
  zoom_max: 4
```

The number of zoom levels will be determined by the [size of the source file](#create-your-own-iiif-images), but you can also tell by looking a the processed image in the `static/img/iiif/processed/` directory. The number of directories there that start with “0,0,” will be equal to the number of zoom levels. In the following example, image `07138601` has four levels of zoom.

```text
static
  img
    iiif
      processed
        07138601
          0,0,256,256
          0,0,512,512
          0,0,1024,1024
          0,0,2048,1919
          0,256,256,256
          0,512,256,256
          0,512,512,512
          0,768,256,256
          ...
```

Currently, six levels of zoom is the maximum Quire is set to display. This can be expanded within your individual project, but requires a code change to both the Quire CLI and the JavaScript of your project’s theme.
