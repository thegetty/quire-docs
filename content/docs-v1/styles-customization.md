---
title: Style Customization
weight: 6340
type: essay
abstract: "Alter look and feel with custom styles and themes"
aliases:
  - /documentation/styles-customization/
---


Quire is incredibly flexible and customizable, and there are a number of ways that you can update the look and feel of your Quire project:

  1. Changing the style variables in the `variables.scss` file
  2. Adding new style rules to the `custom.css` file
  3. Extending 11ty templates
  4. Creating custom classes

One very important thing to keep in mind when customizing your Quire project is that if you need to update the version of Quire that your project is running on then you will need to manually copy all your customizations (and content) into the new project. This requires carefully documenting what changes you have made and where. For this reason, we recommend either minimizing the number of files you are customizing or limiting updates to when you need to access a new feature or integrate a critical bug fix. In the absence of customizations, updating your Quire project is fairly simple and straight forward. You can learn more in the [*Update and Existing Project*](/docs-v1/install-uninstall/#update-an-existing-project) section of the [*Install or Update*](/docs-v1/install-uninstall) chapter of this guide. 


## Change the Style Variables

When you first start a new Quire project by running the command `quire new`, your project comes with default style variables that can be tweaked in the `content/_assets/styles/variables.scss`. This file let's you control things like text and background colors, some element sizes, fonts, paragraph indents, and more. This allows relatively easy customization without the need to dig into the stylesheets and CSS markup. A [complete list of these variables](/docs-v1/variables) includes information about the customizations available.

To find the variables, open the `content/_assets` directory, navigate to the `styles` sub-directory, and then `variables.scss`.

The variables are prefixed with a dollar sign and are descriptive of what they control. For instance `$accent-color` is the background color of the navigation bar at the top of every page. To make it red, you delete `null` and change the value to `red`:

```css
$accent-color: red;
```

Colors are expressed a number of different ways, none of which are better or more supported than the others, so you can use your preference. The most common are:

- The standard 140 {{< q-def "Color Keywords" >}} such as `red`, `royalblue`, and `honeydew`
- The many possible {{< q-def "HEX color values" >}} like `#FF0000`, `#4169E1`, and `#F0FFF0`
- {{< q-def "RGB Color Values" >}} like `rgb(255, 0, 0)`, `rgb(65, 105, 225)`, and `rgb(240, 255, 240)`

For a comprehensive list of CSS colors visit [W3 Schools website](https://www.w3schools.com/cssref/css_colors.php). 

{{< q-class "box warning" >}}
- To avoid errors, variables names should not be changed or deleted, and be sure to leave the colons (:) and semi-colons (;) in place.
{{< /q-class >}}

## Add Custom Styles

TK

## Extending 11ty Templates

In the `content/_assets/javascript/application/index.js` you'll find listings of the existing CSS and JS files already included in Quire:

```js
// Stylesheets
import '../../fonts/index.scss';
import '../../styles/application.scss'
import '../../styles/screen.scss'
import '../../styles/custom.css'

// Modules (feel free to define your own and import here)
import './canvas-panel'
import './soundcloud-api.min.js'
import { goToFigureState, setUpUIEventHandlers } from './canvas-panel'
import Accordion from './accordion'
import Search from '../../../../_plugins/search/search.js'
import scrollToHash from './scroll-to-hash'
```

New CSS and JS file are placed in the `content/_assets/styles/` and `content/_assets/javascript/` respectively and can be imported into `content/_assets/javascript/application/index.js`.

Another option is to add `<script>` and `<style>` tags directly to `_includes/components/head.js`.

Here is some additional best practice advice: 

- Put a comment at the top [(sample)](https://github.com/thegetty/conserving-canvas/blob/main/_includes/components/menu/item.js) of the modified file, noting that it has been customized, and in what way.
- Keep a running list [(sample)](https://github.com/thegetty/conserving-canvas/tree/main#customizations) of those modified files in the README of the project, with the filepaths and the same brief descriptions you put in the comment
- When possible, create a new file, rather than modifying an existing one. For example, instead of modifying the existing `_layouts/essay.liquid`, create a `_layouts/essay-custom.liquid` file and use it as `layout: essay-custom` in the page YAML. 
- Consider using [Liquid templating](https://shopify.github.io/liquid/) directly in the Markdown files themselves, rather then modifying the underlying JS files. (Since the Liquid will travel with the markdown files more easily from project to project, or through Quire template updates.) For example, if you want a list of keywords to appear at the top of the page, you could add `keywords: ['one', 'two', 'three']` to the page YAML and then Liquid `{% for word in keywords %}{{ word }}{% endfor %}` in the page markdown.

{{< q-class "box tip" >}}
- And for modifying layout files, you can ignore the `public` directory, it is rebuilt on every run of `quire build`.
{{< /q-class >}}


## Add Custom Classes to Pages

Every `.md` file in a Quire publication has a "class" that controls the styling of that page. The class is applied to the page via the `layout` key. For example, the class `quire-entry` will be applied any time `layout: entry` is used. The `quire-entry` class styles the page so that a single image or object is featured prominently. 

The only hard coded `classes` that are surfaced in the `_content` directory are those found in the page YAML of the PDF pages included in the default starter: `copyright-page`, `half-title-page`, and `title-page`. 

However, you aren't tied to Quire's predefined `classes`. You can also create your own! This is done by writing custom CSS that defines the function of that class and then using the `classes` key in the page YAML to apply it.  

The value of `classes` can added to the page YAML in one of two ways. The first is a list:

```yaml
classes:
  - my-custom-class
```

The second is enclosed in square brackets: 

```yaml
classes: [my-custom-class]
```

All `classes` are added to the `<main class="quire-page">` element on the page, which contains the page header and content area. 

```html
<main class="quire-page my-custom-class">
  ...
</main>
```

{{< q-class "box tip" >}}
- You can add more than one class. However, you cannot leave the `classes` key  blank.
{{< /q-class >}}

### Custom Class Examples

View the [Hide Table of Contents Grid in PDF with Custom Class](/resources/recipes/hide-grid) recipe in the [Recipes](/resources/recipes/) section of the Quire website. 

## Override Theme Templates

TK
