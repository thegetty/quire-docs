---
title: Creating PDFs with Paged.js
weight: 5700
type: essay
menu: false
abstract: "Using Paged Media CSS and Paged.js to create PDF output"
---

Paged.js is an open source JavaScript library that implements the Paged Media standards published by the W3C (ie the Paged Media Module, and the Generated Content for Paged Media Module) to create PDF output from any HTML content from within the browser.

Paged.js acts as a polyfill for the CSS modules enabling CSS features that are not yet natively supported by browsers, while leveraging the parts that have been implemented.

Documentation and examples of CSS Paged Media can be found on [pagedjs.org](https://pagedjs.org/documentation/)

[Paged.js — Web design for print](https://pagedjs.org/documentation/5-web-design-for-print/) is a great place to get started if you are new to print css.

## Compatibility
Not every part of the Paged Media specification has been implemented yet, but it continues to be worked on at [gitlab.coko.foundation/pagedjs/pagedjs](https://gitlab.coko.foundation/pagedjs/pagedjs/).

If a feature is missing or not working, please file an issue there so it can be triaged and tested.

However there are a few features to call out as unlikely to be supported anytime soon:
- [ ] CMYK output
- [ ] CSS grids that are larger than a single page
- [ ] PDF/A profile output
- [ ] Any `-prince`  prefixed CSS rules
- [ ] Dot leaders

Paged.js strives to have similar output as other Paged Media PDF generators and is mostly consistent with the output from Prince XML. Print CSS Rocks maintains an excellent comparison of the results of using the same CSS with different generators at [print-css.rocks/lessons](https://print-css.rocks/lessons)

## Quirks
There are few quirks to be aware of when using Paged.js, that hopefully should be fixed as soon as possible.

### Page Size
Due to limitations with cross-browser PDF generation,  only the initial `size` declaration will be used.

```css
// USED
@page {
	size: 6in 10in;
}
// Ignored
@page cover {
	size: 10in 20in;
}
```

### @page Rules
Due to CSS parsing issues, all @page rules should be separate entries.

```css
// WORKS
@page {
	size: A5
	@bottom-left {
  		content: counter(page);
	}
}

@page cover {
	background-color: purple;
	@bottom-left {
  		content: counter(page);
	}
}

// FAILS
@page {
	size: A5
}

@page cover {
	background-color: purple;
}

@page, @page cover {
	@bottom-left {
  		content: counter(page);
	}
}
```

### CSS Animations
CSS keyframe animations will cause unexpected and inconsistent results when printing, so make sure to disable them in the Print CSS.

The easiest way to do that is to always wrap them in `@media screen` blocks.

```css
@media screen {
	animation-name: fadeIn;
}
```

### Position Fixed
Content that is `position: fixed` will be repeated on every page at the given location. This is great for watermarks, but elements from screen stylesheets that are not meant to repeat should be wrapped in media blocks.

### Column Spans
Paged.js implements page fragmentation by using CSS columns to represent each page. Unfortunately this means that `column-span: all;` in multi column content will cause issues with the print output.

We hope to have a fix for this in future.

# PDF generation
The Google Puppeteer library is used by the Paged.js CLI to generate PDFs of HTML content, allowing local creation of PDFs and updating the PDF metadata and crop sizes.

The Paged.js CLI is called by the Quire CLI, which can pass flags and options down.

## Debugging
Passing `--debug`  will allow previewing the output before a PDF is generated. This can help debug rendering issues by checking the Javascript console or just to test out print styles using browser tools.

```bash
quire pdf --debug
```

For larger changes you can also run the Paged.js polyfill directly on the built Quire print output at `_site/pdf.html` by adding the following the the `<head>` element of that file.

```html
<script src="https://unpkg.com/pagedjs/dist/paged.polyfill.js"></script>
```

Just make sure to remove it or rebuild before outputting a PDF.