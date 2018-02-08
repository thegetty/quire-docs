---
title: Publication Configuration & Metadata
type: page
---

## YAML

In a Quire publication, anything that could be considered data, is written in a plain-text data format called [YAML](http://yaml.org/). YAML is used for configuring how Quire works and for providing metadata about your publication in files with the extension .yml (both topics covered below). It does the same for individual pages or chapters within the publication (written in Markdown and with a .md extension), and is also used for storing information about figures, bibliographic references, and art objects (files that use the extension .yml).

The YAML for the page, written in markdown, you’re on right now is:

```yaml
title: "Publication Configuration & Metadata"
type: page
```

YAML entries can be in any order. You’ll also notice that YAML values don’t necessarily need to be in quotes. `title: My Chapter`, without My Chapter in quotes, works just fine. However, certain formatting and characters (like colons within the text, or lines leading off with asterisks meant to italicize some of the text) can cause issues. In these cases, double quotes can minimize build issues: `title: "My Chapter"`.

Anything at all can go within double-quotes, except for other double-quotes. If you need double-quotes, use “curly quotes”, use a backslash to escape the double quote \" or Hugo will also process two single straight quotes '' as a double when building the pages.

Dashes represent individual items in a list. In the example below, there are two contributors, each with a first and last name. Note too, indentations matter in YAML.

```yaml
contributor:
  - first_name:
    last_name:
  - first_name:
    last_name:    
```

YAML can include multiple, markdown-style paragraphs by using a pipe character, dropping down a line, and indenting one level. This can be used in areas like captions, descriptions, and abstracts.

```yaml
description: |
  This is the first paragraph

  This is the second.
```

Finally, it’s also always a good idea to copy and paste your YAML blocks into a validator like [YAML Lint](http://www.yamllint.com/) to make sure there aren’t any hidden errors. You don’t need to use the re-formatted YAML validators like this will sometimes give back to you, you just need to make sure it’s correctly formatted.

## Config YAML

The `config.yml` file is a standard and required file for Hugo, and so also for Quire. In Quire, it is used expressly for configuring how Hugo operates, and for defining a number of key values used in Quire templates. Users who have worked on other non-Quire Hugo projects will note that those typically use the `config.yml` file to also store publication metadata. Given the potentially large scope of this kind of metadata in formal digital publications, Quire instead uses `publication.yml` file inside the `data` directory for that purpose (see below).

The properties in the `config.yml` file are individually documented in the [API/Docs section](../api-docs), however, a few key items to note:

- While Quire exclusively uses the `title` value as defined in your `publication.yml` file, other Hugo projects require a `title` value in the `config.yml` file, so it is a good idea to include it here as well.

- The `theme` value should match the name of the folder in the `/themes` directory that contains your theme files; if you've copied the default theme and given it a different name make sure to update the value here too.

- The `params` section includes a number of values specific to various Quire layout templates and shortcodes. All are provided with default values, and should be changed with care. In cases where a value should be deleted entirely, it is usually best to leave it as empty double quotes (`""`) rather than completely deleting it.

## Publication YAML

The `publication.yml` file in the `/data` directory is *the* source of metadata for your publication. While the only value that is truly required is `title`, it is a good idea to fill out the `publication.yml` file as completely as possible. Many of the properties are used in the metadata which is automatically included in the underlying code of every page of the online edition of your publication to support search engine optimization (SEO) and general discovery.

Some key areas are summed up below, and match headings in the `publication.yml` file itself, but there is also detailed documentation of individual properties in the [API/Docs section](../api-docs) of this guide.

### Title & Description

Of the possible values in this section, `title`, and the optional `subtitle` and `reading_line` are the most important. If your title is particularly long, the `short_title` attribute can be used to provide an alternative for the navigation elements of the online book where long titles will otherwise be truncated.

It is also a good idea to include both `one_line` and `full` descriptions as these are used in the publication SEO metadata and often on the Cover and About or Copyright pages.

### Publication Details

`url`, `pub_date`, and `language` should be filled out. `url` should be the final URL where your publication will live (its permalink) and should include `http://` or `https://` as appropriate. `pub_date` must follow a YYYY-MM-DD format (the ISO 8601 format) and should be the projected final publication date. Lastly, `language` should be a [2-letter ISO 639-1 language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) (English is en, and is the default).

There’s an optional `pub_type` attribute as well that can be "book", "journal-periodical", or "other". If "book", it is recommended you also include an [ISBN](https://www.isbn.org/) as a standard identifier. And if "journal-periodical", include information for the [ISSN](http://www.issn.org/), `series_periodical_name`, and `series_issue_number` attributes if possible. Both ISBN and ISSN are to consider if you want libraries to catalog your publication. Identifiers are added as below. Along with `isbn` and `issn`, `doi` and `uuid` are also supported. DOIs are widely used in academic contexts to support citation.

```yaml
identifier:
  isbn: 978-1-12345-678-9
  uuid: 4a1b423d-6d5a-469b-bd5f-b498182ad6ca
```

Note that the `isbn` and `issn` identifiers used here are for the online edition specifically. Identifiers for other specific editions (PDF/Print, EPUB, and MOBI) can be defined separately with the appropriate `resource_link`. See the “Formats, Resources & Links” section below for more.

Lastly, Quire supports publications with multiple publishers, but at least one `publisher` should be listed with a `name`, `location` and `url`. In particular this is used in the citation features as well as in search engine metadata.

### Contributors

Every publication should have at least one `contributor`. Contributors can have one of three `type`s: "primary", "secondary", or "project-team". The "primary" contributors are those that would show up on the Cover, Menu and Title Page of a publication, and may include authors, editors, translators and others. Contributors should, at a minimum, be listed with a `first_name` and `last_name` (or alternately just a `full_name`). Read more in [Contributors](content/guide/contributors.md).

An optional `contributor_as_it_appears` field allows for more fine-grained control in the way contributors are listed. It could be, for example, something like "Edited by Rose Valland and Denis Diderot". Even when using `contributor_as_it_appears` though, the contributors should still also be individually listed as contributors (with a `type` of "primary") for search engine legibility.

The editors, designers and developers and others who worked on the title may be listed as contributors with a `type` of "project-team". This information is usually then listed on the About and Copyright pages of the publication.

### Copyright & License

You should include a `copyright` line for your publication, and optionally `license` information if you are distributing the publication open access.

A simple copyright statement would typically be formatted as "© 2018 Author Name". However, the `copyright` attribute does support markdown formatting to allow for multiple paragraphs and other formatting.

Open access licensing typically means applying [one of seven Creative Commons licenses](https://creativecommons.org/share-your-work/licensing-types-examples/licensing-examples/) to your publication. This is in addition to your copyright statement. An open license does not replace or supersede copyright in a work, it instead says that the copyright holder is licensing (allowing) others to make use of the work in an open way.

To use a Creative Commons license fill in the `name`, `abbreviation`, `url`, and `scope` attributes. `scope` should be either "full", "text-only" or "some-exceptions" and will determine the way the license is worded on your site. To override the wording and link language use the `online_text` and `pdf_ebook_text` attributes.

If the `abbreviation` matches one of the seven Creative Commons licenses ("CC 0", "CC BY", "CC BY-SA", "CC BY-ND", "CC BY-NC", "CC BY-NC-SA", or "CC BY-NC-ND"), an icon will automatically be included, otherwise you can use the `icon` attribute to point to a specific image file in your images directory.

### Formats, Resources & Links

A publication can have multiple `resource_link`s, each with a `type` of "other_format", "related_resource", or "footer_link". Other Formats will be where you can list the PDF, EPUB and MOBI copies of your publication that Quire produces. Related Resources are for additional items you want to point readers to, and Footer Links are just that and are often links to privacy policies, your own About page, or social media. `resource_link`s can be internal pages of or files from your publication, or can point to external resources or other websites.

`type`, `name` (how the resource link will be listed in your publication), and `url` are required. To facilitate machine readability, it is a good idea to also include a [`link_relation`](http://www.iana.org/assignments/link-relations/link-relations.xhtml) and a [`media_type`](https://www.iana.org/assignments/media-types/media-types.xhtml) from the IANA lists if applicable ones for your particular resource are available.

### Subjects

Any number of subjects can be added in order to aid search engine discoverability. They may be formatted as simple keywords, [BISAC codes](http://bisg.org/page/bisacedition), or linked data using [the Getty vocabularies](http://www.getty.edu/research/tools/vocabularies/), including AAT, ULAN, and TGN.

For each subject, indicate the `type`: "keyword", "bisac", or "getty". For "keyword", you only need to include a single comma-separated list under the `name` attribute.

```yaml
subjects:
  - type: keyword
    name: French painting, 19th Century, Delacroix
```

For all others, each subject should be listed individually and should also include an `identifier`. For "bisac" subjects the `identifier` is the BISAC code, for the Getty vocabularies, it’s the vocabulary’s semantic URL.

```yaml
subjects:
  - type: bisac
    name: "ART / European"
    identifier: ART015030
  - type: getty
    name: "Romantic"
    identifier: http://vocab.getty.edu/aat/300172863
  - type: getty
    name: "Eugène Delacroix"
    identifier: http://vocab.getty.edu/ulan/500115509
```

### Revision History

A history of post-publication revisions made to the publication typically appears on the About page. Any number of revision history items can be added and each must include a `date` and a `summary` of changes made on that date. The `summary` attribute supports Markdown formatting, and would typically be in list form.

If you are using GitHub or a similar service for more granular version control, you may also include the `repository_url` in this section. And in this case the revision history collected in the `publication.yml` can act as an overview. For more, see [our revision history policy document](#).
