---
title: About Quire
type: page
---

## What Is Quire?

Quire is an open-source framework for the creation of multi-format publications. It consists of two distinct parts: a set of software, and a defined content model.

On the software side, Quire packages together a number of programs: [Prince](http://www.princexml.com/) for PDF/print versions, ____ for EPUB and MOBI versions, and at the heart of things, the static-site generator [Hugo](https://gohugo.io/) for the online version. The file structure, layout templates, partials and shortcodes of Quire are all Hugo conventions that have been structured to allow us create more formal digital publications (essentially, dynamic websites that make use of of certain traditional print publication conventions like tables of contents, copyright and authorship information, linear reading orders, and the like).

The content model is an equal part of Quire to its software stack and is documented in the [API/Docs section](../api-docs) of this guide. The content model defines how publication content is structured and defined in Quire (including data on the publication itself, pages of the publication, contributors, figures, bibliography, etc.) and how the Quire software templates use this structured content. The content model is designed to be as independent of the Quire software stack as possible, so that long-term, it might be used in other ways. If, for example, any part of the Quire software were replaced with something new, or if the content of a publication were to be used for an entirely different use.

![Diagram](diagram.jpg)

## What Do the Quire Repositories Do?

While conceptually, Quire is made of the two distinct parts defined above, these play out in multiple working parts in actual practice.

### `quire-cli`

Quire CLI, or command line interface, ([quire-cli](https://github.com/gettypubs/quire-starter)) is the control for creating, previewing and outputting Quire projects. It is written in JavaScript and requires [Node.js](https://nodejs.org) to run. Quire CLI is typically run from Terminal on a Mac, and Git Bash (or its equivalent) on a PC.

```
  Usage: quire [options] [command]

  Options:
    -V, --version  output the version number
    -h, --help     output usage information

  Commands:
    new <projectName>  Create a new Quire project in the current directory.
    preview [options]  Run the preview server in the current directory
    build [options]    Run the build command in the current directory
    pdf                Generate a PDF version of the current project
    epub               Generate an EPUB version of the current project
```

Read more in [Setup](content/guide/setup.md), and [Multi-Format Output](content/guide/output.md).

### `quire-starter`

Quire Starter ([quire-starter](https://github.com/gettypubs/quire-starter)) is a starter content repository used as placeholder content when starting a new Quire project with the `quire new` command. It comes with some pre-defined example content and pages with which to get started.

### `quire-starter-theme`

Quire Starter Theme ([quire-starter-theme](https://github.com/gettypubs/quire-starter)) is the basic theme that is included when starting a new Quire project with the `quire new` command. It is designed to broadly cover a full range of use-cases and to demonstrate the range of Quire content model, without being too overly specific or complex, making it easy to customize and build from. Read more about the use of themes in [Customizing Styles](content/guide/styles.md).

More themes will be added in the future.

### `quire-docs`

Quire Docs ([quire-docs](https://github.com/gettypubs/quire-starter)) is the repository for the guide and documentation you are currently reading.
