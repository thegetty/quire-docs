---
title: What is Quire?
weight: 1000
type: essay
---

## About

Quire is a multiformat publishing tool created by Getty that enables people to create scholarly, visually rich digital books that are enduring, discoverable, beautiful, and accessible. As an open-source framework, Quire provides a cost-friendly alternative to digital publishing that is inclusive of a variety of features and customizations, allowing for the realization of projects in a user-friendly manner. Quire enables greater preservation and digital distribution of works in a simplified format that lends itself to increased longevity and discoverability.

Quire uniquely builds upon the traditions and infrastructures of book publishing and Getty’s expertise in the field, taking essential print publishing attributes and adopting them for digital publication. By combining the dynamics and interactivity of the web with the imprimatur and stability of print, Quire is designed to ensure that new digital books and their content last as long as the print books we rely on today.

No matter the size or scale of its publishing operation, an institution that publishes a Quire book isn’t locking itself into a long-term technology choice, nor is it required to have staff with highly advanced technical skills to do so. Quire offers a sustainable way to publish work online in a way that is enduring, discoverable, beautiful, and accessible.

## Features

<div class="feature-list">

- Page-level citation
- Footnotes
- Bibliographies
- Figure images and image groups
- Zooming images and maps
- Video and audio embeds
- Dynamic tables of contents and menus
- Full-text search
- Responsive web design
- Web accessibility and SEO optimized
- Outputs to web, PDF, and EPUB formats
- Realtime publication preview
- Embedded glossaries -- coming soon
- Interactive maps -- coming soon
- Rotating images -- coming soon

</div>

## How it Works

{{< q-figure id="quire_demo" >}}

At the heart of Quire is static site generation. Static site generators like [Hugo](https://gohugo.io/), the one under the hood in Quire, allow users to keep content in plain text with very simple human-readable markup. This keeps the complexity of building the site at the point of publication, rather than relying on ongoing build processes through a server that needs to be continually maintained. Unlike websites with short lifespans, even if certain technology goes obsolete, Quire files will continue to be readable. The static site generator also enables the conversion of plain text content into formats other than online sites, including PDF, e-book, and even print.

### Static-Website Generation

So what is static site generation? In traditional website publishing, a content management system (CMS) is connected to collections and image databases (1) and set up on a server (2). The CMS is used to create the website, and once the website is published, the CMS rebuilds the site pages each time they are loaded by a user (3). Thus, the CMS must be kept running for the lifetime of the publication.

{{< q-figure id="digitalpipeline-traditional" >}}

In static-site publishing, the CMS is just software and a folder of files on your, the publisher’s, computer (1) that are used to build the site. The site files are then uploaded to the server (2), and users (3) access them directly. You only need to run the site software and upload new files if you want to make updates to the publication.

{{< q-figure id="digitalpipeline-static" >}}

And yet, despite the name, static sites can be as dynamic and interactive as you want them to be, thanks to the full support of the complete web platform (HTML5, CSS3, and JavaScript). Zoomable images, interactive maps, and embedded video and audio clips are just a few of the features that can be included.

### Working With Quire

When working in Quire, you’ll use a text editor, command-line shell, and a web browser. You use the text editor to edit your publication (plain text) files, the command-line shell to tell Quire what to do (like quire new to start a new project and quire pdf to build the PDF version), and the web browser to preview your work.

{{< q-figure id="1.4" >}}
 
