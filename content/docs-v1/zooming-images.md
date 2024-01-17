---
title: "Figure Images: Deep Zoom with IIIF"
weight: 6220
type: essay
abstract: "Adding high-resolution zooming images to your project"
aliases:
  - /documentation/zooming-images/
---

## Create a Zooming Image

You can create a zooming image with Quire by adding `zoom: true` to an image entry in your `figures.yaml` file. For example: 

```yaml
- id: fig-01
  src: figures/fig-01.jpg
  zoom: true
```

To learn how this process works, see the [Preview and Build a Project with Zooming Images](/preview-and-build-a-project-with-zooming-images) section below. In the meantime, here are some tips for how to make this process as seamless as possible. 

As with other figures in Quire, zooming images can be displayed within your Markdown pages using the `{% figure %}` or `{% figuregroup %}` shortcodes, or using the built-in image viewer that appears on entry pages. (Learn more about entry pages in the [*Collection Catalogues*](/docs-v1/collection-catalogues) section of this documentation.)

While Quire supports multiple file formats for zooming images, the tool currently converts `.jpg`, `.jpeg`, `.tif`, `.tiff`, `.png`, and `.svg` files to `.jpg`. Therefore, to significantly improve processing time, we recommend using JPGs as a source file whenever possible. In the future, PNG and SVG files will be converted to `.png` in order to support transparency. 

Images must be larger than 512px on the long side. Setting `zoom: true` on images that are smaller than this will result in them not showing up in the image viewer at all.

There is no maximum size limit for a zooming image, and the larger the source file the deeper the zoom. However, very large files will take longer to process when running `quire preview` or `build`, and longer to load for users. For this reason, we recommend limiting images to 8,192px on the longest side. This offers a rich zooming experience without dragging out processing time or being size intensive.

**In short ...**

- File format: `.jpg`, `.jpeg`, `.tif`, `.tiff`, `.png`, or `.svg` (but use JPGs rather than TIFs for source images, as TIFs are large and will be converted to JPG anyway)
- Minimum image size: Greater than 512px on the long side
- Maximum image size: None, but we recommend limiting to 8,192px on the long side

## Preview and Build a Project with Zooming Images

Quire uses the [International Image Interoperability Framework (IIIF)](https://iiif.io/) to manage its advanced image features including zooming, layered, and rotating images. IIIF (referred to when speaking as "Triple I F") is a shared, open set of standards for storing images and image data that allows for seamless and regularized sharing and display of those images across different uses within a project, an institution, or across different institutions. It is a growing standard particularly in the academic, art, and cultural heritage sectors.

For IIIF zooming images, Quire takes the original source image and processes it into hundreds of individual image tiles. Each tile comprises a portion of the image at a particular zoom level which will be tiled back together and displayed in the lightbox viewer as users pan and zoom around the image. (Quire’s default tile size is 256px square. Advanced users can change this setting in `_plugins/figures/iiif/config.js`.)

The creation of these tiles happens every time you run `quire preview` or `build` and will be logged in the command-line shell:

```
[quire] DEBUG	 Figures:ImageProcessor   processing inputPath: /my-project/content/_assets/images/figures/fig-01.jpg
[quire] DEBUG	 Figures:ImageTiler       tiling '/my-project/content/_assets/images/figures/fig-01.jpg'
[quire] INFO	 Figures:IIIF:Manifest    Generated manifest for figure "fig-01"
```

To speed development time, Quire will skip processing zooming images that have previously been processed. 

```
[quire] DEBUG	 Figures:ImageTiler       skipping previously tiled image '/my-project/content/_assets/images/figures/fig-01.jpg'
```

{{< q-class "box warning" >}}
- If you replace a zooming image but keep the same filename, you should delete both the `public` and `_site` directories in your project if they exist, before running `quire preview` or `build` to ensure the replaced image is not skipped by the IIIF image tiler.
{{< /q-class >}}


## Improve Performance

As you exceed a hundred or more zooming images in your project, you are likely to encounter some performance issues both on the development end (when running commands like `quire preview` and `quire build`) and on the user end (when a reader is looking at your finished Quire site). 

If you encounter any difficulties please let us know on the [community forum](https://github.com/thegetty/quire/discussions?discussions_q=is%3Aopen). We are currently working on improving image performance in Quire as you can see in [GitHub issue #815](https://github.com/thegetty/quire/issues/815). When this work is complete, we will share tips for mitigating issues as they start to occur.

Some basic tips for now include: 

- Optimize your source images. The larger the file size in megabytes, the more time it will take to process when your project is building. 
- Don't use too many on one page or in one lightbox
- Use placeholder images until ready to build the actual work 
- Host images externally (see the following section)


## Use Existing External IIIF Images

Coming Soon!