---
title: Get Started
type: essay
weight: 4100
abstract: "Dive in to creating your first Quire publication"
---

Before getting started, make sure you have [installed Quire](/docs-v0/install-uninstall/) and downloaded a {{< q-def "text editor" >}}. We recommend reviewing the [*Quire Basics Tutorial*](/learn/tutorial/). This beginner's guide is a step-by-step introduction to the fundamentals of Quire. We also encourage you to check out our [Sample Quire Workflow](/learn/workflow/) to get a sense of how to approach your publication and the breakdown of responsibilities.

## Start a New Project

To create a new project run the `quire new` command. You can learn more about various commands in the [*Quire Commands*](/docs-v0/quire-commands) section of our guide. Open your {{< q-def "command-line shell" >}} and copy and paste the text below, replacing `project-name` with what you would like your project folder to be called. (Don’t use spaces or special characters in your project name, and lowercase is recommended.)

```tx
quire new project-name
```

Quire will download a new starter project into a folder named “my-project” that can be found in your {{< q-def "home directory" >}}. The process may take a minute as Quire installs a new starter project (a sample publication including content, images, and relevant metadata that you can build off of) in the `my-project` folder.

The project is ready when you see the message: “Theme and dependencies successfully installed.”

{{< q-class "box warning" >}}
- If you are a Mac user and receive an error message when previewing a new project or an [existing project](#copy-an-existing-project), check to see what operating system you are on. If you are on Monterey, follow this link to install Python 2: https://www.python.org/downloads/release/python-2718/. Click the "macOS 64-bit installer" and follow the prompts. Then navigate to `themes/default` folder in your new project, delete the `node_modules` folder, then run `quire install` followed by `quire preview.`
{{< /q-class >}}

## Copy an Existing Project

In addition to starting a Quire project from scratch as described in the previous section, you can also copy and work on a pre-existing Quire project. You would do this if you were collaborating with others on a publication via GitHub or another service.

1. Copy the Quire project directory into your {{< q-def "home directory">}} (typically from a thumb drive, Dropbox/Google Drive, or GitHub).

2. Open your command-line shell and navigate to the project directory using the `cd` (change directory) command. For example, if your project directory was called `my-project` and it was in your home directory, you would enter `cd my-project`.

3. Still in the command-line shell, type `quire install` and press enter to install the theme dependencies for your project. (This is done automatically when running `quire new`, but needs to be done manually when working on pre-existing projects.)

<div class="box tip">

- Learn how to take an existing Quire project in GitHub and use it as the basis for a new one in our [*Use an Existing Quire Project as a Template*](/docs-v0/serial-publications/) section. This is especially useful for serial publications such as journals.

</div>

## Files for Content Creators and Editors

Inside each Quire project, you will find the following directories and files. Content creators and editors will primarily use the `content`, `data`, and `static` directories.

```tx
📁 bin
📁 config
📄 config.yml
📁 content     <-- Markdown files with publication text.
📁 data        <-- YAML files with publication data.
📄 README.md
📁 site
📁 static      <-- Images / Style overrides / PDF, EPUB & MOBI
📁 themes          files that are output with `quire pdf` etc.
```

{{< q-class "box tip" >}}
- Projects started with `quire new` will include demo content, images, and data in the `content`, `static`, and `data` folders. This information can be written over, re-used, or deleted altogether as you’d like.
{{< /q-class >}}

### 📁 content

The central part of Quire is the `content` directory where almost all of a publication’s textual content will live as individual {{< q-def "Markdown" >}} (`.md`) files. Every Markdown file is a *page* of the publication. You can read more about how to structure the publication content in [*Page Types & Structure*](/docs-v0/pages/) section of this guide.

### 📁 data

The publication information that doesn’t live in the `content` directory as a Markdown file, will live in the `data` directory as a {{< q-def "YAML" >}} (`.yml`) file. This information is considered data because it can usually be found in multiple places throughout the publication. Rather than re-entering that information each time it appears, Quire has been designed to simplify this process by storing information that appears in multiple paces as YAML which is then pulled into the Markdown files through the use of identifiers.

Publication metadata including title, subtitle, contributors, copyright information, etc. can be found in the `publication.yml` file, which is required in all Quire projects. Read more in [*Metadata & Configuration*](/docs-v0/metadata-configuration/)). YAML is also stored at the top of each Markdown file. Learn more in the [*Page Types & Structure*](/docs-v0/pages/#page-yaml/) section of this guide. A Quire project may additionally include `references.yml`; `figures.yml`; and `objects.yml` files.

{{< q-class "box tip" >}}
- Learn how the `data` and `content` files work together through the use of {{< q-def "shortcodes" >}} in the [*Page Content*](/docs-v0/page-content/#use-shortcodes-to-add-features/) section of this guide.
{{< /q-class >}}

#### `Objects.yml`

This file includes information on catalogue objects including artist name, artwork year, dimensions, medium, location, link to work, etc. Read more in [*Collection Catalogues*](/docs-v0/collection-catalogues/).

#### `Figures.yml`

This file includes information for figure images and figure groups including captions, credits, and alt text. Read more in [*Figure Images*](/docs-v0/figure-images/).

#### `References.yml`

This file includes reference information used to create in-text citations and bibliographies that are designed to meet scholarly needs. Read more in [*Citations & Bibliographies*](/docs-v0/citation-bibliographies/).

### 📁 static

The `static` directory includes anything that will be included in your final publication, but that doesn’t have to first be processed through Quire’s {{< q-def "static site generator" >}}. By default, this includes a `css` directory for directly overriding theme styles (read more in [*Style Customization*](/docs-v0/styles-customization/)); a `downloads` directory for the multiple Quire formats ([*Output Your Project*](/docs-v0/multiformat-output/)); and an `img` directory for all image and other media assets ([*Figure Images*](/docs-v0/figure-images/)).

### 📄 README.md

The `README.md` file is a code convention, and is a free space for information about the publication. **It is not used in the output Quire publication at all.** However, if you host your Quire project on {{< q-def "GitHub" >}} or other similar `git` project management sites, the `README.md` file is used for the repository’s front page description. Often it will include notes on development, on what usage is allowed, on how issues will be handled, and if contributions should be considered.

## Files for Developers

Inside each Quire project, you will find the following directories and files. Developers will primarily use the `config.yml` file and the `bin`, `config`, `site`, and `theme` directories.

```tx
📁 bin         <-- Scripts
📁 config      <-- Secondary/environmental configuration
📄 config.yml  <-- Main configuration
📁 content
📁 data
📄 README.md
📁 site        <-- The built site output with `quire site`
📁 static
📁 themes      <-- Layouts, shortcodes, styles, js
```

### 📁 bin

Currently, it only contains a `deploy.sh` script file for deploying a Quire project to GitHub pages, which you can learn more about in the [*Deploy Your Project*](/docs-v0/site-deploy/#preview-your-project-with-github-pages).

### 📄 config.yml

This is a standard, required file for {{< q-def "Hugo" >}} and also for Quire. In Quire, it is used expressly for configuring how Hugo operates, and for defining a number of key values used in Quire {{< q-def "templates" >}}. Users who have worked on other non-Quire/Hugo projects will note that they typically use the `config.yml` file to also store publication metadata. Given the potentially large scope of this metadata in formal digital publications, Quire uses the `publication.yml` file inside the `data` directory instead. Read more in [*Metadata & Configuration*](/docs-v0/metadata-configuration/).

### 📁 config

This is an additional configuration directory. While most Quire configuration happens in the [`config.yml`] file as explained above, the `config` directory gives more specific controls for different output formats and development environments. In most cases, changes won’t need to be made to these files until you are deploying your site. Read more in [*Output Your Project*](/docs-v0/multiformat-output/).

### 📁 site

This is where the built pages of the Quire website will live. This folder and its contents are automatically generated with the `quire site` command, and should not be edited directly. Read more in [*Output Your Project*](/docs-v0/multiformat-output/).

### 📁 themes

The `themes` directory contains one or more {{< q-def "themes" >}} that define the structure and style of the Quire publication. When using the `quire new` command, the theme is `default`. Read more in [*Style Customization*](/docs-v0/styles-customization/).

## Create a Publication Outline

It is a good idea to start any project by creating a basic outline of your publication. To get started with your outline, if you haven't already, you will need to download a {{< q-def "text editor" >}}. We recommend [Atom](https://atom.io/) or [Visual Studio Code](https://code.visualstudio.com/), two free and fully featured options. Once the text editor has been installed, open your Quire project in it. You will see the directory contents listed on the left sidebar. The way you organize the Markdown files in the `content` directory of your project will define the structure of your publication and how the *Table of Contents* is organized. (Learn more in the [*Table of Contents & Sidebar Menu*](/docs-v0/contents-menu/) section of this guide.)  

Here’s an outline showing the order, organization, and file names for a sample publication:

```md
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

The names of the files will effect the final URLs of your publication. By default, URLs will be the filename, minus the `.md` suffix. Files nested in a sub-directory within `content` will include that sub-directory in the URL as well.

| File | URL |
| --- | --- |
| The `cover.md` file | `mypublication.com/cover/` |
| The `contents.md` file | `mypublication.com/contents/` |
| The `chapter-01.md` file inside the `part-one` directory | `mypublication.com/part-one/chapter-01/` |
| The `section-overview.md` file inside the `part-two` directory | `mypublication.com/part-two/section-overview/` |

{{< q-class "box tip">}}
- To have URLs for your homepage or section landing pages that don’t include the Markdown file name, add `slug: .` to the page YAML of that file. Read more in the [*Page Types & Structure*](/docs-v0/pages/#creating-section-landing-pages) section of this guide.
{{< /q-class >}}

For the ordering of the pages, in the example above we’ve listed the files and directories as they would appear in the publication’s table of contents. When looking in the actual `content` directory on your computer or in your text editor, however, they will almost certainly not appear in the proper publication order. More likely, they’ll appear alphabetically or by date modified, which is also how Quire will order them when building and previewing your publication. You can adjust this by [assigning a `weight` to each page](/docs-v0/pages/#organize-pages-in-the-right-order) in its page YAML.

There are some other important rules and tips to keep in mind:

1. **To create a new file, select "New File" in the text editor menu.** You can also right click or press control click on a folder and select "New File".

2. **File names should be lowercase, with no spaces. Always include the .md suffix.** If file names contain more than one word, use a hyphen to separate them. Make sure that the file name includes either a `.md` or `.yml` extension.

3. **Don't use `index.md` or `_index.md` files.** Though common for users with previous static site or web development experience, you should not use `index.md` or `_index.md` files in your Quire project. Because of the way {{< q-def "Hugo" >}} is modeled, these work against the linear ordering of the publication and break the *Next* and *Previous* page navigation in Quire.

## Prepare Images and Text

TK

## Preview and Edit a Project

Quire lets you preview the current version of your site in a web browser, and will update the preview as you edit the files.

**To run the preview:**

1. Open your command-line shell and navigate to your Quire project directory using the `cd` (change directory) command. For example, if your project directory was called `my-project` and it was in your home directory, you’d enter `cd my-project`.

2. Still in the command-line shell, type `quire preview` and press enter to start the preview server.

3. Open a web browser and visit [http://localhost:1313](http://localhost:1313) to see the publication. To stop the preview you can either press Control–C or type `quire stop` and press enter.

Some tips for previewing your publication outline:

1. **Include YAML on page for it to be viewable in your web browser** In order for pages to become active, you must have basic YAML included at the top of the page. Learn more about YAML in [*Page Types & Structure*](/docs-v0/pages/)

2. **Hide pages from the table of contents view.** If you want to hide a page from the table of contents include `menu:false` in the YAML.

{{< q-class "box warning" >}}

- In some cases, changes to `.yml`, `.scss` and `.css` files may not show up in your preview immediately. You may need to refresh the browser, clear the browser cache, or stop and re-start the `quire preview` command in these cases.

{{< /q-class >}}
