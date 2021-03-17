---
title: Output & Deploy Your Project
weight: 5700
type: essay
abstract: "Produce online, PDF, and E-Book versions of your publication"
---

Quire is designed to create a website version, a PDF version and two e-book versions of your project from the same source files. Each can be customized in various ways as described below.

## Site Output

Create the HTML files for your project by running `quire site` in your command-line shell. The files will be built into your project’s `site` folder along with all the necessary static assets like image files, stylesheets and script files. The `site` file will be updated and overwritten each time you run `quire site`.

{{< q-class "box tip" >}}
- If you are including PDF and e-book downloads as part of your online site (this is Quire’s default) you’ll need to update those files by running `quire epub`, `quire mobi`, and `quire pdf` as described above **before** running `quire site`.
{{< /q-class >}}

You can hide specific pages of your project from the site output by adding `online: false` to the page YAML. Or conversely, you can add pages exclusively to the site output, by adding `epub: false` and `pdf: false` to the page YAML and leaving the `online` attribute unset, or set to `true`.

Unlike `epub: false` and `pdf: false`, adding `online: false` does not stop a page from being built and included in the site output. Rather, it just unlinks those pages and adds a metadata tag to them to prevent them from being indexed by search engines. You may want to manually delete the pages from the `site` folder after outputting and before uploading to a web server if you want to be fully certain they can’t be accessed online under any circumstances.

{{< q-class "box tip" >}}
- Links to download the EPUB, MOBI, and PDF versions are automatically included in the sidebar menu of the online version of your project. These links can be removed or modified by making changes to the `resource_link` information in your `data/publication.yml` file.
- You can add links to these files from anywhere in your markdown files by linking to `/downloads/output.epub`, `/downloads/output.mobi`, and `/downloads/output.pdf` respectively.
{{< /q-class >}}

## Deploy Your Project on Online

A Quire site is designed to be hosted on virtually any web server, either one your institution already runs, or a new server from any hosting service you might sign up for. You do not need any special back-end setup.

When hosting a site this way, you will typically follow these steps:

1. Output your PDF and e-book files following the directions above, if you are going to include them as part of your published project
2. Update the baseURL in config/site.yml to match the URL where the site will ultimately be hosted
3. Output your site following the directions above
4. Upload the contents of the site folder to your web host based on the directions they provide

If you do not already have a web server or hosting plan, we’ve found that [Netlify](https://www.netlify.com/?_ga=2.127713933.1882208577.1616011630-1141534382.1615320952) offers a couple excellent options.

### Manual Deploy with Netlify

Manual deploy is ideal if you have a small site or want to run a quick preview. Keep in mind, with this option, you will need to go through the process of rebuilding the site, compressing files, and reuploading them to Netlify each time you make an update, which may be burdensome if you have lots of images or larger files. For continuous deployment please see [*Continuous Deploy from GitHub*](#continuous-deploys-from-github).

1. Navigate to your project and compress the `site` folder.

2. Go to Netlify Drop: [https://app.netlify.com/drop](https://app.netlify.com/drop). Make sure you are logged in to your account and then drag-and-drop your compressed `site` folder into the indicated area.

3. You will be given a default URL to preview your project. Rename this URL by navigating to “Site settings” and changing the site name. (You also have the option to buy a domain or set-up a domain you already own.)

If you make further edits to your project and would like to preview them you will need to repeat this process.

1. Delete the old compressed `site` folder.

2. Run `quire site` again (your files will be automatically overwritten.)

3. Compress the newly updated `site` folder.

4. In Netlify, navigate to “Deploys” at the top of the page. You will see a blank space that reads, “Need to update your site." Simply drag-and-drop your new compressed `site` folder here and your link will be automatically updated.

### Continuous Deploy with Netlify

By linking GitHub directly to your Netlify account, any time you merge changes in Github, your preview link will be automatically updated. This process requires a few extra steps to get set-up, but will save time in the long run.

1. If you haven't already, create a repository for your project on GitHub. You can find directions in the [*GitHub*](/documentation/gitub) section of our documentation.

2. To proceed with deployment, you will need to add two files to your repo: `netlify.toml` and `package.json`. Download them [here](/downloads/site-deploy.zip), add them to your repo, and merge changes before proceeding.

3. Log in to [Netlify](https://app.netlify.com/). On the “Team Overview” page, click the button that says “New Site from Git.”

4. Next you'll want to “Connect to Git Provider.” Choose either GitHub or GitLab.

5. If you see “no repositories found” you will be prompted to configure Netlify on GitHub.

6. Once this configuration is complete, choose the repository you would like to preview.

7. Set the "build command" as `npm run build` and the "publish directory" as `site`.  

8. Hit "Deploy Site." Depending on the size of your project, this may take a few moments. Follow along with the build process (and check for errors) by navigating to "Publication Deploys" section and scrolling down to the "Deploy Log".

9. You will be given a default URL to preview your project. You can rename this URL by navigating to “Site settings” and changing the site name. (You also have the option to buy a domain or set-up a domain you already own.)

10. Should you need to make any updates to your site, simply merge the changes and Netlify will automatically update your preview link. You can check "Production Deploys" in the site overview section to these track changes.

{{< q-class "box tip" >}}
- Now that you have linked Netlify to your Github account, you'll see notifications about Netlify testing the site each time you submit a new pull request. If the checks pass, you can click the bottom-most link to launch a preview of your site. If the checks fail, there may be broken links, incorrect YAML, or other issues with your project files.
{{< /q-class >}}

## E-Book Output

Quire can output two different {{< q-def "reflowable" >}} e-book formats: EPUB and MOBI. EPUB is the most widely used format and will work on most devices and for most e-book vendors. EPUB is an official specification of the World Wide Web Consortium (W3C), and Quire outputs the latest version: EPUB 3.2.

Very closely related to EPUB, the MOBI format is used almost exclusively by Amazon’s Kindle. Making it available in your project will allow Kindle readers to load the e-book onto their devices directly. (Amazon itself asks for EPUBs when selling/distributing through them, which it then converts to MOBI and other proprietary formats as needed.)

The MOBI file is derived directly from the EPUB version of your project, and does not have styling or customization options separate from the EPUB.

You can remove specific pages of your project from the e-book outputs by adding `epub: false` to the page YAML. Or conversely, you can add pages exclusively to the e-book outputs, by adding `online: false` and `pdf: false` to the page YAML and leaving the `epub` attribute unset, or set to `true`.

For developers creating custom templates, you can use templating logic to create specific outputs for the e-books by querying `if eq .Site.Data.params.epub true`. This parameter is set in the `config/epub.yml` file.

### Create and View the E-Book Files

Create an EPUB of your project by running `quire epub` in your command-line shell. An `output.epub` file will be created and saved to your project’s `static/downloads/` folder. This file will be updated and overwritten each time you run `quire epub`.

Create a MOBI of your project by running `quire mobi` in your command-line shell. An `output.mobi` file will be created and saved to your project’s `static/downloads/` folder. This file will be updated and overwritten each time you run `quire mobi`.

EPUB files can be viewed on the default Books app on macOS, or on a number of free EPUB readers available for both Windows and Mac.

MOBI files can be viewed with [Kindle Previewer](https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000765261) on both Windows and Mac.

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

EPUBs in Quire have their own style sheet separate from any styles applied to the online version of your project. EPUB styles can be modified and added to in the `themes/default/source/css/epub.scss` file.

Quire uses [Pandoc](https://pandoc.org) to create the EPUB files, and while consistent in outputting valid EPUB files, Pandoc also strips out a lot of the class names and other structures you may normally use to add custom styling. See the tip above for looking into the EPUB file, and use that to find class names and HTML structures as Pandoc outputs them for use as selectors in your CSS.

## PDF/Print Output

Create a PDF of your project by running `quire pdf` in your command-line shell. An `output.pdf` file will be created and saved to your project’s `static/downloads/` folder. This file will be updated and overwritten each time you run `quire pdf`.

By default, the PDF is output at full-resolution and with crop marks for professional printing. You may want to manually crop the pages and downsample the file to a smaller file size using a program like Adobe Acrobat if you are only making it available as a digital download.

Quire’s PDF output is generated by [PrinceXML](https://www.princexml.com/) which you should have installed when first [installing Quire](/documentation/install-uninstall/). PrinceXML is free to download for non-commercial use, though it does add a logo watermark to the first page of the PDF ouput. A desktop license can be purchased that will remove the watermark and also allow for commercial use.

You can remove specific pages of your project from the PDF output by adding `pdf: false` to the page YAML. Or conversely, you can add pages exclusively to the PDF output, by adding `online: false` and `epub: false` to the page YAML and leaving the `pdf` attribute unset, or set to `true`.

For developers creating custom templates, you can use templating logic to create specific outputs for the PDF by querying `if eq .Site.Data.params.pdf true`. This parameter is set in the `config/pdf.yml` file.

### Modifying and Styling the PDF

PrinceXML creates the PDF from the website version of your Quire site using CSS rules. You can modify Quire’s PDF styles using CSS just like you would modify Quire’s online styles. You can read more about styles in general in the [*Style Customization*](/documentation/styles-customization/) section of this guide.

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
- There is also some well-intentioned but ultimately flawed logic built in that can lead to unexpected results as some margins are automatically adjusted if the print width is less than or equal to 7" and again if it’s less than or equal to 10".
{{< /q-class >}}

Where a variable is not available, you can also add custom CSS to your `static/css/custom.css` file to achieve the desired result. You can target changes to *only* the print output by wrapping your CSS rules in a {{< q-def "media query">}}.

For example, this would hide all `video` elements in the print output:

```css
@media print {
  video {
    display: none;
  }
}
```

Some of the CSS used in styling the PDF is from the CSS Paged Media Specification. This is a set of CSS rules designed specifically to style things in a page-like manner, including controlling left and right page rules, page numbering, and running feet and heads. There is good information about this [in PrinceXML’s documentation](https://www.princexml.com/doc/paged/).

### Tips for PDF Design and Development

For developers and designers interested in making more extensive changes to the PDF output, you can make the process easier by using a PDF reader that will autoreload, and displaying a version of the PDF output in your browser.

When working on improving or modifying the styling of your PDF output, the basic methodology is to output the PDF with `quire pdf`, open it, look at what you want to change, write/modify your CSS accordingly, run `quire pdf` again, open it, look to see if the CSS change had the desired effect, rinse and repeat. It is, in a word, cumbersome. But there are some things that will make this process a little easier.

#### Use an Auto-Reloading PDF Reader

Adobe Acrobat (a popular PDF reader) won’t reload the PDF you’re looking at if the file has been changed. We recommend instead using a PDF reader, like [Skim](https://skim-app.sourceforge.io/) for macOS, that will reload the PDF every time it’s changed. For Quire development, this means you can open the PDF to a page you want to make a style change to, make the change in your project, run `quire pdf` and see that change happen as soon as the PDF process is finished running. It takes away the wasted time of closing PDFs, opening new versions and finding your place in them time and time again.

#### Display the PDF Verion in a Browser

You can use your browser to display a decent, though not exact, preview of what the print output will be. It won’t have the correct page sizes or margins and page numbering, but you'll see the overall text sizes and styles, figures, spacing between these elements, and other parts generally as they'll look in the PDF. This means that you can make changes to your CSS and see a live preview in the browser without having to output the PDF every time.

1. Open the `config.yml` file and at the bottom of the list of `params` temporarily add `pdf: true`, which tells Quire to build the PDF version of your site. Be sure to delete this line when you’re done working on the PDF.

2. Open your site preview in Firefox or Chrome, it will look a little different and some elements may be missing or altered.

3. Right or Control-Click anywhere on the preview:

    Firefox: Select Inspect Element and then click the small page icon in the upper right of the window that opens. (On hover, the icon will say “Toggle print media simulation for the page”.)

    Chrome: Select Inspect, click the three-dots menu icon in the upper right of the window that opens, select More Tools, and then Rendering. In the area that opens, scroll down to “Emulate CSS media type” and select “print”.

You can also use the web inspector to help track down different HTML elements and CSS selectors that are effecting the final PDF output. This can make it easier to make changes that will have the desired effect.
