---
title: Manuscript Prep
weight: 6700
type: page
abstract:  "Tags we recommend adding to a manuscript Word document before Pandoc conversion"
online: false
---

## Formatting required for Markdown files

{{< q-checklist >}}

- [ ] Format section headings, superscript numbers, block quotes, bullets, and numbered lists using Word styles <br/>
- [ ] Use Word References to add endnotes
- [ ] Format figure and table callouts as hyperlinks using the figure # as the link
- [ ] If using [internal links](/documentation/page-content/#apply-different-types-of-links) to objects, figures, or other catalogue entries, format those callouts as hyperlinks using the catalogue section, figure number, object number etc. as the link
- [ ] Add placeholder [YAML fields](/documentation/pages/) to the top of each essay or [object entry page](/documentation/collection-catalogues/#create-object-pages)
- [ ] If using [inline text citations](/documentation/citation-bibliographies/#add-inline-text-citations) (or pop-up references), wrap the author and date with double curly quotes in the endnotes (i.e. {{Author XXXX}}). You will later use regex to find and replace the curly brackets with the citation shortcode.
- [ ] Wrap other pop-ups (definitions, objects, etc.) with a symbol other than the double curly bracket so they are easy to find when using regex to replace with the appropriate [shortcode](/documentation/page-content/#use-shortcodes-to-add-features)
- [ ] Create `short_titles` for essay titles longer than 30 characters
- [ ] Bold any internal notes

{{< /q-checklist >}}

## Formatting required for data (`.yml`) files

{{< q-checklist >}}

- [ ] Format captions for the [`figures.yml`](/documentation/figure-images/#create-a-figuresyml-file-for-figure-image-metadata) file
- [ ] If using inline text citations, format author date info for the [`references.yml`](/documentation/citation-bibliographies/#capture-bibliographic-information-in-yaml) file
- [ ] For collection catalogues, format object information for the [`objects.yml`](/documentation/figure-images/#create-a-figuresyml-file-for-figure-image-metadata) file

{{< /q-checklist >}}
