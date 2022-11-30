---
title: "What's New in Version 1"
subtitle:
weight: 6005
type: essay
abstract: "Important changes to note between Quire v0 and v1"
---

For users of the legacy version of Quire (v0), this chapter will walk you through some of the key changes and prepare you to make the switch to the new version (v1).

## Project Architecture

The first difference you will see is in the organization of the files and directories inside a new Quire project.

All the work that most users will need to do on a Quire project will now happen in the `content` directory. The content directory contains the Markdown files that make up your publication, the YAML files that contain your publication's data, figure mages, style stylesheets, fonts, and javascript templates.

All YAML files are now named and referred to with their full suffix `.yaml` instead of `.yml`. You will find them all in the `content/_data/` directory. The configuration file (`config.yaml`) has been simplified and better organized. The basic structure of the other YAML files remains the same.

## Page YAML

There have been some wording changes to some of the common YAML attributes you will use on each Markdown page of your project:

- `weight` is now `order`
- `type` is now `layout`
-  `layout` on object entry and table of contents pages is now accompanied by `presentation` instead of `class`.

    For example:

    ```yaml
    layout: entry
    presentation: side-by-side

    or

    layout: table-of-contents
    presentation: grid
    ```

For Markdown files that you only want to appear in particular output formats of your project, list the desired formats under `outputs`, such as `outputs: [pdf, epub]` to include the page in the PDF and EPUB, but not the HTML, or it can be written as below. If no `outputs` list is included on the page, Quire assumes the page should be included in **all** formats.

```YAML
outputs:
  - pdf
  - epub
```

Learn more in the [*Pages Types & Structure*](/docs-v1/pages/) section of our v1 documentation.

## Sub-Sections

Every directory you create as a sub-section **must** include an `index.md` file. This will be the landing page for that section. If you don't want a landing page, you still still create the `index.md` file but add `output: none` to the page YAML.

## Shortcodes

The syntax for shortcodes is different in the new version of Quire. What was `{{</* q-figure */>}}` is now `{% figure %}`. Note that the wrapping elements have changed from `{{</* */>}}` to `{% %}`, and the name of the shortcode has lost it's `q-` prefix.

Also, the way data and other information is added to shortcodes is different in some cases. For example, you don't specify the `id` value in the figure shortcode like `{{</* q-figure id="fig-01" */>}}`. Instead it’s `{% figure 'fig-01' %}`.
