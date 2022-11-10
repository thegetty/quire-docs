---
title: Citations & Bibliographies
weight: 6260
type: essay
abstract: "Cite sources with pop-ups and generate reference lists"
---

In-text citations and bibliographies are available in Quire. They are easy to implement and designed to meet scholarly needs and multiple citation styles. Bibliographic references are stored in a YAML file while citation {{< q-def "shortcode" >}} and the `layout` type `bibliography` are used to integrate these references into your publication.

## Capture Bibliographic Information in YAML

Bibliographic references for your publication should be listed in a `references.yaml` file in the `content/_data/` directory. Each entry in the `references.yaml` file must include the `full` form of the reference and an `id` that will be used in your citation shortcode.

```yaml
entries:
  - id: "Faure 1909"
    full: "Faure, Élie. *Histoire de l’Art*. Vol. 1, *L’Art antique*. Paris: Gallimard, 1909"
  - id: "de Goncourt 1851"
    full: "de Goncourt, Edmond. *Journal des Goncourt: Mémoires de la vie littéraire.* Paris; G. Charpentier et cie, 1851."
```

As in the example above, the `id` would typically be the short form of the reference in Author Date format. However, you can also specify the short form as a separate line of the YAML.

```yaml
entries:
  - id: "fre09"
    short: "Faure 1909"
    full: "Faure, Élie. *Histoire de l’Art*. Vol. 1, *L’Art antique*. Paris: Gallimard, 1909"
  - id: "degncrt51"
    short: "de Goncourt 1851"
    full: "de Goncourt, Edmond. *Journal des Goncourt: Mémoires de la vie littéraire.* Paris; G. Charpentier et cie, 1851."
```

{{< q-class "box tip" >}}
- By default, Quire will sort bibliographic entries alphabetically by the text of the `full` reference. In the event that you want to override alphabetical sorting, you can add a `sort_as` attribute to the YAML entry to change the ordering.
{{< /q-class >}}

These references can then be called individually from within text using the `{% cite %}` shortcode or they can appear in their entirety as a page of your publication by adding `layout: bibliography` to the page YAML. Both options are detailed below.

## Add In-text Citations

The `{% cite %}` shortcode adds a linked Author Date citation to your text. If you click the linked citation, a pop-up with the full reference will appear. The shortcode will also add a page-level bibliography as explained in the [Display a Bibliography](#display-a-bibliography) section below. The `{% cite %}` shortcode can be used anywhere in your Markdown text, including the footnotes.

{{< q-figure id="modern-citation-hover" >}}

{{< q-figure id="modern-bibliography-page" >}}

The in-text citation can include three values: `{% cite 'author date' 'page #' 'display text' %}`. They must appear in this specific order to work.

### Author Date

The first positional parameter of the `{% cite %}` shortcode is a short form citation that should match the `id` value in the `references.yaml`. The following example would output the link as: <u>Faure 1909</u>.

```md
{% cite 'Faure 1909' %}
```

### Page Number

The second optional parameter is a page number. The following example would output the link as: Faure 1909, <u>54</u>.

```md
{% cite 'Faure 1909' '54' %}
```

While the humanities tend to a favor a comma separation between the short form citation and the page number, the sciences more commonly use a colon. You change can which text element is used in the `content/_data/config.yaml` file.

```yaml
citations:
  divider: ', '
```

### Display Text

A third optional parameter allows you to customize what text appears in the the link rather than the short form of the citation. The following example would output the link as: 1909, <u>54</u>.

```md
{% cite 'Faure 1909' '54' '1909' %}
```

In using this third parameter, you still need to have the second parameter even if it’s empty. The following sample would output the link as: <u>1909</u>.

```md
{% cite 'Faure 1909' '' '1909' %}
```

## Display a Bibliography

In Quire projects you can include both page-level bibliographies and a complete bibliography for the entire publication.

Bibliographies can appear with or without the short form of the citation. This is controlled globally by the `displayShort` attribute found in the `content/_data/config.yaml`.  The default is set to `true`. If you only want to show the `full` references, change the value to `false`.

```yaml
  bibliography:
    displayShort: true
```

### Page-level Bibliography

Anytime you use the {% cite %} shortcode in a `.md` file, a page-level bibliography will automatically be added at the end.

A heading can be customized to go above this bibliography in your `content/_data/config.yaml` file. The default heading is "Bibliography".

```yaml
bibliography:
  heading: Bibliography
```

{{< q-class "box tip" >}}
- If entries are missing from your page-level bibliography or you see output in your command-line shell referencing missing entries, then there is most likely an incorrect or absent `{% cite %}` shortcode. The `id` used in the `{% cite %}` shortcode must exactly match the `id` in the `references.yaml` file for it to work.
{{< /q-class >}}

If you want to suppress the page-level bibliography but keep the in-text citations, go into the `content/_data/config.yaml` and change the value to `false`.

```yaml
  bibliography:
    displayOnPage: false
```

### Complete Bibliography

You can also create a complete bibliography for your entire publication from all the entries in the project's `references.yaml` file. To do this, create a `.md` file and add the `layout` type `bibliography` to the page YAML.

```YAML
title: Bibliography
layout: bibliography
order: 300
```

This will automatically create a bibliography for your publication. By default, your bibliography will automatically be ordered according to the `full` value in your `references.yaml` file unless the `sort_as` attribute has been applied.

{{< q-figure id="modern-bibliography" >}}
