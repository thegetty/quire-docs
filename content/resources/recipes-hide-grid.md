---
label: RECIPE
title: Hide Table of Contents Grid in PDF with Custom Class 
weight: 7353
type: page
online: false
---

Here is an example of the custom CSS used to hide a `layout: table-of-contents` with `presentation: grid` in the PDF version of the publication.  

```css
@media print {
  .quire-page.hide-contents .quire-contents-list.grid {
    display: none; 
  }
}
```

And the corresponding page YAML.

```yaml
---
title: Catalogue
layout: table-of-contents
presentation: grid
classes:
  - hide-contents
order: 100
---
``
