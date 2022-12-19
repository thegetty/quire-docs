---
title: "Key Changes in Version 1"
subtitle:
weight: 6005
type: essay
abstract: "Important differences to note between Quire v0 and v1"
---

For users of the legacy version of Quire (v0), this chapter will walk you through some of the key changes and prepare you to make the switch to the new version (v1).

## Content Directory

The first difference you will notice is a change to the overall project architecture and a simplification of the way files and directories are organized inside a new Quire project.

All the work that most users will need to do on a Quire project will now happen primarily in the `content` directory. The content directory contains the Markdown files that make up your publication and the YAML files that contain your publication's data, as well as figure images, style stylesheets, fonts, and javascript templates.

```tx
📁 content     <-- Markdown files with publication text
  📁 _data     <-- YAML files with publication data
  📁 _computed <-- Default `eleventyComputed.js` file
  📁 _assets   <-- Fonts, images, and styles
```

## YAML Files

All YAML files are now named and referred to with their full suffix `.yaml` instead of `.yml`. You will find them all in the `content/_data/` directory.

## Config.yaml

The configuration file (`config.yaml`) has been simplified and better organized. The basic structure of the other YAML files remains the same. This file can still be found in the `content/_data/` directory.

## Page YAML

There have been wording changes to some of the common YAML attributes and values you will use on each Markdown page of your project. Learn more about these changes in the [*Pages Types & Structure*](/docs-v1/pages/) section of our v1 documentation.

- `weight` is now `order`
- `type` is now `layout`
- `contents` is now `table-of-contents`
-  `layout` on object entry/table of contents pages is now accompanied by `presentation` instead of `class`. For example:

    ```yaml
    layout: entry
    presentation: side-by-side
    ```

    ```yaml
    layout: table-of-contents
    presentation: grid
    ```

- For Markdown files that you only want to appear in particular output formats of your project, list the desired formats `epub`, `pdf`, and/or `html` under the `outputs` attribute. For example:

    ```YAML
    outputs:
      - pdf
      - epub
    ```

  The example above will result in a particular page appearing in the PDF and EPUB formats, but not the HTML format. If no `outputs` list is included on the page, Quire assumes the page should be included in **all** formats.

## Subsection Landing Pages

Every directory you create as a sub-section **must** include an `index.md` file. This will be the landing page for that section. This includes your `cover.md` which should now be renamed `index.md`.

```tx
📁 content
  📄 index.md
  📄 contents.md
  📄 introduction.md
  📁 catalogue
    📄 index.md
    📄 object-entry-01.md
    📄 object-entry-02.md
```

If you don't want a landing page, you must still create the `index.md` file but add `output: none` to the page YAML.

Learn more in the [*Pages Types & Structure*](/docs-v1/pages/) section of our v1 documentation.

## Shortcodes

The syntax for shortcodes is also different in the new version of Quire. What was `{{</* q-figure */>}}` is now `{% figure %}`. Note that the wrapping elements have changed from `{{</* */>}}` to `{% %}`, and the name of the shortcode has lost it's `q-` prefix.

Also, the way data and other information is added to shortcodes is different in some cases. For example, you don't specify the `id` value in the figure shortcode like `{{</* q-figure id="fig-01" */>}}`. Instead it’s `{% figure 'fig-01' %}`.

## Preview URL

When you run the command `quire preview` the URL to view you project is now `http://localhost:8080` as opposed to `localhost:1313` in the v0 version of Quire.

If you are making changes to YAML files or page YAML and they are not showing immediately, use Control-C to stop the project and then run `quire preview` again.

## CLI Commands

Rather than running `quire install` to install Quire’s dependencies when you clone a project and preview it for the first time, you now need to run `npm install`.

Before running `quire epub` or `quire pdf` you must first run `quire build` to create the site files that are needed to build the PDF and EPUB. You no longer need to run `quire site` since this is esentially the same action as `quire build`.
