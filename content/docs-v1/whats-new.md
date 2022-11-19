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

All the work that most users will need to do on a Quire project will now happen in the `content` directory. This is where your Markdown files go, where the YAML data lives, where you put all your image assets, and where all the stylesheets can be found.

All YAML files are now named and referred to with their full suffix `.yaml` instead of `.yml`. You will find them all in the `content/_data/` directory. The configuration file (`config.yaml`) has been simplified and better organized. The basic structure of the other YAML files has remained the same.

## Page YAML

There have been some wording changes to some of the common YAML values you will use on each Markdown page of your project:

- `weight` is now `order`
- `type` is now `layout`
- in cases where a page `layout` has some built-in layout options to choose from, these are specified with `presentation` rather than `class`. Such as `layout: entry` with `presentation: side-by-side`. Or `layout: table-of-contents` with `presentation: grid`

For Markdown files that you only want to appear in particular output formats of your project, list the desired formats under `outputs`, such as `outputs: [pdf, epub]` to include the page in the PDF and EPUB, but not the HTML, or it can be written as below. If no `outputs` list is included on the page, Quire assumes the page should be included in **all** formats.

```
outputs:
  - pdf
  - epub
```

## Sub-Sections

Every directory you create as a sub-section **must** include an `index.md` file. This will be the landing page for that section. If you don't want a landing page, add `output: none` to the page YAML of your `index.md` file.

## Shortcodes

The syntax for shortcodes is different in the new version of Quire. What was `{{</* q-figure */>}}` is now `{% figure %}`. Note that the wrapping elements have changed from `{{<` to `{%`, and the name of the shortcode has lost it's `q-` prefix.

Also, the way data and other information is added to shortcodes is different in some cases. For example, you don't specify the `id` value in the figure shortcode like `{{</* q-figure id="fig-01" */>}}`. Instead it’s `{% figure 'fig-01' %}`.
