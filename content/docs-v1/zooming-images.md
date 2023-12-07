---
title: "Figure Images: Deep Zoom with IIIF"
weight: 6220
type: essay
abstract: "Adding high-resolution zooming images to your project"
aliases:
  - /documentation/zooming-images/
---


TO ADD:
- automatically generated print images and inline images (`_plugins/figures/iiif/config.js`)
- warning, high-res files added to _site
- PNG and SVG currently tiling to JPG
- More on IIIF?


## Create a Zooming Image

Create a zooming image by setting `zoom: true` in the `figures.yaml` file. 

```yaml
- id: fig-01
  src: figures/fig-01.jpg
  zoom: true
```

Zooming images can be displayed within your pages using the `{% figure %}` or `{% figuregroup %}` shortcodes, or the built-in image viewer on entry pages. (Learn more about entry pages in the [*Collection Catalogues*](/docs-v0/collection-catalogues) section of this documentation.)

Quire supports multiple file formats for zooming images: `.jpg`, `.jpeg`, `.tif`, `.tiff`, `.png`, and `.svg`. During processing, JPG and TIF images will be converted to `.jpg` and PNG and and SVG will be converted to `.png` (and will retain any transparency). TIFs are generally much larger files, and because they're converted to JPG during processing, it's recommended to use JPG as a source file if it is available as this can significantly improve processing time.

Images must be larger than 512px on the long side. Setting `zoom: true` on images that are smaller than this will result in them not showing up in the image viewer at all.

There is no maximum size limit for a zooming image, and the larger the source file the deeper the zoom. However, very large files will take longer to process when running `quire preview` or `build`, and longer to load for users. They will also result in very high numbers of image tiles to support the zoom (see [below to learn more about tiles](#)). So, we recommend limiting images to 8,192px on the longest side. This offers a rich zooming experience while not being overly processing and size intensive.

**In short ...**

- Minimum image size: Greater than 512px on the long side
- Maximum image size: None, but we recommend limiting to 8,192px on the long side
- File format: `.jpg`, `.jpeg`, `.tif`, `.tiff`, `.png`, or `.svg` (but use JPGs rather than TIFs for source images, as TIFs are large and will be converted to JPG anyway)


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

As you exceed a hundred or more zooming images in a project, you are likely to start seeing performance issues both on the development end (when you're running Quire commands like `preview` and `build`) and on the user end (when a reader is looking at your finished Quire site). There are a number of ways these issues can be mitigated if you see them start to occur.

### Optimize your source images

While Quire accepts a number of file formats (as noted above) the larger the file size in megabytes, the more time it will take to process when running 

### Optimize the placement of your zooming images

Don't use too many on one page or in one lightbox

### Use placeholder images until your final deploy

Make a 

### Host images externally

See below







## Use Existing External IIIF Images

```yaml
- id: "irises"    
  manifestId: https://media.getty.edu/iiif/manifest/53be857e-41e8-4198-b45d-2e0f52d3051b
  canvasId: https://media.getty.edu/iiif/manifest/canvas/e5d29650-11f8-4897-9540-54a9dd65b04f.json
  printImage: figures/irises.jpg
  src: figures/irises.jpg 
```

## Use Quire to Create IIIF Images to Host Externally

