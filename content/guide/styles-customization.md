---
title: Styles Customization
weight: 211
type: essay
---

The look and feel of your Quire publication can be customized at four different levels of complexity:

  1. Changing style {{< q-glossary "variables" >}} in the {{< q-glossary "theme" >}}
  2. Adding new style rules to the `custom.css` file
  3. Overriding specific theme {{< q-glossary "templates" >}} with your own custom version
  4. Creating an entirely new Quire theme.

{{< q-class "box tip" >}}  
- The default theme installed with every new Quire project is the [Quire Starter Theme](https://github.com/gettypubs/quire-starter-theme). The README file of that repository includes complete information about the customizations available in that specific theme.
{{< /q-class >}}

## Changing the Style Variables in the Theme

Every Quire project has a theme inside the `themes` directory. When you first start a new project typing the `quire new` command in your command-line interface, the default theme included is the [Quire Starter Theme](https://github.com/gettypubs/quire-starter-theme). In it, you can access simple text variables that will let you update text and background colors, some element sizes, fonts, paragraph indents and more.

To find the variables, open the `themes/quire-starter-theme` directory, navigate to the `source` sub-directory and then `css`, and open the file called `variables.scss`.

{{< q-figure id="1.12" >}}

The variables are prefixed with a dollar sign and are descriptive of what they control. For instance `$quire-navbar-background-color` is the background color of the navigation bar at the top of every page. To make it red, you could enter:

```css
$quire-navbar-background-color: red;
```

Colors are expressed a number of different ways, none of which are better or more supported than the others, so you can use your preference. Most common are:

- The standard 140 {{< q-glossary "Color Keywords" >}} such as `red`, `royalblue` and `honeydew`
- The many possible {{< q-glossary "HEX color values" >}} like `#FF0000`, `#4169E1` and `#F0FFF0`
- {{< q-glossary "RGB Color Values" >}} like `rgb(255, 0, 0)`, `rgb(65, 105, 225)` and `rgb(240, 255, 240)`

{{< q-class "box warning" >}}
- You must have the `quire preview` command running in your command-line interface to see changes you make to the `variables.scss` file. You may also sometimes need to refresh your browser page, or even clear the browser cache to get the style changes to fully load.
{{< /q-class >}}

## Adding Custom Styles

In your project’s `static` directory, there is a `css` directory with a blank `custom.css` file.

{{< q-figure id="1.13" >}}

Any {{< q-glossary "CSS" >}} you add here, will be added to your site’s styles. For example, let’s say you’d like a particular line of text in one of your {{< q-glossary "Markdown" >}} files to be red. You could wrap that text in `<span>` HTML tags and give it a class.

```html
<span class="red-text">This text should be red</span>
```

And then in your `custom.css` file, add a style rule for that class:

```css
.red-text {
  color: red;
}
```

Custom {{< q-glossary "CSS" >}} like this can also be used in conjunction with the `q-class` shortcode. While you can add `<span>` HTML tags within lines and paragraphs of text, in Markdown you can’t do the same with `<div>` or `<section>` tags across multiple paragraphs. Instead, you can use the `q-class` shortcode to assign any class to all the Markdown within the opening and closing shortcode tags.

```go
{{</* q-class "red-text" */>}}

This entire paragraph should be red.

As should the paragraph after it.

{{</* /q-class */>}}
```

Styles added to the `custom.css` file will also override any existing styles already in use in your {{< q-glossary "theme" >}}. For example, the following option would apply the style to any element with a {{< q-glossary "class" >}} of `"title"` anywhere in your publication.

```css
.title {
  color: red;
}
```

To determine the selectors for any {{< q-glossary "element" >}}, in your browser of choice with your publication previewing, control-click (Mac) or right click (PC) on the element and select "Inspect element". This will show you the HTML markup for your site, along with all the {{< q-glossary "class" >}} names and elements, and even the styles that are currently being applied to that {{< q-glossary "element" >}}.

The more specific you can be with your {{< q-glossary "CSS selectors" >}}, the more likely the style will only be applied to the specific element you want. For example, if you wanted the page title on specific page to be a different color than the titles all the rest of the pages, you could determine the {{< q-glossary "CSS selector" >}} for that element on that page and apply a style rule to it without changing the styles on any other element or page. This example limits the style to the title in the page header of that one page:

```css
#chapter-one .quire-page__header .title {
  color: red;
}
```

In the above example, we are selecting the element with a {{< q-glossary "class" >}} of `"title"` that is inside an element with the class of `"quire-page__header"` (both of which start with a period `.` to indicate {{< q-glossary "class" >}}), that is inside an {{< q-glossary "element" >}} (in this case an element representing the page itself) with an {{< q-glossary "id" >}} of `"#chapter-one"` (which starts with a hashmark to indicate id).

{{< q-class "box" >}}In Quire, page ids are unique, and can be found on the `<div>` element that has the {{< q-glossary "class" >}} `"quire-primary"`. By using the {{< q-glossary "id" >}} in your custom {{< q-glossary "CSS" >}}, you are targeting only that page, not all `"quire-primary"` {{< q-glossary "element" >}}s throughout your publication.{{< /q-class >}}

{{< q-class "box" >}}Exceptionally, if somewhere there is a more specific {{< q-glossary "CSS selector" >}} that’s applying a style to an element, it will override the less specific one even if it’s in your `custom.css` file. If you are trying to apply a more global style change like this and you find it’s not working, it may be because your {{< q-glossary "CSS selector" >}} is too generic and there is a more specific rule elsewhere in your theme’s styles that is overriding your more general one. The "Inspect element" tool will point to what combination of CSS selectors are actually applying the final style as it’s seen in the browser window.{{< /q-class >}}

## Overriding Theme Templates

{{< q-glossary "CSS" >}} changes like those mentioned above are best for re-styling existing elements. If though you’d like to make a more structural change, say, to rearrange elements on the page, or add new elements altogether, you’ll need to alter the {{< q-glossary "template" >}} files that come in the {{< q-glossary "theme" >}}. That said, other than changing the {{< q-glossary "Variables" >}} in `variables.scss` file, as described above, it’s usually best not to make other changes directly in the theme itself. By not doing so, it’s much easier to update your theme or switch out other themes later, not to mention easier to undo changes you’ve made.

For modest changes to the theme {{< q-glossary "templates" >}}, we recommend creating new override files. Much like the `custom.css` file can be used to override styles in the project theme, you can also have files to override templates. There are none in the default starting project, so you’ll need to start be creating a new `layouts` directory folder in the main directory of your project. Any files you put in this `layouts` directory will override the corresponding files in the `layouts` directory of your theme. This includes page templates, partial templates and shortcodes.

For example, let’s say you want to customize the layout of all the pages in your project with the `type` of `"essay"`. In the theme `layouts` directory you’ll find that there’s a sub-directory called `essay` with a file in it called `single.html`. This is the template that controls the `"essay"` pages. You can see there’s a page header, an abstract the main content `(.Content)` of the {{< q-glossary "Markdown file" >}} and a page bibliography.

```go
{{ define "main" }}
<article class="quire-page" id="main" role="main">

  {{ partial "page-header.html" . }}

  {{ if .Params.abstract }}
  {{ partial "page-abstract.html" . }}
  {{ end }}

  <section id="content" class="section quire-page__content">
    <div class="container">
      <div class="content">
        {{ .Content }}
        {{ partial "page-bibliography.html" . }}
      </div>
    </div>
  </section>

</article>
{{ end }}
```

If you copy the `essay` sub-directory and its `single.html` file into the new `layouts` directory in your project’s main directory, this copy will override anything in the {{< q-glossary "theme" >}}. So, if you delete the bibliography and rearrange the header and abstract in the copied file, that’s what Quire will use when building the site. It only changes the style of the header and abstract of your pages while the bibliography style remains intact.

```go
{{ define "main" }}
<article class="quire-page" id="main" role="main">

  {{ if .Params.abstract }}
  {{ partial "page-abstract.html" . }}
  {{ end }}

  {{ partial "page-header.html" . }}

  <section id="content" class="section quire-page__content">
    <div class="container">
      <div class="content">
        {{ .Content }}
      </div>
    </div>
  </section>

</article>
{{ end }}
```

By default, Quire has a number of pre-defined page types like `"essay"`, `"entry"`, and `"cover"`. To create a new page type, you would follow the model of the `"essay"` page type above, and create a directory with the name of the type and in that, have a file called `single.html` with the {{< q-glossary "template" >}}.

Whether in the {{< q-glossary "theme" >}} or in your project directory, all shortcodes go in the `layouts` directory and `shortcodes` sub-directory. The name of the shortcode file corresponds to the way the shortcode is called in the {{< q-glossary "Markdown" >}} files. So `q-figure.html` is the shortcode `{{</* q-figure */>}}`.

And if you make a mistake or change your mind later, you can simply delete the copy of the file and Quire will go back to using the original template as provided in the theme. This method can also be used to add completely new templates and even new shortcodes.

## Creating a New Quire Theme

TK

## Updating Your Theme to a Newer Version

Before updating your {{< q-glossary "theme" >}}, make note of any changes you made to it as these will need to be manually copied over to the updated version of the theme if you want to keep them. Usually, this would only be changes to the [style variables](#changing-the-style-variables-in-the-theme).

1. In the theme repository on GitHub, use the “Clone or download” button to download a ZIP file of the most current version of the theme, or, go to the repository’s Releases page to choose a particular release.

2. Once downloaded, unzip the package.

3. In the `themes` folder of your Quire project, delete the existing folder there, and replace it with the one you just downloaded. The replacement folder must be named the same as the original.

4. In your {{< q-glossary "command-line interface" >}}, navigate to your project folder and run the command `quire install`. This will install your theme’s dependencies.

5. Once the install process is complete, manually copy over any changes/customizations to the theme that had made previously, and run `quire preview` to confirm.

You may also need to clear your browser cache to get the new theme stylesheets to reload.

## Changing to a New Theme

1. In the theme repository on GitHub, use the “Clone or download” button to download a ZIP file of the most current version of the theme, or, go to the repository’s Releases page to choose a particular release.

2. Once downloaded, unzip the package.

3. Add the new theme package to the `themes` folder of your Quire project. Leave the old theme there for now, until you confirm your new theme works and you are sure you want to use it.

4. In your project’s `config.yml` file, change the name listed under `theme` from `"quire-starter-theme"` to the name of the new theme.

5. In your {{< q-glossary "command-line interface" >}}, navigate to your project folder and run the command `quire install`. This will install your theme’s dependencies.

6. Once the install process is complete, run `quire preview` to confirm.

You may also need to clear your browser cache to get the new theme stylesheets to reload.
