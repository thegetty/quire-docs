---
title: EPUB Output
weight: 6390
type: essay
abstract: "Produce an EPUB e-book version of your publication"
---

Quire is designed to create a website version, a PDF version, and an EPUB e-book version of your project from the same source files. EPUB is {{< q-def "reflowable" >}} and the most widely used format. It will work on most devices and for most e-book vendors. EPUB is an official specification of the World Wide Web Consortium (W3C), and Quire outputs the latest version: EPUB 3.2. This section details how to output, validate, and customize EPUBs in Quire projects. Once your EPUB is ready, visit the [*Deploy Your Project*](/docs-v1/site-deploy/) section of our documentation to learn how to deploy your project to the web.

{{< q-class "box tip" >}}
- Before outputting your EPUB, carefully check over all the [metadata and configuration](/docs-v1/metadata-configuration/) data in your project’s `config.yaml` and `publication.yaml` files to ensure it is complete and accurate.
{{< /q-class >}}

## Create and View the E-Book Files

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

## EPUBCheck Validation

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

## EPUB Styles

EPUBs in Quire have their own style sheet separate from any styles applied to the online version of your project. EPUB styles can be modified and added to in the `content/_assets/styles/epub.scss` file.