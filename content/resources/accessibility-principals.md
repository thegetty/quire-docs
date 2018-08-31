---
title: Accessibility Principals
weight: 510
type: essay
---

As a publishing tool, Quire’s goal is to maintain accessibility for keyboard and screen reader navigation, as well as for devices and browsers of varying sizes and capabilities and with limited functionality, such as those operation with no JavaScript and/or no CSS.

The principals outlined below have been informed in particular by:

- [The 18F Accessibility Guide](https://pages.18f.gov/accessibility)
- [Carnegie Museums of Pittsburgh Web Accessibility Guidelines](http://web-accessibility.carnegiemuseums.org)
- [*Adaptive Web Design*](https://adaptivewebdesign.info), by [@AaronGustafson](https://twitter.com/AaronGustafson) https://adaptivewebdesign.info
- [*Inclusive Design Patterns*](https://shop.smashingmagazine.com/products/inclusive-design-patterns), by [@heydonworks](https://twitter.com/heydonworks)

While not exhaustive, the list below is meant to highlight the *key* principals by which Quire was originally developed and that we recommend be followed by others developing their own Quire projects. It has been ordered roughly starting with those items most owned or effected by editors working on publication content and progressing into those owned or effected by developers working on publication styles, template markup, and interaction.

## Key Principals

- Heading levels (`H1` through `H6`) should indicate a content outline, not visual styles, as they are frequently used by screen readers for page navigation. Quire pages will have their titles placed in an `H1` tag at the template level, and there should only ever be one `H1` tag on a page. Headings in the Markdown content documents should start with `H2`. All headings should have content following them.

- All non-decorative images should have `alt` descriptive text. ([Tips on crafting good alt text.](https://webaim.org/techniques/alttext/))

- All formats (PDF, EPUB, MOBI, and print) must offer at least basic access to *all* the content of the publication. For example: videos, deep zoom images and maps should appear with fallback images; URLs to online content should be provided in text, and hover-over citations or glossary terms should be printed in full at the bottom of the page or in a separate section.

- A proper background/foreground color contrast ratio must be maintained for all elements. ([Color contrast checker](https://webaim.org/resources/contrastchecker/).)

- Links must have a visual indicator besides only color.

- All page content should be in an [ARIA Landmark](https://www.w3.org/TR/2017/NOTE-wai-aria-practices-1.1-20171214/examples/landmarks/index.html) element/role.

- The first element on every page should be a “Skip to Main Content” skip link.

- Any element or piece of information that inherits meaning or context from its *visual* appearance, should be augmented with spoken, descriptive labels for screen readers. Quire templates make use of a `visually-hidden` CSS class. When applied to an element, the text within is hidden from view, but will be read aloud by screen-readers.

- If clicking on an interface element sends the user to a new page or a new location on the existing page, it should be an `<a>` link. If clicking changes the state of the current page, such as in opening a modal, it should be a `<button>`.

- Buttons that hide/reveal content and rely on JavaScript to do so, should be progressively created with JavaScript on the client side. In this way, if JavaScript is disabled or not functioning, the user will have access to *all* the content of the page.

- When viewed without JS, the page should be beautifully designed and fully navigable with no missing/hidden elements.

- When viewed without CSS, the complete contents of the page must be logically organized and readable.
