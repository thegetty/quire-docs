---
title: Implementation Considerations
type: essay
weight: 6020
abstract: "Is Quire right for you and your project?"
aliases:
  - /documentation/implementation/
---

## Licensing

As of 2022, Quire was released as open-source software under a [BSD 3-Clause license](https://opensource.org/licenses/BSD-3-Clause).

## Technology Requirements

- Quire is compatible with macOS and Windows. Currently, support is better for macOS.

- Quire is powered by [11ty](https://www.11ty.dev/), a static site generator, and includes programs such as [Vite](https://vitejs.dev/), [Paged.js](https://pagedjs.org/), [CanvasPanel](https://iiif-canvas-panel.netlify.app/about/), and [IIIF](https://iiif.io/).

- Installing Quire also requires installing several third-party applications: [Node.js](https://nodejs.org/en/), [xCode](https://developer.apple.com/xcode) (for Mac users), [GitHub Desktop](https://desktop.github.com/) (optional), and a text editor (such as [Atom](https://atom.io/)).

- A standard web server/hosting service is required for publishing your project, but no special server software or setup is required. For site deploy, we recommend using either [Netlify](https://www.netlify.com) or [GitHub Pages](https://pages.github.com/).

## Skill Requirements

- Quire does not offer a graphical user interface. Instead, publications are built using the {{< q-def "command-line shell" >}} and a {{< q-def "text editor" >}}. Working in human-readable plain text files is key to ensuring the stability and longevity of Quire publications.

- Quire can be used "out of the box" by any individual, no matter their skill level. We provide [documentation](/docs-v1/) and additional [resources](/resources/resources/) to aid non-technical users in gaining the skills necessary to use Quire.

- Advanced knowledge of CSS, HTML, JavaScript, and [Liquid](https://shopify.dev/api/liquid) is required to customize Quire beyond its basic configuration.

## Affiliated Costs

- Quire is free to use, however, depending on the nature of the project it can be helpful to hire a developer for general technical support, design customization, and deployment. Please reach out to us (mailto:quire@getty.edu) if you would like freelance developer recommendations.

## Content Compatibility

- Quire is optimized for book-like projects. Especially those that rely on visual illustrations and/or scholarly apparatus like citations, bibliographies, and footnoting.

- For those looking to publish more non-textual, image-intensive presentations, like an online exhibition or a fully illustrated children’s book or graphic novel, Quire may not be the right fit.

- Using Quire for journal publishing is also an option, though not yet fully developed. Please see our [Community Showcase](/community/community-showcase) for current examples of journals created using Quire.

## Versioning

- Quire projects, once published, no longer require Quire to keep running. After publication, a compatible version of Quire would only be necessary to make new updates and re-output the various file formats. To update your version of Quire please see the [Install or Update section](/docs-v1/install-uninstall/#update-quire) of this guide.

*If Quire is not working as described in this documentation please see our [Bug Reporting Instructions](https://github.com/thegetty/quire/blob/main/BUG_REPORTING.md) for next steps.*