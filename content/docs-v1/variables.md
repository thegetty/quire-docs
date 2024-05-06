---
title: Default Theme Style Variables
weight: 6540
type: essay
online: false
aliases:
  - /documentation/variables/
---

## Defined Variables

The default Quire theme includes a number of style variables intended to allow for relatively easy customization without having to dig into the stylesheets and CSS markup. They are explained below and can be found and changed in `content/_assets/styles/variables.scss` file. Take special note of the `$theme` variable which can be set to "modern" or "classic", and the `$accent-color` variable which will give your publication a distinct feel in coloring all links, buttons and other navigation elements.

| Variable Type | Variable | Expected Value | Description |
| ------------- | -------- | -------------- | ----------- |
| Primary | $accent-color | color value  | The color of buttons, links and navigation elements |
| | $content-background-color | color value | Main text area background color |
| | $secondary-background-color | color value  | Additional background color, only for modern version of the theme |
| | $theme | "modern", "classic" | Shifts the overall feel and typography of the publication  |
| | $navbar | "normal", "accent" | Predefined options for your navbar, white or the accent color |
| Pre-defined fonts | $ibm-sans | font name | This theme includes three embedded, open license fonts, (Noto Sans, Noto Serif, and IBM Plex Sans Condensed) and also uses the widely available Times (files of which are not otherwise included here). | 
| | $noto-sans | font name, "serif", "sans-serif"  | See above | 
| | $noto-serif | font name, "serif", "sans-serif" | See above | 
| | $time-serif | font name, "serif", "sans-serif" |See above  | 
| Page typography | $quire-base-font-size | unit value | 16px default |
| | $quire-page-paragraph-style | "line-space", "indent" | Paragraph display styles, either a line space and no indent, or an indent and no line space | 
| Cover typography | $quire-cover-text-color | color value | |
| | $quire-cover-text-scale | integer | Use decimal numbers such as .8 or 1.3 to shift the text larger or smaller |
| Menu | $quire-menu-width: | unit value | 352px default | 
|| $quire-menu-color | color value | |
| | $quire-menu-text-color | color value | |
| Image viewer colors (pop-up figure viewer & entry page viewer) | $quire-entry-header-height | unit value | 6rem default |
| | $quire-entry-image-color | color value | The background of the image viewer on entry pages |
| | $quire-entry-image-icons-color | color value | |
| Active link and table-row color | $quire-hover-color | color value | Used on active links and when hovering over table rows |
| Print/PDF output | $print-width | unit value | 8.5in default|
| | $print-height | unit value | 11in default |
| | $print-bleed | unit value | .125in default |
| | $print-bottom-margin | unit value | 0.875in default | 
| | $print-top-margin | unit value | 0.75in default |
| | $print-outer-margin | unit value | 0.75in default |
| | $print-inner-margin | unit value | 1in default |
| | $print-base-font-size | unit value | 8.5pt default |
| | $print-text-color | color value | Specifying a plain black will avoid excessive color printing costs |
| | $print-splash-color | color value | Background color for full-bleed splash pages |
| | $print-entry-image-color | color value | Background color for full-bleed image pages ($black for Paged.js and $rich-black for PrinceXML) |
| | $print-entry-caption-color | color value | Color of the caption text | 
| | $print-entry-image-display | "all", "first" | Output "all" the images associated with an object on an entry page, or only the "first", main image |
| Themes: Declare theme variables | $quire-primary-font | font name | Controls body and menu text | 
| | $quire-headings-font | font name | Controls headings text |
| | $quire-footnotes-font | font name | Controls footnotes and page backmatter |
| | $quire-navigation-font | font name | Controls navbar and next/prev buttons |
| Themes: Classic theme | $quire-primary-font | font name | 
| | $quire-headings-font |font name | |
| | $quire-footnotes-font |font name | |
| | $quire-navigation-font | font name | |
| | $accent-color | color value | |
| | $content-background-color | color value | | 
| | $secondary-background-color | color value | | 
| Themes: Modern theme (default) | $quire-primary-font | font name | 
| | $quire-headings-font | font name | | 
| | $quire-footnotes-font | font name | | 
| | $quire-navigation-font | font name | | 
| | $accent-color | color value | | 
| | $content-background-color | color value | |
| | $secondary-background-color | color value | | 
| Navbar | $navbar-height | unit value | 3rem default | 
| | $quire-progress-bar-height | unit value | 2px default |  
| | $quire-navbar-color | color value | |
| | $quire-navbar-hover-color | color value | |
| | $quire-navbar-text-color | color value | |
| Navbar: Accent Navbar | $quire-navbar-color | color value | | 
| | $quire-navbar-hover-color | color value | | 
| | $quire-navbar-text-color | color value | | 
| Navbar: Normal Navbar | $quire-navbar-color | color value | | 
| | $quire-navbar-hover-color | color value | | 
| | $quire-navbar-text-color | color value | If theme is classic | 
| | $quire-navbar-text-color | color value | If theme is modern | 
| Cover colors | $quire-cover-color-1 | color value | The cover includes a gradient of two colors, specified here, and a white/transparent wave graphic specified in the cover.md of the content files |
| | $quire-cover-color-2 | color value | |
| | $quire-cover-color-1 | color value | If theme is classic | 
| | $quire-cover-color-2 | color value | If theme is classic | 
| | $quire-cover-color-1 | color value | If theme is modern | 
| | $quire-cover-color-2 | color value | If theme is modern | 
| Layout sizes | $quire-map-height | unit value | 500px default |
| | $quire-deepzoom-height | unit value | 500px default |
| Heading Styles | $heading-1-font-size | unit value | 3em default | 
| | $heading-1-line-height | unit value | 1.15 default | 
| | $heading-2-font-size | unit value | 1.75rem default | 
| | $heading-2-line-height | unit value | 1.15 default |
| | $heading-3-font-size | unit value | 1.5rem default |
| | $heading-3-line-height | unit value | 1.25 default |
| | $heading-4-font-size | unit value | 1.375rem default |
| | $heading-4-line-height | unit value | 1.3 default |
| | $heading-5-font-size | unit value | 1.25rem default |
| | $heading-5-line-height | unit value | 1.4 default |
| | $heading-6-font-size | unit value | 1.1875rem default |
| | $heading-6-line-height | unit value | 1.4 default |

## YAML Classes

| Class | Description |
| ----- | ----------- |
| page-one | For PDF output, should be used on the page/chapter where you want page 1 to start, often an Introduction or first essay rather than the Contents pages or other frontmatter |
| copyright-page | For PDF output, should be used for designated copyright page | 
| half-title-page | For PDF output, should be used for designated half title page |
| title-page | For PDF output, should be used for designated title page |

```YAML
layout: page
order: 30
classes:
  - page-one
```

## Shortcode Classes 

| Class | Description | 
| ------- | ----------- | 
| is-pulled-left, is-pulled-right | Can be applied to figures or figure groups with their shortcodes, will make figures roughly half-column width and will float them to the left or right of the text. | 

```
{% figure 'fig-1-2', 'is-pulled-left' %}
```

## Presentation Classes 

| Presentation | Description | 
| ------------ | ----------- | 
| brief, list, abstract, grid | Can be applied to pages with a `layout: table-of-contents`, will alter how the contents are displayed |
| side-by-side, landscape | Can be applied to pages with a `layout: entry`, will alter how the image viewer is displayed |


```YAML
layout: contents
presentation: list 
```
## Layout Types 

| Layout | Description | 
| ------ | ----------- | 
| table-of-contents | This page type automatically creates a table of contents for your entire publication, or for a section of your publication when used inside a sub-directory. Can be formatted differently by applying different `presentation`: `list`, `brief`, `abstract`, and `grid`.| 
| entry | Typically used for collection catalogues. Formatted to display images of an object along with data about that object and essays. The default display is `landscape` where the image appears above the text. | 
| page | The basic, default Quire page shows title, page content, links and a list. Used for introductions, forewords, chapters, appendices and other pages. | 
| cover | Used for the `index.md` file that serves as the publicaiton cover.| 
| bibliography | Automatically generates a bibliography based on references.yaml file. | 
| essay | The essay is a standalone, self-contained article in a periodical or collected volume. This is also reflected in the metadata embedded in the page, which will include more page-specific information than a typical publication page, whose metadata will instead point to the publication as a whole. | 
| splash | A splash page is used to open a section or to set off a particular page. Includes customizable banner image, drop cap lettering, full-color background. | 
| objects-page | Typically used in collection catalogues. Will create a grid of images and object data for all pages with `object` attribute included in Page YAML. | 


## Configuration Parameters

A Quire project will also have a `config.yaml` file which includes a number of parameters the theme relies on.

## Configuration

| Object | Object Properties | Additional Properties | Expected Value | Description |
| ------ | ------------------| -------------------- | -------------- | ----------- |
| `accordion` | `controls` | | "arrow", <br> "plus-minus" | Default symbol for accordion menu is "arrow" |  
| | `copyButton` | `arialabel` | string | Labels an interactive element for accessibility purposes. The default is "Copy page section link to clipboard" | 
| | | `successtext` | string | The default is "Copied page section link to clipboard" | 
| | | `symbol` |  | Symbol that will be used in Markdown. Default is `§` |  
| | `globalControls` | `collapseText` | string | The default is "Collapse All" | 
| | | `expandText` | string | Default is  "Expand All" | 
| `analytics`| `googleId` | |  | Add your Google Analytics tag here. If you don't have one leave the value as `''` | 
| `bylineFormat` | | | "name",<br> "name-title",<br> "false" | Choose false if you don't want a byline to appear | 
| `bibliography` | `displayOnPage` | | boolean | If you want to suppress the page-level bibliography but keep the in-text citations, go into the change the value to false | 
| | `displayShort` | | boolean | Bibliographies can appear with or without the short form of the citation. The default is set to true. If you only want to show the full references, change the value to false |
| | `heading` | | string | A heading can be customized to go above this bibliography. The default heading is “Bibliography” | 
| `citations` | `divider` | | string | Determines the separation between short form citation and the page number. The Default is `','` | 
| | `popupStyle` | | "text", <br> "icon" | Determines if pop-up citation is text or an image. | 
| `entryPage` | `sideBySide` | | string | Determines if entry page object appears above or side-by-sde object data. Default is to appear above object data (ie. `landscape`) | 
| | `objectLinkText` | | string | Controls text that links to external URL. Default is "View in Collection | 
| `epub`| `defaultCoverImage` | | string | Points to the image file for  EPUB cover. Default is `epub-cover.png` | 
| | `outputDir` | | string | Points to the directory where the EPUB cover file is stored. Default is `_epub`. | 
| `footnotes` | `backlinkSymbol` | | string | Controls the symbol that takes readers from the footnotes back to the main text. Default is `↩`. | 
| `figures` | `assetDir` | | string | Determines the location where figures are stored. Default is `/_assets/` | 
| `figures` | `enableModal` | | boolean | 
