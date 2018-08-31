---
title: Quire Project File Structure
weight: 202
type: essay
---

Inside each Quire project, Hugo[&] will define the following directories and files:

{{< q-figure id="1.3" >}}

{{< q-class "box" >}} The three directories that most users work in are `content`, `data`, and `static`. Developers and designers will also make use of `themes`.{{< /q-class >}}

## 📁 bin

Currently it only contains a `deploy.sh` script file for deploying a Quire project to GitHub pages. May be eliminated. Read more in [*Outputting & Deploying Your Site*](../multiformat-output/).

## 📁 config

This is a configuration directory
While most Quire configuration happens in the [`config.yml`](#configyml) file as explained below, the `config` directory gives more specific controls for different output formats and development environments. In most cases changes won’t need to be made to these files until you are deploying your site. Read more in [*Outputting & Deploying Your Site*](../multiformat-output/).

## 📁 content

The central part of a Quire, the `content` directory is where almost all of a publication’s text content will live as individual Markdown files[&]. Every Markdown file is a *page* of the publication. You can read more about how to structure the publication content in [*Pages & Plain Text*](content/guide/text.md).

## 📁 data

What content doesn’t live in `content` directory as a Markdown file[&], will live here in the `data` directory as a YAML file[&]. A `publication.yml` file is required (read more in [*Publication Metadata & Configuration*](../publication-configuration-metadata/)), but a Quire project may also include `references.yml` ([*Citations & Bibliographies*](../citation-bibliographies/)); `figures.yml` ([*Figures*](../figures-images/)); and `objects.yml` (*not yet defined*).


## 📁 site

Where the built pages of the Quire website will be. This folder and its contents are automatically generated with the `quire build` command in the command line interface[&], and should not be edited directly.

[note/warning] The `site` directory won’t be present in the project until running `quire build` command the first time. And even then, may not be viewable in a text editor (depending on which is used) as it’s included in `.gitignore`. Read more in [*Outputting & Deploying Your Site*](../multiformat-output/).

## 📁 static

The `static` directory includes anything that will be included in your final publication, but that doesn’t have to first be processed through the Hugo static-site generator[&]. By default, this includes a `css` directory for directly overriding theme styles (read more in [*Customizing Styles*](../styles-customization/)); a `downloads` directory for the multiple Quire formats ([*Outputting & Deploying Your Site*](../multiformat-output/)); and an `img` directory for all image and other media assets ([*Figure Images*](../figures-images/)).

## 📁 themes

The `themes` directory contains one or more themes[&] that define the structure and style of the Quire publication. When using the `quire new` command in the command line interface[&], the default theme is `quire-starter-theme`. Read more in [*Customizing Styles*](../styles-customization/).

## 📄 .gitignore

If you are using `git` for version control[&], this file defines which files and/or directories should be ignored.

## 📄 config.yml

This is a standard, and required file for Hugo, and so also for Quire. In Quire, it is used expressly for configuring how Hugo operates, and for defining a number of key values used in Quire templates[&].

{{< q-class "box" >}}Users who have worked on other non-Quire Hugo projects will note that they typically use the `config.yml` file to also store publication metadata. Given the potentially large scope of this metadata in formal digital publications, Quire additionally uses `publication.yml` file inside the `data` directory for that purpose. Read more in [*Publication Metadata & Configuration*](../publication-configuration-metadata/).{{< /q-class >}}

## 📄 README.md

The `README.md` file is a code convention, and is a free space for information about the publication and specifically, its codebase. **It is not used in the output Quire publication at all.** However, if you host your Quire project on GitHub or other similar `git` project management sites[&], the `README.md` file is used for the repository’s front page description. Often it will include notes on development, on what usage is allowed, on how issues will be handled and if contributions should be considered. Read more in [*Outputting & Deploying Your Site*](../multiformat-output/).
