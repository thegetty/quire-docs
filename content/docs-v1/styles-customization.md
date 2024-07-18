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

Entire pages can be customized by adding a class to that page and then writing the CSS for it. Classes can be added to pages in the page YAML with the `classes` key.

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

## Override Theme Templates

TK
