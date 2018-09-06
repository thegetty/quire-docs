---
title: Contributors
weight: 210
type: essay
---

Quire is designed to credit and add contributors to publications in a flexible way. Contributors data is stored in the `publication.yml` file of your project or in the YAML block of individual pages. The `q-contributor` shortcode offers multiple options to display contributors data in your publication.

## Adding Contributors to Your Project

Contributors can be listed under `contributor` in your `publication.yml` file, or in the YAML block at the top of any page in your project for contributors specific to that page.

Each `contributor` should have a `type` specified of either `"primary"`, `"secondary"`, or `"project-team"`.

- **Primary** contributors are authors, editors and others who would appear on a publication’s cover or title page. In Quire {{< q-glossary "template" >}}s, they are typically used on the cover, the menu and in the [metadata embedded in your publication](/publication-configuration-metadata/); listed as the creators of the publication.

- **Secondary** contributors are not typically shown in the menu or cover, but are often included in book metadata, and may also be referenced by the `q-contributor` shortcode as noted below. In future iterations of Quire, we hope to be able to reference contributors listed here from individual pages.

- **Project team** contributors are those that worked on the publication (editors, designers, developers, and the like), and can be listed using the `q-contributor` shortcode, often on an *About* or *Copyright* page. Project team contributors are not otherwise included in publication metadata, or used in other Quire {{< q-glossary "template" >}}s.

[note] If your publication is a monograph you might add the main authors to the `contributor` attribute in `publication.yml`, while if the publication has essays written by different authors, these would be added to the `contributor` fields on each essay/page YAML block.  

Wherever they are listed (`publication.yml` or pages YAML block), the following YAML attributes can be used for your contributors:

```YAML
- id:
  type:
  first_name:
  last_name:
  full_name:
  file_as:
  title:
  affiliation:
  role:
  role_code:
  pic:
  url:
  bio:
```

Not all of these are required. Depending on your usage, you may need as little as  `first_name` and `last_name`, or just `full_name`. See the [`q-contributor` shortcode reference](/api-docs/shortcodes/#q-contributor) for details on each of the standard contributor attributes.

{{< q-class "box" >}}Contributors may also be listed in the `contributor_as_it_appears` field in your `publication.yml` file. This value will override the indivdual `primary_contributor`s listed on the cover, the menu and in the book metadata. Useful when you want to include specific language about their role. For example: "Edited by Jane Smith and John Doe". {{< /q-class >}}

## Displaying a List of Contributors

You can use the `q-contributor` shortcode to create a page of contributor biographies, a section of bios for a single page, a list of contributors, a byline for a particular page, or other similar applications. The shortcode requires both a `"range"` and a `"type"` value.

Sample: `{{</* q-contributors range="page" type="bio" */>}}`

The `"range"` value determines which contributors will be included in the list. Possible `"range"` values are:

| Value | Description |
| --- | --- |
|`page` | Only the contributors listed for the page the shortcode appears on. |
| `essays` | Contributors on any page in your publications with `type: essay`. |
| `all` | All contributors. |
| `primary` | Contributors listed under `contributor` in your `publication.yml` file, and with a `type` of `"primary"`. |
| `secondary` | Contributors listed under `contributor` in your `publication.yml` file, and with a `type` of `"secondary"`. |
| `project-team` | Contributors listed under `contributor` in your `publication.yml` file, and with a `type` of `"project-team"`. |

The `"type"` value determines what information will be listed for each contributor in the `"range"`, and how it will be formatted. Possible `"type"` values are:

| Value | Description |
| --- | --- |
|`initials` | Looks for the capital letters in a contributor first and last name and concatenates them together. Jane Pauley, becomes J.P.; Ralph Waldo Emerson becomes R.W.E. |
| `name` | Just the first and last name. |
| `name-plus` | The first and last name with, when available, their title and affiliation on a line below. |
| `bio` | First and last name, with pic, url, and bio as available. Plus a link to their contribution. |

There are some gotchas and limitations to the `q-contributor` shortcode:

- This shortcode can be used multiple times on a page, but ONLY if the same range is referenced.

- You can use a `file_as` value to control sort order. Otherwise lists are sorted alphabetically by `last_name`. If you wanted, for example, a list of essay contributors ordered in the way they are ordered in the page YAML block, you could assign a numeric `file_as` value to each (1, 2, 3 etc.). Note though that this `file_as` override will cary over to other uses of the shortcode. For example, a complete list of contributors at the end of a volume of collected papers.

- If a contributor is listed in many papers, the information in last listing will override all the others.

- Contributors with the same exact name will override each other. But using a `file_as` value would fix this (that value wouldn't show up in the interface). For example, if there are two Jane Smiths, assigning a `file_as` value of "Smith, Jane 1" to one and "Smith, Jane 2" will sort them in that order, but their names would still be listed as Jane Smith.
