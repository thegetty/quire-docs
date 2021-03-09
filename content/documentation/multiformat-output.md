---
title: Output & Deploy Your Project
weight: 5700
type: essay
abstract: "Produce online, PDF, and E-Book versions of your publication"
---

## Site Output

*Text to come.*

## E-Book Output

Quire can output two different {{< q-def "reflowable" >}} e-book formats: EPUB and MOBI. EPUB is the most widely used format and will work on most devices and for most e-book vendors. EPUB is an official specification of the World Wide Web Consortium (W3C), and Quire outputs the latest version: EPUB 3.2.

Very cosely related to EPUB, the MOBI format is used almost exclusively by Amazon’s Kindle. Making it available in your project will allow Kindle readers to load the e-book onto their devices directly. (Amazon itself asks for EPUBs when selling/distributing through them, which it then converts to MOBI and other proprietary fomrats as needed.)

The MOBI file is derived directly from the EPUB version of your project, and does not have styling or customization options separate from the EPUB.

You can remove specific pages of your project from the e-book outputs by adding `epub: false` to the page YAML. Or conversely, you can add pages exclusively to the e-book outputs, by adding `online: false` and `pdf: false` to the page YAML and leaving the `epub` attribute unset, or set to `true`.

For developers creating custom templates, you can use templating logic to create spefic outputs for the e-books by querying `if eq .Site.Data.params.epub true`. This parameter is set in the `config/epub.yml` file.

## Create and View the E-Book Files

Create an EPUB of your project by running `quire epub` in your command-line shell. An `output.epub` file will be created and saved to your project’s `static/downloads/` folder. This file will be updated and overwritten each time you run `quire epub`.

Create a MOBI of your project by running `quire mobi` in your command-line shell. An `output.mobi` file will be created and saved to your project’s `static/downloads/` folder. This file will be updated and overwritten each time you run `quire mobi`.

{{< q-class "box tip" >}}
- Links to download the EPUB, MOBI, and PDF versions are automatically included in the sidebar menu of the onkline version of your project. These links can be removed or modified by making changes to the `resource_link` information in your `data/publication.yml` file.
- You can add links to these files from anywhere in your markdown files by linking to `/downloads/output.epub`, `/downloads/output.mobi`, and `/downloads/output.pdf` respectively.
{{< /q-class >}}

EPUB files can be viewed on the default Books app on macOS, or on a number of free EPUB readers available for both Windows and Mac.

MOBI files can be viewed with [Kindle Previewer](https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000765261) on both Windows and Mac.

### EPUBCheck Validation

If you will be distributing your EPUB file via e-book vendors/distributors, it will have to pass validation with [EPUBCheck](https://github.com/w3c/epubcheck). EPUBCheck verifies that the file conforms to EPUB standards which ensures that it will work properly across the multiplicity of devices it may be read on. A valid EPUB will also ensure a valid MOBI file.

Quire’s default output will pass EPUBCheck, but the EPUB standard is very strict and a number of things can lead to an invalid file. By far the most common errors are broken internal links in markdown files to other files or to heading or image anchors within the file.

While there is an online validator for smaller files (10MB or less) it is likely you will need to download EPUBCheck and use it directly.

1. Download and install Java from https://www.java.com/.
2. Download the ZIP file of the latest EPUBCheck release from https://github.com/w3c/epubcheck/releases.
3. Unzip the downloaded folder. Inside it is a epubcheck.jar file that you’ll reference in the next step.
4. In Terminal or PowerShell Admin type: `java -jar path-to-epubcheck.jar path-to-output.epub`

EPUBCheck will output a list of any errors or warnings that exist in your file. Only the errors need to be addressed for the file to be considered valid by most e-book vendors. Warnings are optional. Errors will be referenced by filename and line number. The filenames will be internal EPUB naming and not correspond to anything in your markdown project files. See the tip below for looking inside the EPUB file to track down the source of these listed errors.

{{< q-class "box tip" >}}
- Look inside an EPUB file by opening it in a text editor like Atom, or by mannually changing the file suffix to ZIP and uncompressing the file. Just note that you can’t/shouldn’t make change to an EPUB file this way. Rather, make changes in the source markdown and YAML files of your project and re-output the EPUB file.
{{< /q-class >}}

### EPUB Styles

EPUBs in Quire have their own style sheet separate from any styles applied to the online version of your project. EPUB styles can be modified and added to in the `themes/default/source/css/epub.scss` file.

Quire uses [Pandoc](https://pandoc.org) to create the EPUB files, and while consistent in outputting valid EPUB files, Pandoc also strips out a lot of the class names and other structure you may normally use to add custom styling. See the tip above for looking into the EPUB file, and use that to find class names and HTML structures as Pandoc outputs them for use as selectors in your CSS.

## PDF/Print Output

Create a PDF of your project by running `quire pdf` in your command-line shell. An `output.pdf` file will be created and saved to your project’s `static/downloads/` folder. This file will be updated and overwritten each time you run `quire pdf`.

By default, the PDF is output at full-resolution and with crop marks for professional printing. You may want to manually crop the pages and downsample the file to a smaller file size using a program like Adobe Acrobat if you are only making it available as a digital download.

Quire’s PDF output is generated by [PrinceXML](https://www.princexml.com/) which you should have installed when first [installing Quire](/documentation/install-uninstall/). PrinceXML is free to download for non-commercial use, though it does add a logo watermark to the first page of the PDF ouput. A desktop license can be purchased that will remove the watermark and also allow for commercial use.

You can remove specific pages of your project from the PDF output by adding `pdf: false` to the page YAML. Or conversely, you can add pages exclusively to the PDF output, by adding `online: false` and `epub: false` to the page YAML and leaving the `pdf` attribute unset, or set to `true`.

For developers creating custom templates, you can use templating logic to create spefic outputs for the PDF by querying `if eq .Site.Data.params.pdf true`. This parameter is set in the `config/pdf.yml` file.

### Modifying and Styling the PDF

PrinceXML creates the PDF from the website version of your Quire site using CSS rules. You can modify Quire’s PDF styles using CSS just like you would modify Quire’s online styles. You can read more about styles in general in the [*Style Customization*](/documentation/styles-customization/) chapter of this guide.

There are a number of CSS variables defined in Quire that allow you to adjust various parts of the PDF output, including the page size. The default page size is 8.5 × 11 inches.

In the `themes/default/source/css/variable.scss` file, are a number of key print/PDF-related variables:

```scss
// Print/PDF stylesheet
// -----------------------------------------------------------------------------
$print-width: 8.5in;
$print-height: 11in;
$print-bleed: .125in;

$print-base-font-size: 8.5pt;
$print-text-color: $black;

$print-splash-color: $off-white;

$print-entry-image-color: $rich-black;
$print-entry-caption-color: $white;
$print-entry-image-display: all; // first | all
```

There are even more PDF-related variables that can be modified in the `source/css/print.scss` file. Including page margins, and rules regarding the running feet and page numbering that are included at the bottom of each PDF page.

{{< q-class "box warning" >}}
- Beware of a couple known issues with variables:
- In `source/css/print.scss` Quire defines both a `$print-base-text-column-width` as well as inner and outer margins. The problem with this is that if you add up the values of the two margins and the text column and they don’t equal the value you have set as a print-width, you can get some unexpected results.
- Also, there is some well-intentioned but ultimately flawed logic built in that can also lead to unexpected results as some margins are automatically adjusted if the print width is less than or equal to 7" and again if it’s less than or equal to 10".
{{< /q-class >}}

Where a variable is not available, you can also add custom CSS to your `static/css/custom.css` file to acheive the desired result. You can target changes *only* to the print output by wrapping your CSS rules in a {{< q-def "media query">}}.

For example, this would hide all `video` elements in the print output:

```css
@media print {
  video {
    display: none;
  }
}
```

Some of the CSS used in styling the PDF is from the CSS Paged Media Specification. This is a set of CSS rules designed specifically to style things in a page-like manner, inlcuding controlling left and right page rules, page numbering, and running feet and heads. There is good information about this [in PrinceXML’s documentation](https://www.princexml.com/doc/paged/).

## Deploy Your Project