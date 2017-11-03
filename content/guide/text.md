---
title: Pages & Plain Text
type: page
---

## Defining Your Page’s Configuration and Metadata

Every page in a Quire publication starts with a block of YAML. The only truly required attribute, is `title`, however, in most cases you’re going to want more.

```yaml
---
id: # for chapter/paper numbering
title:
subtitle:
short_title: # a short version to use in the site navigation and pdf running heads
type: # page | essay | cover | section-head | contents | data | search
class: # frontmatter | copyright | video
contributor:
 - first_name:
   last_name:
   affiliation:
abstract:
weight:
online: # true | false
menu: # true | false
pdf: # true | false
toc: # true | false
cover_contributor:
url:
---
```

## Formatting Text Content with Markdown

- Headings
- Italic and Bold
- Links
- Footnotes
- Lists
- Horizontal Rules

## Using Shortcodes to Add Features

Quire adds a number of specialty shortcodes which extend the functionality and possibilities of plain text markup. Shortcodes are always formatted with a combination of curly brackets and angle brackets, with the name of the shortcode inside. Hugo has a number of additional built-in shortcodes, Quire-specific shortcodes always start with a `q`.

```
{{< q-shortcode-name >}}
```

Some shortcodes act as wrappers around other text and so appear in pairs, with the second of the pair having a slash `/` preceeding the shortcode name, much like you’d find in HTML markup.

```
{{< q-backmatter >}}Text goes here{{< /q-backmatter >}}

```
You’ll find more about the specific shortcodes



- q-backmatter
- q-url-link
- Mention of others in other sections

## Organizing Your Content in Sections

## Converting Your Text from Microsoft Word

- Word doc formatting
- Pandoc
