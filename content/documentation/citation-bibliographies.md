---
title: Citations and Bibliographies
weight: 5000
type: essay
abstract: "Cite sources with pop-ups and generate reference lists"
---

In-text citations and bibliographies are all available in Quire. Designed to meet scholarly needs and multiple citation styles, they are easy to implement in your publications. While bibliographic references are formatted in YAML and stored in a YAML file (you can consult our [YAML syntax fundamentals](/documentation/fundamentals/) for more information), citation and bibliography {{< q-def "shortcodes" >}} are used to integrate the references in your publication.

## Capture Bibliographic Information in YAML

Bibliographic references for your publication can be listed in a `references.yml` file in the `data` directory (along with the `publication.yml`, `figures.yml` and `objects.yml` files).

Each entry in the `references.yml` file should include a `full` form of the reference, and then an `id` to reference it by.

```yaml
entries:
  - id: "Faure 1909"
    full: "Faure, Élie. *Histoire de l’Art*. Vol. 1, *L’Art antique*. Paris: Gallimard, 1909"
  - id: "de Goncourt 1851"
    full: "de Goncourt, Edmond. *Journal des Goncourt: Mémoires de la vie littéraire.* Paris; G. Charpentier et cie, 1851."
```

As in the example above, the `id` would typically be the short form of the reference in author-date format. However, you can also specify the short form as a separate line of the YAML.

```yaml
entries:
  - id: "fre09"
    short: "Faure 1909"
    full: "Faure, Élie. *Histoire de l’Art*. Vol. 1, *L’Art antique*. Paris: Gallimard, 1909"
  - id: "degncrt51"
    short: "de Goncourt 1851"
    full: "de Goncourt, Edmond. *Journal des Goncourt: Mémoires de la vie littéraire.* Paris; G. Charpentier et cie, 1851."
```

### Sort Order

By default, when they are output in your publication Quire will sort the entries alphabetically by the text of the `full` reference. However, there may be some times when the sort does not output the expected results, in which case you can specify a specific `sort` value.

```yaml
entries:
  - id: "fre09"
    short: "Faure 1909"
    full: "Faure, Élie. *Histoire de l’Art*. Vol. 1, *L’Art antique*. Paris: Gallimard, 1909"
    sort: "faure"
  - id: "degncrt51"
    short: "de Goncourt 1851"
    full: "de Goncourt, Edmond. *Journal des Goncourt: Mémoires de la vie littéraire.* Paris; G. Charpentier et cie, 1851."
    sort: "goncourt"
```

These references can then be called individually from within text using the `q-cite` shortcode, or in their entirety as a generated bibliography using the `q-bibliography` shortcode. Both of which are detailed below.

## Add Inline Text Citations

The `q-cite` shortcode adds a linked Author Date citation reference to the text, and a hover pop-up with the full citation text. It also adds the citation to a list of all cited works on that page, which is output as a page-level bibliography, as explained [below](#displaying-a-bibliography).

{{< q-figure id="modern-citation-hover" >}}

{{< q-figure id="modern-bibliography-page" >}}

The first positional parameter of the `q-cite` shortcode is a short form citation that should match one in `references.yml`. The second, *optional* parameter is a page reference. The following sample would output as: Faure 1909, 54.

```go
{{</* q-cite "Faure 1909" "54" */>}}
```

A third optional parameter allows you to customize the text to appear in the link if not the short form of the citation. The following sample would appear simply as: 1909, 54.

```go
{{</* q-cite "Faure 1909" "54" "1909" */>}}
```

In using this third parameter, you still need to have the second parameter even if it’s empty. The following sample would appear simply as: 1909.

```go
{{</* q-cite "Faure 1909" "" "1909" */>}}
```

The text element between the author date reference and the page can be changed with the `citationPageLocationDivider` property in `config.yml`. The humanities tend to favor comma separation (which is the default in Quire), whereas the sciences typically favor a colon.

The `q-cite` shortcode can be used anywhere in your Markdown text, including within footnotes.


## Display a Bibliography

Pages in your publication will automatically include a page-level bibliography listing all works that were cited on that page using the `q-cite` shortcode. A heading can be customized to go above the page bibliography with the `biblioHeading` parameter in your `config.yml` file. The default is "Bibliography".

Additionally, to create a complete bibliography for your entire publication, from all the entries in the project's `references.yml` file, you can use the `q-bibliography` shortcode. The resulting bibliography will be output in the order in which it appears in the references file.

```go
{{</* q-bibliography */>}}
```

{{< q-figure id="modern-bibliography" >}}


This shortcode accepts an optional `sort` value, which will sort the list by whatever key from the entries is given. Often `"short"`, `"full"`, or `"sort"`, though a custom key could be added. Without a `sort` value given, the bibliography will be output in the order in which it appears in the references file.

```go
{{</* q-bibliography sort="short" */>}}
```

You may find in some cases that the system’s default sort method is suboptimal. In particular, the sort is case sensitive and will sort uppercase, before lower. So a reference for “e.e. cummings” would be listed after those for “Emily Dickinson”. In these cases a custom key like `"sort"` could be added to all entries in the `references.yml` file for fine-grained control.

```yaml
entries:
  - short: "cummings 1914"
    sort_as: "cummings-e-e"
  - short: "Dickinson 1932"
    sort_as: "dickinson-emily"
```
{{< q-class "box warning" >}}
- If adding a custom sort key, it would need to be added to *all* entries, not just the one that need to be sorted differently than the default.
{{< /q-class >}}

### Display the Short Reference in Bibliographies

Bibliographies displayed automatically at the bottom of pages, and those generated with the `q-bibliography` shortcode, can be a list of the full version of the reference, or can include the short version as well. This is controlled globally (all bibliographies in the project have to be the same format) in the `config.yml` file with the `displayBiblioShort` property, can be set to `"true"` or `"false"`.
