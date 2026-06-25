---
title: For Developers
weight: 6040
type: essay
abstract: "API docs and Quire repository guide"
aliases:
  - /documentation/for-developers/
---

Since its launch in December 2022, Quire has been freely available under the BSD 3-Clause License. Quire is a tool for generating full static sites using 11ty, with pages that load quickly in the browser. The Quire CLI provides a straightforward set of commands for building and publishing your site.

## Requirements
[Node.js](https://nodejs.org/en/) v22

## Repositories

### quire

https://github.com/thegetty/quire

Quire’s primary repository, with the command-line interface and 11ty template packages. 

### quire-docs

https://github.com/thegetty/quire-docs

This repository is specifically for the Quire website and documentation.

## Configuration YAML

Quire uses 11ty to generate static site files for publication. Through 11ty's Configuration API, general settings are available for developers in `config.yaml` to configure their Quire project. Learn more about 11ty's Configuration API through their official [documentation](https://www.11ty.dev/docs/config/).

Read our [*Metadata & Configuration*](https://quire.getty.edu/docs-v1/metadata-configuration/) for adjusting your `config.yaml`. 

| Property | Expected Value | Description |
| --- | --- | --- |
| `accordion` | object | Controls accordion UI behavior. |
| `analytics` | object | Analytics settings. |
| `bibliography` | object | Bibliography display settings. |
| `bylineFormat` | `initials` \| `name` \| `name-title` \| `string` \| `false` | Controls how contributor bylines are displayed. |
| `citations` | object | Citation display settings. |
| `copyButton` | object | Configures the section link copy button. |
| `entryPage` | object | Settings for object/catalogue entry pages. |
| `epub` | object | EPUB output settings. |
| `figures` | object | Figure and image display settings. |
| `footnotes` | object | Footnote display settings. |
| `globalControls` | object | Labels for expand/collapse all controls. |
| `licenseIcons` | boolean | Whether to display license icons. |
| `localization` | object | Localization settings. |
| `menuType` | `full` \| `brief` | Set the appearance of the contents list in the sidebar menu. Setting to `brief` will hide any pages with sub-sections. |
| `navigation` | object | Previous/next navigation button labels. |
| `pageTitle` | object | Page title formatting. |
| `pdf` | object | PDF output settings. |
| `ref` | object | Cross-reference settings. |
| `searchEnabled` | boolean | Enables or disables site search. |
| `tableOfContents` | object | Table of contents display settings. |

### Properties removed from `config.yaml` under Hugo
- `blackfriday`
- `markup`
- `theme`
- `metaDataFormat`
- `pluralizeListTitles`
- `disableKinds`
- `buildDrafts`

## Configuration API
With Quire's release, we switched from Hugo to 11ty which supports YAML for configuring your project. The `.eleventy.js` file is the root directory of your proejct to configure Eleventy to your needs.

{% q-class "box warning" %}
- Editing `.eleventy.js` can introduce breaking changes. Ensure you read the official 11ty documentation before making any changes.
{% endq-class %}

| Property | Expected Value | Description | 
| --- | --- | --- |
| `input directory` | object | Directory/file used to resolve templates. Default to `content` | 
| `output directory` | object | Where written templates will be written to. Default to `_site` | 
| `publicDir` | object | Set to production when you're ready to go public with your site. Default to `false` | 
| `dataDir` | object | TODO Description |
| `includesDir` | object | Directory that maps subdirectories to be consumed by other template files. |
| `layoutsDir` | object | Directory to resolve 11ty layouts. Layouts are special templates used to wrap other content. | 
| `templateFormats` | string array | Specify which type of templates to transform. If you need to configure more templateFormats, use the `addTemplateFormats("option(s)")` API to append to the existing formats. |
| `watchTargets` | string | Add files or directories for 11ty to watch. These files will trigger a build. |
| `watchIgnore` | string | Add files or directories for 11ty to ignore. This will not trigger a build. |

### Configration API: Plugins
Plugins are custom code 11ty imports from external repositorys. Much like files in folders grouped with a common goal to complete a task. Below are some plugins used by Quire. Read more about available 11ty plugins through their official [documentation](https://www.11ty.dev/docs/plugins/)

// TODO: [] Go over what is in site and what it does after writing.
// input, output, _site, publicDir, dataDir, includesDir, layoutsDir,
### Directory Structure under 11ty
Layouts: `./_layouts`
Site Data: `./content/_data`
Assets: `./content/_assets`

### Migrating from Hugo to 11ty
// TODO: [] What is different from Hugo to 11ty with configurations



## Publication API
`publication.yml` contains important metadata regarding your publication. While only `title` is required, it is recommended to fill as many fields possible to support Search Engine Optimiziation (SEO) and general discovery.

You can find this file at `content/_data/publication.yml`.

For configuration tips and walkthroughs, see the [Metadata Configuration](/docs-v1/metadata-configuration/) guide.

| Property | Possible Values | Description |
|----------|-----------------|-------------|
| `url` | Any valid URL string | Base URL of the published site. Update before deploying. |
| `title` | Any string; HTML and Markdown supported | Full publication title. Supports `<br>` for line breaks. |
| `subtitle` | Any string | Optional subtitle displayed below the title. |
| `reading_line` | Any string | Short tagline or series descriptor shown near the title. |
| `short_title` | Any string | Abbreviated title used in navigation when the full title is too long. |
| `description.one_line` | Any string | One-sentence description used in SEO metadata. |
| `description.full` | Any string | Full abstract used in SEO metadata and on Cover and About pages. |
| `pub_date` | `YYYY-MM-DD` (ISO 8601) | Projected final publication date. |
| `language` | ISO 639-1 two-letter code (`en`, `es`, `fr`, etc.) | Primary language of the publication. |
| `pub_type` | `book`, `journal-periodical`, `other` | Publication format type. Affects which identifiers are recommended. |
| `identifier.isbn` | Valid ISBN-10 or ISBN-13 | ISBN for the online edition specifically. Recommended when `pub_type` is `book`. |
| `identifier.issn` | Valid ISSN | ISSN for the online edition. Recommended when `pub_type` is `journal-periodical`. |
| `identifier.doi` | Valid DOI string | Digital Object Identifier. Widely used in academic contexts to support citation. |
| `identifier.uuid` | Valid UUID string | Universally Unique Identifier for identifying the publication in computer systems. |
| `publisher[].name` | Any string | Publisher's display name. Used in citation features and search engine metadata. |
| `publisher[].location` | Any city/location string | Publisher's city or location. Used in citation features. |
| `publisher[].url` | Any valid URL | Publisher's website. Used in citation features and search engine metadata. |
| `publisher[].logo` | Relative file path | Path to publisher logo image. |
| `contributor_as_it_appears` | Any string | Freeform author credit line as it should appear on the cover (e.g. "Edited by Rose Valland"). |
| `additional_contributors` | Any string | Freeform credits for contributors who don't fit the structured list. |
| `contributor[].id` | Any unique string | Unique identifier. Can be referenced in individual page YAML to attribute essays to a specific author. |
| `contributor[].type` | `primary`, `secondary`, `project-team` | Role of the contributor. `primary` appears on Cover, Menu, and Title Page. `project-team` appears on About and Copyright pages. |
| `contributor[].first_name` | Any string | Contributor's first name. Use with `last_name`, or use `full_name` instead. |
| `contributor[].last_name` | Any string | Contributor's last name. Use with `first_name`, or use `full_name` instead. |
| `contributor[].full_name` | Any string | Alternative to `first_name` + `last_name` for names that don't split cleanly. |
| `contributor[].title` | Any string | Professional title (e.g. "Dr.", "Professor"). |
| `contributor[].affiliation` | Any string | Institutional affiliation. |
| `contributor[].bio` | Any string; Markdown supported | Biographical note displayed on contributor pages. |
| `contributor[].url` | Any valid URL | Contributor's personal or professional website. |
| `contributor[].sort_as` | Quoted number string | Controls display order of contributors. Must be a quoted string, not a raw integer. |
| `contributor[].image` | Relative file path | Path to contributor portrait image. |
| `copyright` | Any string; both HTML and Markdown supported | Copyright notice (e.g. "© 2026 Author Name"). |
| `license[].name` | Any string | Full name of the license (e.g. "Creative Commons Attribution"). |
| `license[].abbreviation` | `CCBY`, `CCBY-NC`, `CCBY-NC-ND`, `CCBY-NC-SA`, `CCBY-ND`, `CCBY-SA`, `CC0` | License abbreviation. If it matches a Creative Commons license, an icon is added automatically. |
| `license[].url` | Any valid URL | Link to the full license text. |
| `license[].scope` | `full`, `text-only`, `some-exceptions` | Controls how license wording is rendered on the site. |
| `license[].online_text` | Any string | Overrides the default license wording for the online edition. |
| `license[].pdf_ebook_text` | Any string | Overrides the default license wording for PDF and EPUB editions. |
| `license[].icon` | Relative file path | Path to a custom license icon. Used when `abbreviation` does not match a known Creative Commons license. |
| `resource_link[].type` | `other-format`, `related-resource`, `footer-link` | How the link is surfaced. `other-format` for PDF/EPUB/print editions; `related-resource` for supplementary content; `footer-link` for bottom-of-menu links. |
| `resource_link[].name` | Any string | Display label for the link as it appears in the sidebar menu. |
| `resource_link[].media_type` | Valid MIME type | MIME type for the linked resource. Recommended for `other-format` links. |
| `resource_link[].link_relation` | `alternate`, `about`, `related` | Semantic relationship of the link, following IANA conventions. |
| `resource_link[].url` | Any valid URL | Destination of the link. Can be internal or external. |
| `subject[].type` | `keyword`, `bisac`, `getty` | Subject classification scheme. |
| `subject[].name` | Any string | Subject term. For `keyword`, a single comma-separated list. For `bisac` and `getty`, one subject per entry. |
| `subject[].identifier` | BISAC code or Getty vocabulary semantic URL | Required for `bisac` and `getty` types. Not used for `keyword`. |
| `revision_history[].date` | `YYYY-MM-DD` | Date a post-publication revision was made. |
| `revision_history[].summary` | Any string; Markdown supported | Description of changes made. Typically written as a Markdown list. |
| `repository_url` | Any valid URL | Link to the source code repository (e.g. GitHub). Pairs with `revision_history` for version control. |
| `promo_image` | Relative file path | Cover image used for social sharing previews and metadata. |


## Page API

TK

## Shortcodes API

// TODO: [ ] Shortcodes API specs
11ty uses JavaScript to register shortcodes and Liquid for templating.

Basic shortcode syntax: `{% shortcode-name %}`

Shortcode registration can be found under `./_plugins/shortcodes`

## Notes

TK