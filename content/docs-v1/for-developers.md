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

TK

## Page API

TK

## Shortcodes API

// TODO: [ ] Shortcodes API specs
11ty uses JavaScript to register shortcodes and Liquid for templating.

Basic shortcode syntax: `{% shortcode-name %}`

Shortcode registration can be found under `./_plugins/shortcodes`

## Notes

TK