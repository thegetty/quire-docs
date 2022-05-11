---
title: FAQs
weight: 1900
type: essay
abstract: "Learn about our new static site generator and other Quire developments"
---

In advance of Quire's Fall 2022 open-source launch, we have been undertaking significant work to improve the tool's functionality and create a better infrastructure for new features and future developments. As part of that work we are transitioning to a new static site {{< q-def "static site generator" >}} generator called Eleventy (11ty). Keep reading to understand how these changes will affect and improve Quire.

### What is Eleventy (11ty)?

Eleventy (11ty) is a simple yet powerful [static site generator](https://quire.getty.edu/about/how-it-works/) based on JavaScript. 11ty transforms a directory of various templates into HTML and is popular for its ability to mix multiple templating languages. It is available as open source under the MIT License. Read more on the [11ty website](https://www.11ty.dev/).

### What are the benefits of 11ty?

For editors and content creators:

- The current functionality and design of Quire websites, PDFs, and ebooks will remain the same
- There will be minor differences within the Markdown files, such as a new format for shortcodes:  `{% figure id="x" %}` 
- Core configuration variables will be restructured to be more user-friendly
- Key project files will become more accessible and simplify navigation
- Development support will be easier to access due to a more familiar and approachable technology stack

For developers:

- Quire will be entirely JavaScript
- Knowledge of Go will not be necessary to take full advantage of Quire's features
- It will be easier to create new templates that work with publication data or use data from remote sources
- Built-in ability to mix templating languages; Quire will primarily use Liquid for simple markup and JavaScript where data manipulation is required
- Templates and code will be refactored and implemented as functional, stateless, 11ty shortcode components using JavaScript
- Interactive elements, such as the image lightbox, will be reimplemented using Web Components
- To enable deeper integration with the IIIF APIs, Leaflet.js will be replaced with the Canvas Panel web components
- The themes folder will be eliminated so customizing projects will be based on the 11ty framework structure for includes and plugins
- Improved developer support and contribution opportunities

### What is JavaScript?

JavaScript is a popular text-based programming language that turns static web pages into dynamic, interactive sites, going a step beyond the capabilities of HTML and CSS. JavaScript can be found everywhere on the web, from refreshing a Twitter feed to your Amazon search bar or embedding Youtube videos. It is also widely used in the art, cultural heritage, and academic sectors. Learn more about JavaScript on the [Mozilla developer website](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_is_JavaScript).

### What is Liquid?

Liquid is an open-source templating language written in [Ruby](https://www.ruby-lang.org/en/). It was created by the e-commerce company [Shopify](https://www.shopify.com/) in 2006. It is utilized in all Shopify themes to load dynamic content on website storefronts. Learn more about Liquid on the [Shopify.dev website](https://shopify.dev/api/liquid).

### What is Vite?

Vite is a JavaScript bundler and development web server. It will replace Webpack as a tool to bundle scripts and styles for the web. Learn more on the [Vite website](https://vitejs.dev/).

### What is Canvas Panel?

Canvas Panel works as a user interface to render IIIF deep-zooming images. It allows for more complexity in how images are displayed, such as layered images or annotated images.  Learn more on the [Canvas Panel website](https://iiif-canvas-panel.netlify.app/about).

### What is our timeline for transitioning to 11ty?

Work on 11ty is still underway. We hope to complete the transition by July 2022. We look to the Quire community to help us spot any bugs that the switch from Hugo to 11ty may have generated. The move will be a gradual work in progress, and we appreciate our users' feedback and patience.

### How does this affect older or in-process Quire projects?

Quire projects built with Hugo can be manually migrated to the 11ty version as needed by making a handful of global changes to Markdown files and by copying over various configuration values. Documentation will be provided and our team is available for support. You can also install an earlier version of Quire with `npm install @thegetty/quire-cli@0.20.2` to run older Hugo-based projects, but that version will only be supported for a limited time.

Let us know if you will be starting any new projects as early as June 2022. It will be advantageous to adopt the 11ty version of Quire early, even though our implementation will still be underway. We are happy to work closely with you to troubleshoot your use of Quire during this transition period. Reach out to us at [quire@getty.edu](mailto:quire@getty.edu).

### Will there be new documentation?  

We will be writing new documentation for the 11ty version of Quire. The older Quire documentation will be gradually phased out over time. For the most part, changes to the docs will be fairly minor, especially on the content creator/editor side of things.

We are looking for contributions to help support the creation of developer-centric documentation. If you are interested in contributing please see our [Contributor Guidelines](https://github.com/thegetty/quire-docs/blob/main/CONTRIBUTING.md).

### Can I explore 11ty for myself?

We will have an 11ty branch of Quire available for people to play around with and offer feedback in the coming weeks. If you are interested in getting access to this branch, reach out to us at [quire@getty.edu](mailto:quire@getty.edu)

### What are some other Quire developments underway?

 We working to replace Prince XML with the open-source PDF generator, [Paged.js](https://pagedjs.org/). This development work is still underway.


*Last updated May 11, 2022*
