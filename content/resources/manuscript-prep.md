---
title: Manuscript Prep
weight: 7600
type: page
abstract:  "Tags we recommend adding to a manuscript Word document before Pandoc conversion"
online: false
---

## Formatting required for Markdown files

{{< q-checklist >}}

- [ ] Format section headings, superscript numbers, block quotes, bullets, and numbered lists using Word Styles
- [ ] Add endnotes using Word References
- [ ] Format figure and table callouts as [hyperlinks](/docs-v1/page-content/#apply-different-types-of-links) using the figure # as the link
- [ ] If using [internal links](/docs-v1/page-content/#apply-different-types-of-links), format those as hyperlinks using the catalogue section, figure number, object number etc. as the link
- [ ] Add placeholder [YAML fields](/docs-v1/pages/) to the top of each essay or [object entry page](/docs-v1/collection-catalogues/#create-object-pages)
- [ ] If using [in-text citations](/docs-v1/citation-bibliographies/#add-in-text-citations) (or pop-up references), wrap the author name and date with double curly brackets in the endnotes (i.e. {{Author XXXX}}). You will later use [Regular Expression (or RegEx)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions) to find and replace the curly brackets with the citation shortcode.
- [ ] Wrap other pop-ups (definitions, objects, etc.) with a symbol other than the double curly bracket so they are easy to find when using RegEx to replace with the appropriate [shortcode](/docs-v1/page-content/#use-shortcodes-to-add-features)
- [ ] Create `short_titles` for essay titles longer than 30 characters
- [ ] Bold any internal notes

{{< /q-checklist >}}

## Formatting required for data (`.yaml`) files

{{< q-checklist >}}

- [ ] Format captions for the [`figures.yaml`](/docs-v1/figure-images/#create-a-figuresyaml-file-for-figure-image-metadata) file
- [ ] If using in-text citations, format author date information for the [`references.yaml`](/docs-v1/citation-bibliographies/#capture-bibliographic-information-in-yaml) file
- [ ] For collection catalogues, format object information for the [`objects.yaml`](/docs-v1/figure-images/#create-a-figuresyaml-file-for-figure-image-metadata) file

{{< /q-checklist >}}
