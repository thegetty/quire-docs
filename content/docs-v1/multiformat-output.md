---
title: Output Your Project
weight: 6380
type: essay
abstract: "Produce online, PDF, and E-Book versions of your publication"
aliases:
  - /documentation/multiformat-output/
---

Quire is designed to create a website version, a PDF version and two e-book versions of your project from the same source files. Each can be customized in various ways as described below. Once your outputs are ready, visit the [*Deploy Your Project*](/docs-v1/site-deploy/) section of our documentation to learn how to deploy your project to the web.

{{< q-class "box tip" >}}
- Read more about hiding/showing particular pages in particular outputs in the [*Page Types & Structure*](/docs-v1/site-deploy/) section of this guide.
{{< /q-class >}}

## Site Output

Create the HTML files for your project by running `quire build` in your command-line shell. The files will be built into your project’s `_site` folder along with all the necessary static assets like image files, stylesheets and script files. The `_site` file will be updated and overwritten each time you run `quire build`.

Note that `quire build` creates the files for the online edition of your Quire project only. Read about creating EPUB and PDF editions in the sections below.

{{< q-class "box tip" >}}
- If you are a Windows user, please visit the [*Troubleshooting*](/docs-v1/troubleshooting/#quire-commands) section of our documentation for a workaround to a known `quire build` related issue. 
{{< /q-class >}}

## E-Book Output

Quire outputs {{< q-def "reflowable" >}} e-books in the EPUB file format. EPUB is the most widely used format and will work on most devices and for most e-book vendors. EPUB is an official specification of the World Wide Web Consortium (W3C), and Quire outputs the latest version: EPUB 3.2.

### Create and View the E-Book Files

When creating an EPUB, first run `quire build` in your command-line shell to generate files with your latest changes. Next run `quire epub`. An `epubjs.epub` file will be created and saved to your project’s main directory. This file will be updated and overwritten each time you run `quire epub`.

EPUB files can be viewed on the default Books app on macOS, or on a number of free EPUB readers available for both Windows and Mac.

To include the EPUB file as a download from your online edition:

1. Rename the `epubjs.epub` file if you would like

2. Move the EPUB file into your `content/_assets/downloads/` directory (create the `downloads` directory if it does not already exist)

3. Confirm that the `resource_link` information in your `content/_data/publication.yaml` file to points to the EPUB file you just generated

    ```yaml
    - type: other-format
      name: EPUB
      media_type: application/epub+zip
      link_relation: alternate
      url: /_assets/downloads/epubjs.epub
    ```

4. Run `quire build` again to generate new `_site` files with the EPUB included inside

### EPUBCheck Validation

If you will be distributing your EPUB file via e-book vendors/distributors, it will have to pass validation with [EPUBCheck](https://github.com/w3c/epubcheck). EPUBCheck verifies that the file conforms to EPUB standards which ensures that it will work properly across devices. A valid EPUB will also ensure a valid MOBI file.

Quire’s default output will pass EPUBCheck, but the EPUB standard is very strict and a number of things can lead to an invalid file. By far the most common errors are broken internal links in markdown files to other files or to heading or image anchors within the file.

While there is an online validator for smaller files (10MB or less) we recommend downloading EPUBCheck and using it directly.

1. Download and install Java from https://www.java.com/.
2. Download the ZIP file of the latest EPUBCheck release from https://github.com/w3c/epubcheck/releases.
3. Unzip the downloaded folder. Inside it is a epubcheck.jar file that you’ll reference in the next step.
4. In Terminal or PowerShell Admin type: `java -jar path-to-epubcheck.jar path-to-output.epub`

EPUBCheck will output a list of any errors or warnings that exist in your file. Only the errors need to be addressed for the file to be considered valid by most e-book vendors. Warnings are optional. Errors will be referenced by filename and line number. The filenames will be internal EPUB naming and not correspond to anything in your markdown project files. See the tip below for looking inside the EPUB file to track down the source of these listed errors.

{{< q-class "box tip" >}}
- Look inside an EPUB file by opening it in a text editor like Atom, or by manually changing the file suffix to ZIP and uncompressing the file. Just note that you can’t/shouldn’t make change to an EPUB file this way. Rather, make changes in the source markdown and YAML files of your project and re-output the EPUB file.
{{< /q-class >}}

### EPUB Styles

EPUBs in Quire have their own style sheet separate from any styles applied to the online version of your project. EPUB styles can be modified and added to in the `content/_assets/styles/epub.scss` file.

## PDF/Print Output

When creating a PDF, first run `quire build` in your command-line shell to generate files with your latest changes. Next run `quire pdf`. A `pagedjs.pdf` file will be created and saved to your project’s main directory. This file will be updated and overwritten each time you run `quire pdf`.

Quire’s PDF output is generated by [Paged.js](https://pagedjs.org/), an open source HTML-to-PDF generator. 

Alternatively, you can use [PrinceXML](https://www.princexml.com/) to generate your PDF. PrinceXML is free to download for non-commercial use, though it does add a logo watermark to the first page of the PDF ouput. A desktop license can be purchased that will remove the watermark and also allow for commercial use. With PrinceXML installed, run `quire pdf --lib prince` to generate your PDF.

To include the PDF file as a download from your online edition:

1. Rename the `pagedjs.pdf` (or `prince.pdf`) file if you would like

2. Move the PDF file into your `content/_assets/downloads/` directory (create the `downloads` directory if it does not already exist)

3. Confirm that the `resource_link` information in your `content/_data/publication.yaml` file to points to the PDF file you just generated

    ```yaml
    - type: other-format
      name: PDF
      media_type: application/pdf
      link_relation: alternate
      url: /_assets/downloads/pagedjs.pdf
    ```

4. Run `quire build` again to generate new `_site` files with the PDF included inside

### Output the PDF for Print or for Web

By default, the PDF is output at full-resolution and with full bleed and crop marks for professional printing. 

#### Image Resolution

Figure images are included in the PDF at the same size they were added to the `content/_assets/images/` directory, except when the images have been designated as zooming with `zoom: true` in the `figures.yaml` file. For zooming images, Quire processes and uses a special image that is 2025px wide for the PDF and EPUB output. These are large enough for a full-page image in a printed book. This value can be changed in `_plugins/figures/iiif/config.js`. To make images smaller for web-only PDF output, you would look for the following bit of code in the `config.js` file and change the `width` to 900 or less. 

```JS 
/**
* Transformation applied to IIIF resources for use in PDF and EPUB 
*/
{
 name: 'print-image',
 resize: {
   width: 2025,
   withoutEnlargement: true
 }
},
```

### Use Pre-Defined Variables to Modify and Style the PDF

Quire creates the PDF from the website version of your Quire site using CSS rules. You can modify Quire’s PDF styles using CSS just like you would modify Quire’s online styles. You can read more about styles in general in the [*Style Customization*](/docs-v1/styles-customization/) section of this guide.

There are a number of pre-defined CSS variables in Quire that allow you to adjust various parts of the PDF output. These can be found in the `content/_assets/styles/variables.scss` file. Look for the section called "Print/PDF stylesheet" to find the default style settings for things like page size, margins, and text color. These variables can be adjusted accordingly. 

```scss
// Print/PDF stylesheet
// -----------------------------------------------------------------------------
$print-width: 8.5in;
$print-height: 11in;
$print-bleed: .125in;

$print-bottom-margin: 0.875in;
$print-top-margin: 0.75in;
$print-outer-margin: 0.75in;
$print-inner-margin: 1in;

$print-base-font-size: 8.5pt;
$print-text-color: $black;

$print-splash-color: $off-white;

$print-entry-image-color: $black; // or can use $rich-black with PrinceXML
$print-entry-caption-color: $white;
$print-entry-image-display: all; // first | all
```

#### Crop Marks and Bleeds

As mentioned above, by default, the PDF is output with full bleed and crop marks. This default setting can be altered in the `content/_assets/styles/variables.scss` file. Adding the following lines to the "Print/PDF stylesheet" section removes the crop marks that are automatically applied to the PDF. 
 
```scss
$print-crop-marks: false; // true | false
```
To eliminate the bleed, set `print-bleed` to 0 in the same section of the `variables.scss` file:

```scss
$print-bleed: 0;
```

### Add Custom Styles to Refine the Layout

When a pre-defined variable is not available, you can instead add custom CSS to your `content/_assets/styles/custom.css` file to achieve the desired result. You can target changes to *only* the print output by wrapping your CSS rules in a {{< q-def "media query">}}.

For example, this would hide all `video` elements in the print output:

```css
@media print {
  video {
    display: none;
  }
}
```

Some of the CSS used in styling the PDF is from the [CSS Paged Media Specification](https://www.w3.org/TR/css-page-3/). This is a set of CSS rules designed specifically to style things in a page-like manner, including controlling left and right page rules, page numbering, and running feet and heads. There is good information about this in [Paged.js’s documentation](https://pagedjs.org/documentation/) as well as [in PrinceXML’s documentation](https://www.princexml.com/doc/paged/). For the most part, the CSS rules documented for one are also applicable to the other. The one primary exception are any CSS attributes that begin with a custom `-prince` name.

You can also apply custom styles to more than one page by associating your custom CSS with a class and then referencing it in the page YAML with the `classes` key. For more information see the [*Style Customization*](/docs-v1/styles-customization/#add-custom-classes-to-pages) section of this documentation.

### Use These Copy-and-Paste Styles to Fix Common Figure Issues

Custom CSS can be particularly useful in addressing common layout issues in the PDF output like extra white space or awkward breaks at the end of columns and pages.

The following examples illustrate common scenarios and offer sample CSS that can be copy and pasted into your project's `content/_assets/styles/custom.css` file. Many require using PrinceXML to generate your PDF rather than Paged.js. Note too that these styles have been wrapped in a print `@media` query to ensure they only affect the PDF/print output and not the figures as they appear online.

{{< q-class "box tip" >}}
- This level of CSS refinement should be done as late in the publishing process as possible, as any content changes might shift the way the pages flow and undo the CSS work you did.
{{< /q-class >}}

#### Reduce White Space by Changing Figure Width

If a figure is too large to fit at the bottom of a page or column, then it will bump to the next page, leaving extra white space in its place. To eliminate this white space, CSS can be used to adjust the width of the figure until it is small enough to fit in the open space. In this example, we’ve created a custom CSS style to make the figure 85% of its normal width (`pdf-85-percent-width`), and applied that style to the shortcode for the figure.

```
{% figure 'fig-01' 'pdf-85-percent-width' %}
```

{{< q-figure id="pdf-width" >}}

**CSS**

```css
@media print {
  .q-figure.pdf-85-percent-width img,
  .q-figure.pdf-85-percent-width figure figcaption {
    max-width: 85%;
    margin-left: auto;
    margin-right: auto;
  }
}
```

Note that while this CSS is specific for 85% width, this same pattern can be repeated to for any percentage width that might be necessary by changing the class name and the `max-width` value. The `auto` margins ensure the figure and caption are centered. Removing them will align them to the left.

#### Refine Page and Column Breaks Around Figures

CSS can also be used to force a break before or after a figure. This can be useful in scenarios such as the one illustrated here, where a heading has been separated from its main text. Using `pdf-column-break-after` to force a break after the figure in the left-hand column, pushes the heading into a more sensible location. Note that column breaks are supported in PrinceXML but not in Paged.js. Both tools support page breaks.

```
{% figure 'fig-01' 'pdf-column-break-after` %}
```

{{< q-figure id="pdf-break" >}}

**CSS**

```css
@media print {
  .q-figure.pdf-page-break-after {
    break-after: page;
  }
  .q-figure.pdf-page-break-before {
    break-before: page;
  }
  /* Only works with PrinceXML */
  .q-figure.pdf-column-break-after {
    break-after: column;
  }
  .q-figure.pdf-column-break-before {
    break-before: column;
  }
}
```

#### Eliminate White Space and Align Figures to the Top of the Page

If you use PrinceXML to generate your PDF, there are some additional options available to you. In particular is the ability to float an image to the top of the page. Figures that are floated to the top of the page will allow the text after them to flow past them and into the preceding column or page. This can be useful to fill in white spaces that are too small for a figure even if the figure has a reduced width.

```
{% figure 'fig-01' 'pdf-float-top` %}
```

{{< q-figure id="pdf-float1" >}}

Floats can likewise be used to eliminate small, awkward chunks of extra lines that might appear above a figure.

{{< q-figure id="pdf-float2" >}}

**CSS**

```css
@media print {
  /* Only works with PrinceXML */
  .q-figure.pdf-float-top {
    float: none;
    -prince-float: top;
    margin-top: 0 !important;
  }
}
```

Read more about PrinceXML’s float options in their [documentation](https://www.princexml.com/doc/styling/#floats) and [quick guide](https://www.princexml.com/howcome/2021/guides/float/).

#### Make a Figure Two Columns Wide

Also specific for PrinceXML output, figure images can be styled to span both columns. This can help very short, horizontal images or images with a lot of text or other details be more legible. In these cases, it’s also often useful to float the image to the top to avoid a two-column image from appearing in the middle of the page and breaking up the columns of text.

```
{% figure 'fig-01' 'pdf-two-column pdf-float-top` %}
```

{{< q-figure id="pdf-2column" >}}

**CSS**

```css
@media print {
  /* Only works with PrinceXML */
  .q-figure.pdf-two-column {
    column-span: all;
  }
}
```

{{< q-class "box warning" >}}
- Anytime you are making tweaks to the `custom.css` and want to review your work, it is advised to delete the `public` folder before rerunning `quire build` and `quire pdf`.  
{{< /q-class >}}

### Tips for PDF Design and Development

For developers and designers interested in making more extensive changes to the PDF output like the layout refinements documented above, you can make the process easier by using a PDF reader that will auto-reload, displaying a version of the PDF output in your browser, and testing changes in HTML first.

#### Use an Auto-Reloading PDF Reader

Adobe Acrobat (a popular PDF reader) won’t reload the PDF you’re looking at if the file has been changed. We recommend instead using a PDF reader, like [Skim](https://skim-app.sourceforge.io/) for macOS, that will reload the PDF every time it’s changed. For Quire development, this means you can open the PDF to a page you want to make a style change to, make the change in your project, run `quire build` and `quire pdf` and see that change happen as soon as the PDF process is finished running. It takes away the wasted time of closing PDFs, opening new versions and finding your place in them time and time again.

#### Display the PDF Version in a Browser

You can use your browser to display a decent, though not exact, preview of what the print output will be. It won’t have the correct page sizes or margins and page numbering, but you'll see the overall text sizes and styles, figures, spacing between these elements, and other parts generally as they'll look in the PDF. This means that you can make changes to your CSS and see a live preview in the browser without having to output the PDF every time.

1. Run `quire build` and `quire pdf` as normal.

2. Open the `_site/pdf.html` file in Firefox or Chrome. This is a single file of your entire Quire project. It will look a little different and some elements from the normal preview will be missing or altered.

3. Right or Control-Click anywhere in the browser window.

    Firefox: Select Inspect Element and then click the small page icon in the upper right of the window that opens. (On hover, the icon will say “Toggle print media simulation for the page”.)

    Chrome: Select Inspect, click the three-dots menu icon in the upper right of the window that opens, select More Tools, and then Rendering. In the area that opens, scroll down to “Emulate CSS media type” and select “print”.

You can also use the web inspector to help track down different HTML elements and CSS selectors that are effecting the final PDF output. This can make it easier to make changes that will have the desired effect.

#### Test Changes in HTML First

While the normal process for PDF development requires running `quire build` and then `quire pdf` every time you make a change to your content and style files, it can sometimes be advantageous to skip the `build` process and test your change in the HTML that generates the PDF first.

Quire’s PDF file is generated solely from the `_site/pdf.html` and `_site/pdf.css` files that are created every time you run `quire build`. It is possible to make a manual change to either one and run `quire pdf` to test the result, skipping the build process. For example, you could find the markup for a particular figure you want to target in the `pdf.html` file, like this markup for `fig-1`:

```html
<figure id="fig-1" class="q-figure q-figure--image">                  
  <img alt="" class="q-figure__image" src="_assets/images/figures/fig-1.jpg" data-outputs-include="epub,pdf">
  <figcaption class="q-figure__caption" data-outputs-include="epub,pdf">
    ...
  </figcaption>
</figure>
```

You can then add one of the custom classes as described above to it. Note that classes in HTML are separated from one another with a space, and do not include the leading period (`.`) they have in CSS. Also, if the class you're adding was not already in your `custom.css` file, you will need to temporarily add it to the bottom of the `pdf.css` for it to work.

```html
<figure id="fig-1" class="q-figure q-figure--image pdf-85-percent-width">                  
```

Save your changes and then run `quire pdf` to see the result. If it looks good, you can go back and add that same class into the shortcode in your source Markdown files and the styles for it into the `custom.css` file as needed. If it doesn't look good, you can try a new custom class and quickly check the result with `quire pdf` again. 

Temporarily skipping the build process in this way can save a lot of time, though it requires an extra amount of care to ensure that the temporary changes you make are brought back into your source files.

{{< q-class "box warning" >}}
- Remember that any time you run `quire build` any changes you made to the `_site/pdf.html` and `_site/pdf.css` will be erased.
{{< /q-class >}}