---
title: Contributors
weight: 5300
type: essay
abstract: "Credit and include multiple contributors"
---

Quire is designed to credit and add contributors to publications in a flexible way. Contributors' data is stored in the `publication.yml` file of your project or in the YAML block of individual pages. The `q-contributor` shortcode offers multiple options to display contributors' data in your publication. As a reminder, a shortcode is a simple snippet of code inserted in a Markdown file that pulls in information from other files in your project.

## Add Contributors to Your Project

Contributors can be listed under `contributor` in your publication.yml file, or, for contributors specific to a page in your project, in the YAML block at the top of that page.

At minimum, each contributor must have a `first_name` and `last_name`, or just `full_name`. In addition to these, wherever they are listed (publication.yml or pages YAML block), the following YAML attributes can be used for your contributors:

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

## Display Contributors on Your Cover

Any contributor listed in your publication.yml file that has a `type: primary` will be considered a main author for your project and will be listed on the cover page, in the site menu, and in the metadata included in the project code. For publications with more than one author, names will be listed in the order they appear in the publication.yml file.

If the primary authors are editors of the book, you can specify that with `role: editor`.

Sometimes, rather than a plain list, you may want your contributors listed in a particular way. Such as, “Edited by Author Name and Author Name”. In these cases, you can add your custom text in the publication.yml file under `contributor_as_it_appears` which can also take Markdown and HTML tags as needed.

```yaml
contributor_as_it_appears: as told by Beyoncé, Kelly Rowland,
  and Michelle Williams <br /> *with an introduction by Diana
  Ross*
```

{{< q-figure id="modern_contributors-cover" >}}

While the `contributor_as_it_appears` value will override any contributor information otherwise listed, it is still recommended that you list the individual authors under the `contributor` area in your YAML, as this will be used as metadata for your book and will aid search engines and social media sites in discovering and listing your site.

## Display Contributors on Individual Pages

Individual pages in your publication can have specific authors. Add them to the page YAML either with their names and other information, or by using an `id` that references a corresponding listing in your publication.yml file.


```YAML
title: Introduction
type: page
contributor:
  - first_name: Kelly
    last_name: Roland
```

```YAML
title: Introduction
type: page
contributor:
  - id: kroland
```

### Contributors in the Page Heading

For most [page types](/documentation/pages/#defining-page-types), you will see in previewing your site that contributors to a page will be automatically listed at the top of the page just under the title, in the order they appear in the YAML. By default, they will appear with their names and, if given, their titles and affiliations. You can override this by specifying a new value either on a page-by-page basis, or globally.

On an individual page, in the page YAML:

```yaml
contributor_byline: name-title # name | name-title | false
```

For the entire publication, in the config.yml file:

```yaml
contributorByline: name-title # name | name-title | false
```

{{< q-figure id="modern_contributors-page" >}}

While `name-title` is the default (and will be used if no value is specified), `name` will omit any title or affiliation information, and `false` will remove the contributor listing from the heading of the page altogether.

{{< q-class "box tip" >}}

- If you specify `contributorByline: false` you can still have names appear on individual pages by specifying either `contributor_byline: name-title` or `contributor_byline: name` on that page.

{{< /q-class >}}

Just as with the cover, if you want to display the contributors in a particular way, such as “Translated by Author Name”, you can do so by specifying a `contributor_as_it_appears` value in the page YAML.

### Contributors Elsewhere on the Page

You can also add lists of contributors to the main body of a page using the `q-contributor` shortcode. This allows you to create a page of contributor biographies, a section of bios for a single page, a list of contributors, a byline for a particular page, or other similar applications.

The shortcode requires both a `"range"` and a `"format"` value, and allows for an optional  `"align"` value as well.

Sample: `{{</* q-contributor range="page" format="bio" align="right" */>}}`

The `"range"` value determines which contributors will be included in the list. Predefined `"range"` values are:

| Value | Description |
| --- | --- |
|`page` | Only the contributors listed for the page the shortcode appears on. |
| `all` | All contributors listed in the publication, whether listed on individual pages or in the publication.yml file. |

You can also use any contributor `type` you define. So if you give a contributor a `type: primary` (such as for your main publication authors, as discussed in the [“Displaying Contributors on Your Cover”](#displaying-contributors-on-your-cover)), then a shortcode using `range="primary"` will list any of your project’s primary contributors.

The `"format"` value determines what information will be listed for each contributor in the `"range"`, and how it will be formatted. Possible `"format"` values are:

| Value | Description |
| --- | --- |
|`initials` | Looks for the capital letters in a contributor first and last name and combines them together. Jane Pauley becomes J.P.; Ralph Waldo Emerson becomes R.W.E. |
| `name` | Just the name. |
| `name-title` | The name and, when available, the title and affiliation; on a single line |
| `name-title-block` | The name and, when available, the title and affiliation; broken onto separate lines. |
| `bio` |  The name and, when available, a picture, offsite link to their personal site, and a bio. Plus links to any individual pages in the project for which they are listed as a contributor. |


{{< q-figure id="modern_contributors-name-title-block" >}}

{{< q-figure id="modern_contributors-initials" >}}

{{< q-figure id="modern_contributors-bio" >}}


The `"align"` value will align the text. If no value is given, text alignment will default to the left. The possible values are:

| Value | Description |
| --- | --- |
|`left` (default) | Align the names and text to the left. |
| `center` | Align the names and text in the center. |
|`right` | Align the names and text to the right. |

See the [`q-contributor` shortcode reference](/documentation/for-developers/#shortcodes-api) for details on each of the standard contributor attributes.

#### Sort Contributor Lists

Using the shortcode, contributors will be listed alphabetically. Either by `last_name` `first_name` if given, or `full_name`. You can specify a `file_as` value for contributors to override the default sorting.

If you wanted, for example, a list of essay contributors ordered in the way they are ordered in the page YAML block, you could assign a numeric `file_as` value to each (1, 2, 3 etc.). Note, though, that this `file_as` override will carry over to other uses of the shortcode. For example, a complete list of contributors at the end of a volume of collected papers.

{{< q-class "box warning" >}}

- Contributors with the same name will override each other and only one will appear, but using a `file_as` value would fix this. For example, if there are two Jane Smiths, assigning a `file_as` value of "Smith, Jane 1" to one and "Smith, Jane 2" will sort them in that order, but their names would still be listed as Jane Smith.

{{< /q-class >}}

## Include Contributors for Search Engines

Contributor information is also embedded in Quire projects in a way that is optimized for search engine discovery. Here are a few tips to take advantage of this feature:

- List your project’s main authors in the publication.yml file and give them a `type: primary`
- List other contributors (like authors of individual papers) in the publication.yml file and give them a `type: secondary`.
- Whenever using the `contributor_as_it_appears` value (which overrides how contributors are listed on the cover or on individual pages) still include a list of the individual contributors in your YAML. This is especially true for your overall publication, and any pages that have a `type: essay`, the metadata for which is structured to pay particular attention to the authors.
