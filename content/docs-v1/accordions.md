---
title: Accordion Sections
weight: 6330
type: essay
abstract: "Add collapsible accordion sections to your pages"
---

Collapsible accordion sections can be a great way to help readers access the content of an otherwise long page quickly, or to tuck away content that might be an aside or sidebar to what is being said in the text. You can create these sections anywhere in a Quire project with the `{% accordion %}` shortcode. Also available is the `{% accordionGlobalControls %}` shortcode which adds “Expand/Collapse All” links to any page with accordions on it.

## Wrap Content in the Accordion Shortcode

The `{% accordion %}` shortcode is a “paired” shortcode and so requires an opening and closing tag, with the text you want hidden in between.

Also required is a summary text parameter that will become the link that closes and opens the section. Markdown can be used in the summary text. It will often be some level of heading.

```
{% accordion "## Section One" %}
  ...
{% endaccordion %}
```

Markdown can also be used in the text within the section, as can shortcodes such as `{% figure %}` and even other `{% accordion %}` sections.

```
{% accordion "## Section One" %}

This is the text that will be hidden. It can include **markdown** formatting, 
as well as other shortcodes.[^1]

{% figure 'fig-01' %}

{% endaccordion %}
```

For web accessibility, an accordion should always have a visual indicator for its open/close functionality. The icon used for this on each accordion section in Quire can be configured globally in the `content/_data/config.yaml` file. The icon can be either an arrow (the default) or a plus-minus symbol.

```yaml
accordion:
  controls: arrow # arrow | plus-minus
```

## Copy Links to Accordion Sections

When hovering over the summary text and control icon of an accordion section in a web browser, a symbol appears to the left. This is the copy button. Clicking on it will copy the link for the section to your clipboard. 

When visiting that copied link, the section will automatically open. (Accordion sections will also automatically open when following a link to an element *within* the section.)

The copy button symbol, tooltip text, and aria label (an accessibility feature that describes what the button does), can be configured in the `content/_data/config.yaml` file.

```yaml
accordion:
  copyButton:
    ariaLabel: Copy page section link to clipboard
    successText: Copied page section link to clipboard
    symbol: §
```

The `copyButton.symbol` can be [any unicode character](https://unicode-table.com).

## Customize Accordion Link Names

By default links to accordion sections are based on the summary text parameter, prepended with `#section-`. For example, the link to `{% accordion "## Section One" %}` would be `#section-section-one`.

Links can be customized by passing an `id` as an optional second parameter to the shortcode. This can be useful in streamlining otherwise long or unwieldy links for your users, or for internal linking within the project.

```md
See the [Comparison of Historical Sources](#sources) sidebar below.

{% accordion "## Comparison of Historical Sources" "sources" %}
  ...
{% endaccordion %}
```

{{< q-class "box warning" >}}
- The `id` parameter should always be lowercase, be unique on the page, and never start with a number or include any spaces or special characters.
{{< /q-class >}}

## Set an Accordion to Be Open by Default

By default, all accordion sections will be collapsed when the page first loads. You can set the "open" parameter to any accordion sections you would instead like 

```
{% accordion "## Section One" "s1" "open" %}
  ...
{% endaccordion %}
```

Note that the parameters are positional (defined by the order they are given), and the "open" parameter need to always be listed third, after the summary text and the id. If your accordion does not have a custom id, make sure the quotes are still there but leave them empty.

```
{% accordion "## Section One" "" "open" %}
  ...
{% endaccordion %}
```

{{< q-class "box tip" >}}
- In the PDF and EPUB outputs of your project, accordions will automatically be in their “open” state and will not show their controls.
{{< /q-class >}}


## Add Accordion Global Controls

You can add links to open and close all the accordions on a page at once using the `{% accordionGlobalControls %}` shortcode. It can appear anywhere on the page though would typically be found directly above the first accordion section.

```
{% accordionGlobalControls %}

{% accordion "## Section One" %}
  ...
{% endaccordion %}
{% accordion "## Section Two" %}
  ...
{% endaccordion %}
```

The text for the global control links can be configured in the `content/_data/config.yaml` file.

```yaml
accordion:
  globalControls:
    collapseText: Collapse All
    expandText: Expand All
```

## Configure the Accordion Shortcodes

As noted in the sections above, there are several ways the `{% accordion %}` and `{% accordionGlobalControls %}` shortcodes can be configured. All the options can be found in the `content/_data/config.yaml` file.

```yaml
accordion:
  controls: arrow # arrow | plus-minus
  copyButton:
    ariaLabel: Copy page section link to clipboard
    successText: Copied page section link to clipboard
    symbol: §
  globalControls:
    enable: true
    collapseText: Collapse All
    expandText: Expand All
```
