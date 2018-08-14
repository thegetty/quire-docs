---
title: Citations and Bibliographies
weight: 206
type: essay
---

In-text citations and bibliographies are all available in Quire. Designed to meet scholarly needs and multiple citation styles, they are easy to implement in your publications. While bibliographic references are formatted in YAML and stored in a YAML file (you can consult our [YAML syntax fundamentals](../fundamentals/yaml/) for more information), citation and bibliography shortcodes are used to integrate the references in your publication.

## Capturing Bibliographic Information in YAML

Bibliographic references for your publication can be listed in a `references.yml` file in the `data` directory (along with the `publication.yml`, `figures.yml` and `objects.yml` files).

Each entry in the `references.yml` file should include a `short` and a `full` form of the reference.

```yaml
entries:
  - short: "Faure 1909"
    full: "Faure, Élie. *Histoire de l’Art*. Vol. 1, *L’Art antique*. Paris: Gallimard, 1909"
  - short: "de Goncourt 1851"
    full: "de Goncourt, Edmond. *Journal des Goncourt: Mémoires de la vie littéraire.* Paris; G. Charpentier et cie, 1851."
```

These references can then be called individually from within text using the `q-cite` shortcode, or in their entirety as a generated bibliography using the `q-bibliography` shortcode. Both of which are detailed below.

## Adding Inline Text Citations

The `q-cite` shortcode adds a linked Author Date citation reference to the text, and a hover pop-up with the full citation text. It also adds the citation to a list of all cited works on that page, which can be output as a page-level bibliography on pages with a `type` of `"essay"` and `"entry"`, as explained [below](#displaying-a-bibliography).

```
{{</* q-cite "Faure 1909" "54" */>}}
```
The shortcode can be used anywhere in your Markdown text, including within footnotes. The first positional parameter is a short form citation that should match one in `references.yml`. The second, optional parameter is a page reference (if needed). The above sample would output as: “Faure 1909, 54”.

[note] The text element between the author date reference and the page (in this case, a comma and a space) can be changed with the `citationPageLocationDivider` property in your publication’s `config.yml` file according to your preferred citation style.

## Displaying a Bibliography

Pages in your publication with a `type` of `"essay"` or `"entry"`, will automatically include a page-level bibliography listing all works that were cited on that page using the `q-cite` shortcode.

However, to create a complete bibliography for your entire publication, from all the entries in the project's `references.yml` file, you can use the `q-bibliography` shortcode. The resulting bibliography will be output in the order in which it appears in the references file.

```
{{</* q-bibliography */>}}
```
[note] You may create one page in your publication where the bibliography will be displayed. All you need is to add the `q-bibliography` shortcode after the YAML block.

```
{{</* q-bibliography sort="short" */>}}
```

You may in some cases find that the system’s default sort method is sub-optimal. In particular, the sort is case sensitive and will sort uppercase, before lower. So a reference for “e.e. cummings” would be listed after those for “Emily Dickinson”. In these cases a custom key such as `sort_as` could be added to all entries in the `references.yml` file for fine-grained control.

```yaml
entries:
  - short: "cummings 1914"
    sort_as: "cummings-e-e"
  - short: "Dickinson 1932"
    sort_as: "dickinson-emily"
```
[note] This custom key would need to be added to *all* entries, not just the one that need to be sorted differently than the default.

### Displaying the Short Reference in Bibliographies

Bibliographies displayed on pages with a `type` of `essay` or `entry`, and those generated with the `q-bibliography` shortcode, can be just a list of the full version of the reference, or can include the short version as well. This is controlled globally (all bibliographies in the project have to be the same format) in the `config.yml` file with the `displayBiblioShort` property, can be set to `"true"` or `"false"`.

Additionally, to change the sort, the `q-bibliography` shortcode accepts an optional `sort` value, which will sort the list by whatever key from the entries is given. Often `"short"` or `"full"`.
