---
title: About Quire
type: page
---

## What Is Quire?

Quire is an open-source framework for the creation of multi-format publications. It consists of two distinct parts: a set of software, and a defined content model.

On the software side, Quire packages together a number of programs: [Prince](http://www.princexml.com/) for PDF/print versions, ____ for EPUB and MOBI versions, and at the heart of things, the static-site generator [Hugo](https://gohugo.io/) for the online version. The file structure, layout templates, partials and shortcodes of Quire are all Hugo conventions that have been structured to allow us create more formal digital publications (essentially, dynamic websites that make use of of certain traditional print publication conventions like tables of contents, copyright and authorship information, linear reading orders, and the like).

The content model is an equal part of Quire to its software stack and is documented in the [API/Docs section](../api-docs) of this guide. The content model defines how publication content is structured and defined in Quire (including data on the publication itself, pages of the publication, contributors, figures, bibliography, etc.) and how the Quire software templates use this structured content. The content model is designed to be as independent of the Quire software stack as possible, so that long-term, it might be used in other ways. If, for example, any part of the Quire software were replaced with something new, or if the content of a publication were to be used for an entirely different use.

![Diagram](../images/content_model.png)

Full size version of the [content model](https://github.com/gettypubs/quire-docs/tree/master/content/images/content_model_big.pdf)

## What Do the Quire Repositories Do?

While conceptually, Quire is made of the two distinct parts defined above, these play out in multiple working parts in actual practice.

### `quire-cli`

Quire CLI, or command line interface, ([quire-cli](https://github.com/gettypubs/quire-starter)) is the control for creating, previewing and outputting Quire projects. It is written in JavaScript and requires [Node.js 8.9.4 LTS](https://nodejs.org) to run. Quire CLI is typically run from Terminal on a Mac, and Git Bash (or its equivalent) on a PC. The following commands are available:

| Command | Description |
| -------------- | -------------- |
| `quire -V` or `quire --version` | Output the version number. |
| `quire -h` or `quire --help` | Output usage information. |
| `quire new project-name` | Create a new Quire project named `project-name` in the current directory. Name can be anything, but shouldn’t contain spaces. |
| `quire preview` | Run a local server to preview the project in a browser. Defaults to previewing at http://localhost:1313/, but will use other port numbers (such as http://localhost:6532/) if `1313` is busy. The specific address will be listed in your command line terminal after running the command. |
| `quire build` | Build the files of the current project into the `public` directory. These can then be hosted on any web server. |
| `quire pdf` | Generate a PDF version of the current project. |
| `quire epub` | Generate an EPUB version of the current project. |

Read more in [Setup](content/guide/setup.md), and [Multi-Format Output](content/guide/output.md).

### `quire-starter`

Quire Starter ([quire-starter](https://github.com/gettypubs/quire-starter)) is a starter content repository used as placeholder content when starting a new Quire project with the `quire new` command. It comes with some pre-defined example content and pages with which to get started.

![Quire Starter](../images/quire-file-structure-small.png)

### `quire-starter-theme`

Quire Starter Theme ([quire-starter-theme](https://github.com/gettypubs/quire-starter)) is the basic theme that is included when starting a new Quire project with the `quire new` command. It is designed to broadly cover a full range of use-cases and to demonstrate the range of Quire content model, without being too overly specific or complex, making it easy to customize and build from. Read more about the use of themes in [Customizing Styles](content/guide/styles.md).

![Quire Starter Theme](../images/quire_starter_theme.png)

More themes will be added in the future.

### `quire-docs`

Quire Docs ([quire-docs](https://github.com/gettypubs/quire-starter)) is the repository for the guide and documentation you are currently reading.
