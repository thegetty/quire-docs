---
title: How It Works
weight: 1400
type: essay
online: false
---

To work its magic, Quire packages together a number of programs, which play a critical role in the long-term discoverability, longevity, and multiformat output capabilities of Quire publications.

- [Node.js](https://nodejs.org) enables you to run JavaScript on your computer.

- [PrinceXML](http://www.princexml.com/) is one two options you can use to generate PDF/print versions of your publication.

- [Paged.js](https://pagedjs.org/) is an open source option for generation PDF/print versions of you publication.

- [Vite](https://vitejs.dev/) is a JavaScript bundler and development web server.

- [Canval Panel](https://iiif-canvas-panel.netlify.app/about/) works as a user interface to render IIIF deep-zooming images. It allows for more complexity in how images are displayed, such as layered images or annotated images.

- [Eleventy (11ty)](https://www.11ty.dev/)) is a simple yet powerful static site generator based on JavaScript. 11ty transforms a directory of various templates into HTML and is popular for its ability to mix multiple templating languages. It is available as open source under the MIT License.

(*Note: As of December 2, 2022, Quire no longer uses [Hugo](https://gohugo.io/documentation/) as our static site generator. [Learn what has changed with the transition to 11ty](/docs-v1/key-changes)*.)

## Static Site Generation

At the heart of Quire is static site generation. A {{< q-def "static site generator" >}} allows users to keep content in plain text with very simple, human-readable markup. Rather than relying on ongoing build processes through a server that needs to be continually maintained, static site generation keeps the complexity of building the site at the point of publication. Unlike websites with short lifespans, even if certain technology becomes obsolete, Quire files will continue to be accessible. The static site generator also enables the conversion of plain text content into formats other than online sites, including PDF, e-book, and even print. Continue reading if you're curious to know how it works!

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
