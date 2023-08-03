---
title: Output Your Project
weight: 6380
type: essay
abstract: "Produce online, PDF, and E-Book versions of your publication"
aliases:
  - /documentation/multiformat-output/
---

Quire is designed to create a website version, a PDF version and two e-book versions of your project from the same source files. Each can be customized in various ways as described below. Once your outputs are ready, visit the [*Deploy Your Project*](/docs-v1/site-deploy/) section of our documentation to learn how to deploy your project to the web.

## Site Output

Create the HTML files for your project by running `quire build` in your command-line shell. The files will be built into your project’s `_site` folder along with all the necessary static assets like image files, stylesheets and script files. The `_site` file will be updated and overwritten each time you run `quire build`.

Note that `quire build` creates the files for the online edition of your Quire project only. Read about creating EPUB and PDF editions in the sections below.

{{< q-class "box tip" >}}
- Read more about hiding/showing particular pages in particular outputs in the [*Page Types & Structure*](/docs-v1/site-deploy/) section of this guide.
{{< /q-class >}}

## E-Book Output

Quire outputs {{< q-def "reflowable" >}} e-books in the EPUB file format. EPUB is the most widely used format and will work on most devices and for most e-book vendors. EPUB is an official specification of the World Wide Web Consortium (W3C), and Quire outputs the latest version: EPUB 3.2.

### Create and View the E-Book Files

When creating an EPUB, first run `quire build` in your command-line shell to generate files with your latest changes. Next run `quire epub`. An `epubjs.epub` file will be created and saved to your project’s main directory. This file will be updated and overwritten each time you run `quire epub`.

EPUB files can be viewed on the default Books app on macOS, or on a number of free EPUB readers available for both Windows and Mac.

To include the EPUB file as a download from your online edition:

1. Move the `epubjs.epub` file into your `content/_assets/downloads/` directory (also rename the file if you’d like) 
2. Confirm that the `resource_link` information in your `content/_data/publication.yaml` file to points to the EPUB file you just generated
3. Run `quire build` again to generate new `_site` files with the EPUB included inside

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

When creating a PDF, first run `quire build` in your command-line shell to generate files with your latest changes. Next run `quire pdf`. An `pagedjs.pdf` file will be created and saved to your project’s main directory. This file will be updated and overwritten each time you run `quire pdf`.

By default, the PDF is output at full-resolution and with crop marks for professional printing. You may want to manually crop the pages and downsample the file to a smaller file size using a program like Adobe Acrobat if you are only making it available as a digital download.


{{< q-class "box warning" >}}
- Due to a known bug in Quire, the correct fonts are **not** being used for the PDF output. Until this is fixed, there is a workaround:

    Before running `quire build` update the `$assets-dir` variable in `content/_assets/styles/fonts.scss` to be `$assets-dir: "_assets/" !default;` (with no slash before `_assets`). Then go ahead and run `quire build` and `quire pdf` as normal, and the fonts will be included as expected.
    
    Be sure to then reverse this change when your run `quire build` to output your site files. Otherwise, the fonts will not load correctly on your deployed project.
{{< /q-class >}}

Quire’s PDF output is generated by [Paged.js](https://pagedjs.org/), an open source HTML-to-PDF generator. 

Alternatively, you can use [PrinceXML](https://www.princexml.com/) to generate your PDF. PrinceXML is free to download for non-commercial use, though it does add a logo watermark to the first page of the PDF ouput. A desktop license can be purchased that will remove the watermark and also allow for commercial use. With PrinceXML installed, run `quire pdf --lib prince` to generate your PDF.

To include the PDF file as a download from your online edition:

1. Move the `pagedjs.pdf` (or `prince.pdf`) file into your `content/_assets/downloads/` directory (also rename the file if you’d like)
2. Confirm that the `resource_link` information in your `content/_data/publication.yaml` file to points to the PDF file you just generated
3. Run `quire build` again to generate new `_site` files with the PDF included inside

### Modifying and Styling the PDF

Quire creates the PDF from the website version of your Quire site using CSS rules. You can modify Quire’s PDF styles using CSS just like you would modify Quire’s online styles. You can read more about styles in general in the [*Style Customization*](/docs-v1/styles-customization/) section of this guide.

There are a number of CSS variables defined in Quire that allow you to adjust various parts of the PDF output, including the page size. The default page size is 8.5 × 11 inches.

In the `content/_assets/styles/variables.scss` file, are a number of key print/PDF-related variables:

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

There are even more PDF-related variables that can be modified in the `content/_assets/styles/print.scss` file. Including rules regarding the running feet and page numbering that are included at the bottom of each PDF page.

Where a variable is not available, you can also add custom CSS to your `content/_assets/styles/custom.css` file to achieve the desired result. You can target changes to *only* the print output by wrapping your CSS rules in a {{< q-def "media query">}}.

For example, this would hide all `video` elements in the print output:

```css
@media print {
  video {
    display: none;
  }
}
```

Some of the CSS used in styling the PDF is from the CSS Paged Media Specification. This is a set of CSS rules designed specifically to style things in a page-like manner, including controlling left and right page rules, page numbering, and running feet and heads. There is good information about this in [Paged.js’s documentation](https://pagedjs.org/documentation/) as well as [in PrinceXML’s documentation](https://www.princexml.com/doc/paged/). For the most part, the CSS rules documented for one are also applicable to the other. The one primary exception are any CSS attributes that begin with a custom `-prince` name.

### Tips for PDF Design and Development

For developers and designers interested in making more extensive changes to the PDF output, you can make the process easier by using a PDF reader that will autoreload, and displaying a version of the PDF output in your browser.

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
