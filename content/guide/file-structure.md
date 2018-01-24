---
title: Quire File Structure
type: page
---

Inside each Quire project, will be the following directories and files, which are defined by Hugo, the static-site generator that powers Quire. The three directories that most users work in most are `content`, `data`, and `static`. Developers and designers will also make use of `themes`.

## 📁 bin

Currently only a `deploy.sh` script file for deploying a Quire project to GitHub pages. May be eliminated.

## 📁 content

The central part of a Quire, the `content` directory is where almost all of a publication’s text content will live, as individual Markdown files. Read more in [Pages & Plain Text](content/guide/text.md).

The way you organize files in the `content` directory, and the way you name files will effect the final URLs of your publication as well as how the Table of Contents is organized. By default, URLs will be the filename, minus the `.md` suffix. Files nested in a sub-directory within `content` will include that sub-directory in the URL as well. So if your site is mypublication.com, these files:

```
📄 cover.md
📄 contents.md
📁 part-one
  📄 section-overview.md
  📄 chapter-01.md
  📄 chapter-02.md
📁 part-two
  📄 section-overview.md
  📄 chapter-03.md
```

Will map to these URLs:

```
mypublication.com/cover/
mypublication.com/contents/
mypublication.com/part-one/section-overview/
mypublication.com/part-one/chapter-01/
mypublication.com/part-one/chapter-02/
mypublication.com/part-two/section-overview/
mypublication.com/part-two/chapter-03/
```

There are some important rules and tips to keep in mind, as well as further ways of refining and customizing the organization of your publication content:

1. Filenames should be lowercase, with no spaces or special characters.

2. Sub-directories can’t have other sub-directories within them.

3. Don't use `index.md` or `_index.md` files.

  For users with previous Hugo, static-site or other web development experience, you should not use `index.md` or `_index.md` files in your Quire project. `_index.md` is a Hugo convention for creating sections and nested sections, but in Quire it works against the linear ordering of the publication and breaks the Next and Previous page navigation. `index.md` is a web convention, but in Hugo, the presence of an `index.md` file in any directory converts that directory into a so-called “page bundle” in Hugo’s eyes and none of the other pages in that directory will be rendered.

4. Create homepage and section landing pages with `slug`.

  `index.md` files would typically be used to create pages with URLs at the root level of the directory including the homepage of your site and sub-directories (like `mypublication.com/` and `mypublication.com/part-one/`). Because `index.md` files can’t be used, you can instead define a `slug` attribute with a value of `.` (a period) in the page YAML of the page/file you want to use as a landing or homepage. One per section.

5. Control page ordering with `weight`.

  In the example above, we’ve listed the files and directories in the order they would appear in the publication. When looking in the actual `content` directory, however, they will almost certainly not appear in the proper publication order, but rather more likely, they’d appear alphabetically. To control page ordering in Quire, define a `weight` attribute, with a numerical value, in the page YAML.

*Read more about page `weight`, `slug` and other page YAML attributes in the [Pages & Plain Text](../text.md) section of the guide.*

## 📁 data

What content doesn’t live in `content` directory as a Markdown file, will live here in the `data` directory as a YAML file. A `publication.yml` fie is required (read more in [*Publication Metadata & Configuration*](content/guide/metadata.md)), but a Quire project may also include `bibliography.yml` ([*Citations & Bibliographies*](content/guide/bibliographies.md)); `figures.yml` ([*Figures*](content/guide/figures.md)); and `object.yml` (*not yet defined*).

## 📁 public

Where the built pages of the Quire website will be. This folder and its contents are automatically generated with the `quire build` command, and should not be edited directly. The `public` directory won’t be present in the project until running `quire build` the first time. And even then, may not be viewable in a text editor (depending on which is used) as it’s included in `.gitignore`. Read more in [*Outputting & Deploying Your Site*](content/guide/output.md).

## 📁 static

The `static` directory includes anything that will be included in your final publication, but that doesn’t have to first be processed through the Hugo static-site generator. By default, this includes a `css` directory for directly overriding theme styles (read more in [*Customizing Styles*](content/guide/styles.md)); a `downloads` directory for the multiple Quire formats ([*Outputting & Deploying Your Site*](content/guide/output.md)); and an `img` directory for all image and other media assets ([*Figures*](content/guide/figures.md), and [*Other Images & Assets*](content/guide/assets.md)).

## 📁 themes

The `themes` directory contains one or more themes that define the structure and style of the Quire publication. When using the `quire new` command, the default theme is `quire-starter-theme`. Read more in [*Customizing Styles*](content/guide/styles.md).

## 📄 .gitignore

If you are using `git` for version control, this file defines which files and/or directories should be ignored.

## 📄 config.yml

This is a standard, and required file for Hugo, and so also for Quire. In Quire, it is used expressly for configuring how Hugo operates, and for defining a number of key values used in Quire templates. Users who have worked on other non-Quire Hugo projects will note that they typically use the `config.yml` file to also store publication metadata. Given the potentially large scope of this metadata in formal digital publications, Quire instead uses `publication.yml` file inside the `data` directory for that purpose. Read more in [*Publication Metadata & Configuration*](content/guide/metadata.md).

## 📄 README.md

The `README.md` file is a code convention, and is a free space for information about the publication and specifically, its codebase. **It is not used in the output Quire publication at all.** However, if you host your Quire project on GitHub or other similar `git` project management sites, the `README.md` file is used for the repository’s front page description. Often it will include notes on development, on what usage is allowed, on how issues will be handled and if contributions should be considered.

If the source files of your publication are hosted publicly on a site like GitHub, you should also include a `LICENSE.md` file to specifically define the terms of use for your files. A `LICENSE.md` file is not included by default in Quire projects, but we recommend looking at other Quire projects for samples. Typically the file will include license information for both the content and text content of your publication (Creative Commons), and also for the code (GNU Public, MIT, or others).







