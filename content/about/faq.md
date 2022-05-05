---
title: FAQs
weight: 1200
type: essay
---

### What is Eleventy (11ty)?

Eleventy (11ty) is a simple yet powerful [static site generator](https://quire.getty.edu/about/how-it-works/) based on JavaScript. It was created as an alternative to [Jekyll](https://jekyllrb.com/) and will replace our former static site generator, [Hugo](https://gohugo.io/). 11ty transforms a directory of various templates into HTML and is popular for its ability to mix multiple templating languages (including: HTML, Markdown, JavaScript, Liquid, Nunjucks, Handlebars, Mustache, EJS, Haml, Pug, and Custom). It is available as open source under the MIT License. Read more on the [11ty website](https://www.11ty.dev/).

### What are the benefits of 11ty?

11ty has a significantly faster processing time than other static site generators. With the move to 11ty, we have reworked the overall file structure of Quire projects to simplify navigation and make essential project files more accessible. On the development side, one of 11ty's great strengths is its ability to mix templating languages. For example, in Quire projects, Liquid will be used to generate simple markup while JavaScript will be used where data manipulation is required (more on those two langauges below.) Other templating languages may also be used. Above all, the move to 11ty will enable the expansion of advanced features, a more robust set of CLI options, and improve developer support and contribution opportunities.

### What is JavaScript?

Javascript is a popular text-based programming language that turns static web pages into dynamic, interactive sites, going a step beyond the capabilities of HTML and CSS. JavaScript can be found everywhere on the web, from refreshing a Twitter feed to your Amazon search bar or embedding Youtube videos. It is also widely used in the art, cultural heritage, and academic sectors. Learn more about JavaScript on the [Mozilla developer website](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_is_JavaScript).

### What is Liquid?

Liquid is an open-source templating language written in [Ruby](https://www.ruby-lang.org/en/). It was created by the e-commerce company [Shopify](https://www.shopify.com/) in 2006. It is the backbone of all Shopify themes and is used to load dynamic content on website storefronts. Read more about Liquid on the [Shopify.dev website](https://shopify.dev/api/liquid).

### What is Vite

[Vite (Vite.js)](https://vitejs.dev/) is a lightning fast tool for frontend development. It is replacing [Webpack](https://webpack.js.org/) and will be used to compile styles and scripts as well as bundle files.  

### What is our timeline for transitioning to 11ty?

We expect the bulk of development work to be done by July 2022 with Quire's official open-source launch scheduled for the Fall. We look to the Quire community for feedback and to help us spot bugs that the transition may have generated. The move will be a gradual work in progress, and we appreciate our users' patience.

### How does this affect older or in process Quire projects?

Quire projects built with the Hugo version of Quire, can be manually migrated to the 11ty version as needed by making a handful of global changes to Markdown files and copying over various configuration values. Documentation will be provided and our team is available for support. You can also install an earlier version of Quire with `npm install @thegetty/quire-cli@0.20.2` to run older Hugo-based projects, but that version will only be supported for a limited time.

Let us know if you will be starting any new Quire projects as early as June 2022. It will be advantageous to adopt the 11ty version of Quire early, even though our implementation will still be underway. We are happy to work closely with you to troubleshoot your use of Quire during this transition period. Reach out to us at [quire@getty.edu](mailto:quire@getty.edu).

### Will there be new documentation?  

We will be writing new documentation for the 11ty version of Quire. The older Quire documentation will be gradually phased out over time. For the most part, changes to the docs will be fairly minor, especially on the content creator/editor side of things.

We are looking for contributions to help support the creation of developer-centric documentation. If you are interested in contributing please see our [Contributor Guidelines](https://github.com/thegetty/quire-docs/blob/main/CONTRIBUTING.md).

### Can I explore 11ty for myself?

We will have an 11ty branch of Quire available for people to play around with and offer feedback in the coming weeks. 

### What are some other Quire developments underway?

In addition to our work on 11ty, we are also working on switching our image viewing from Leaflet to [CanvasPanel](https://canvas-panel.digirati.com/#/about). We are also greatly improving our IIIF capabilities, including adding the ability to annotate images and layer images. We are also working to replace Prince XML with the open-source PDF generator, [Paged.js](https://pagedjs.org/). All this development work is still underway. We thank you for your patience.  



*Last updated May 5, 2022*
