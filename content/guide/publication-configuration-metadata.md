---
title: Publication Configuration & Metadata
weight: 203
type: essay
---

Quire uses two YAML files[&] as sources of the metadata and to define how the publication works. In this page, we list the YAML properties and values that need to be defined in the two following files: `config.yml` and `publication.yml`. By default, both `config.yml` and `publication.yml` will be generated when you create a Quire project, however the values of the properties will be either edited or added to the properties listed as we describe below.

You can read more about [*YAML syntax basics*](/resources/cheatsheet/) and check out a sample of the [*`publication.yml` file*](/resources/sample-publication-file/) in other chapters of this guide.

## Adjusting the Default Publication Settings in the `config.yml` File

The `config.yml` file is a standard and required file for Hugo[&], and so also for Quire. In Quire, it is used expressly for configuring how Hugo operates, and for defining a number of key values used in Quire templates[&]. Users who have worked on other non-Quire Hugo projects will note that those typically use the `config.yml` file to also store publication metadata. Given the potentially large scope of this kind of metadata in formal digital publications, Quire instead uses `publication.yml` file inside the `data` directory for that purpose [(see below)](#adding-and-editing-important-metadata-in-the-publication-yml-file).

The properties in the `config.yml` file are individually documented in the [*API/Docs section*](/api-docs/yaml/), however, a few key items to note:

- While Quire exclusively uses the `title` value as defined in your `publication.yml` file, other Hugo[&] projects require a `title` value in the `config.yml` file, so it is a good idea to include it here as well.

- The `theme` value should match the name of the folder in the `/themes` directory that contains your theme files; if you've copied the default theme[&] and given it a different name make sure to update the value here too.

- The `params` section includes a number of values specific to various Quire layout templates[&] and shortcodes[&]. All are provided with default values, and should be changed with care. In cases where a value should be deleted entirely, it is usually best to leave it as empty double quotes (`""`) rather than completely deleting it.

## Adding and Editing Important Metadata in the `publication.yml` File

The `publication.yml` file in the `/data` directory is *the* source of metadata for your publication. While the only value that is truly required is the one for the property `title`, it is a good idea to fill out the `publication.yml` file as completely as possible. Many of the properties are used in the metadata, which is automatically included in the underlying code of every page of the online edition of your publication to support search engine optimization (SEO)[&] and general discovery.

Some key areas are summed up below, and match headings in the `publication.yml` file itself, but there is a detailed documentation of individual properties and their values in the [*API/Docs section*](/api-docs/yaml/) of this guide.

### Title & Description

Of the possible properties in this section, `title`, and the optional `subtitle` and `reading_line` are the most important. If your title is particularly long, the `short_title` property can be used to provide an alternative for the navigation elements of the online book where long titles will otherwise be truncated.

It is also a good idea to include both `one_line` and `full` descriptions as these are used in the publication SEO metadata and often on the *Cover* and *About* or *Copyright* pages.

### Publication Details

The values of `url`, `pub_date`, and `language` should be filled out.
- `url` should be the final URL where your publication will live (its permalink) and should include `http://` or `https://` as appropriate.
- The value of `pub_date` must follow a YYYY-MM-DD format (the ISO 8601 format[&]) and should be the projected final publication date.
- Lastly, `language` should be a 2-letter ISO 639-1 language code[&]. The default value is `en` (English) and other languages can be used.

There’s an optional `pub_type` property whose values are `book`, `journal-periodical`, or `other`. If you use the value `book`, it is recommended you also include an ISBN[&] as a standard identifier. And if you use the value `journal-periodical`, you should include information for the `ISSN`[&], `series_periodical_name`, and `series_issue_number` attributes if possible.

Both ISBN[&] and ISSN[&] are to consider if you want libraries to catalog your publication. Along with `isbn` and `issn`, `doi` and `uuid` are also supported so you can add these attributes as identifiers:

```yaml
identifier:
  isbn: 978-1-12345-678-9
  uuid: 4a1b423d-6d5a-469b-bd5f-b498182ad6ca
```

DOIs[&] are widely used in academic contexts to support citation while UUIDs[&] serve to identify information in computer systems.

{{< q-class "box" >}}Note that the `isbn` and `issn` identifiers used here are for the online edition specifically. Identifiers for other specific editions (PDF/Print, EPUB, and MOBI) can be defined separately with the appropriate `resource_link`. See the [*Formats, Resources & Links*](#formats-resources-links) section below for more.{{< /q-class >}}

Lastly, Quire supports publications with multiple publishers, but at least one `publisher` should be listed with a `name`, `location` and `url` attributes. In particular, this is used in the citation features as well as in search engine metadata.

### Contributors

Every publication should have at least one `contributor`. The `contributor` item `type` can have one of three values: `primary`, `secondary`, or `project-team`. The `primary` contributors are those that would show up on the *Cover*, *Menu* and *Title Page* of a publication, and may include authors, editors, translators and others. Contributors should, at a minimum, be listed with a `first_name` and `last_name` (or alternately just a `full_name`).

An optional `contributor_as_it_appears` value allows for more fine-grained control in the way contributors are listed. It could be, for example, something like "Edited by Rose Valland and Denis Diderot". Even when using `contributor_as_it_appears` though, the contributors should still also be individually listed as contributors (with a value of `primary`) for search engine legibility.

The editors, designers and developers and others who worked on the title may be listed as contributors with the `project-team` value. This information is usually then listed on the *About* and *Copyright* pages of the publication.

Read more about this matter in the [*Contributors*](/guide/contributors/) chapter of this guide.

### Copyright & License

You should include a `copyright` line property for your publication, and optionally `license` information property if you are distributing the publication open access[&].

A simple copyright[&] statement would typically be formatted as "© 2018 Author Name".

{{< q-class "box" >}}The `copyright` property does support Markdown[&] formatting to allow for multiple paragraphs and other formatting.{{< /q-class >}}

Open access licensing typically means applying one of seven Creative Commons licenses[&] to your publication. This is in addition to your copyright statement.

[note]An open Creative Commons license does not replace or supersede copyright in a work, it instead says that the copyright holder is licensing (allowing) others to make use of the work in an open way.

To use a Creative Commons license fill in the `name`, `abbreviation`, `url`, and `scope` values of the license property. `scope` value should be either `full`, `text-only` or `some-exceptions` and will determine the way the license is worded on your site. To override the wording and link language use the `online_text` and `pdf_ebook_text` attributes.

If the `abbreviation` attribute matches one of the seven Creative Commons licenses[&], an icon will automatically be included, otherwise you can use the `icon` attribute to point to a specific image file in your images directory.

### Formats, Resources & Links

A publication can have multiple `resource_link` properties, each with the `type` of `other_format`, `related_resource`, or `footer_link`.

- `other_format` will be where you can list the PDF, EPUB and MOBI editions of your publication that Quire produces.

- `related_resource` are for additional items you want to point readers to.

- `footer_link` are just that and are often links to privacy policies, your own *About* page, or social media profiles.

`resource_link` properties can also be internal pages of the publication or files from your publication, or can point to external resources or other websites. The atributes `type`, `name` (how the resource link will be listed in your publication), and `url` are required.

To facilitate machine readability, it is a good idea to also include `link_relation` and `media_type` attributes from the IANA[&] lists if applicable ones for your particular resource are available.

### Subjects

Any number of subjects can be added to the publication in order to aid search engine discoverability. They may be formatted as simple keywords, BISAC codes[&], or linked data using the Getty vocabularies[&], including AAT, ULAN, and TGN.

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

If you are using GitHub[&] or a similar service for more granular version control, you may also include the `repository_url` in this section. And in this case the revision history collected in the `publication.yml` can act as an overview. For more, see [our revision history policy document](#).
