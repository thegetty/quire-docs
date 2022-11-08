---
title: Citations & Bibliographies
weight: 6260
type: essay
abstract: "Cite sources with pop-ups and generate reference lists"
---

In-text citations and bibliographies are all available in Quire. Designed to meet scholarly needs and multiple citation styles, they are easy to implement in your publications. Bibliographic references are formatted in YAML and stored in a YAML file (you can consult our [YAML syntax fundamentals](/docs-v1/fundamentals/) for more information) while citation and bibliography {{< q-def "shortcodes" >}} are used to integrate these references in your publication.

## Capture Bibliographic Information in YAML

Bibliographic references for your publication should be listed in a `references.yaml` file in the `content/_data/` directory.

Each entry in the `references.yaml` file must include the `full` form of the reference and an `id` that will be used in your citation shortcode.

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
- By default, Quire will sort bibliographic entries alphabetically by the text of the `full` reference. However, in the event that you want to override alphabetical sorting add a `sort_as` attribute to the YAML entry to change the ordering.
{{< /q-class >}}

These references can then be called individually from within text using the `{% cite %}` shortcode, or in their entirety as a generated bibliography using the `{% bibliography %}` shortcode. Both are detailed below.

## Add In-text Citations

The `{% cite %}` shortcode adds a linked Author Date citation with a hover over pop-up with the full reference to your text. It also adds the citation to a page-level bibliography as explained [in the Display a Bibliography section](#display-a-bibliography). The `{% cite %}` shortcode can be used anywhere in your Markdown text, including the footnotes.

{{< q-figure id="modern-citation-hover" >}}

{{< q-figure id="modern-bibliography-page" >}}

This citation can include three values: `{% cite 'author date' 'page #' 'display text' %}`.

### Author Date

The first positional parameter of the `{% cite %}` shortcode is a short form citation that should match the `id` value in the `references.yaml`. The following sample would output the link as: <u>Faure 1909</u>.

```md
{% cite 'Faure 1909' %}
```

### Page Number

The second optional parameter is a page reference. The following sample would output the link as: Faure 1909, <u>54</u>.

```md
{% cite 'Faure 1909' '54' %}
```

### Display Text

A third optional parameter allows you to customize what text appears in the the link rather than the short form of the citation. The following sample would output the link as: 1909, <u>54</u>.

```md
{% cite 'Faure 1909' '54' '1909' %}
```

In using this third parameter, you still need to have the second parameter even if it’s empty. The following sample would output the link as: <u>1909</u>.

```md
{% cite 'Faure 1909' '' '1909' %}
```

{{< q-class "box tip" >}}
- The text element between the in-text citation and the page can be changed in the `content/_data/config.yaml` file. The humanities tend to favor comma separation (which is the default in Quire), whereas the sciences typically favor a colon.
```yaml
citations:
  divider: ', '
```
{{< /q-class >}}

## Display a Bibliography

In Quire projects you can include both page-level bibliographies and a complete bibliography for the entire publication.

Both bibliography styles can appear in either a full or short format. This is controlled globally by the `displayShort` attribute found in the `content/_data/config.yaml`.  The default is set to `true`. If you want to list the references in full, change the value to `false`.

```yaml
  bibliography:
    displayShort: true
```

### Page-level Bibliography

If you are using in-text citations your publication will automatically include a page-level bibliography listing all works that were cited on that page using the `{% cite %}` shortcode.

If a publication appears to have missing bibliographic entries there is most likely an incorrect or missing `{% cite %}` shortcode in the essay end notes. The `id` used in the `{% cite %}` shortcode must exactly match the `id` in the `references.yaml` files.

If you want to suppress the page level bibliography but keep the in-text citations, go into the `content/_data/config.yaml` and change the value to `false`:

```yaml
  bibliography:
    displayOnPage: false
```

If you do not want to use in-text citations but still want to include a page-level bibiliography you have a two options:

- Add a page-level biblio using Markdown
- List the relevant IDs from the `references.yaml` file in the page YAML. Keep in mind, this may be unwieldy if there are a lot of references. You would then use the `{% bibliography %}` shortcode to add the page-level bibliography at the end of the essay.

```yaml
title: Chapter Title
weight: 10
layout: page
references:
  - "West 1939"
  - "Evans 1938"
  - "Lynd 1929"
```

For the latter option, the order they’re listed in doesn’t matter. Quire will sort them all alphabetically unless a `sort_as` attribute has been added in the `references.yaml` file.

### Complete Bibliography

Additionally, to create a complete bibliography for your entire publication, from all the entries in the project's `references.yaml` file, you would add a `bibliography.md` file to your `content` directory. Then insert the `{% bibliography %}` shortcode to this `.md` file. The resulting bibliography will be output as a page in your publication. By default, your bibliography will automatically be ordered according to the `full` value in your `references.yaml` file unless the `sort_as` attribute has been applied.

{{< q-figure id="modern-bibliography" >}}

A heading can be customized to go above the page bibliography in your `content/_data/config.yaml` file. The default heading is "Bibliography".

```yaml
bibliography:
  heading: Bibliography
```
