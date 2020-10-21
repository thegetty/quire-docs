![](static/img/quire-logo--sm.png)

# Quire

**Create scholarly, visually rich digital books that last**

Online • Print • E-book

https://gettypubs.github.io/quire/

**Quire is currently in closed development. To request access, please fill out our [Quire Beta Request](https://docs.google.com/forms/d/e/1FAIpQLSckvPWWyyfZJko6JTqf3slcXCV8vcCgQjAzoW4MfHEt9hDuxQ/viewform) form.**

Created by [Getty](https://www.getty.edu), Quire is a modern, multiformat publishing tool designed to create books as authoritative and enduring as print, and as vibrant and feature-rich as the web, from a single set of plain text files. All without ever paying a fee, or setting up and maintaining a complicated server.

Quire is an ideal tool for anyone seeking to publish a beautiful, scholarly digital book optimized for visual imagery and designed to ensure its content is widely accessible and stable.

- Outputs publications in multiple formats (web, ebook, PDF, print-on-demand)
- Keeps source content in nonspecialized plain text to ensure reusability
- Supports visually rich scholarship in the tradition of print publishing
- Allows for a wide range of possible custom features and styles
- Persists without ongoing maintenance or updates once published
- Empowers users at any skill level to create dynamic feature-rich digital publications

Check out [the demo site](https://gettypubs.github.io/quire-starter/), and [some of the Getty’s books developed with early versions of Quire.](http://www.getty.edu/publications/digital/digitalpubs.html)

Quire is centered around [**Hugo**](https://github.com/gohugoio/hugo), and uses [PrinceXML](http://www.princexml.com/) for PDF generation, [pandoc](https://pandoc.org/) for EPUBs, and [Kindle Previewer](https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000765261) for MOBIs. It consists of four primary repositories, all of which but this one are private during development ([sign up for access](https://docs.google.com/forms/d/e/1FAIpQLSckvPWWyyfZJko6JTqf3slcXCV8vcCgQjAzoW4MfHEt9hDuxQ/viewform?usp=sf_link)):

- [quire](https://github.com/gettypubs/quire) (website and documentation)
- [quire-cli](https://github.com/gettypubs/quire-cli)
- [quire-starter](https://github.com/gettypubs/quire-starter)
- [quire-starter-theme](https://github.com/gettypubs/quire-starter-theme)

## Quire Contributors

### Core Team

- Greg Albers ([@geealbers](https://github.com/geealbers)), product manager
- David Newbury ([@workergnome](https://github.com/workergnome)), product manager
- Matthew Hrudka ([@mphstudios](https://github.com/mphstudios)), lead maintainer
- Erin Cecele Dunigan ([@Erin-Cecele](https://github.com/Erin-Cecele)), community manager

Contact us at [quire@getty.edu](mailto:quire@getty.edu).

### Contributors

Thank you to all our growing list of contributors who have made Quire what it is, and are working on what it will be! They’ve contributed code, written and edited documentation, run events, and blogged and spoken about Quire.

- [@aheltonsjma](https://github.com/aheltonsjma)
- [@anderspollack](https://github.com/anderspollack)
- [@antoinentl](https://github.com/antoinentl)
- [@daniel-keller](https://github.com/daniel-keller)
- [@egardner](https://github.com/egardner)
- [@fchasen](https://github.com/fchasen)
- [@ggarcia0596](https://github.com/ggarcia0596)
- [@kalvarenga](https://github.com/kalvarenga)
- [@kristhayer11](https://github.com/kristhayer11)
- [@mandrijauskas](https://github.com/mandrijauskas)
- [@MillsArtMuseum](https://github.com/MillsArtMuseum)
- [@mbelhu](https://github.com/mbelhu)
- [@naeluh](https://github.com/naeluh)
- [@nancyum](https://github.com/nancyum)
- [@oncletom](https://github.com/oncletom)
- [@swambold1](https://github.com/swambold1)
- [@victoriabarry](https://github.com/victoriabarry)

## This Repository

This repository, https://github.com/gettypubs/quire, is the central hub for Quire, and is also the Quire website and documention, which is built with Quire.

This repo was last built with the following software versions:

- Quire 0.18.0
- Node 12.18.3 / npm 6.14.6
- Hugo 0.72
- PrinceXML 13.5
- Pandoc 2.10.1

While v0.18.0 of the core Quire Starter Theme was used, a number of customizations were made:

- Add custom cover layout and style options for the homepage
- Display the sidebar menu as always visible and fixed when the screen is wide enough
- Add custom shortcodes for the pop-up glossary definitions, and the community showcase

Within the theme itself, changes were made to the `source/css/variables.scss` file. Outside of the theme, customizations can be found in the project’s `layouts` directory, and in `static/css/custom.css`.
