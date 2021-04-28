---
title: For Developers
weight: 4125
type: essay
abstract: "API docs and Quire repository guide"
---

Quire is in a limited beta and not yet released as open source software. For a free license to use Quire for your publication projects, and for additional access to support, [please sign up](https://docs.google.com/forms/d/e/1FAIpQLScKOJEq9ivhwizmdazjuhxBII-s-5SUsnerWmyF8VteeeRBhA/viewform)

Quire is centered around the static-site generator, [Hugo](https://github.com/gohugoio/hugo). Quire's command-line interface is written in JavaScript and requires [Node.js LTS](https://nodejs.org/en/) to run.

## Repositories

### quire

https://github.com/thegetty/quire

This repo contains the command-line interface for Quire, default starter content used as placeholder content when starting a new Quire project, and a default theme designed to broadly cover a full range of use-cases and demonstrate the range of Quire's content model.

### quire-docs

https://github.com/thegetty/quire-docs

This repo is specifically for the Quire website and documentation.

## Configuration

General configuration options for a project. See [*Configure Hugo*](https://gohugo.io/getting-started/configuration/) for more options and information.

Location: `config.yml`, or any of the environment and format specific config files found in the `config` directory

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `baseURL` | url | The base url for your project. |
| `blackfriday` | [object](#blackfriday) | Options for Blackfriday, Hugo’s markdown renderer. Quire v0.18.0 and below. See below. |
| `buildDrafts` | | |
| `canonifyURLs` |  boolean | Converts all internal links to being in complete canonical format. Default is `false`. |
| `disableKinds` | | |
| `footnoteReturnLinkContents` | string | Controls the appearance of the link added to the end of footnotes. Default is "↩". |
| `googleAnalytics` | | |
| `languageCode` | | |
| `markup` | [object](#markup) | Options for Hugo’s markdown rendering. Quire v0.19.0 and above. See below. |
| `metaDataFormat` | "yaml", "toml", "json" | Default is "yaml". |
| `params` | [object](#params) | Additional parameters for Quire. See below. |
| `pluralizeListTitles` | | |
| `publishDir` | | |
| `relativeURLs` |  boolean | Keeps all internal links relative. Default is `true`. |
| `title` | | |
| `theme` | url/id | The name of the theme, in the `theme` directory you’re using. Quire starter kit default is `quire-base-theme`. |

### `blackfriday`

Configuration for the [Blackfriday](https://gohugo.io/getting-started/configuration-markup#blackfriday) markdown rendering engine.

Location: `config.yml`, or any of the environment and format specific config files found in the `config` directory

Type: Object

Compatibility: Quire v0.18.0 and below

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `fractions` | boolean | When set to `true` any numbers separated by a slash are automatically converted to fractions. Default is `false`. Though even then 1/4, 1/2 and 3/4 are still converted. Recommend always using proper unicode fractions: ¼, ½, ¾, ⅛, ⅜, ⅝, ⅞. |
| `hrefTargetBlank` | boolean | When set to true, any Markdown links to external pages and resources will open in a new tab/window for the user. |

### `markup`

Configuration for the markdown rendering engine. See [Hugo’s Markup Configuration](https://gohugo.io/getting-started/configuration-markup/) for more options and information.

Location: `config.yml`, or any of the environment and format specific config files found in the `config` directory

Type: Object

Compatibility: Quire v0.19.0 and above

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `goldmark.renderer.unsafe` | boolean | "true" (default) or "false", allows the inclusion of HTML markup in markdown pages. |

### `params`

Quire-specific project parameters.

Location: `config.yml`, or any of the environment and format specific config files found in the `config` directory

Type: Object

| Parameter | Expected Value | Description |
| --------- | -------------- | ----------- |
| `searchEnabled` | boolean | Turn on or off the built-in text search capability for users. |
| `licenseIcons` | boolean | Whether or not to display Creative Commons license icons. |
| `pageLabelDivider` | string | ". " default, determines the text/spacing to be inserted between page .label and page .title. |
| `citationPageLocationDivider` | string | ", " default, determines the text/spacing to be inserted between the citation and the page number in the q-cite shortcode. |
| `displayBiblioShort` | boolean | Whether a bibliography generated with the q-cite or q-bibliography shortcodes should display the short form of the reference, along with the long. |
| `biblioHeading` | | |
| `imageDir` | string | "img" default, the directory in the `/static/` directory where you put your images. |
| `tocType` | "full", "short" | "short" will hide all sub-section pages. |
| `menuType` | "full", "short" |  "short" will hide all sub-section pages. |
| `prevPageButtonText` | string | "Back" default. |
| `nextPageButtonText` | string | "Next" default. |
| `entryPageSideBySideLayout` | boolean | Entry pages can have a side-by-side layout with image on the left and text on the right, this can be controlled by `class: side-by-side` in the page YAML, or globally with this parameter. |
| `entryPageObjectLinkText` | string | "View in Collection" default. |
| `figureLabelLocation` | "on-top", "below" | Whether the figure label is "on-top" of the image in the upper left corner, or "below" it with the caption. |
| `figureModal` | boolean | If figures should be clickable to open into a full-screen modal window. |
| `figureModalIcons` | boolean | Whether to display icons with the figure modal links. |
| `figureZoom` | boolean | Whether figures should zoom or not inside the modal. |
| `citationPopupStyle` | "icon", "text" | Displays the citation pop-up links with an icon, or without. |

## Publication API

Location: `publication.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `title` | string | The title of your publication. |
| `subtitle` | string | The subtitle of your publication. |
| `short_title`[\*](#asterisked) | string | A short version of your title, primarily for use in navigation elements with limited space. |
| `reading_line` | string | An additional title line for your publication. |
| `url`[\*](#asterisked) | url | The full URL of your final publication. |
| `pub_type` | "book", "journal-periodical", "other" | Can be one of three values. Determines how key search-engine metadata is defined. |
| `pub_date` | YYYY-MM-DD | The first date your publication will be released. |
| `language` | 2-letter ISO 639-1 language code(s) | Taken from the the list at https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes. List multiple languages using a comma-separated list. |
| `identifier` | [object](#identifier) | See below. |
| `publisher` | [array](#publisher) | See below. |
| `contributor` | [array](#contributor) | See below. |
| `contributor_as_it_appears` | string |  |
| `promo_image` | url |  |
| `description` | [object](#description) | See below. |
| `subject` | [array](#subject) | See below. |
| `copyright` | string |  |
| `license` | [object](#license) | See below. |
| `resource_link` | [array](#resource_link) | See below. |
| `revision_history` | [array](#revision_history) | See below. |
| `repository_url` | url | A public repository of the source code and revision history for the publication. |
| `series_periodical_name`[\*](#asterisked) | string |  |
| `series_issue_number` | string |  |

### `publisher`

Location: `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `name` | string | Name of the publisher. |
| `location` | string | Publisher location, city. |
| `url` | url | Publisher homepage. |
| `logo` | | |

### `description`

Location: `publication.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `one_line` | string |  |
| `full` | string |  |
| `online`[\*](#asterisked) | string | The `online` and `pdf_ebook` fields allow you to add additional text to the `full` description that is specific to either the online, or the PDF/EPUB/MOBI editions and will only show up there. For instance, in order to point to special features in one or the other of the formats. |
| `pdf_ebook`[\*](#asterisked) | string | |

### `subject`

Location: `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `type` | "keyword", "bisac", "getty" |  |
| `name` | string |  |
| `identifier` | string |  |


### `license`

Location: `publication.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `name` | string | Name of the license. |
| `abbreviation` |  | If using a Creative Commons licenses, should match one of the seven available options: "CC0", "CC BY", "CC BY-SA", "CC BY-ND", "CC BY-NC", "CC BY-NC-SA", or "CC BY-NC-ND". |
| `url` | url | Link to the license text. |
| `scope` | "text-only", "full", "some-exceptions" |  |
| `icon`[\*](#asterisked) | url |  |
| `online_text` | string | Markdown okay. Will override the automatically generated license text for the online edition only. |
| `pdf_ebook_text` | string | Markdown okay. Will override the automatically generated license text for the PDF and e-book editions only. |

### `resource_link`

Location: `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `name` | string | How the link will be named. |
| `type` | "other-format", "related-resource", "footer-link" |  |
| `media_type` | string | Taken from the list at https://www.iana.org/assignments/media-types/media-types.xhtml. |
| `link_relation` | string | Taken from the list at https://www.iana.org/assignments/link-relations/link-relations.xhtml. |
| `url` | url | URL to web resource or to download. |
| `identifier`[\*](#asterisked) | [object](#identifier) | See below. |
| `file_size_mb`[\*](#asterisked) | integer | For downloads, file size in megabytes. Often appended to `name` in the interface, depending on your theme. |
| `icon`[\*](#asterisked) | url |  |


### `revision_history`

Location: `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `date` | YYYY-MM-DD |  |
| `summary`[\*](#asterisked) | list |  |

### `identifier`

Location: `publication.yml`, in any `.Page.Params.`, or in any `resource_link`

Type: Object

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `isbn` | 10- or 13-digit ISBN | For use with `pub-type` of "book". ISBNs can be purchased individually or in packages at http://www.isbn.org/.  |
| `issn` | 8-digit ISSN | For use with `pub-type` of "journal-periodical". ISSNs can be requested through https://www.issn.org/. |
| `doi`[\*](#asterisked) | string | Not yet implemented. |
| `uuid`[\*](#asterisked) | string | Not yet implemented. |
| `url` |  | Possibly replacing `url` in general Publication level?? |

### `contributor`

Location: `publication.yml` or in any `.Page.Params.`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `id` | string | Numbers and lowercase letters only, with no spaces or special characters ("001", "fig-01a", "bird-picture", etc). |
| `type` | "primary", "secondary", or user choice |  |
| `first_name` |  | All contributors must have either a first and last name, or a full name defined. |
| `last_name` |  |  |
| `title` |  |  |
| `affiliation` |  |  |
| `url` | url |  |
| `bio` | | Markdown okay. |
| `pic` | url | Should be the file name of a JPG, PNG or GIF image (`fig01.jpg`). Avoid using spaces or special characters, and if it’s in a sub-folder within the main `img` directory (which is defined by the `imageDir` parameter in the `config.yml` file), it should include that sub-folder name as well (`contributors/fig01.jpg`). |
| `full_name` |  |  |
| `file_as` |  |  |

### `figure_list`

Location: `figures.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
|`id` | string | Numbers and lowercase letters only, with no spaces or special characters ("001", "fig-01a", "bird-picture", etc). |
| `src` | url | Should be the file name of a JPG, PNG or GIF image (`fig01.jpg`). Avoid using spaces or special characters, and if it’s in a sub-folder within the main `img` directory (which is defined by the `imageDir` parameter in the `config.yml` file), it should include that sub-folder name as well (`comparatives/fig01.jpg`). |
| `alt` | string | For accessibility, all images should have alternative text descriptions. ([Tips on crafting good alt text.](https://webaim.org/techniques/alttext/)) Only ever leave blank if the image is purely decorative. |
| `caption` | string | The caption to appear below the figure. Special characters are allowed. Use Markdown for formatting. |
| `credit` | string | Follows the caption. Markdown allowed. |
| `media_type` | "youtube", "vimeo" | Currently supports video hosted on YouTube or Vimeo. (May eventually expand to HTML5 video, audio, and Soundcloud, and others.) When a `media_type` is defined, a `media_id` must be as well. For video, it is also recommended that an image `src` still be used (presumably being a screenshot from the video) so as to provide a fallback for PDF and EPUB output. |
| `media_id` | string | The ID of the video resource on YouTube or Vimeo. For example, in the URL [https://www.youtube.com/watch?v=VYqDpNmnu8I](https://www.youtube.com/watch?v=VYqDpNmnu8I), the `media_id` would be `VYqDpNmnu8I`; and in https://vimeo.com/221426899 it is `221426899`.|
| `aspect_ratio` | "standard", "widescreen" | For use with video `media_type`s to properly scale video embeds. When no value is provided, the default is "widescreen". |
| `label` | string |  |
| `download` | boolean | If "true", download icon will be added to image viewer, allowing users to easily download the image file. Currently only implemented in the page `type: entry` image viewer. Default is "false". |


### `entries`

Location: `references.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `id` | string | |
| `short` | string | The short form of the citation, ie., Brown 1984. Markdown okay. |
| `full` | string | The full form of the citation. Markdown okay. |
| `sort` | string | |


### `object_list`

Location: `objects.yml`

Type: Array

| Attribute | Expected Value | Description |
| --- | --- | --- |
| `id` | string | Required. Used to reference objects from entry pages. Should be numbers and lowercase letters only, with no spaces or special characters (`001`, `fig-01a`, etc). |
| `figure` | [array](#figure_list) | A list of one or more images of the object. It is recommended that this list be only of `id` values corresponding with `id`s in your project’s `figures.yml` file. |
| `link` | url | A URL link to a page with more/current information on the object. Usually the object in the museum’s online collection pages. |
| `date_start`, `date_end` | integer | Reserved for future use in Quire. |
| `dimension_width`, `dimension_height`, `dimension_depth` | integer | Reserved for future use in Quire. |

Objects also support arbitrary attributes, which might include `title`, `artist`, `collection`, etc. Those added will be output in a table on collection catalogue entry pages. The ordering of the display can be controlled with `object_display_order` in `objects.yml`. See [*Guide on Collection Catalogues*](/documentation/collection-catalogues/).

## Page API

Location: Any Markdown page in the `/content/` directory.

Type: Object

| Attribute | Expected Value | Description |
| --- | --- | --- |
| `label` | string | A label for the page “Chapter 1”, “2”, “III”, etc. |
| `title` | string | |
| `subtitle` | string | |
| `short_title` | string | Used in navigation items where a long title would be too unwieldy. |
| `type` | "page" (default), "essay", "entry", "cover", "contents", "splash", or "data" | See [*Define Page Types*](/documentation/pages/#define-page-types) for examples |
| `class` | string | Can accept any string, which will be included as a class in the main page element to facilitate style customization. A number of pre-defined classes also exist in the [Quire Starter Theme](https://github.com/gettypubs/quire-starter-theme). Pages with `type: contents` can have class `list` (default), `brief`, `abstract`, or `grid`. Pages with `type: entry` can have class `landscape` (default) or `side-by-side`. |
| `weight` | integer | Controls ordering of pages in the publication. |
| `object` | [array](#object_list) | See [*Catalogue Entries*](/documentation/collection-catalogues/). |
| `contributor` | [array](#contributor) | See [*Contributors*](/documentation/contributors/). |
| `contributor_byline` | boolean | |
| `abstract` | string | Markdown okay. |
| `slug` | url path | Will change the URL of the page. Or use a period `.` to make the URL be the directory name (homepage). Read more in the [*Page Types & Structure*](/documentation/pages/#creating-section-landing-pages) chapter of this guide.|
| `toc` | boolean | Default is "true". Page will not display in contents page if "false". |
| `menu` | boolean | Default is "true". Page will not display in menu if "false". |
| `online` | boolean | Default is "true". Page will not display in the online edition if "false". |
| `pdf` | boolean | Default is "true". Page will not display in the PDF edition if "false". |
| `epub` | boolean | Default is "true". Page will not display in either the EPUB or MOPBI ebook editions if "false". |
| `image` | url | |

Pages with `type: contents` can have class `list` (default), `brief`, `abstract`, or `grid`. Pages with `type: entry` can have class `landscape` (default) or `side-by-side`.

## Shortcodes API

### `q-class`

Used for styling. Wrapping any Markdown text in this shortcode will wrap it in a `<div>` with the given class name in the HTML output. 

`{{</* q-class "" */>}}  {{</* /q-class */>}}`

| Positional Parameter[<sup>†</sup>](#positional) | Expected Value | Description |
| --- | --- | --- |
| `0` (class name) | string | String without spaces or special characters to be used as a class for CSS styling. |

### `q-bibliography`

Generates a bibliography from the entries in the project's `bibliography.yml` file. See [*Citations & Bibliographies*](/documentation/citation-bibliographies/).

`{{</* q-bibliography sort="" */>}}`

| Parameter | Expected Value | Description |
| --- | --- | --- |
| `sort` | string | Optional. Value can be any string that matches a key in the entires under `entries` of the `references.yml` file, to indicate which key to alphabetically sort the output bibliography by. Without `sort` the default sort is on "full".  |

### `q-cite`

Adds a linked Author Date citation reference to the text, and a hover pop-up with the full citation text. It also adds the citation to a map of cited works, which can then be output as a page-level bibliography on essay and entry type pages. See [*Citations & Bibliographies*](/documentation/citation-bibliographies/).

`{{</* q-cite "" "" "" */>}}`

| Positional Parameter[<sup>†</sup>](#positional) | Expected Value | Description |
| --- | --- | --- |
| `0` (author date reference) | string | Should exactly match an `id` value under `entries` in the `references.yml` file. Typically something like "Jones 1974". |
| `1` (page number) | string | Optional. A page number of the specific citation. Will be appended to the citation text with a text divider defined by `citationPageLocationDivider` in `config.yml` |
| `2` (display text)| string | Optional. Alternate text that should be displayed instead of the default Author Date provided in the first parameter. |

### `q-contributor`

Can be used to create a page of contributor biographies, a section of bios for a single page, a simple list of contributors, a byline for a particular page, or other similar outputs. See [*Contributors*](/documentation/contributors/).

`{{</* q-contributor range="" format="" align="" */>}}`

| Parameter | Expected Value | Description |
| --- | --- | --- |
| range | "page", "all", or string | Defines which contributors to include. An arbitrary value matching a contributor type such as "primary" or "secondary" may also be used. |
| format | "initials", "name", "name-title", "name-title-block", "bio" | Defines what format the list should take. |
| align | "left" (default), "center", "right" | Optional. Defines how the output text will be aligned. |

### `q-figure`

Inserts a formatted figure image, label, caption and credit line. If using a `data/figures.yml` file, only an `id` parameter is required for this shortcode. If other values supplied directly in the shortcode they will override any corresponding values in the `data/figures.yml`. See [*Figure Images*](/documentation/figure-images/) and [`figure_list`](#figure_list) above.

`{{</* q-figure id="" src="" label="" caption="" credit="" alt="" class="" */>}}`

| Parameter | Expected Value  | Description |
| --- | --- | --- |
|`id` | string | Spaces or special characters should not be used and will be stripped out. When used in a shortcode *without* a corresponding `src` parameter, the shortcode will look for a matching `id` in the project’s `data/figures.yml` file. When used in a shortcode *with* a corresponding `src` parameter, this will create an `id` for the image markup that can be used to link to the image directly (`mypublication.com/chapter01/#fig-3`) and ignores any  potentially corresponding information in the `data/figures.yml` file. |
| `src` | url | Should be the file name of a JPG, PNG or GIF image (`fig01.jpg`). Avoid using spaces or special characters, and if it’s in a sub-folder within the main `img` directory (which is defined by the `imageDir` parameter in the `config.yml` file), it should include that sub-folder name as well (`comparatives/fig01.jpg`). If your project uses `data/figures.yml` file, you shouldn’t use a `src` parameter in the shortcode as it will override all other information.  |
| `alt` | string | For accessibility, all images should have alternative text descriptions. ([Tips on crafting good alt text.](https://webaim.org/techniques/alttext/)) Only ever leave blank if the image is purely decorative. |
| `caption` | string | The caption to appear below the figure. Special characters are allowed. Use Markdown for formatting. |
| `credit` | string | Follows the caption. Markdown allowed. |
| `label` | boolean | Default is set to `true`. `true` will add a label to the caption, such as "Figure 1.3", `false` will remove the label. The global label setting is in the `config.yml` file under the parameter `figureLabels`.  |
| `class` | `is-pulled-right`, `is-pulled-left`, `is-full-width`, `is-centered-small` | Sets the style of the figure image. |

### `q-figure-group`

Like `q-figure`, but with handling for multiple images at once. See [*Figure Images*](/documentation/figure-images/) and [`figure_list`](#figure_list) above.

`{{</* q-figure-group id=" , , " grid="" src="" label="" caption="" credit="" class="" */>}}`

| Parameter | Expected Value | Description |
| --- | --- | --- |
|`id` | string | One or more comma-separated `id`s that match corresponding values in the project’s `data/figures.yml` file. |
| `caption` | string | The caption to appear below the figure group. Special characters are allowed. Use Markdown for formatting. Overrides any caption information provided in `data/figures.yml`. |
| `credit` | string | Follows the caption. Markdown allowed. Overrides any caption information provided in `data/figures.yml`. |
| `label` | boolean | Default is set to `true`. `true` will add a label to the caption, such as "Figure 1.3", `false` will remove the label. The global label setting is in the `config.yml` file under the parameter `figureLabels`. If a `caption` is also provided in the shortcode, the labels will be applied on their own directly under each image in the group, rather than as part of the caption. |
| `class` | `is-pulled-right`, `is-pulled-left`, `is-full-width`, `is-centered-small` | Sets the style of the group of figures overall. |
| `grid` |  `1`, `2`, `3`, `4`, `5`, `6` | Determines the horizontal width (in number of images) of the image grid. If no grid is set, the images will stack on top of one another vertically. |

### `q-figure-zoom`

In progress. Documentation to come.

| Parameter | Expected Value  | Description |
| --- | --- | --- |
| id | string | |

<div class="backmatter">

## Notes

<sup id="asterisked">*</sup> Attributes with an asterisk are in the process of being reviewed as they may not be currently being used and/or may be deprecated.

<sup id="positional">†</sup> Positional parameters are included in shortcodes without a name defining them. See [`q-class`](#q-class), and [`q-cite`](q-cite).

</div>
