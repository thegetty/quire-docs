---
title: Text-Editing Guide
weight: 6800
type: page
abstract:  "Our process for adding publication content and data into Quire via text editor"
online: false
---

{{< q-checklist >}}

- [ ] Convert Word files into Markdown using [Pandoc](/documentation/fundamentals/#microsoft-word-to-markdown-conversion)
- [ ] Open project in [text editor](/learn/tutorial/#4-work-in-a-text-editor)
- [ ] Delete starter content
- [ ] Complete the `publication.yml`
- [ ] [Create an outline](/documentation/getting-started/#create-a-publication-outline) with placeholder Markdown (`.md`) files and landing pages in the `content` folder
- [ ] [Create a Table of Contents](/documentation/contents-menu/) in your Quire project
- [ ] Cut-and-paste the converted Mardown into the placeholder pages
- [ ] [Format YAML](/documentation/pages/) at the top of each Markdown file
- [ ] Add publication data as (`.yml`) files in the `data` folder (this includes [`figures.yml`](/documentation/figure-images/#create-a-figuresyml-file-for-figure-image-metadata), [`objects.yml`](/documentation/collection-catalogues/#capture-object-data), [`references.yml`](/documentation/citation-bibliographies/#capture-bibliographic-information-in-yaml), etc.)
- [ ] Add images to project (use a git submodule if working in a public repository to protect third part assets)
- [ ] Format image and table callouts and internal links between pages as [hyperlinks](/documentation/page-content/#apply-different-types-of-links)
- [ ] [Insert figure images](/documentation/figure-images/#insert-figure-images-with-q-figure-shortcode) using the figure shortcode
- [ ] Use [Regular Expression (or RegEx)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions) to find and replace double curly quotes for author date citations (and any other pop-ups). 

{{< /q-checklist >}}
