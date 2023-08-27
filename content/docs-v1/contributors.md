---
title: Contributors
weight: 6320
type: essay
abstract: "Credit and include multiple contributors"
aliases:
  - /documentation/contributors/
---

Quire is designed to credit and add contributors to publications in a flexible way. Contributor data is stored in the `publication.yaml` file of your project or in the page YAML on individual pages. You can then use the `{% contributors %}` shortcode to display contributor data in your publication. As a reminder, a shortcode is a simple snippet of code inserted in a Markdown file that pulls in information from other files in your project.

## Add Contributors to Your Project

Contributors can be listed under `contributor` in your `publication.yaml` file. Contributors that are specific to a page in your project can also be listed in the page YAML at the top of that particular page. For volumes with a large number of contributors of individual papers or essays, it is common practice to put information about the primary, credited authors in the `publication.yaml` file, and the information about the individual authors in the page YAML of their respective contributions.

At minimum, each contributor must have a `first_name` and `last_name`, or just `full_name`. In addition to these, wherever they are listed (`publication.yaml` or page YAML), the following attributes can be used for your contributors:

```YAML
- id:
  type:
  role:
  first_name:
  last_name:
  full_name:
  file_as:
  title:
  affiliation:
  pic:
  url:
  bio:
```

Quire looks for `type: primary` and `type: secondary` as a way to distinguish between the project’s primary and secondary authors, or in metadata terms, the "creators" versus the "contributors". You can also define your own custom `type` for use with the `{% contributors %}` shortcode (described below), or for other custom needs.

## Format Contributors on Your Cover

Any contributor listed in your `publication.yaml` file that has a `type: primary` will be considered a main author for your project and will be listed on the cover page, in the site menu, and in the metadata included in the project code. For publications with more than one author, names will be listed alphabetically.

If the primary authors are editors of the book, you can specify that with `role: editor`.

Sometimes, rather than a plain list, you may want your contributors listed in a particular way. Such as, “Edited by Author Name and Author Name”. In these cases, you can add your custom text in the `publication.yaml` file under `contributor_as_it_appears` which can also take Markdown and HTML tags as needed.

```yaml
contributor_as_it_appears: as told by Beyoncé, Kelly Rowland,
  and Michelle Williams <br /> *with an introduction by Diana
  Ross*
```

{{< q-figure id="modern_contributors-cover" >}}

While the `contributor_as_it_appears` value will override any contributor information otherwise listed, it is still recommended that you list the individual authors under the `contributor` area in your `publication.yaml`, as this will be used as metadata for your book and will aid search engines and social media sites in discovering and listing your site.

## Display and Format Contributors in Page Headers

Individual pages in your publication can have specific authors. Add them to the page YAML either with their names and other information, or by using an `id` that references a corresponding listing in your `publication.yaml` file.

```YAML
title: Introduction
layout: page
contributor:
  - first_name: Kelly
    last_name: Roland
```

```YAML
contributor:
  - full_name: Kelly Roland
```

```YAML
contributor:
  - id: kroland
```

For most [page types](/docs-v1/pages/#define-page-types), contributors to the page will be automatically listed at the top of the page just under the title. By default, they will appear with their names and, if given, their titles and affiliations (the `name-title` format). You can change this by specifying a different format either globally or on a page-by-page basis.

| Format       | Display |
| ------------ | ------ |
| `name-title` | Name, title, and affiliation |
| `name`       | Name only |
| `false`      | Nothing |

The byline format is set globally for the entire publication in the `content/_data/config.yaml` file:

```yaml
bylineFormat: name-title
```

It can be overridden on individual pages in the page’s YAML:

```yaml
byline_format: false
```

{{< q-figure id="modern_contributors-page-v1" >}}

{{< q-class "box tip" >}}

- If you specify `bylineFormat: false` in the `config.yaml` you can still have names appear on individual pages by specifying either `byline_format: name-title` or `byline_format: name` on that page.

{{< /q-class >}}

Just as with the cover, if you want to display the contributors in a particular way, such as “Translated by Author Name”, you can do so by specifying a `contributor_as_it_appears` value in the page YAML. This value will also override the output of the `{% contributors %}` shortcode (see below) if it is used on the page.

### List Contributors Within a Page Using the `{% contributors %}` Shortcode

You can also add lists of contributors to the main body of a page using the `{% contributors %}` shortcode. This allows you to create a page of contributor biographies, a section of bios for a single page, a list of contributors, a byline for a particular page, or other similar applications.

The shortcode requires both a `context` and a `format` value, and allows for optional `type` and `align` values as well.

Here is an example of a shortcode that would list all the publication's main authors on a single page, for example a `contributors.md` file:

```tx
{% contributors context=publicationContributors type='primary' format='bio' %}
```

Here is an example of a shortcode that would list all the authors for an essay on that essay page:

```tx
{% contributors context=pageContributors format='name-title-block' align='right' %}
```

#### List Contributors from the Page or the Entire Publication

The `{% contributors %}` shortcode can list contributors from the page it’s used on, or from across the entire publication. This is specified with the `context` value, which is required. The allowed `context` values are:

| Value | Description |
| --- | --- |
|`pageContributors` | Only the contributors listed for the page the shortcode appears on. |
|`publicationContributors` | All contributors listed in the publication, whether listed on individual pages or in the `publication.yaml` file. |

{{< q-class "box warning" >}}
- Note that unlike all other shortcode values, the value for `context` never appears in quotes within the shortcode. It should be `context=pageContributors`, not `context='pageContributors'`.
{{< /q-class >}}

### Choose a Format for the Contributors List

The `format` value determines what information will be listed for each contributor in the `context`, and how it will be formatted. Possible `format` values are:

| Value | Type | Description |
| --- | --- | --- |
| `bio` |  block | The name and, when available, a picture, offsite link to their personal site, and a bio. Plus links to any individual pages in the project for which they are listed as a contributor. |
|`initials` | inline | Looks for the capital letters in a contributor first and last name and combines them together. Jane Pauley becomes J.P.; Ralph Waldo Emerson becomes R.W.E. Multiple names will be listed with commas, ie. "R.W.E, J.P, and K.R.". |
| `name` | block | Just the name. |
| `name-title` | block | The name and, when available, the title and affiliation; on a single line |
| `name-title-block` | block | The name and, when available, the title and affiliation; broken onto separate lines. |
| `string` | inline | Just the name. Multiple names will be listed with commas, ie. "Name, Name, and Name". |

Formats that are a "block" type will display on their own lines in a `<ul>` (unordered list) block element. Those that are "inline" type will display within running text in a `<span>` inline element, *or* when put on their own lines in the Markdown, the `<span>` will be wrapped in a `<p>` (paragraph) block element.
 
{{< q-figure id="modern_contributors-name-title-block" >}}

{{< q-figure id="modern_contributors-initials" >}}

{{< q-figure id="modern_contributors-bio" >}}

### List Only a Subset of Contributors

While the `{% contributors %}` shortcode will list contributors from the page or the publication based on the `context` as described above, you can choose to list only a subset of those contributors based on their `type`. For example, if you give a contributor a `type: primary` (such as for your main publication authors as described above), then a shortcode using `type='primary'` will list only your project’s primary contributors.

You can use any value for `type` that you’d like and it will work in the shortcode.

### Customize the Alignment of the Text

The `align` value will align the text. If no value is given, text alignment will default to the left. The possible values are:

| Value | Description |
| --- | --- |
|`left` (default) | Align the names and text to the left. |
| `center` | Align the names and text in the center. |
|`right` | Align the names and text to the right. |

{{< q-class "box warning" >}}
- The `align` value will have no affect on on the "inline" formats described above: `initials` and `string`.
{{< /q-class >}}

#### Sort Contributor Lists

Contributors are listed alphabetically by default, either according to `last_name`,`first_name` if given, or `full_name`. To override the default alphabetical sorting, you can specify a `sort_as` value for contributors in your `publication.yaml`. For example, `sort_as: "1"`, `sort_as: "2"` etc. Note that this `sort_as` override will carry over to other uses of the shortcode throughout your publication.

You can also use the `sort_as` attribute within your page YAML to sort authors on a page-level basis.

```yaml
---
label: "Chapter 1"
title: "A Destiny Written"
layout: essay
order: 120
contributor:
  - first_name: "Kelly"
    last_name: "Rowland"
    sort_as: "2"
  - first_name: "Michelle"
    last_name: "Williams"
    sort_as: "1"
  - fullname: "Beyonce"
    sort_as: "3"
---
```

{{< q-class "box warning" >}}

- Contributors with the same name will override each other and only one will appear, but using a `sort_as` value would fix this. For example, if there are two Jane Smiths, assigning a `sort_as` value of "Smith, Jane 1" and "Smith, Jane 2" will sort them in that order, but their names would still be listed as Jane Smith.

{{< /q-class >}}
