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
[Node.js](https://nodejs.org/en/) v18 or higher (LTS preferred)

## Repositories

### quire

https://github.com/thegetty/quire

Quire’s primary repository, with the command-line interface and 11ty template packages. 

### quire-docs

https://github.com/thegetty/quire-docs

This repository is specifically for the Quire website and documentation.

## Configuration

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

## Migrating from Hugo to 11ty

Hugo supports various config file types including YAML, TOML and JSON while 11ty supports YAML with a separate `.eleventy.js` file for Configuration API. 

{% q-class "box warning" %}
- Editing `.eleventy.js` can introduce breaking changes. Ensure you read the official 11ty documentation before making any changes.
{% endq-class %}

### Properties removed from `config.yaml` under Hugo
- `blackfriday`
- `markup`
- `theme`
- `metaDataFormat`
- `pluralizeListTitles`
- `disableKinds`
- `buildDrafts`

### Directory Structure under 11ty
Layouts: `./_layouts`
Site Data: `./content/_data`
Assets: `./content/_assets`

### Shortcodes
11ty uses JavaScript to register shortcodes and Liquid for templating.

Basic shortcode syntax: `{% shortcode-name %}`

Shortcode registration can be found under `./_plugins/shortcodes`


## Publication API

TK

## Page API

TK

## Shortcodes API

TK

## Notes

TK