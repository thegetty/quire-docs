---
title: Page Content
type: essay
weight: 4700
abstract: "Format publication content, including adding features and links"
---

## Format Text Content with Markdown

The main content of your page appears after the YAML block at the top ([*Page Types & Structure*](/documentation/pages/)), and will be formatted in Markdown. Markdown is a very simple, plain text markup language that uses a few text rules to structure content for easy conversion into HTML. For example, a hash or pound sign at the beginning of a line makes a heading, and one set of asterisks wrapping around the text turns it *italic*.

The markdown file for this page starts like this:

```md
---
title: Page Content
type: essay
weight: 206
---

## Format Text Content with Markdown

The main content of your page appears after the YAML block at
the top ([*Page Types & Structure*](/documentation/pages/)), and will be
formatted in Markdown. Markdown is a very simple, plain text
markup language that uses a few text rules to structure content
for easy conversion into HTML. For example, a hash or pound sign
at the beginning of a line makes a heading, and asterisks
wrapping text turns it *italic*.
```

You can read all about Markdown syntax and how it is used in Quire in the [*Fundamentals: YAML & Markdown*](/documentation/fundamentals/) chapter of this guide.

## Use Shortcodes to Add Features

Quire adds a number of specialty {{< q-def "shortcodes" >}} which extend the functionality and possibilities of plain Markdown. While {{< q-def "Hugo" >}} has a number of built-in shortcodes, which can also work in Quire, Quire-specific shortcodes always start with a `q`.

Shortcodes are always formatted with a combination of curly brackets and angle brackets with the name of the shortcode inside (`{{</* q-shortcode */>}}`) and often with some additional information in quotes. The example below inserts a figure in your document, matching a corresponding `id` with figure information stored in the publication’s `figures.yml` file.

```go
{{</* q-figure id="3.1" */>}}
```

While most Quire shortcodes work like `q-figure` as a single instance, the `q-class` shortcode acts as wrapper around other text and so it appears as a paired opening and closing shortcode. The closing code has a slash `/` preceding the shortcode name, much like you’d find in HTML markup. This example adds the class "alert" to the the phrase "Text goes here", which could be used to facilitate [custom styling](/documentation/styles-customization/).

```go
{{</* q-class "alert" */>}}
Text goes here
{{</* /q-class */>}}
```

{{< q-class "box tip" >}}
- Quire includes one pre-defined class called "backmatter". This is typically used to wrap bibliographies, appendices, and other related content at the end of an article or page, and will style them to match the default footnote styling.
    ```
    {{</* q-class "backmatter" */>}} ...
    {{</* /q-class */>}}
    ```
{{< /q-class >}}

The following shortcodes are currently available in Quire. You’ll find more about them in their respective sections of the guide, as well as in the [shortcodes api reference](/documentation/for-developers/#shortcodes-api).

- `q-class`: As demonstrated above, wrapping text in this shortcode will allow you to apply a class name to that block of text, which can then be used to apply custom styles or interactions as needed.
- [`q-bibliography`](/documentation/citation-bibliographies/): Generates a bibliography from the entries in the project's `bibliography.yml` file.
- [`q-cite`](/documentation/citation-bibliographies/): Adds a linked Author Date citation reference to the text, and a hover pop-up with the full citation text. It also adds the citation to a map of cited works, which can then be output as a page-level bibliography on essay and entry type pages.
- [`q-contributor`](/documentation/contributors/): Can be used to create a page of contributor biographies, a section of bios for a single page, a simple list of contributors, a byline for a particular page, or other similar outputs.
- [`q-figure`](/documentation/figure-images/): Inserts a formatted figure image (including audio and video) and caption using data from the project’s `figures.yml` file, or from values supplied directly in the shortcode.
- [`q-figure-group`](/documentation/figure-images/): Like `q-figure`, but with handling for multiple images at once.

## Apply Different Types of Links

As seen in the example above, a link is created by combining the text of the link in brackets with the url of the link in parentheses: `[Link text](Link URL)` There are several types of linking that can be applied to text on your page. Stylization such as bolding, italics, underlining, and more can also be applied to linked text.

### External Links

External links can be included through the following Markdown formatting:

```md
[Link text](http://www.linkaddress.com)
[Getty Museum](https://www.getty.edu/museum/)
```

These are set by default to open in new pages, but you can change that by setting `hrefTargetBlank` to `true` in the config.yml file.

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

This linking can be applied to a piece of text that when clicked upon will take a user to the location of the corresponding figure on the page. Figure IDs can be found on the `figures.yml` page as explained in the [*Figure Images*](/documentation/figure-images/) chapter of this guide. They are proceeded by the # symbol when used as a link address.

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

When creating [footnotes with Markdown](/documentation/fundamentals/#footnotes), links are automatically created between the footnote number in the text and the note itself at the bottom of the page. To link to a note from other locations, you can use its automatically generated ID, which always follows the format `fn:#` where # is the number of the footnote.

```md
[referencetolink](#fn:#)
Also in regards to [note 21](#fn:21)
See [note 3, chapter 2](/chapter-2/#fn:3)
```

#### Citations

When the citation shortcode `{{</* q-cite "author date" "page #" */>}}` is used in a body of text and corresponds to the short and full bibliographic information provided in the references.yml file, an in-page bibliography will be generated and linked to. This linking is completed automatically.

When the shortcode is used in the page, the text will appear linked and when clicked upon will take a user to its corresponding bibliography entry on the same page. However, this cannot be done in reverse as the bibliography at the bottom of the page contains no links.

For more information see the [Citations & Bibliography](/documentation/citation-bibliographies/) section of this guide.
