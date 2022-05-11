---
title: How It Works
weight: 1400
type: essay
online: false
---

To work its magic, Quire packages together a number of programs, which play a critical role in the long-term discoverability, longevity, and multiformat output capabilities of Quire publications.

- [Apple’s Xcode](https://developer.apple.com/support/xcode/) is a set of developer tools for your Mac. (Does not apply to Windows users.)

- [Node.js](https://nodejs.org) enables you to run JavaScript on your computer.

- [PrinceXML](http://www.princexml.com/) is used to generate PDF/print versions of your publication.

- [Pandoc](https://github.com/jgm/pandoc/releases/) is used to generate EPUBs and MOBIs.

- [Kindle Previewer](https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000765261) is used to generate the MOBI.

- [Hugo](https://gohugo.io/) is the {{< q-def "static site generator" >}} that creates the online version of your publication. The file structure, layout templates, partials, and shortcodes of Quire are all Hugo conventions structured to allow for more formal digital publications. In other words, you can use static site generation to create dynamic websites incorporating traditional print publishing conventions, like tables of contents, copyright and authorship information, linear reading orders, etc. Visit the [Hugo Documentation](https://gohugo.io/documentation/) for more information.

## Static Site Generation

At the heart of Quire is static site generation. A {{< q-def "static site generator" >}} like [Hugo](https://gohugo.io/), the one under the hood in Quire, allows users to keep content in plain text with very simple, human-readable markup. Rather than relying on ongoing build processes through a server that needs to be continually maintained, static site generation keeps the complexity of building the site at the point of publication. Unlike websites with short lifespans, even if certain technology becomes obsolete, Quire files will continue to be accessible. The static site generator also enables the conversion of plain text content into formats other than online sites, including PDF, e-book, and even print. Continue reading if you're curious to know how it works!

> While [Quire] publications take advantage of the latest technology, the fact that they are built from plain-text files and as open-source static sites helps to ensure they will never be dependent on soon-to-be-out-of-date platforms and are much more likely to be compatible with the technologies of the future.
>
>—Ruth Evans Lane, Getty Publications Editor

### What Is Static Site Generation?

In traditional website publishing, a content management system (CMS) is connected to collections and image databases (1) and set up on a server (2). The CMS is used to create the website, and once the website is published, the CMS rebuilds the site pages each time they are loaded by a user (3). Thus, the CMS must be kept running for the lifetime of the publication.

{{< q-figure id="digitalpipeline-traditional" >}}

In static site publishing, the CMS is just software, and a folder of files on your computer (1) used to build the site. The site files are then uploaded to the server (2), where users can access them directly (3). You only need to run the site software and upload new files if you want to update the publication.

{{< q-figure id="digitalpipeline-static" >}}

And yet, despite the name, static sites can be as dynamic and interactive as you want them to be, thanks to the full support of the complete web platform (HTML5, CSS3, and JavaScript). Zoomable images, interactive maps, and embedded video and audio clips are just a few of the features that can be included.

### Additional Resources on Static Site Generation

The following resources were created by Quire community member, Chris Diaz [(@chrisdaaz)](https://github.com/chrisdaaz), for a website he developed as a teaching tool for librarians interested in static site generators as digital publishing tools.

[Static Web Publishing for Digital Scholarship: Lesson Plan](https://chrisdaaz.github.io/static-web-scholcomm/teaching-resources/lesson-plan/) </br>
[Introduction to Static Site Generators](https://chrisdaaz.github.io/static-web-scholcomm/tutorials/static-site-generators/)

### See It in Action

{{< q-figure id="quire_demo" >}}
