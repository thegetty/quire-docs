---
title: Helpful Tools
weight: 6100
type: essay
---
## Cheatsheet

### Markdown

Paragraphs are made by adding two hard returns. When working in a text editor, depending on your configuration and the source of your text, lines might have hard breaks, or might all flow together. This is seen in the example below where the first paragraph has hard breaks and the second does not. In Markdown, these will both render as single paragraphs with no hard breaks. The only way to add a hard break in markdown is with the HTML break (`<br />`) element.

```md
Lorem ipsum dolor sit amet, consectetur
adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud
exercitation ullamco laboris nisi ut
aliquip ex ea commodo consequat.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
```

Other typical Markdown formatting is listed below. Note that the spacing after the `#`, `>`, `-` and list numerals is necessary.


```md
# Heading 1
## Heading 2
### Heading 3
#### Heading 4

*Italic Text*
**Bold Text**

> Blockquote

[Link Text](http://www.linkadress.com)

- dashes make
- a list with
- bullets
  - indenting
  - makes
  - sub-lists

1. numbers make
2. a list with
3. numbers
```

### YAML

In a Quire publication, anything that could be considered data, is written in a plain-text data format called [YAML](http://yaml.org/).

- YAML is used for configuring how Quire works and for providing metadata about your publication in files with the extension `.yml` (both topics covered in [Metadata & Configuration](/guide/metadata-configuration/)).

- `.yml` files are also used for storing information about figures, bibliographic references, and art objects.

- In individual pages or chapters within the publication, written in Markdown and with a `.md` extension, there is a YAML block that contains the page metadata. For example the YAML block for the page you’re on right now is:

```yaml
---
title: Cheatsheet
type: page
---
```

#### YAML


```yaml
item:
other_item:
multiple_items:
  - item_name:
    item_description:
  - item_name:
    item_description:
```

```yaml
item: "If the text here has a colon : or other special characters it should be surrounded in double quotes"
```

```yaml
item: |
  Using a pipe character, and then dropping down a line and indenting like this allows you to include multiple paragraphs, just as you would in Markdown.

  Not all Quire YAML attributes expect Markdown though, so check the docs.

  - Markdown style lists
  - and other formatting are
  - also allowed
```

[YAML Lint](http://www.yamllint.com/)
[Code Beautify validator](https://codebeautify.org/yaml-validator)


### Shortcodes

```go
{{</* q-figure id="##" */>}}

{{</* q-figure-group id="##, ##, ##" */>}}

{{</* q-cite "Lastname YYYY" */>}}

{{</* q-bibliography */>}}

{{</* q-contributor range="xxxx" type="xxxx" */>}}

```

## Default Style Guide

### Markdown

{{< q-figure id="1.14" >}}

### Visual Output in Quire

{{< q-figure id="1.15" >}}


## Sample publication.yml file

```yaml
# ==============================================================================
# Publication.yml
# ------------------------------------------------------------------------------
#
# This file houses the bibliographic info and general metadata for your digital
# publication.

# ------------------------------------------------------------------------------
# Title & Description
# ------------------------------------------------------------------------------

title:
subtitle:
reading_line:
short_title:

description:
  one_line:
  full:
  online:
  pdf_ebook:

promo_image:

# ------------------------------------------------------------------------------
# Publication Details
# ------------------------------------------------------------------------------

url:
pub_date:
language:
pub_type: # book | journal-periodical | other

identifier:
  isbn:
  issn:
  doi:
  uuid:

series_periodical_name:
series_issue_number:

publisher:
  - name:
    location:
    url:

# ------------------------------------------------------------------------------
# Contributors
# ------------------------------------------------------------------------------

contributor_as_it_appears:

contributor:
  - id:
    type: # primary | secondary | project-team
    first_name:
    last_name:
    full_name:
    file_as:
    title:
    affiliation:
    role:
    role_code:
    bio:
    url:
    pic:

# ------------------------------------------------------------------------------
# Copright & License
# ------------------------------------------------------------------------------

copyright:

license:
  name:
  abbreviation:
  url:
  icon:
  scope: # full | text-only | some-exceptions
  online_text:
  pdf_ebook_text:

# ------------------------------------------------------------------------------
# Formats, Resources & Links
# ------------------------------------------------------------------------------

resource_link:
  - type: # other-format | related-resource | footer-link
    name:
    url:
    link_relation:
    media_type:
    identifier:
      isbn:
      issn:
      doi:
      uuid:
    icon:

# ------------------------------------------------------------------------------
# Subjects
# ------------------------------------------------------------------------------

subject:
  - type: # keyword | bisac | getty
    name:
    identifier:

library_of_congress_cip_data:

# ------------------------------------------------------------------------------
# Revision History
# ------------------------------------------------------------------------------

revision_history:
  - date:
    summary:

repository_url:

```
