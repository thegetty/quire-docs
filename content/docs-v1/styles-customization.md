---
title: Style Customization
weight: 6340
type: essay
abstract: "Alter look and feel with custom styles and themes"
aliases:
  - /documentation/styles-customization/
---

TK

## Change the Theme Style Variables

TK

## Add Custom Styles

TK

## Add Custom Classes to Pages

Every `.md` file in a Quire publication has a "class" that controls the styling of that page. The class is applied to the page via the `layout` key. For example, the class `quire-entry` will be applied any time `layout: entry` is used. This `quire-entry` styles the page so that a single image or object is featured prominently. 

The only hard coded `classes` that are surfaced in the `_content` directory are those found in the page YAML of the PDF pages included in the default starter. Please note: the `classes` key on these pages cannot be left blank. 

**pdf-epub-copyright.md**

```yaml
---
layout: page
order: 5
classes:
  - copyright-page
outputs:
  - epub
  - pdf
toc: false
---
```

***pdf-epub-half-title.md**
```yaml
---
layout: base.11ty.js
classes:
  - half-title-page
order: 2
outputs:
  - epub
  - pdf
toc: false
---
```

**pdf-epub-title.md**
---
layout: base.11ty.js
classes:
  - title-page
order: 3
outputs:
  - pdf
  - epub
toc: false
---

However, you aren't tied to Quire's predefined `classes`. You can also create your own! This is done by writing custom CSS that defines the function of that class and then using the `classes` key in the page YAML to apply it.  

```yaml
classes:
  - my-custom-class
```

The value of `classes` is always a list, so more than one class can be applied.

```yaml
classes:
  - page-one
  - my-custom-class
```

It can also be written in the abbreviated form.

```yaml
classes: [page-one, my-custom-class]
```

All `classes` are added to the `<main class="quire-page">` element on the page, which contains the page header and content area. 

```html
<main class="quire-page page-one my-custom-class">
  ...
</main>
```

### Custom Class Example

Here is an example of the custom CSS used to hide a `layout: table-of-contents` with `presentation: grid` in the PDF version of the publication.  

```css
@media print {
  .quire-page .quire-contents .hide-contents .quire-contents-list .grid {
    display: none;
  }
}
```

And the corresponding YAML.

```yaml
---
title: Catalogue
layout: table-of-contents
presentation: grid
classes:
  - hide-contents
order: 100
---
```

## Override Theme Templates

TK
