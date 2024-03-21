---
title: Default Theme Style Variables
weight: 6540
type: essay
online: false
aliases:
  - /documentation/variables/
---

## Defined Variables

This default theme includes a number of style variables intended to allow for relatively easy customization without having to dig into the stylesheets and CSS markup. They are explained below and can be found and changed in `/source/css/variables.scss` file. Take special note of thee `$theme` variable which can be set to "modern" or "classic", and the `$accent-color` variable which will give your publication a distinct feel in coloring all links, buttons and other navigation elements.

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
| page-one | For PDF output, should be used on the page/chapter where you want page 1 to start, `class: page-one`, often an Introduction or first essay rather than the Contents pages or other frontmatter |
| copyright-page | For PDF output, should be used for designated copyright page | 
| half-title-page | For PDF output, should be used for designated half title page |
| title-page | For PDF output, should be used for designated title page |

```YAML
layout: page
order: 5
classes:
  - copyright-page
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
| table-of-contents | | 
| entry | | 
| page | | 
| cover | | 
| bibliography | | 
| splash | | 
| objects-page | | 



## Configuration Parameters

Outside of the theme files themselves, a Quire project will also have a config.yaml file which includes a number of parameters the theme relies on.

| Parameter | Expected Value | Description |
| --------- | -------------- | ----------- |
| runTests | boolean | Turn on or off the built-in tests that check for certain common errors and post error messages in the CLI output. |
| searchEnabled | boolean | Turn on or off the built-in text search capability for users |
| licenseIcons | boolean | Whether or not to display Creative Commons license icons |
| pageLabelDivider | string | ". " default, etermines the text/spacing to be inserted between page .label and page .title |
| citationPageLocationDivider | string | ", " default, determines the text/spacing to be inserted between the citation and the page number in the q-cite shortcode |
| displayBiblioShort| boolean | Whether a bibilography generated with the q-cite or q-bibliography shorcodes should display the short form of the reference, along with the long. |
| imageDir | string | "img" default, the directory in the `/static/` directory where you put your images |
| `menuClass` | "brief", "list" |  "list" is the default, "brief" will show only top-level pages and sections, no sub-sections. |
| prevPageButtonText | string | "Back" default |
| nextPageButtonText | string | "Next" default |
| entryPageSideBySideLayout | boolean | Entry pages can have a side-by-side layout with image on the left and text on the right, this can be controlled by `class: side-by-side` in the page YAML, or globally with this parameter |
| entryPageObjectLinkText | string | "View in Collection" default |
| figureLabelLocation | "on-top", "below" | Whether the figure label is "on-top" of the image in the upper left corner, or "below" it with the caption |
| figureModal | boolean | If figures should be clickable to open into a full-screen modal window |
| figureModalIcons | boolean | Whether to display icons with the figure modal links |
| figureZoom | boolean | Whether figures should zoom or not inside the modal |
