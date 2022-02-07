---
title: Manuscript Prep
weight: 6700
type: page
abstract:  "Tags we recommend adding to a manuscript Word document before Pandoc conversion"
online: false
---

## Formatting required for Markdown files

- [ ] Format section headings, block quotes, bullets, and numbered lists using Word styles <br/>
- [ ] Format figure and table callouts as hyperlinks using the figure # as the link <br/>
- [ ] If using [internal links](/documentation/page-content/#apply-different-types-of-links) to objects, figures, or other catalogue entries, format those callouts as hyperlinks using the catalogue section, figure number, object number etc. as the link <br/>
- [ ] Add placeholder [YAML fields](/documentation/pages/) to the top of each essay or [object entry page](/documentation/collection-catalogues/#create-object-pages) <br/>
- [ ] If using [inline text citations](/documentation/citation-bibliographies/#add-inline-text-citations) (or pop-up references), wrap the author and date with double curly quotes in the endnotes (i.e. {{Author XXXX}}). You will later use regex to find and replace the curly brackets with the citation shortcode. <br/>
- [ ] Wrap other pop-ups (definitions, objects, etc.) with a symbol other than the double curly bracket so they are easy to find when using regex to replace with the appropriate [shortcode](/documentation/page-content/#use-shortcodes-to-add-features) <br/>
- [ ] Create `short_titles` for essay titles longer than 30 characters <br/>
- [ ] Bold any internal notes <br/>

## Formatting required for data (`.yml`) files

- [ ] Format captions for the [`figures.yml`](/documentation/figure-images/#create-a-figuresyml-file-for-figure-image-metadata) file <br/>
- [ ] If using inline text citations, format author date info for the [`references.yml`](/documentation/citation-bibliographies/#capture-bibliographic-information-in-yaml) file <br/>
- [ ] For collection catalogues, format object information for the [`objects.yml`](/documentation/figure-images/#create-a-figuresyml-file-for-figure-image-metadata) file <br/>
