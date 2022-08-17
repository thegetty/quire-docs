---
title: Get Started
type: essay
weight: 6080
abstract: "Dive in to creating your first Quire publication"
---

Before getting started, make sure you have [installed Quire](/documentation/install-uninstall/) and downloaded a {{< q-def "text editor" >}}. We recommend reviewing the [*Quire Basics Tutorial*](/learn/tutorial/). This beginner's guide is a step-by-step introduction to the fundamentals of Quire.

## Start a New Project

To create a new project run the `quire new` command. You can learn more about various commands in the [*Quire Commands*](/documentation/quire-commands) section of our guide. Open your {{< q-def "command-line shell" >}} and copy and paste the text below, replacing `my-project` with what you would like your project folder to be called. (Don’t use spaces or special characters in your project name, and lowercase is recommended.)

```tx
quire new my-project
```

Quire will download a new starter project into a folder called “my-project” that can be found in your {{< q-def "home directory" >}}. The process may take a few minutes. The project is ready when you see the message: “Theme and dependencies successfully installed.”

{{< q-class "box tip" >}}
- Projects started with `quire new` will include demo content, images, and data. This information can be written over, re-used, or deleted altogether as you’d like.
{{< /q-class >}}

## Copy an Existing Project

In addition to starting a Quire project from scratch as described in the previous section, you can also copy and work on a pre-existing Quire project. You would do this if you are collaborating with others on a publication. Keep in mind that changes are made locally. A hosting service such as GitHub or GitLab is recommended to share changes with other collaborators .

1. Copy the Quire project directory into your home directory (typically from a thumb drive, Dropbox/Google Drive, or hosting service).

2. Open your command-line shell and navigate to the project directory using the `cd` (change directory) command. For example, if your project directory was called `my-project` and it was in your home directory, you would enter `cd my-project`.

3. Still in the command-line shell, type `quire install` and press enter to install the theme dependencies for your project. (This is done automatically when running `quire new`, but needs to be done manually when working on pre-existing projects.)

## Files for Content Creators and Editors

Content creators and editors will primarily use the `content` directory. In addition to containing the Markdown files that comprise a publication, this directory also includes the `_data`, `_computed`, and `_assets` directories.

```tx
📁 content     <-- Markdown files with publication text
  📁 _data     <-- YAML files with publication data
  📁 _computed <-- Default `eleventyComputed.js` file
  📁 _assets   <-- Fonts, images, and styles
```

### 📁 content

The central part of Quire is the `content` directory where almost all of a publication’s textual content will live as individual {{< q-def "Markdown" >}} (`.md`) files. Every Markdown file is a *page* of the publication. You can read more about how to structure the publication content in [*Page Types & Structure*](/documentation/pages/) section of this guide. You can create additional directories in the content folder if your publication has sub-sections, such a catalogue entries for example. Learn more in the [Create Section Landing Pages](/documentation/pages/#create-section-landing-pages) section of this guide.

### 📁 _data

Important publication information, such as captions, references, and object metadata, lives in the `_data` directory and is stored as {{< q-def "YAML" >}} (`.yaml`) files. This information is considered data because it can usually be found in multiple places throughout the publication. Rather than re-entering the information each time it appears, Quire has been designed to simplify this process by storing it as YAML which is then pulled into the Markdown files through the use of identifiers.

Publication metadata including title, subtitle, contributors, copyright information, etc. can be found in the `publication.yaml` file, which is required in all Quire projects. Read more in [*Metadata & Configuration*](/documentation/metadata-configuration/)). YAML is also stored at the top of each Markdown file. Learn more in the [*Page Types & Structure*](/documentation/pages/#page-yaml/) section of this guide. A Quire project may additionally include `references.yaml`; `figures.yaml`; and `objects.yaml` files.

#### 📄 objects.yaml

This file includes information on catalogue objects including artist name, artwork year, dimensions, medium, location, link to work, etc. Read more in [*Collection Catalogues*](/documentation/collection-catalogues/).

#### 📄 figures.yaml

This file includes information for figure images and figure groups including captions, credits, and alt text. Read more in [*Figure Images*](/documentation/figure-images/).

#### 📄 references.yaml

This file includes reference information used to create in-text citations and bibliographies that are designed to meet scholarly needs. Read more in [*Citations & Bibliographies*](/documentation/citation-bibliographies/).

### 📁 _computed

TK

### 📁 _assets

This directory includes anything that will be included in your final publication that doesn’t have to first be processed through Quire’s {{< q-def "static site generator" >}}, such as `fonts`, `images`, and `styles`. The `javascript` directory will primarily be used by developers. Please see [*Files For Developers*](/documentation/getting-started/#files-for-developers) for more information about how JavaScript is used in Quire.

#### 📁 fonts

This directory is where the default Quire fonts are located including ["Noto Sans"](https://github.com/googlefonts/noto-fonts), ["Noto Serif"](https://github.com/googlefonts/noto-fonts), and ["IBM Plex Sans Condensed"](https://github.com/IBM/plex). Learn how to change and add fonts in the [Font Customization](/documentation/fonts-customization/) section of this guide.

#### 📁 images

This directory is where publication images are stored. The `src` value in the `figures.yaml` file references the files names of the images as they are saved in this directory.


#### 📁 styles

This directory includes a `variables.scss` file and a `custom.css` file for directly overriding theme styles (read more in [*Style Customization*](/documentation/styles-customization/)).

## Files for Developers

Developers will primarily use the `_includes`, `_layouts`, `_plugins` directories and the `config.yaml` file.

```tx
📁 _includes
📁 _layouts
📁 _plugins
📁 content
  📁 _data    <-- Includes config.yaml file
  📁 _assets  <-- Includes javascript directory
```

### 📁 _includes

### 📁 _layouts

### 📁 _plugins

### 📁 _data

This directory also contains the `config.yaml` file which is used expressly for configuring how Quire operates and for defining a number of key values used in Quire {{< q-def "templates" >}}. Users who have worked on other non-Quire projects will note that they typically use the `config.yaml` file to also store publication metadata. Given the potentially large scope of this metadata in formal digital publications, Quire uses the `publication.yaml` file inside the `_data` directory instead. Read more in [*Metadata & Configuration*](/documentation/metadata-configuration/).

### 📁 _assets

In addition to including `fonts`, `images`, and `styles`, the `_assets` directory also contains a `javascript` directory for adding customizations with Javascript.

## Create a Publication Outline

It is a good idea to start any project by creating a basic outline of your publication. To get started with your outline, open your Quire project in your text editor. You will see the directory contents listed on the left sidebar. The way you organize the Markdown files in the `content` directory of your project will define the structure of your publication and how the table of contents is organized. Learn more in the [*Table of Contents & Sidebar Menu*](/documentation/contents-menu/) section of this guide.

Here’s an outline showing the order, organization, and file names for a sample publication:

```md
📁 content
  📁 _data     <-- not included in outline
  📁 _computed <-- not included in outline
  📁 _assets   <-- not included in outline
  📄 about.md
  📄 cover.md
  📄 index.md
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
- To have URLs for your homepage or section landing pages that don’t include the Markdown file name, add `permalink: "/{{ title | slugify }}/"` to the page YAML of that file.
{{< /q-class >}}

 When looking in the `content` directory on your computer or in your text editor, project files usually either appear alphabetically or by date modified, which is also how Quire will order them when building and previewing your publication. You can adjust this by adding `order` value in page YAML of each Markdown file. Learn more in [*Page Types & Structure*](/documentation/pages/#organize-pages-in-the-right-order).

There are some other important rules and tips to keep in mind:

1. **To create a new file, right-click on the `content` directory and select "New File".**

2. **File names should be lowercase**

3. **Use hyphen in place of spaces**

4. **Always include the .md suffix.**

## Add Text and Images

Once an outline has been created, text and images can be added to the project.

In many cases, text will originate as a Word document. You can use Pandoc to convert Word documents into Markdown. Instructions can be found in the [YAML & Markdown](/documentation/fundamentals/#microsoft-word-to-markdown-conversion) section of this guide.

Once images are added to the `_assets/images` folder and entries have been added to the `figures.yaml`, then you can use shortcodes to insert the images into their respective Markdown files. More information can be found in the [Figure Images](/documentation/figure-images/) section of this guide.

## Preview and Edit a Project

As you add content to your project, you can preview the site in your web browser. The preview is live and will update as you make changes.

**To run the preview:**

1. Open your command-line shell and navigate to your Quire project directory using the `cd` (change directory) command. For example, if your project directory was called `my-project` and it was in your home directory, you would enter `cd my-project`.

2. Still in the command-line shell, type `quire preview` and press enter to initiate the preview.

3. To view the preview, open a web browser and visit the localhost URL that is provided in the command-line shell output (for example, http://localhost:8080) to see the publication. To stop the preview, you can either press Control–C or type `quire stop` and press enter.

Some tips for previewing your publication:

1. **Include YAML on page for it to be viewable in your web browser** In order for pages to become active, you must have basic YAML included at the top of the page. Learn more about page YAML in [*Page Types & Structure*](/documentation/pages/)

2. **Hide pages from the table of contents view.** If you want to hide a page from the table of contents include `toc:false` in the YAML.

2. **Start and stop the preview to refresh Quire**. In some cases, changes to `.yaml`, `.scss` and `.css` files may not show up in your preview immediately. If this happens, it often helps to stop and re-start `quire preview`.
