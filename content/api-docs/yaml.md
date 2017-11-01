---
title: YAML
---

## Configuration

Location: `config.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `baseURL` | url | The base url for your project. |
| `blackfriday` | [object](#black-friday-markdown) | Options for Blackfriday, Hugo’s markdown renderer. See below. |
| `canonifyURLs` |  boolean | Converts all internal links to being in complete cannonical format. Default is `false`. |
| `footnoteReturnLinkContents` | string | Controls the appearance of the link added to the end of footnotes. Default is "↩". |
| `metaDataFormat` | "yaml", "toml", "json" | Default is "yaml" |
| `params` | [object](quire-parameters) | Additional parameters for Quire. See below. |
| `relativeURLs` |  boolean | Keeps all internal links relative. Default is `true`. |
| `theme` | url/id | The name of the theme, in the `theme` directory you’re using. Quire starter kit default is `quire-base-theme` |

See: [Additional Hugo configuration options](https://gohugo.io/getting-started/configuration/#yaml-configuration)

### Black Friday Markdown

Location: `blackfriday` in `config.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `fractions` | boolean | When set to `true` any numbers separated by a slash are automatically converted to fractions. Default is `false`. Though even then 1/4, 1/2 and 3/4 are still converted. Recommend always using proper unicode fractions: ¼, ½, ¾, ⅛, ⅜, ⅝, ⅞. |

See: [Additional Blackfriday markdown configurations options](https://gohugo.io/getting-started/configuration/#blackfriday-options)

### Quire Parameters

Location: `params` in `config.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `displayBiblioShort` | boolean | When `true` the short citation form (ie., "Smith 2003") will be displayed with the full form, when creating a bibliogrpahy on pages with `type: essay`, or on other pages with the `q-bibliograpy` shortcode. Default is `true`. |
| `citationPageLocationDivider` | string | Default is ", ". |
| `figureSubDir` | string | The image directory inside the `imageDir` for figures listed in `figures.yml`. Default is "figures/". |
| `imageDir` | string | The project image directory in the `static`. Default is "img/".  |
| `imageLabelContentBefore` | string |  |
| `imageLabelContentAfter` | string |  |
| `menuType` | "short", "full" | Default is "short".   |
| `searchEnabled` | boolean | Default is `true`. |
| `tocType` | "short", "full" | Default is "full". |



## Publication

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
| `isbn` | 10- or 13-digit ISBN | For use with `pub-type` of "book". ISBNs can be purchased indivudally or in packages at http://www.isbn.org/.  |
| `issn` | 8-digit ISSN | For use with `pub-type` of "journal-periodical". ISSNs can be requested through http://www.issn.org/. |
| `doi_uuid` ? | string |  |
| `publisher` | array | See below. |
| `series_periodical_name` | string |  |
| `series_issue_number` | string |  |
| `primary_contributor` | array | See below. |
| `secondary_contributor` | array | See below. |
| `contributor_as_it_appears` | string |  |
| `marketing_graphic` | url |  |
| `description` | object | See below. |
| `subject_metadata` | array | See below. |
| `library_of_congress_cip_data` | list |  |
| `copyright` | string |  |
| `license` | object | See below. |
| `project_team` | array | See below. |
| `formats` | array | See below. |
| `related_resources` | array | See below. |
| `footer_links` | array | See below. |
| `revision_history` | array | See below. |
| `repository_url` | url |  |

## Publisher

Location: `publisher` in `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `name` | string | Name of the publisher |
| `location` | string | Publisher location, city. |
| `url` | url | Publisher homepage. |

## Contributor

Location: `primary_contributor`, `secondary_contributor`, `publication_team` in `publication.yml`; or `contributor` in any `.Page.Params.`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `id` |  |  |
| `first_name` |  |  |
| `last_name` |  |  |
| `title` |  |  |
| `affiliation` |  |  |
| `role` |  |  |
| `role_code` | 3-letter role code | Taken from the list at https://www.loc.gov/marc/relators/relaterm.html |
| `url` |  |  |
| `bio` |  |  |

## Publication Description

Location: `description` in `publication.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `one_line` | string |  |
| `full` | string |  |
| `additional_online` | string |  |
| `additional_pdf_ebook` | string | |

## Subject Metadata

Location: `subject_metadata` in `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `keywords` | string | Comma-separated list of keywords describing your publication. |
| `linked_vocabulary` | array | See below.  |
| `bisac` | array | See below. |

### Linked Vocabulary

Location: `linked_vocabulary` under `subject_metadata` in `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `type` | string |  |
| `name` | string |  |
| `url` | url |  |

### BISAC

Location: `bisac` under `subject_metadata` in `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `code` | string |  |
| `subject` | string |  |

## License

Location: `license` in `publication.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `name` | string | Name of the license. |
| `url` | url | Link to the license text. |
| `icon` | url |  |
| `exceptions` | array | See below. |

### License Exceptions

Location: `exceptions` under `license` in `publication.yml`

Type: Object

| Object Properties | Expected Value | Description |
| --- | --- | --- |
| `online` | string |  |
| `pdf_ebook` | string |  |
| `all` | string |  |

## Resource Links

Location: `formats`, `related_resources`, or `info_links` in `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `name` | string | How the link will be named. |
| `media_type` | string | Taken from the list at https://www.iana.org/assignments/media-types/media-types.xhtml |
| `link_relation` | string | Taken from the list at http://www.iana.org/assignments/link-relations/link-relations.xhtml |
| `url` | url | URL to web resource or to download. |
| `identifier` | string | ISBN, ISSN, DOI or other similar designator. |
| `file_size_mb` | integer | For dowloads, file size in megabytes. Often appended to `name` in the interface, depending on your theme. |
| `icon` | url |  |


## Revision History

Location: `revision_history` in `publication.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `date` | YYYY-MM-DD |  |
| `summary` | list |  |


## Figure

Location: `figure_list` in `figure.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
|`id` | string |Numbers and lowercase letters only, with no spaces or special characters (`001`, `fig-01a`, etc). This can be used to create an anchor that can be linked to directly (`mypublication.com/chapter01/#fig-01a`). |
| `src` | url | the file name (`fig01.jpg`), and if it’s in a sub-folder within the main `figures` directory, it should include that folder name as well (`comparatives/fig01.jpg`). |
| `alt` | string | For accessibility, all images should have alternative text descriptions. ([Tips on crafting good alt text.](#link)) Only ever leave blank if the image is purely decorative. |
| `label` | string | When using a `figures.yml` document, if label is set to `true`, label text will be added to your layout under or on the corner of the image, depending on your theme. Quire first looks for a `label` field in `figures.yml` and will use that, or if none is found, a label will be automatically generated from the `id` value and with the `imageLabelContentBefore` and `imageLabelContentAfter` values defined in your `config.yml` file. If not using a `figures.yml` document or if text other than `true` is used, the label will appear as given, or not appear at all if use in the `q-figure-group` shortcode. Markdown is supported. |
| `caption` | string | The caption to appear below the figure. Special characters are allowed. Use Markdown for formatting. |
| `credit` | string |  |
| `media-type` |  | Not yet available. Supported values are: video, youtube, vimeo, audio, soundcloud. For use specifically with the `q-figure-media` shortcode. |
| `fallback` | url | Not yet available.  |

## Bibiliography

Location: `entries` in `bibliography.yml`

Type: Array

| Item Attributes | Expected Value | Description |
| --- | --- | --- |
| `short` | string | The short form of the citation, ie., Brown 1984. |
| `full` | string | The full form of the citation, ie.,  |
