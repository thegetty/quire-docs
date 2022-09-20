---
title: Page Content
type: essay
weight: 6180
abstract: "Format publication content, including adding features and links"
---

## Start with Page YAML

As outlined in [*Page Types & Structure*](/docs-v1/pages/), in Quire, a content or `.md` file will always start off with a YAML block at the top of the page. For example, The markdown file for this page starts with the following YAML:

```md
---
title: Page Content
layout: essay
order: 206
---

## Format Text Content with Markdown

The main content of your page comes after the YAML block at the top, and will be formatted in Markdown. Markdown is a very simple, plain text markup language that uses a few text rules to structure content for easy conversion into HTML. For example, a hash or pound sign at the beginning of a line makes a heading, and asterisks wrapping text turns it *italic*.

You can read all about Markdown syntax and how it is used in Quire in the [*YAML & Markdown*](/docs-v1/fundamentals/) section of this guide. If your source files are Microsoft Word files then we recommend using [Pandoc](/docs-v1/fundamentals/#microsoft-word-to-markdown-conversion) for conversion into Markdown. We also recommend reviewing our [Manuscript Prep](/learn/manuscript-prep/) guide when using Pandoc.

## Use Shortcodes to Add Features

Quire adds a number of specialty {{< q-def "shortcodes" >}} which extend the functionality and possibilities of plain Markdown. A shortcode is a simple snippet of code inserted in a Markdown file. The shortcode pulls in information from your data (`.yaml`) files using identifiers. This means that, in most cases, when you edit the YAML file, these changes will be automatically be reflected in all Markdown files that include the respective shortcode. Shortcodes are always formatted with a combination of curly brackets and the percentage sign with the shortcode type and `id` value listed inside (`{% q-shortcode id= %}`). Additional values can be added to the shortcode such as `caption`,  `grid`, or `class` which you can learn more about in the [*Figure Images*](/docs-v1/figure-images/). The example below inserts a figure in your document, matching a corresponding `id` with figure information stored in the publication’s `figures.yaml` file.

```go
{% figure id="3.1" %}
```

The following shortcodes are currently available in Quire. You’ll find more about them in their respective sections of the guide, as well as in the [shortcodes API reference](/docs-v1/for-developers/#shortcodes-api).

- [`{% bibliography %}`](/docs-v1/citation-bibliographies/): Generates a bibliography from the entries in the project's `bibliography.yaml` file.
- [`{% cite %}`](/docs-v1/citation-bibliographies/): Adds a linked Author Date citation reference to the text, and an in-text (or hover pop-up) citation. It also adds the citation to a map of cited works, which can then be output as a page-level bibliography on essay and entry type pages.
- [`{% contributor %}`](/docs-v1/contributors/): Can be used to create a page of contributor biographies, a section of bios for a single page, a simple list of contributors, a byline for a particular page, or other similar outputs.
- [`{% figure %}`](/docs-v1/figure-images/): Inserts a formatted figure image (including audio and video) and caption using data from the project’s `figures.yaml` file, or from values supplied directly in the shortcode.
- [`{% figure-group %}`](/docs-v1/figure-images/): Like `{% figure %}`, but with handling for multiple images at once.

In addition to the shortcodes listed above, there are some additional shortcode pairings that are used as wrappers. For example, you can use the `{% backmatter %}` and `{% endbackmatter %}` shortcode pairing to wrap bibliographies, appendices, and other related content at the end of an article or page. This will style whatever is wrapped inside the shortcode pairing to match the default footnote styling.

```md
{% backmatter %}
## Notes
{% endbackmatter %}
```

## Apply Different Types of Links

A link is created by combining the text of the link in brackets with the url of the link in parentheses: `[Link text](Link URL)` There are several types of linking that can be applied to text on your page. Stylization such as bolding, italics, underlining, and more can also be applied to linked text.

### External Links

External links can be included through the following Markdown formatting:

```md
[Link text](http://www.linkaddress.com)
[Getty Museum](https://www.getty.edu/museum/)
```

### Internal Links Between Pages

Internal links between pages in your Quire publication can be included through the following Markdown formatting using the file name of the page and the directory name of the section it is in.

```md
[Link text](/name-of-section-if-any/nameofpage/)
[Pea Pickers](/catalogue/2/)
More info in our [about](/about/) page.
```

### Internal Links to Specific Elements on Pages

There are several types of linking between features, text, or objects on a single page that can be included through the following Markdown formatting:

#### Links to Figures

This linking can be applied to a piece of text that when clicked upon will take a user to the location of the corresponding figure on the page. Figure IDs can be found on the `figures.yaml` page as explained in the [*Figure Images*](/docs-v1/figure-images/) chapter of this guide. They are proceeded by the # symbol when used as a link address.

```md
[number or name of figure](#figureid)
[fig. 1](#1.1)
```

#### Links to Other Page Elements

An ID and the # symbol is also used for other kinds of elements on the same page. The IDs for these elements can be found using the following method:

- Use the Inspect Element tool when right clicking a page or specific element. For Safari users, refer to this [guide](https://apple.stackexchange.com/questions/139767/inspect-element-in-safari) to enable this feature.

- In the page's code, certain elements will include a piece of code, `id="idnamehere"` that designates the ID of that element. If the name of the element has a space that will be represented with a dash `-`.

- For example, the ID of a heading will often be the name of that heading.

    ```md
    [referencetolink](#element-id)
    See [heading 1](#heading-1).
    ```

#### Links to Elements on a Separate Page

Following the formula for internal links between pages, you can also specify an element on a separate page as a link destination by adding the # symbol and the element’s ID on to the end of a page link.

      ```  md
      [referencetolink](/nameofpage/#idname)
      See the introduction [notes](/introduction/#notes)
      ```

{{< q-class "box warning" >}}
- Blackfriday, Quire’s built in Markdown processor, will incorrectly create link when there is some text in brackets followed immediately by more text in parentheses even if there is a space between them. To avoid the linking, you can use a \ (backslash) escape character before the first parentheses, such as: `[not a link] \(1926)`  The \ will not display in the final rendered text.
{{< /q-class >}}

#### Linked Footnotes

When creating [footnotes with Markdown](/docs-v1/fundamentals/#footnotes), links are automatically created between the footnote number in the text and the note itself at the bottom of the page. To link to a note from other locations, you can use its automatically generated ID, which always follows the format `fn:#` where # is the number of the footnote.

```md
[referencetolink](#fn:#)
Also in regards to [note 21](#fn:21)
See [note 3, chapter 2](/chapter-2/#fn:3)
```

#### Citations

When the citation shortcode `{{</* q-cite "author date" "page #" */>}}` is used in a body of text and corresponds to the short and full bibliographic information provided in the `references.yaml` file, an in-page bibliography will be generated and linked to. This linking is completed automatically.

When the shortcode is used in the page, the text will appear linked and when clicked upon will take a user to its corresponding bibliography entry on the same page. However, this cannot be done in reverse as the bibliography at the bottom of the page contains no links.

For more information see the [*Citations & Bibliographies*](/docs-v1/citation-bibliographies) section of this guide.
