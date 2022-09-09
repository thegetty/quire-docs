---
title: Metadata & Configuration
weight: 6145
type: essay
abstract: "Update crucial information before deploying your publication"
---

Quire uses two {{< q-def "YAML" >}} files as sources of the metadata and to define how the publication works. In this page, we list the YAML properties and values that need to be defined in the two following files: `config.yaml` and `publication.yaml` both of which live in the `content/_data/` directory. By default, both `config.yaml` and `publication.yaml` will be generated when you create a Quire project, however the values of the properties will be either edited or added to the properties listed as we describe below.

You can read more about YAML syntax basics in [*YAML & Markdown*](/docs-v1/fundamentals/#yaml-basics).

## Adjust the Default Publication Settings in config.yaml File

The `config.yaml` file is a required file for Quire. It is used to define a number of key values used in Quire {{< q-def "templates" >}}. Users who have worked on other non-Quire Hugo projects will note that they typically use the `config.yaml` file to also store publication metadata. Given the potentially large scope of this kind of metadata in formal digital publications, Quire instead uses the `publication.yaml` file for that purpose [(see below)](#add-and-edit-important-metadata-in-publicationyaml-file).

The properties in the `config.yaml` file are individually documented in the [*For Developers*](/docs-v1/for-developers/) section, however, a few key items to note:

TK

## Add and Edit Important Metadata in publication.yaml File

The `publication.yaml` file in the `content/_data/` directory is *the* source of metadata for your publication. While the only value that is truly required is the one for the property `title`, it is a good idea to fill out the `publication.yaml` file as completely as possible. Many of the properties are used in the metadata, which is automatically included in the underlying code of every page of the online edition of your publication to support {{< q-def "Search Engine Optimization (SEO)" >}} and general discovery.

Some key areas are summed up below, and match headings in the `publication.yaml` file itself, but there is a detailed documentation of individual properties and their values in the [*For Developers*](/docs-v1/for-developers/) section of this guide.

### Title & Description

Of the possible properties in this section, `title`, and the optional `subtitle` and `reading_line` are the most important. If your title is particularly long, the `short_title` property can be used to provide an alternative for the navigation elements of the online book where long titles will otherwise be truncated.

It is also a good idea to include both `one_line` and `full` descriptions, as these are used in the publication SEO metadata and often on the *Cover* and *About* or *Copyright* pages.

### Publication Details

The values of `pub_date`, `language`, and `url` should be filled out.

The value of `pub_date` must follow a YYYY-MM-DD format (the {{< q-def "ISO 8601 format" >}}) and should be the projected final publication date.

The value of `language` should be a 2-letter {{< q-def "ISO 639-1 language code" >}}. The default value is `en` (English) and other languages can be used.

There’s an optional `pub_type` property whose values are `book`, `journal-periodical`, or `other`. If you use the value `book`, it is recommended you also include an {{< q-def "ISBN" >}} as a standard identifier. If you use the value `journal-periodical`, you should include information for the {{< q-def "ISSN" >}}, `series_periodical_name`, and `series_issue_number` attributes if possible.

Both {{< q-def "ISBN" >}} and {{< q-def "ISSN" >}} are considered if you want libraries to catalog your publication. Along with `isbn` and `issn`, `doi` and `uuid` are also supported so you can add these attributes as identifiers:

```yaml
identifier:
  isbn: 978-1-12345-678-9
  uuid: 4a1b423d-6d5a-469b-bd5f-b498182ad6ca
```

{{< q-def "DOIs" >}} are widely used in academic contexts to support citation while {{< q-def "UUIDs" >}} serve to identify information in computer systems.

{{< q-class "box tip" >}}

- Note that the `isbn` and `issn` identifiers used here are for the online edition specifically. Identifiers for other specific editions (PDF/Print, EPUB, and MOBI) can be defined separately with the appropriate `resource_link`. See the *Formats, Resources & Links* section below for more.

{{< /q-class >}}

The `url` should be the final URL where your publication will live (its permalink) and should include `http://` or `https://` as appropriate.

Lastly, Quire supports publications with multiple publishers, but at least one `publisher` should be listed with a `name`, `location`, and `url` attributes. In particular, this is used in the citation features as well as in search engine metadata.

### Contributors

Every publication should have at least one `contributor`. The `contributor` item `type` can have one of three values: `primary`, `secondary`, or `project-team`. The `primary` contributors are those who would show up on the *Cover*, *Menu*, and *Title Page* of a publication, and may include authors, editors, translators, and others. Contributors should, at a minimum, be listed with a `first_name` and `last_name` (or alternately just a `full_name`).

Additional attributes include `title`, `affiliation`, and `bio`. An `id` value can be added to the contributor information and referenced in the page YAML of individual essays or catalogue entries to indicate contributions by a particular author.

Optional `contributor_as_it_appears` and `additional_contributors` values allow for more fine-grained control in the way contributors are listed. It could be, for example, something like "Edited by Rose Valland and Denis Diderot". Even when using `contributor_as_it_appears`, the contributors should still be individually listed as contributors (with a value of `primary`) for search engine legibility.

The editors, designers, developers, and others who worked on the title may be listed as contributors with the `project-team` value. This information is usually then listed on the *About* and *Copyright* pages of the publication.

Read more about this matter in the [*Contributors*](/docs-v1/contributors/) chapter of this guide.

### Copyright & License

You should include a `copyright` line for your publication, and, optionally, `license` information if you are distributing the publication {{< q-def "Open Access" >}}.

A simple {{< q-def "Copyright" >}} statement would typically be formatted as "© 2019 Author Name".

{{< q-class "box tip" >}}

- The `copyright` field does support Markdown to allow for multiple paragraphs and other formatting.

{{< /q-class >}}

Open access licensing typically means applying one of seven {{< q-def "Creative Commons Licenses" >}} to your publication. This is in addition to your copyright statement.

Note, an open Creative Commons license does not replace or supersede copyright in a work, it instead says that the copyright holder is licensing (allowing) others to make use of the work in an open way.

To use a Creative Commons license fill in the `name`, `abbreviation`, `url`, and `scope` values of the license property. The `scope` value should be either `full`, `text-only`, or `some-exceptions` and will determine the way the license is worded on your site. To override the wording and link language use the `online_text` and `pdf_ebook_text` attributes.

If the `abbreviation` attribute matches one of the seven Creative Commons Licenses, an icon will automatically be included, otherwise you can use the `icon` attribute to point to a specific image file in your images directory.

### Formats, Resources, & Links

A publication can have multiple `resource_link` properties, each with the `type` of `other_format`, `related_resource`, or `footer_link`. These items will appear in the sidebar menu of your publication.

- `other_format` will be where you can list the PDF, EPUB, and Paperback editions of your publication that Quire produces.

- `related_resource` are for additional items you want to point readers to.

- `footer_link` are links that appear at the bottom of the sidebar menu and often link to things like privacy policies, your own *About* page, or social media profiles.

`resource_link` properties can also be internal pages of the publication or files from your publication, or can point to external resources or other websites. The attributes `type`, `name` (how the resource link will be listed in your publication), and `url` are required.

To facilitate machine readability, it is a good idea to also include `link_relation` and `media_type` attributes from the {{< q-def "IANA" >}} lists if applicable ones for your particular resource are available.

### Subjects

Any number of subjects can be added to the publication in order to aid search engine discoverability. They may be formatted as simple keywords, {{< q-def "BISAC Subject Codes" >}}, or linked data using the {{< q-def "Getty Vocabularies" >}}, including AAT, ULAN, and TGN.

For each subject, indicate the `type`: `keyword`, `bisac`, or `getty`. For `keyword`, you only need to include a single comma-separated list under the `name` attribute.

```yaml
subjects:
  - type: keyword
    name: French painting, 19th Century, Delacroix
```

For all others, each subject should be listed individually and should also include an `identifier` attribute. For `bisac` subjects the `identifier` is the BISAC code, for the Getty vocabularies, it’s the vocabulary’s semantic URL.

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

A history of post-publication revisions made to the publication typically appears on the *About* page. Any number of revision history property items can be added and each must include the attributes `date` and a `summary` of changes made on that date. The `summary` attribute supports Markdown formatting, and would typically be in list form.

If you are using {{< q-def "GitHub" >}} or a similar service for more granular version control, you may also include the `repository_url` in this section. And in this case the revision history collected in the `publication.yaml` can act as an overview. For more, see [our updates and revisions policy document](https://github.com/thegetty/digpublishing-guide/blob/master/updates-and-revisions.md).
