---
title: Publication Configuration & Metadata
type: page
---

## Config YAML

The `config.yml` file is a standard and required file for Hugo, and so also for Quire. In Quire, it is used expressly for configuring how Hugo operates, and for defining a number of key values used in Quire templates. Users who have worked on other non-Quire Hugo projects will note that those typically use the `config.yml` file to also store publication metadata. Given the potentially large scope of this kind of metadata in formal digital publications, Quire instead uses `publication.yml` file inside the `data` directory for that purpose (see below).

The properties in the `config.yml` file are individually documented in the [API/Docs section](../api-docs), however, a couple key items to note:

### `title`

While Quire exclusively uses the `title` value as defined in your `publication.yml` file, other Hugo projects require a `title` value in the `config.yml` file, so it is a good idea to include it here as well.

### `theme`

The `theme` value should match the name of the folder in the `/themes` directory that contains your theme files; if you've copied the default theme and given it a different name make sure to update the value here too.

### `params`

The `params` section includes a number of values specific to various Quire layout templates and shortcodes. All are provided with default values, and should be changed with care. In cases where a value should be deleted entirely, it is usually best to leave it as empty double quotes (`""`) rather than completely deleting it.

## Publication YAML

The `publication.yml` file in the `/data` directory is *the* source of metadata for your publication. While very few values are actually required (depending on the particular shortcodes or page types you use), it is a good idea to fill out the `publication.yml` file as completely as possible. Many of the properties are used in the metadata which is automatically included in the underlying code of every page of the online edition of your publication to support SEO and general discovery.

Some key areas are summed up below, and match headings in the `publication.yml` file itself, but there is also detailed documentation of individual properties in the [API/Docs section](../api-docs) of this guide.

### Title & Description

Of the possible values in this section, `title` (and the optional `subtitle` and `reading_line`) are the most important. It is also a good idea to include at least a `full` description as this is used in the publication SEO metadata and often on the Cover and About or Copyright pages. The `additional_online` and `additional_pdf_ebook` fields allow you to add additional text to the `full` description that is specific to either the online, or the PDF/EPUB/MOBI editions and will only show up there. For instance, in order to point to special features in one or the other of the formats.

### Publication Details


`url`, `pub_type`, `pub_date`, and `language` should be filled out.

Under `indentifier` should include at least one value. If the publication is a book, it should ideally include an `isbn`; if a magazine or other serial, an `issn`; and if neither applies or is available, and `uuid`, which can be generated https://www.uuidgenerator.net/


### Contributors

Every publication should have a list of one or more `primary_contributor`s and optionally, a value in the `contributor_as_it_appears` field. The `primary_contributor`s are those that would show up on the Cover, Menu and Title Page of a publication, and may include authors, editors, translators and others. The `contributor_as_it_appears` field allows for more fine-grained control in the way contributors are listed. It could be, for example, something like “Edited by Rose Valland and Denis Diderot”. Even when using `contributor_as_it_appears` though, the contributors should still also be individually listed as `primary_contributor`s for SEO optimization. Read more in [Contributors](content/guide/contributors.md).

### Copyright & License

You should include a `copyright` line for your publication, and optionally `license` information if you are distributing the publication open access.

### Publisher & Project Team

`publisher`, particularly `name` and `location`

### Subjects



### Link Lists

There are three groupings in this section: `other_formats`, `related_resources`, and `footer_links`.

### Revision History

