---
title: Citations & Bibliographies
weight: 6260
type: essay
abstract: "Cite sources with pop-ups and generate reference lists"
---

In-text citations and bibliographies are all available in Quire. Designed to meet scholarly needs and multiple citation styles, they are easy to implement in your publications. While bibliographic references are formatted in YAML and stored in a YAML file (you can consult our [YAML syntax fundamentals](/documentation/fundamentals/) for more information), citation and bibliography {{< q-def "shortcodes" >}} are used to integrate the references in your publication.

## Capture Bibliographic Information in YAML

Bibliographic references for your publication should be listed in a `references.yaml` file in the `data` directory.

Each entry in the `references.yaml` file must include a `full` form of the reference, and then an `id` to reference it by.

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

By default, Quire will sort bibliographic entries alphabetically by the text of the `full` reference. However, you may find in some cases that Quire’s default sort method has its drawbacks. For example, the presence of diacritics, lowercase names, or two author names in a citation may affect the proper ordering of your references. Use the `sort` value to override any ordering issues created by the `full` value:

```yaml
entries:
  - id: "Mütter 1851"
    full: "Mütter, Edmond. *Journal des Goncourt: Mémoires de la vie littéraire.* Paris; G. Charpentier et cie, 1851."
    sort: "Mutter"
```

These references can then be called individually from within text using the `q-cite` shortcode, or in their entirety as a generated bibliography using the `q-bibliography` shortcode. Both of which are detailed below.

## Add In-text Citations

The `q-cite` shortcode adds a linked Author Date citation reference to the text and an in-text citation (a hover pop-up with the full reference text). It also adds the citation to a list of all cited works on that page, which is output as a page-level bibliography, as explained [below](#display-a-bibliography).

{{< q-figure id="modern-citation-hover" >}}

{{< q-figure id="modern-bibliography-page" >}}

The first positional parameter of the `q-cite` shortcode is a short form citation that should match the `id` value in the `references.yaml`. The following sample would output the link as: Faure 1909.

```go
{{</* q-cite "Faure 1909" */>}}
```

The second optional parameter is a page reference. The following sample would output the link as: Faure 1909, 54.

```go
{{</* q-cite "Faure 1909" "54" */>}}
```

A third optional parameter allows you to customize what text appears in the the link rather than the short form of the citation. The following sample would output the link as: 1909, 54.

```go
{{</* q-cite "Faure 1909" "54" "1909" */>}}
```

In using this third parameter, you still need to have the second parameter even if it’s empty. The following sample would output the link as: 1909.

```go
{{</* q-cite "Faure 1909" "" "1909" */>}}
```

The text element between the Author Date citation and the page can be changed with the `citationPageLocationDivider` property in `config.yaml`. The humanities tend to favor comma separation (which is the default in Quire), whereas the sciences typically favor a colon.

The `q-cite` shortcode can be used anywhere in your Markdown text, including within footnotes.

If a publication includes in-text citations and appears to have missing bibliographic entries, there is most likely an incorrect or missing `q-cite` shortcode in the essay end notes. You can find those in the essay Markdown file. The quoted text that follows `q-cite` should exactly match the “id” in the `references.yaml` files. Any changes made to a bibliographic citation should be made first to the `references.yaml` file, and then to every instance of that citation throughout the text. Failure to make changes in all places will result in broken links. The `q-cite` shortcode also plays an important role when generating a bibliography. So a missing or misspelled `q-cite` shortcode will result in the entry entry being left out of the bibliography completely.



## Display a Bibliography

Your publication will automatically include a page-level bibliography listing all works that were cited on that page using the `q-cite` shortcode. A heading can be customized to go above the page bibliography with the `biblioHeading` parameter in your `config.yaml` file. The default is "Bibliography".

Additionally, to create a complete bibliography for your entire publication, from all the entries in the project's `references.yaml` file, you can create a `bibliography.md` file and use the `q-bibliography` shortcode. The resulting bibliography will be output as a page in your publication. By default, your bibliography will automatically be ordered according to the `full` value in your `references.yaml` file.

```go
{{</* q-bibliography */>}}
```

{{< q-figure id="modern-bibliography" >}}


### Display the Short Reference in Bibliographies

Bibliographies displayed automatically at the bottom of pages, and those generated with the `q-bibliography` shortcode, can be a list of the full version of the reference, or can include the short version as well. This is controlled globally (all bibliographies in the project have to be the same format) in the `config.yaml` file with the `displayBiblioShort` property, can be set to `"true"` or `"false"`.
