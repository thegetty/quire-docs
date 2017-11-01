---
title: Shortcodes
type: page
---

## `q-backmatter`

Sample: `{{< q-backmatter >}}The text you want formatted here.{{< /q-backmatter >}}`

Basic Usage: Wrapping text in `q-backmatter` will format the text in a manner similar to how footnotes and bibliographies are formatted. Good for sections at the end of essays like Appendices, Acknowledgments, and Contributors Bios.

Parameters: None.

YAML Dependencies: None.

See: [Working with Text](text/index.html)

## `q-bibliography`

See: [Citations & Bibliographies](bibliographies/index.html)

## `q-cite`

See: [Citations & Bibliographies](bibliographies/index.html)

## `q-contributors`

Sample: `{{< q-contributors range="page" type="bio" >}}`

Basic Usage: Can be used to create a page of contributor biographies, a section of bios for a single page, a simple list of contributors, or a byline for a particular page.

Required Named Parameters: "range" and "type"

### type

| Expected Value | Description |
| --- | --- | --- | --- |
| "initials" | Looks for the capital letters in a contributor first and last name and concatenates them together. |
| "name" | Just the first and last name. |
| "name-plus" | The first and last name with, when available, their title and affiliation on a line below. |
| "bio" | First and last name, with pic, url, and bio as available. Plus a link to their contribution. |

### range

| Expected Value | YAML Location | Description |
| --- | --- | --- |
| "page" | `.Page.Params.contributor` | In the current Page under `contributor` |
| "essays" | `.Site.Pages.Params.contributor` | In any Page with a `type: essay` under `contributor` |
| "all" | `.Site.Pages.Params.contributor` | In all Pages under `contributor` |
| "primary" | `.Site.Data.publication.primary_contributor` | In `publication.yml` under `primary_contributor` |
| "secondary" | `.Site.Data.publication.secondary_contributor` | In `publication.yml` under `secondary_contributor` |
| "publication-team" | `.Site.Data.publication.publication-team` | In `publication.yml` under `publication-team` |

YAML Structure:

| YAML Attribute | Required | Notes
| --- | --- | --- |
| Either both `first_name` and `last_name`, OR `full_name` | Y | If all are included, `full_name` will override the others. |
| `title` | N |  |
| `affiliation` | N |  |
| `role` | N | When the shortcode range is "publication-team", `role` is used in place of `title` |
| `bio` | N | Markdown okay |
| `url` | N |  |
| `pic` | N | Filename only. File must be in the top level image director, or in a sub-directory defined in `config.yml` with `contributorSubDir`. |

See: [Contributors](contributors/index.html)

## `q-copyright`

Sample: `{{< q-copyright >}}`

Basic Usage: The `q-copyright` shortcode, adds a copyright statement and licensing information as you’ve defined it in your `publication.yml` file. Commonly used on Copyright and About pages. The shortcode itself makes use of the `copyright.html` partial in your site templates.

Parameters: None.

See: [Copyright & About Pages](copyright/index.html)

## `q-figure`

See: [Figures](figures/index.html)

## `q-figure-group`

See: [Figures](figures/index.html)

## `q-link-list`

Sample: `{{< q-link-list "other-formats" >}}`

Basic Usage: Creates an unordered list of links. Makes use of the `link-list.html` partial in the site templates.

Parameters:

| Parameter Position | Expected Value | Description |
| --- | --- | --- |
| 0 * | "other-formats", "related-resources" | Values point to corresponding values in `publication.yml` |

Parameters are not named, but instead defined by their position, starting at 0.

See: [Copyright & About Pages](copyright/index.html)

## `q-loc`

Sample: `{{< q-loc >}}`

Basic Usage: Adds formatted Library of Congress Cataloging-in-Publication Data to the page, from values in `publication.yml`.

Parameters: None

See: [Copyright & About Pages](copyright/index.html)

## `q-publisher-team`

Note: this should be folded into the `q-contributor`.

## `q-revision-history`

Sample: `{{< q-revision-history >}}`

Basic Usage: Adds a revsion history to the page, based on values in `publication.yml`.

| Named Parameters | Expected Value | Description |
| --- | --- | --- |
| format | "short", "full" | "short" will show only the first publication date and most recently updated date. "long" shows all dates and list of changes for each.  |

See: [Copyright & About Pages](copyright/index.html)

## `q-table`

See: [Figures](figures/index.html)

## `q-url-link`

See: [Working with Text](text/index.html)
