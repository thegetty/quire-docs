---
label: RECIPE
title: Add Pop-Up Glossary Functionality 
weight: 7360
type: page
online: false
---

Much like pop-up [in-text citations](/docs-v1/citation-bibliographies/#add-in-text-citations), you can also add pop-up glossary terms to your publication. 

Add your terms to `content/_data/glossary.yaml`. For example: 

```YAML
entries:
  - id: warp
    definition: The threads that run lengthwise on a loom, parallel to the selvedge.
  - id: weft
    definition: The threads woven across the warp.
```

Then create a `_plugins/shortcodes/def.js` file populated with the text below:

```JS
export default function (eleventyConfig) {
  const markdownify = eleventyConfig.getFilter('markdownify')
  const entries = eleventyConfig.globalData.glossary?.entries || []

  return function (id, text) {
    const entry = entries.find((e) => e.id.toLowerCase() === String(id).toLowerCase())
    if (!entry) {
      console.warn(`[shortcodes:def] no glossary entry for "${id}"`)
      return text || id
    }
    return `<span class="quire-citation quire-definition expandable"><span class="quire-citation__button" role="button" tabindex="0" aria-expanded="false">${text || id}</span><span class="quire-citation__content" hidden><strong>${entry.id}:</strong> ${markdownify(entry.definition)}</span></span>`
  }
}
```

Register it in `_plugins/shortcodes/index.js` by adding the line `import def from ./def.js` below the contributors line (they are listed alphabetically). Then add `addShortcode('def', def)` to the relevant section below that. 

We recommend making a note about the updates to your Quire project template in your project's `README.md` file. For example: 

```MD
### Customizations

**_plugins/shortcodes/def.js**
**_plugins/shortcodes/index.js**
Add custom def shortcode for glossary pop-ups
```

In your Markdown, add the shortcode `{% def 'warp' %}` in the sentence where you want the term to appear. In the example "Humidity, may cause the wooden frame to `{% def 'warp' %}`" the term "warp" will appear underlined and if you click "warp" the definition will appear in a pop-up box. You can also style the shortcode. For example, you would use `{% def 'warp' 'warps' %}` if you want the underlined text that the reader clicks on for the pop-up to appear as "warps" instead of "warp". Please note, it is customary to only add the pop-up definition to the first occurence of the term.

The last step is to create a `glossary.md` file at the end of your project and add page YAML. For example: 

```YAML
---
title: "Glossary"
layout: page
order: 4000
---
```

And then add the following liquid code to the body of the `glossary.md` file: 

```
{% for def in glossary.entries %}

{{ def.id }}{#{{ def.id | slugify }}}
: {{ def.definition }}

{% endfor %}
```

This will result in the definitions from the `glossary.yaml` automatically populating the `glossary.md` file when viewing it in your browser. 