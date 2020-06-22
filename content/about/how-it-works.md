---
title: How Does it Work?
weight: 1100
type: essay
---

## Static Website Generation

In traditional website publishing, a content management system (CMS) is connected to collections and image databases (1) and set up on a server (2). The CMS is used to create the website, and once the website is published, the CMS rebuilds the site pages each time they are loaded by a user (3). Thus, the CMS must be kept running for the lifetime of the publication.

{{< q-figure id="digitalpipeline-traditional" >}}

In static-site publishing, the CMS is just software and a folder of files on your, the publisher’s, computer (1) that are used to build the site. The site files are then uploaded to the server (2), and users (3) access them directly. You only need to run the site software and upload new files if you want to make updates to the publication.

{{< q-figure id="digitalpipeline-static" >}} 

And yet, despite the name, static sites can be as dynamic and interactive as you want them to be, thanks to the full support of the complete web platform (HTML5, CSS3, and JavaScript). Zoomable and rotating images, interactive maps, and embedded glossaries are just a few of the features that can be included.

## Quire Software Stack & Content Model

Quire is an open-source tool used for the creation of multi-format publications. It consists of two distinct parts: 1. a software stack, and 2. a defined content model.

1. Quire Software Stack

    On the software side, Quire packages together a number of programs: [Prince](http://www.princexml.com/) for PDF/print versions, [pe-epub](https://github.com/peoples-e/pe-epub) for EPUB, and at the heart of things, the static-site generator [Hugo](https://gohugo.io/) for the online version. The file structure, layout templates, partials and shortcodes of Quire are all Hugo conventions that have been structured to allow us create more formal digital publications (essentially, dynamic websites that make use of certain traditional print publication conventions like tables of contents, copyright and authorship information, linear reading orders, and the like).

2. Quire Content Model

    The content model is documented in the API/Docs section of this guide. It defines how publication content is structured and defined in Quire (including data on the publication itself, pages of the publication, contributors, figures, bibliography, etc.) and how the Quire software templates use this structured content. The content model is designed to be as independent of the Quire software stack as possible, so that long-term, it might be used in other ways. If, for example, any part of the Quire software were replaced with something new, or if the content of a publication were to be used for an entirely different use.

    Full size version of the [content model](https://github.com/gettypubs/quire-docs/tree/master/content/images/content_model_big.pdf)

## What Do the Quire Repositories Do?

While conceptually, Quire is made of the two distinct parts defined above, these play out in multiple working parts in actual practice.

### `quire-cli`

Quire CLI, or command-line interface, ([quire-cli](https://github.com/gettypubs/quire-cli)) is the control for creating, previewing and outputting Quire projects. It is written in JavaScript and requires [Node.js 8.9.4 LTS](https://nodejs.org) to run. Quire CLI is typically run from Terminal on a Mac, and Git Bash (or its equivalent) on a PC. The following commands are available:

| Command | Description |
| -------------- | -------------- |
| `quire -V` or `quire --version` | Output the version number. |
| `quire -h` or `quire --help` | Output usage information. |
| `quire new project-name` | Create a new Quire project named `project-name` in the current directory. Name can be anything, but shouldn’t contain spaces. |
| `quire preview` | Run a local server to preview the project in a browser. Defaults to previewing at http://localhost:1313/, but will use other port numbers (such as http://localhost:6532/) if `1313` is busy. The specific address will be listed in your command line terminal after running the command. |
| `quire build` | Build the files of the current project into the `public` directory. These can then be hosted on any web server. |
| `quire pdf` | Generate a PDF version of the current project. |
| `quire epub` | Generate an EPUB version of the current project. |

Read more in [Install and Uninstall](/guide/install-uninstall/), and [Multi-Format Output](/guide/multiformat-output).

### `quire-starter`

Quire Starter ([quire-starter](https://github.com/gettypubs/quire-starter)) is a starter content repository used as placeholder content when starting a new Quire project with the `quire new` command. It comes with some pre-defined example content and pages with which to get started.

{{< q-figure id="1.2" >}}

### `quire-starter-theme`

Quire Starter Theme ([quire-starter-theme](https://github.com/gettypubs/quire-starter-theme)) is the basic theme that is included when starting a new Quire project with the `quire new` command. It is designed to broadly cover a full range of use-cases and to demonstrate the range of Quire content model, without being too overly specific or complex, making it easy to customize and build from. Read more about the use of themes in [Customizing Styles](/guide/styles-customization).

{{< q-figure id="1.3" >}}

More themes will be added in the future.

### `quire`

Quire ([quire](https:/
