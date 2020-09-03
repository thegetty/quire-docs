---
title: For Developers
weight: 4101
type: essay
---

## Quire Repositories

### `quire-cli`

Quire CLI is written in JavaScript and requires [Node.js 12.18.3 LTS](https://nodejs.org) to run.The following commands are available:

| Command | Description |
| -------------- | -------------- |
| `quire -V` or `quire --version` | Output the version number. |
| `quire -h` or `quire --help` | Output usage information. |
| `quire new project-name` | Create a new Quire project named `project-name` in the current directory. Name can be anything, but shouldn’t contain spaces. |
| `quire preview` | Run a local server to preview the project in a browser. Defaults to previewing at http://localhost:1313/, but will use other port numbers (such as http://localhost:6532/) if `1313` is busy. The specific address will be listed in your command line terminal after running the command. |
| `quire build` | Build the files of the current project into the `public` directory. These can then be hosted on any web server. |
| `quire pdf` | Generate a PDF version of the current project. |
| `quire epub` | Generate an EPUB version of the current project. |

Read more in [Quire CLI Commands](/documentation/quire-cli/).

### `quire-starter`

Quire Starter ([quire-starter](https://github.com/gettypubs/quire-starter)) is a starter content repository used as placeholder content when starting a new Quire project with the `quire new` command. It comes with some pre-defined example content and pages with which to get started.

{{< q-figure id="1.2" >}}

### `quire-starter-theme`

Quire Starter Theme ([quire-starter-theme](https://github.com/gettypubs/quire-starter-theme)) is the basic theme that is included when starting a new Quire project with the `quire new` command. It is designed to broadly cover a full range of use-cases and to demonstrate the range of Quire content model, without being too overly specific or complex, making it easy to customize and build from. Read more about the use of themes in [Customizing Styles](/guide/styles-customization).

{{< q-figure id="1.3" >}}

More themes will be added in the future.

### `quire`

Quire ([quire](https://github.com/gettypubs/quire)) is the repository for the guide and documentation you are currently reading.

## YAML

### Configuration

Location: `config.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `baseURL` | url | The base url for your project. |
| `blackfriday` | [object](#black-friday-markdown) | Options for Blackfriday, Hugo’s markdown renderer. See below. |
| `canonifyURLs` |  boolean | Converts all internal links to being in complete cannonical format. Default is `false`. |
| `disableKinds` | | |
| `footnoteReturnLinkContents` | string | Controls the appearance of the link added to the end of footnotes. Default is "↩". |
| `googleAnalytics` | | |
| `languageCode` | | |
| `metaDataFormat` | "yaml", "toml", "json" | Default is "yaml" |
| `params` | [object](#quire-parameters) | Additional parameters for Quire. See below. |
| `pluralizeListTitles` | | |
| `publishDir` | | |
| `relativeURLs` |  boolean | Keeps all internal links relative. Default is `true`. |
| `title` | | |
| `theme` | url/id | The name of the theme, in the `theme` directory you’re using. Quire starter kit default is `quire-base-theme` |

See: [Additional Hugo configuration options](https://gohugo.io/getting-started/configuration/#yaml-configuration)

#### Black Friday Markdown

Location: `blackfriday` in `config.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `fractions` | boolean | When set to `true` any numbers separated by a slash are automatically converted to fractions. Default is `false`. Though even then 1/4, 1/2 and 3/4 are still converted. Recommend always using proper unicode fractions: ¼, ½, ¾, ⅛, ⅜, ⅝, ⅞. |
| `hrefTargetBlank` | boolean | When set to true, any Markdown links to external pages and resources will open in a new tab/window for the user. |

See: [Additional Blackfriday markdown configurations options](https://gohugo.io/getting-started/configuration/#blackfriday-options)

#### Quire Parameters

Location: `params` in `config.yml`

Type: Object

| Parameter | Expected Value | Description |
| --------- | -------------- | ----------- |
| `searchEnabled` | boolean | Turn on or off the built-in text search capability for users |
| `licenseIcons` | boolean | Whether or not to display Creative Commons license icons |
| `pageLabelDivider` | string | ". " default, etermines the text/spacing to be inserted between page .label and page .title |
| `citationPageLocationDivider` | string | ", " default, determines the text/spacing to be inserted between the citation and the page number in the q-cite shortcode |
| `displayBiblioShort` | boolean | Whether a bibilography generated with the q-cite or q-bibliography shorcodes should display the short form of the reference, along with the long. |
| `imageDir` | string | "img" default, the directory in the `/static/` directory where you put your images |
| `tocType` | "full", "short" | "short" will hide all sub-section pages |
| `menuType` | "full", "short" |  "short" will hide all sub-section pages |
| `prevPageButtonText` | string | "Back" default |
| `nextPageButtonText` | string | "Next" default |
| `entryPageSideBySideLayout` | boolean | Entry pages can have a side-by-side layout with image on the left and text on the right, this can be controlled by `class: side-by-side` in the page YAML, or globally with this parameter |
| `entryPageObjectLinkText` | string | "View in Collection" default |
| `figureLabelLocation` | "on-top", "below" | Whether the figure label is "on-top" of the image in the upper left corner, or "below" it with the caption |
| `figureModal` | boolean | If figures should be clickable to open into a full-screen modal window |
| `figureModalIcons` | boolean | Whether to display icons with the figure modal links |
| `figureZoom` | boolean | Whether figures should zoom or not inside the modal |

### Publication

Location: `publication.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `title` | string | The title of your publication. |
| `subtitle` | string | The subtitle of your publication. |
| `short_title` | string | A short version of your title, primarily for use in navigation elements with limited space. |
| `reading_line` | string | An additional title line for your publication. |
| `url` | url | The full URL of your final publication. |
| `pub_type` | "book", "journal-periodical", "other" | Can be one of three values. Determines how key search-engine metadata is defined. |
| `pub-date` | YYYY-MM-DD | The first date your publication will be released |
| `language` | 2-letter ISO 639-1 language code(s) | Taken from the the list at https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes. List multiple languages using a comma-separated list. |
| `identifier` | [object](#identifier) | See below. |
| `publisher` | [array](#publisher) | See below. |
| `series_periodical_name` | string |  |
| `series_issue_number` | string |  |
| `contributor` | [array](#contributor) | See below. |
| `contributor_as_it_appears` | string |  |
| `promo_image` | url |  |
| `description` | [object](#description) | See below. |
| `subject` | [array](#subject) | See below. |
| `library_of_congress_cip_data` | list |  |
| `copyright` | string |  |
| `license` | [object](#license) | See below. |
| `resource_link` | [array](#resource-link) | See below. |
| `revision_history` | [array](#revision-history) | See below. |
| `repository_url` | url | A public repository of the source code and revision history for the publication. |

#### Publisher

Location: `publisher` in `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `name` | string | Name of the publisher |
| `location` | string | Publisher location, city. |
| `url` | url | Publisher homepage. |

#### Description

Location: `description` in `publication.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `one_line` | string |  |
| `full` | string |  |
| `online` | string | The `online` and `pdf_ebook` fields allow you to add additional text to the `full` description that is specific to either the online, or the PDF/EPUB/MOBI editions and will only show up there. For instance, in order to point to special features in one or the other of the formats. |
| `pdf_ebook` | string | |

#### Subject

Location: `subject` in `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `type` | "keyword", "bisac", "getty" |  |
| `name` | string |  |
| `identifier` | string |  |


#### License

Location: `license` in `publication.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `name` | string | Name of the license. |
| `abbreviation` |  | If using a Creative Commons licenses, should match one of the seven available options: "CC0", "CC BY", "CC BY-SA", "CC BY-ND", "CC BY-NC", "CC BY-NC-SA", or "CC BY-NC-ND". |
| `url` | url | Link to the license text. |
| `icon` | url |  |
| `scope` | "text-only", "full", "some-exceptions" |  |
| `online_text` | string | Markdown okay. Will override the automatically generated license text for the online edition only. |
| `pdf_ebook_text` | string | Markdown okay. Will override the automatically generated license text for the PDF and e-book editions only. |

#### Resource Link

Location: `resource_link` in `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `name` | string | How the link will be named. |
| `type` | "other-format", "related-resource", "footer-link" |  |
| `media_type` | string | Taken from the list at https://www.iana.org/assignments/media-types/media-types.xhtml |
| `link_relation` | string | Taken from the list at http://www.iana.org/assignments/link-relations/link-relations.xhtml |
| `url` | url | URL to web resource or to download. |
| `identifier` | [object](#identifier) | See below. |
| `file_size_mb` | integer | For downloads, file size in megabytes. Often appended to `name` in the interface, depending on your theme. |
| `icon` | url |  |


#### Revision History

Location: `revision_history` in `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `date` | YYYY-MM-DD |  |
| `summary` | list |  |

### Identifier

Location: `identifier` in top level of `publication.yml`, in any `.Page.Params.`, or in any `resource_link`

Type: Object

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `isbn` | 10- or 13-digit ISBN | For use with `pub-type` of "book". ISBNs can be purchased indivudally or in packages at http://www.isbn.org/.  |
| `issn` | 8-digit ISSN | For use with `pub-type` of "journal-periodical". ISSNs can be requested through http://www.issn.org/. |
| `doi` | string | Not yet implemented. |
| `uuid` | string | Not yet implemented. |

### Contributor

Location: `contributor` in publication.yml or in any `.Page.Params.`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `id` |  |  |
| `type` | "primary", "secondary", or user choice |  |
| `first_name` |  | All contributors must have either a first and last name, or a full name defined. |
| `last_name` |  |  |
| `full_name` |  |  |
| `file_as` |  |  |
| `title` |  |  |
| `affiliation` |  |  |
| `url` | URL |  |
| `bio` | | Markdwon okay. |
| `pic` |  |  |

### Figure

Location: `figure_list` in `figures.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
|`id` | string | Numbers and lowercase letters only, with no spaces or special characters (`001`, `fig-01a`, etc). |
| `src` | url | Should be the file name of a JPG, PNG or GIF image (`fig01.jpg`). Avoid using spaces or special characters, and if it’s in a sub-folder within the main `img`directory (which is defined by the `imageDir` parameter in the `config.yml` file), it should include that sub-folder name as well (`comparatives/fig01.jpg`). |
| `alt` | string | For accessibility, all images should have alternative text descriptions. ([Tips on crafting good alt text.](https://webaim.org/techniques/alttext/)) Only ever leave blank if the image is purely decorative. |
| `caption` | string | The caption to appear below the figure. Special characters are allowed. Use Markdown for formatting. |
| `credit` | string | Follows the caption. Markdown allowed. |
| `media_type` | "youtube", "vimeo" | Currently supports video hosted on YouTube or Vimeo. (May eventually expand to HTML5 video, audio, and Soundcloud, and others.) When a `media_type` is defined, a `media_id` must be as well. For video, it is also recommended that an image `src` still be used (presumably being a screenshot from the video) so as to provide a fallback for PDF and EPUB output. |
| `media_id` | string | The ID of the video resource on YouTube or Vimeo. For example, in the URLs https://www.youtube.com/watch?v=VYqDpNmnu8I or https://youtu.be/VYqDpNmnu8I, the `media_id` would be `VYqDpNmnu8I`; and in https://vimeo.com/221426899 it is `221426899`.|
| `aspect_ratio` | "standard", "widescreen" | For use with video `media_type`s to properly scale video embeds. When no value is provided, the default is "widescreen". |
| `label_text` | string | Used for the `q-figure-group` shortcode only. A short text label added to the image, usually just under the image depending on your theme. If no text is provided here, a label is automatically generated from the provided `id` value along with the `imageLabelContentBefore` and `imageLabelContentAfter` values defined in your `config.yml` file.  |

### Bibiliography

Location: `entries` in `references.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `short` | string | The short form of the citation, ie., Brown 1984. |
| `full` | string | The full form of the citation, ie.,  |

### Object

Location: `object_list` in `objects.yml`

Type: Array

| Attribute | Expected Value | Description |
| --- | --- | --- |
| `id` | string | Required. Used to reference objects from entry pages. Should be numbers and lowercase letters only, with no spaces or special characters (`001`, `fig-01a`, etc). |
| `figure` | [array](#figure) | A list of one or more images of the object. It is recommended that this list be only of `id` values corresponding with `id`s in your project’s `figures.yml` file. |
| `link` | url | A URL link to a page with more/current information on the object. Usually the object in the museum’s online collection pages. |
| `date_start`, `date_end` | integer | Reserved for future use in Quire. |
| `dimension_width`, `dimension_height`, `dimension_depth` | integer | Reserved for future use in Quire. |

Objects also support arbitrary attributes, which might include `title`, `artist`, `collection`, etc. Those added will be output in a table on collection catalogue entry pages. The ordering of the display can be controlled with `object_display_order` in `objects.yml`.

See: [Guide on Collection Catalogues](/guide/collection-catalogues/)

### Page

Location: Any Markdown page in the `/content/` directory.

Type: Object

| Attribute | Expected Value | Description |
| --- | --- | --- |
| `label` | string | A label for the page “Chapter 1”, “2”, “III”, etc. |
| `title` | string | |
| `subtitle` | string | |
| `short_title` | string | Used in navigation items where a long title would be too unwieldy. |
| `type` | "page" (default), "essay", "entry", "cover", "contents", "splash", or "data" | See [*Defining Page Types*](/guide/pages/#defining-page-types) for examples |
| `class` | string | Can accept any string, which will be included as a class in the main page element to facilitate style customization. A number of pre-defined classes also exist in the [Quire Starter Theme](https://github.com/gettypubs/quire-starter-theme). Pages with `type: contents` can have class `list` (default), `brief`, `abstract`, or `grid`. Pages with `type: entry` can have class `landscape` (default) or `side-by-side`. |
| `weight` | integer | Controls ordering of pages in the publication. |
| `object` | [array](#Object) | |
| `contributor` | [array](#Contributor) | |
| `abstract` | string | Markdown okay. |
| `slug` | url path | Will change the URL of the page. Or use a period `.` to make the URL be the directory name (homepage). Read more in the [*Page Types & Structure*](/guide/pages/#creating-section-landing-pages) chapter of this guide.|
| `toc` | "true" (default), "false" | Page will not display in contents page if false. |
| `menu` | "true" (default), "false" | Page will not display in menu if false. |
| `online` | "true" (default), "false" | Page will not display in online edition if false. |
| `pdf` | "true" (default), "false" | Page will not display in pdf edition if false. |
| `epub` | "true" (default), "false" | Page will not display in epub or mobi edition if false. |

The `object` and `contributor` attributes above are arrays of one or more items. The details of what YAML values each of those items can have, can be found in the [*Catalogue Entries*](/guide/collection-catalogues/) and [*Contributors*](/guide/contributors/) chapters respectively.

Pages with `type: contents` can have class `list` (default), `brief`, `abstract`, or `grid`. Pages with `type: entry` can have class `landscape` (default) or `side-by-side`.

## Shortcodes

### `q-class`

Sample: `{{</* q-class "my-class-name" */>}}The text you want formatted here.{{</* /q-class */>}}`

Basic Usage: Wrapping any Markdown text in this shortcode will wrap it in a `<div>` with the given class name in the HTML output. Used for styling.

See: [Working with Text](/guide/pages/)

### `q-bibliography`

Basic Usage: Generates a bibliography from the entries in the project's `bibliography.yml` file.

See: [Citations & Bibliographies](/guide/citation-bibliographies/)

### `q-cite`

Basic Usage: Adds a linked Author Date citation reference to the text, and a hover pop-up with the full citation text. It also adds the citation to a map of cited works, which can then be output as a page-level bibliography on essay and entry type pages.

See: [Citations & Bibliographies](/guide/citation-bibliographies/)

### `q-contributor`

Sample: `{{</* q-contributor range="page" format="bio" align="center" */>}}`

Basic Usage: Can be used to create a page of contributor biographies, a section of bios for a single page, a simple list of contributors, a byline for a particular page, or other similar outputs.

Required Named Parameters: "range" and "format"

#### format

| Value | Description |
| --- | --- |
|`initials` | Looks for the capital letters in a contributor first and last name and concatenates them together. Jane Pauley, becomes J.P.; Ralph Waldo Emerson becomes R.W.E. |
| `name` | Just the name. |
| `name-title` | The name and, when available, the title and affiliation; on a single line |
| `name-title-block` | The name and, when available, the title and affiliation; broken onto separate lines. |
| `bio` | The name and, when available, a picture, offsite link to their personal site, and a bio. Plus links to any individual pages in the project for which they are listed as a contributor. |

#### range

| Value | Description |
| --- | --- |
|`page` | Only the contributors listed for the page the shortcode appears on. |
| `all` | All contributors listed in the publication, whether listed on individual pages or in the publication.yml file. |

You can also use any contributor `type` you define. So if you give a contributor a `type: primary` then a shortcode using `range="primary"` will list any of your project’s primary contributors.

Required Named Parameter: "align"

#### align

| Value | Description |
| --- | --- |
|`left` (default) | Align the names and text to the left. |
| `center` | Align the names and text in the center. |
|`right` | Align the names and text to the right. |


See: [Contributors](/guide/contributors/)

### `q-figure`

Sample: `{{</* q-figure id="3.1" */>}}`

Basic Usage: Inserts a formatted figure image, label, caption and credit line. If using a `data/figures.yml` file, only an `id` parameter is required for this shortcode. If other values supplied directly in the shortcode they will override any corresponding values in the `data/figures.yml`.


| Named Parameters | Expected Value  | Description |
| --- | --- | --- |
|`id` | string | Spaces or special characters should not be used and will be stripped out. When used in a shortcode *without* a corresponding `src` parameter, the shortcode will look for a matching `id` in the project’s `data/figures.yml` file. When used in a shortcode *with* a corresponding `src` parameter, this will create an `id` for the image markup that can be used to link to the image directly (`mypublication.com/chapter01/#fig-3`) and ignores any  potentially corresponding information in the `data/figures.yml` file. |
| `src` | url | Should be the file name of a JPG, PNG or GIF image (`fig01.jpg`). Avoid using spaces or special characters, and if it’s in a sub-folder within the main `img` directory (which is defined by the `imageDir` parameter in the `config.yml` file), it should include that sub-folder name as well (`comparatives/fig01.jpg`). If your project uses `data/figures.yml` file, you shouldn’t use a `src` parameter in the shortcode as it will override all other information.  |
| `alt` | string | For accessibility, all images should have alternative text descriptions. ([Tips on crafting good alt text.](https://webaim.org/techniques/alttext/)) Only ever leave blank if the image is purely decorative. |
| `caption` | string | The caption to appear below the figure. Special characters are allowed. Use Markdown for formatting. |
| `credit` | string | Follows the caption. Markdown allowed. |
| `label` | boolean | Default is set to `true`. `true` will add a label to the caption, such as "Figure 1.3", `false` will remove the label. The global label setting is in the `config.yml` file under the parameter `figureLabels`.  |
| `label_text` | string | Will override the default label text for the figure, which is otherwise constructed automatically with the `figureLabelsTextBefore` and `figureLabelsTextAfter` parameters in `config.yml`. |
| `class` | `is-pulled-right`, `is-pulled-left`, `is-full-width`, `is-centered-small` | Sets the style of the figure image. |

See: [Figure Images](/guide/figure-images/) and [Figure YAML](/api-docs/yaml#figure)

### `q-figure-group`

Sample: `{{</* q-figure-group id="3.1, 3.2, 3.3" */>}}`

Basic Usage: Like `q-figure`, but with handling for multiple images at once.

| Named Parameters | Expected Value  | Description |
| --- | --- | --- |
|`id` | string | One or more comma-separated `id`s that match corresponding values in the project’s `data/figures.yml` file. |
| `caption` | string | The caption to appear below the figure group. Special characters are allowed. Use Markdown for formatting. Overrides any caption information provided in `data/figures.yml`. |
| `credit` | string | Follows the caption. Markdown allowed. Overrides any caption information provided in `data/figures.yml`. |
| `label` | boolean | Default is set to `true`. `true` will add a label to the caption, such as "Figure 1.3", `false` will remove the label. The global label setting is in the `config.yml` file under the parameter `figureLabels`. If a `caption` is also provided in the shortcode, the labels will be applied on their own directly under each image in the group, rather than as part of the caption. |
| `class` | `is-pulled-right`, `is-pulled-left`, `is-full-width`, `is-centered-small` | Sets the style of the group of figures overall. |
| `grid` |  `1`, `2`, `3`, `4`, `5`, `6` | Determines the horizontal width (in number of images) of the image grid. If no grid is set, the images will stack on top of one another vertically. |

See: [Figure Images](/guide/figure-images/) and [Figure YAML](/api-docs/yaml#figure)

### Other Potential Shortcodes

The following have been used previously but are not yet implemented in Quire. They are under consideration.

#### `q-link-list`

Sample: `{{</* q-link-list "other-formats" */>}}`

Basic Usage: Creates an unordered list of links. Makes use of the `link-list.html` partial in the site templates.

Parameters:

| Parameter Position | Expected Value                       | Description                              |
| ------------------ | ------------------------------------ | ---------------------------------------- |
| 0 *                | "other-formats", "related-resources" | Values point to corresponding values in `publication.yml` |

Parameters are not named, but instead defined by their position, starting at 0.

See: [Copyright & About Pages](/guide/copyright-about-pages/)

#### `q-copyright`

Sample: `{{</* q-copyright */>}}`

Basic Usage: Adds a copyright statement and licensing information as you’ve defined it in your `publication.yml` file. Commonly used on Copyright and About pages. The shortcode itself makes use of the `copyright.html` partial in your site templates.

Parameters: None.

See: [Copyright & About Pages](/guide/copyright-about-pages/)

#### `q-loc`

Sample: `{{</* q-loc */>}}`

Basic Usage: Adds formatted Library of Congress Cataloging-in-Publication Data to the page, from values in `publication.yml`.

Parameters: None

See: [Copyright & About Pages](/guide/copyright-about-pages/)

#### `q-revision-history`

Sample: `{{</* q-revision-history */>}}`

Basic Usage: Adds a revision history to the page, based on values in `publication.yml`.

| Named Parameters | Expected Value  | Description                              |
| ---------------- | --------------- | ---------------------------------------- |
| format           | "short", "full" | "short" will show only the first publication date and most recently updated date. "long" shows all dates and list of changes for each. |

See: [Copyright & About Pages](/guide/copyright-about-pages/)

#### `q-table`

Note: Original version of this was tabled. Still looking for better solution for complex tables.

See: [Figures](/guide/figure-images/)

#### `q-url-link`

Note: Not sure we‘ll do this. Might be better to build in with JS rather than have a separate shortcode just for URLs.

See: [Working with Text](/guide/pages/)
