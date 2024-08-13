---
title: Style Customization
weight: 6340
type: essay
abstract: "Alter look and feel with custom styles and themes"
aliases:
  - /documentation/styles-customization/
---


Quire is incredibly flexible and customizable. There are a number of ways that you can update the look and feel of your Quire project ranging from basic to advanced. 

| Level | Method | 
| ----- | ------ | 
| Basic | Change the style variables in the `variables.scss` file | 
| Moderate | Add new style rules to the `custom.css` file |
| | Create custom classes | 
| Advanced | Extend 11ty templates | 
| | Override theme templates | 

One very important thing to keep in mind when customizing your Quire project is when you update the version of Quire that your project is running on you need to manually copy all your customizations (and content) into the new project. This requires carefully documenting what changes you have made and where. Some tips for documenting customizations include:

- Put a comment at the top of the modified file, noting that it has been customized, and in what way. We recommend using the following format for the comment: 
```
//
// CUSTOMIZED FILE
// Description of change made, line number of change 
//
```
- Keep a running list of those modified files in the README of the project, with the filepaths and the same brief descriptions you put in the comment

Due to the potential complexity of this process, we recommend either minimizing the number of files you are customizing or limiting updates to when you need to access a new feature or integrate a critical bug fix. In the absence of customizations, updating your Quire project is fairly straightforward. You can learn more in the [*Update an Existing Project*](/docs-v1/install-uninstall/#update-an-existing-project) section of the [*Install or Update*](/docs-v1/install-uninstall) chapter of this guide. 

## Basic Customization

In an effort to make Quire to be approachable to everyone, regardless of technical experience, we've built in style variables that allow for relatively easy customizations without needing to dig into the stylesheets, templates, or CSS markup. 

### Change the Style Variables

When you start a new Quire project by running the command `quire new`, your project comes with default style variables that can be tweaked in the `variables.scss` file. The `variables.scss` file lets you control things like text and background colors, specific element sizes, fonts, paragraph indents, PDF margins, and more.

To find the variables, navigate to `content/_assets/styles/variables.scss`. You can also browse a [complete list of these variables](/docs-v1/variables) and the available customization options.


The variables are prefixed with a dollar sign and are descriptive of what they control. For instance, `$content-background-color` changes the color of the main text area background color. To make it light grey, you delete `null` and change the value to `LightGrey`.

```css
$accent-color: LightGrey;
```

It's worth noting that some variables effect multiple aspects of a project's appearance. For example, `$accent-color` changes the color of buttons, links, and other navigation elements.

Colors are expressed a number of different ways, none of which are better or more supported than the others, so you can use your preference. The most common are:

- The standard 140 {{< q-def "Color Keywords" >}} such as `red`, `royalblue`, and `honeydew. (For a comprehensive list of CSS colors visit [W3 Schools website](https://www.w3schools.com/cssref/css_colors.php).)
- The many possible {{< q-def "HEX color values" >}} like `#FF0000`, `#4169E1`, and `#F0FFF0`
- {{< q-def "RGB Color Values" >}} like `rgb(255, 0, 0)`, `rgb(65, 105, 225)`, and `rgb(240, 255, 240)`

It's always recommended to use a contrast checking tool, like [https://webaim.org/resources/contrastchecker/](https://webaim.org/resources/contrastchecker/) to ensure your color combinations meet web accessibility requirements for those with visual impairments. 

{{< q-class "box warning" >}}
- To avoid errors, variable names should not be changed or deleted. Also be sure to leave the colons (:) and semi-colons (;) in place.
{{< /q-class >}}


## Moderate Customizations

You can take your Quire customizations a step further by adding custom CSS and custom classes to your project. 

### Add Styles with Custom CSS

In the `_assets/styles` directory, there is a blank `custom.css` file, which can be used to customize elements of your project. Any CSS you add to this file, will be added to your site’s styles. 

CSS stands for "Cascading Style Sheets". It is a language used to define styles and layouts for webpages written in HTML. For a deeper dive, Mozilla Developers provides a good guide to CSS: [https://developer.mozilla.org/en-US/docs/Web/CSS](https://developer.mozilla.org/en-US/docs/Web/CSS).

While HTML describes the contents of a page, CSS controls the style and formatting. CSS also saves a lot of time, as you can apply rules across a website by just editing one file (`custom.css`).

Let’s say you’d like a particular line of text in one of your Markdown files to be red. You can wrap that text in `<span>` HTML tags and give it a class.

```html
<span class="red-text">This text should be red</span>
```

And then in your `custom.css` file, add a style rule for that class:

```css
.red-text {
  color: red;
}
```

Styles added to the `custom.css` file will also override any existing styles. For example, the following option would apply the style to any {{< q-def "element" >}} with a {{< q-def "class" >}} of `"title"` anywhere in your publication.

```css
.title {
  color: red;
}
```

To determine which selectors you need for your CSS, preview your publication in your browser of choice and control-click (Mac) or right click (PC) on the section you would like to tweak. Then select "Inspect element". This will show you the HTML markup for your site, along with all the class names, elements, and even styles that are currently being applied to that section.

The more specific you can be with your {{< q-def "CSS selectors" >}}, the more likely the style will only be applied to the specific element you want. For example, if you wanted the page title on a specific page to be a different color than the titles on the rest of the pages, you could determine the CSS selector for the element on that particular page and apply a style rule to it without changing the styles on any other element or page. This example limits the style to the title in the page header of one page:

```css
#chapter-one .quire-page__header .title {
  color: red;
}
```

The use of the period (`.`) indicates the selector is a class, whereas, the hashmark (`#`) indicates the selector is an id. In the above example, we are looking at Chapter One of the publication and selecting the element with a class of `"title"` that is inside an element with the class of `"quire-page__header"`.

In Quire, page ids are unique, and can be found on the `<div>` element that has the class `"quire-primary"`. By using the `id` in your custom CSS, you are targeting only that page, not all `"quire-primary"` elements throughout your publication.

{{< q-class "box tip" >}}
- The use of a more specific {{< q-def "CSS selector" >}} will always override a less specific one — even if it’s in your `custom.css` file. If you are trying to apply a more global style change like this and you find it’s not working, it may be because your {{< q-def "CSS selector" >}} is too generic and there is a more specific rule elsewhere in your theme’s styles that is overriding your more general one. The "Inspect element" tool will point to what combination of CSS selectors are actually applying the final style as it’s seen in the browser window.
{{< /q-class >}}

#### Custom CSS Example

View the [Hide Title and Subtitle from Cover Page with Custom CSS](/resources/recipes/recipes-cover) in the [Recipes](/resources/recipes/) section of the Quire website. 

### Add Custom Classes to Pages

You can added classes to `.md` files to change the styling of that page. You can view the predefined classes in the [*Page YAML Classes*](/docs-v1/variables/#page-yaml-classes) section of the [*Default Style Variables and Other Configurations*](/docs-v1/variables/) guide.

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
- You can add more than one class. However, you cannot leave the `classes` key blank, so be sure to delete it if you're not using it.
{{< /q-class >}}

#### Custom Class Example

View the [Hide Table of Contents Grid in PDF with Custom Class](/resources/recipes/hide-grid) in the [Recipes](/resources/recipes/) section of the Quire website. 

## Advanced Customizations

### Extending 11ty Templates

In the `content/_assets/javascript/application/index.js` you'll find listings of the existing CSS and JS files already included in Quire.

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

New CSS and JS file are placed in the `content/_assets/styles/` and `content/_assets/javascript/` respectively and can be imported into `content/_assets/javascript/application/index.js` following the patterns above.

Another option is to add `<script>` and `<style>` tags directly to `_includes/components/head.js`.

Here is some additional best practice advice: 

- When possible, create a new file, rather than modifying an existing one. For example, instead of modifying the existing `_layouts/essay.liquid`, create a `_layouts/essay-custom.liquid` file and use it as `layout: essay-custom` in the page YAML. 
- Consider using [Liquid templating](https://shopify.github.io/liquid/) directly in the Markdown files themselves, rather than modifying the underlying JS files. (Since the Liquid will travel with the markdown files more easily from project to project, or through Quire template updates.) For example, if you want a list of keywords to appear at the top of the page, you could add `keywords: ['one', 'two', 'three']` to the page YAML and then Liquid `{% for word in keywords %}{{ word }}{% endfor %}` in the page markdown.

{{< q-class "box tip" >}}
- When modifying layout files, you can ignore the `public` directory, it is rebuilt on every run of `quire build`.
{{< /q-class >}}

### Override Theme Templates

TK
