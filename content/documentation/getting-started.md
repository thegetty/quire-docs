---
title: Get Started
type: essay
weight: 4100
abstract: "Dive in to creating your first Quire publication"
---

Before getting started, if you have not done so already, we recommend taking some time to review our beginner's guide [*Tutorial: Quire Basics*](/learn/tutorial.md/) which is step-by-step introduction to the fundamentals of Quire.

## Start a New Project

Now that you have taken the [tutorial](/learn/tutorial.md/) and [installed Quire](/documentation/install-uninstall/) its time to get started on your first publication. To create a new project you will be running the `quire new` command. You can learn more about various commands in the [*Quire Commands*](/documentation/quire-commands) chapter of our guide. Open your {{< q-def "command-line shell" >}} and copy and paste the text below, replacing `project-name` with what you would like your project folder to be called. (Don’t use spaces or special characters in your project name, and lowercase is recommended.)

```tx
quire new project-name
```

Quire will download a new starter project into a folder named “my-project” in your home directory. The process may take a minute as Quire installs a new starter project (a sample publication including content, images, and relevant metadata that you can build off of) into a folder named `my-project` in your home directory.

The project is ready when you see the message: “Theme and dependencies successfully installed.”

## Copy an Existing Project

In addition to starting a Quire project from scratch as described in the previous section, you can also copy and work on a pre-existing Quire project. You would do this if you were on a team working on a publication together and are sharing the files via GitHub or another service, or if you wanted to use a previous Quire project as a template for a new one.

1. Copy the Quire project directory into your {{< q-def "home directory">}} (typically from a thumb drive, Dropbox or Google Drive, or GitHub).

2. Open your command-line shell and navigate to the project directory using the `cd` (change directory) command. For example, if your project directory was called `my-project` and it was in your home directory, you would enter `cd my-project`.

3. Still in the command-line shell, type `quire install` and press enter to install the theme dependencies for your project. (This is done automatically when running `quire new`, but needs to be done manually when working on pre-existing projects.)

<div class="box tip">

- You can also type `cd` and a space in your shell and then drag and drop the Quire directory icon into it. This will copy the full file path.

![Drag-and-drop](/img/screenshots/command-line-drag-and-drop.gif)

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

#### 📁 content

The central part of Quire is the `content` directory where almost all of a publication’s text content will live as individual {{< q-def "Markdown" >}} files. Every Markdown file is a *page* of the publication. You can read more about how to structure the publication content in [*Pages*](/documentation/pages/).

{{< q-class "box tip" >}}
- New Quire projects started with the `quire new` command come with some demo content, images, and data as samples to start. These materials can be written over, re-used, or deleted altogether as you’d like.
{{< /q-class >}}

#### 📁 data

What content doesn’t live in `content` directory as a Markdown file, will live here in the `data` directory as a {{< q-def "YAML" >}} file. A `publication.yml` file is required (read more in [*Publication Metadata & Configuration*](/documentation/metadata-configuration/)), but a Quire project may also include `references.yml` ([*Citations & Bibliographies*](/documentation/citation-bibliographies/)); `figures.yml` ([*Figures*](/documentation/figure-images/)); and `objects.yml` ([*Catalogue Objects*](/documentation/collection-catalogues/)).

#### 📁 static

The `static` directory includes anything that will be included in your final publication, but that doesn’t have to first be processed through Quire’s {{< q-def "static-site generator" >}}. By default, this includes a `css` directory for directly overriding theme styles (read more in [*Customizing Styles*](/documentation/styles-customization/)); a `downloads` directory for the multiple Quire formats ([*Output Your Project*](/documentation/multiformat-output/)); and an `img` directory for all image and other media assets ([*Figure Images*](/documentation/figure-images/)).

#### 📄 README.md

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

#### 📁 bin

Currently, it only contains a `deploy.sh` script file for deploying a Quire project to GitHub pages, which you can learn more about in the [*Deploy Your Project*](documentation/site-deploy/#preview-your-project-with-github-pages).

#### 📄 config.yml

This is a standard, required file for {{< q-def "Hugo" >}} and also for Quire. In Quire, it is used expressly for configuring how Hugo operates, and for defining a number of key values used in Quire {{< q-def "templates" >}}. Users who have worked on other non-Quire/Hugo projects will note that they typically use the `config.yml` file to also store publication metadata. Given the potentially large scope of this metadata in formal digital publications, Quire uses the `publication.yml` file inside the `data` directory instead. Read more in [*Publication Metadata & Configuration*](/documentation/metadata-configuration/).

#### 📁 config

This is an additional configuration directory. While most Quire configuration happens in the [`config.yml`](#config-yml) file as explained above, the `config` directory gives more specific controls for different output formats and development environments. In most cases, changes won’t need to be made to these files until you are deploying your site. Read more in [*Output Your Project*](/documentation/multiformat-output/).

#### 📁 site

This is where the built pages of the Quire website will live. This folder and its contents are automatically generated with the `quire site` command, and should not be edited directly. Read more in [*Output Your Project*](/documentation/multiformat-output/).

#### 📁 themes

The `themes` directory contains one or more {{< q-def "themes" >}} that define the structure and style of the Quire publication. When using the `quire new` command, the theme is `default`. Read more in [*Customizing Styles*](/documentation/styles-customization/).

## Create a Publication Outline

It is a good idea to start any project by creating a basic outline of your publication. To get started with your outline, you will want to download a {{< q-def "text editor" >}}. We recommend [Atom](https://atom.io/) or [Visual Studio Code](https://code.visualstudio.com/), two free and fully featured options. Once the text editor has been installed, open your Quire project in it. You will see the directory contents listed on the left sidebar. The way you organize the Markdown files in the `content` directory of your project will define the structure of your publication and how the *Table of Contents* is organized.

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
- To have URLs for your homepage or section landing pages that don’t include the Markdown file name, add `slug: .` to the page YAML of that file. Read more in the [*Pages*](/documentation/pages/#creating-section-landing-pages) section of this guide.
{{< /q-class >}}

For the ordering of the pages, in the example above we’ve listed the files and directories as they would appear in the publication’s table of contents. When looking in the actual `content` directory on your computer or in your text editor, however, they will almost certainly not appear in the proper publication order. More likely, they’ll appear alphabetically or by date modified, which is also how Quire will order them when building and previewing your publication. You can adjust this by [assigning a `weight` to each page](/documentation/pages/) in its page YAML.

There are some other important rules and tips to keep in mind:

1. **To create a new file, select "New File" in the text editor menu.** You can also right click or press control click on a folder and select "New File".

2. **Filenames should be lowercase, with no spaces. Always include the .md suffix.** If file names contain more than one word, use a hyphen to separate them. Make sure that the file name includes .md.

3. **Sub-directories can’t have other sub-directories within them.** Quire currently supports only one level of nesting.

4. **Don't use `index.md` or `_index.md` files.** Though common for users with previous static site or web development experience, you should not use `index.md` or `_index.md` files in your Quire project. Because of the way {{< q-def "Hugo" >}} is modeled, these work against the linear ordering of the publication and break the *Next* and *Previous* page navigation in Quire.

## Prepare Images and Text

TK

## Preview and Edit a Project

Quire lets you preview the current version of your site in a web browser, and will update the preview as you edit the files.

**To run the preview:**

1. Open your command-line shell and navigate to your Quire project directory using the `cd` (change directory) command. For example, if your project directory was called `my-project` and it was in your home directory, you’d enter `cd my-project`.

2. Still in the command-line shell, type `quire preview` and press enter to start the preview server.

3. Open a web browser and visit [http://localhost:1313](http://localhost:1313) to see the publication. To stop the preview you can either press Control–C or type `quire stop` and press enter.

Some tips for previewing your publication outline:

1. **Include YAML on page for it to be viewable in your web browser** In order for pages to become active, you must have basic YAML included at the top of the page. Learn more about YAML in [*Fundamentals: Markdown & YAML*](/documentation/fundamentals/#yaml-basics)

2. **Use menu:false to hide a page from the table of contents view.** If you want to hide a page from the table of contents include `menu:false` in the YAML.

{{< q-class "box warning" >}}

- In some cases, changes to `.yml`, `.scss` and `.css` files may not show up in your preview immediately. You may need to refresh the browser, clear the browser cache, or stop and re-start the `quire preview` command in these cases.

{{< /q-class >}}
