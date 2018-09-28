![Quire logo](content/images/quire_may2017.png)

# Quire (Alpha)

Quire is a modern, multiformat publishing framework designed to create books as authoritative and enduring as print, and as vibrant and feature-rich as the web, from a single set of plain text files. All without ever signing-up for an account, paying a fee, or setting up and maintaining a complicated server.

Quire books are scholarly, visual, and built for discoverability and longevity. They feature:

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

[View some of the books developed with early versions of Quire.](http://www.getty.edu/publications/digital/digitalpubs.html)

## Getting Started

Follow the step-by-step introduction in the [**Getting Started**](content/guide/getting-started.md) chapter of the guide to:

1. Install Quire and its dependencies
2. Create and preview a new starter project
3. Customize the metadata, content, and styles to make it your own
4. Output your publication

[*Quire is currently in closed development. To request access, please fill out our [Quire Beta Request](https://docs.google.com/forms/d/e/1FAIpQLSckvPWWyyfZJko6JTqf3slcXCV8vcCgQjAzoW4MfHEt9hDuxQ/viewform?usp=sf_link) form. Or for more information, contact Greg Albers at [galbers@getty.edu](mailto:galbers@getty.edu).*]

## Guide & Documentation

- [**Tutorial: Quire Basics**](content/tutorial.md)
- **Guide**
  - [Install and Uninstall](content/guide/install-uninstall.md)
  - [Getting Started](content/guide/getting-started.md)
  - [Fundamentals: YAML & Markdown](content/guide/fundamentals.md)
  - [Metadata & Configuration](content/guide/metadata-configuration.md)
  - [Pages](content/guide/pages.md)
  - [Collection Catalogues](content/guide/collection-catalogues.md)
  - [Figure Images](content/guide/figures.md)
  - [*Zooming Images & Maps*](content/guide/zoom.md)
  - [Citations & Bibliographies](content/guide/bibliographies.md)
  - [*Copyright & About Pages*](content/guide/copyright.md)
  - [Contributors](content/guide/contributors.md)
  - [Style Customization](content/guide/styles.md)
  - [Fonts Customization](content/guide/fonts.md)
  - [*Multiformat Output*](content/guide/output.md)
- **API/Docs**
  - [YAML](content/api-docs/yaml.md)
  - [Shortcodes](content/api-docs/shortcodes.md)
  - [Dependency Guide](content/guide/dependency-guide.md)
- **Resources**
  - [Quire Cheatsheet](content/resources/cheatsheet.md)
  - [Default Style Guide](content/resources/styleguide.md)
  - [Quire CLI Instructions](content/resources/quire-cli.md)
  - [GitHub for Quire](content/resources/github.md)
  - [Sample publication.yml file](content/resources/sample-publication.yml)
  - [Accessibility Principals](content/resources/accessibility.md)
  - [Hugo Documentation](https://gohugo.io/documentation/)
- [**About**](content/guide/about.md)

(*Note: entries in italics are placeholder stubs.*)

- **Links**
  - [Quire Workshop Syllabi & Agendas](content/workshops/)
  - [Hugo Documentation](https://gohugo.io/documentation/)
  - [“Quire: A New Publishing Tool”](http://www.getty.edu/publications/digital/platforms-tools.html)
  - [“Why Static Site Generators Are the Next Big Thing”](https://www.smashingmagazine.com/2015/11/modern-static-website-generators-next-big-thing/)
  - [“An Editor’s View of Digital Publishing”](http://blogs.getty.edu/iris/an-editors-view-of-digital-publishing/)

## Technical

Quire is centered around [Hugo](https://github.com/gohugoio/hugo), and uses [PrinceXML](http://www.princexml.com/) for PDF generation and [pe-epub](https://github.com/peoples-e/pe-epub) for EPUBs.

Quire consists of four primary repositories, all of which but this one are closed during development.

- [quire](https://github.com/gettypubs/quire) (documentation and homepage)
- [quire-cli](https://github.com/gettypubs/quire-cli)
- [quire-starter](https://github.com/gettypubs/quire-starter)
- [quire-starter-theme](https://github.com/gettypubs/quire-starter-theme)

To request access, please fill out our [Quire Beta Request](https://docs.google.com/forms/d/e/1FAIpQLSckvPWWyyfZJko6JTqf3slcXCV8vcCgQjAzoW4MfHEt9hDuxQ/viewform?usp=sf_link) form. Or for more information, contact Greg Albers at [galbers@getty.edu](mailto:galbers@getty.edu).

## License

© J. Paul Getty Trust

This documentation is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).
