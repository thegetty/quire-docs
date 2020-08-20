---
title: How It Works
weight: 1400
type: essay
menu: false
---

*To me, more remarkable than the form they take now is that they are built to last. While these publications take advantage of the latest technology, the fact that they are built from plain-text files and as open-source static sites helps to ensure they will never be dependent on soon-to-be-out-of-date platforms and are much more likely to be compatible with the technologies of the future.* - Getty Publications Editor, Ruth Evans Lane

{{< q-figure id="quire_demo" >}}

At the heart of Quire is static site generation. Static site generators like [Hugo](https://gohugo.io/), the one under the hood in Quire, allow users to keep content in plain text with very simple human-readable markup. This keeps the complexity of building the site at the point of publication, rather than relying on ongoing build processes through a server that needs to be continually maintained. Unlike websites with short lifespans, even if certain technology goes obsolete, Quire files will continue to be readable. The static site generator also enables the conversion of plain text content into formats other than online sites, including PDF, e-book, and even print.

### What is static site generation?

In traditional website publishing, a content management system (CMS) is connected to collections and image databases (1) and set up on a server (2). The CMS is used to create the website, and once the website is published, the CMS rebuilds the site pages each time they are loaded by a user (3). Thus, the CMS must be kept running for the lifetime of the publication.

{{< q-figure id="digitalpipeline-traditional" >}}

In static-site publishing, the CMS is just software and a folder of files on your, the publisher’s, computer (1) that are used to build the site. The site files are then uploaded to the server (2), and users (3) access them directly. You only need to run the site software and upload new files if you want to make updates to the publication.

{{< q-figure id="digitalpipeline-static" >}}

And yet, despite the name, static sites can be as dynamic and interactive as you want them to be, thanks to the full support of the complete web platform (HTML5, CSS3, and JavaScript). Zoomable images, interactive maps, and embedded video and audio clips are just a few of the features that can be included.
