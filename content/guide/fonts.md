---
title: Fonts
type: page
---

Typography is an important element of style in your Quire publication. Quire allows different levels of font customization, from using the already embedded open license fonts in the `quire-starter-theme` to adding new external fonts.

## Customizing Fonts

The `quire-starter-theme` includes three embedded, open license fonts: ["Merriweather"](https://fonts.google.com/specimen/Merriweather), ["Lato"](https://fonts.google.com/specimen/Lato), and ["Aleo"](http://www.fontfabric.com/aleo-free-font/). You can adjust which ones are used where in the "variables" file of your theme[&], `source/css/variables.scss`:

```scss
$serif: Merriweather, Georgia, serif;
$sans-serif: Lato, Helvetica, sans-serif;
$slab-serif: Aleo, Rockwell, "Trebuchet MS", sans-serif;

$family-primary: $serif;
// body text: $serif, $sans-serif, $slab-serif

$family-secondary: $sans-serif;
// headings and navigation items: $serif, $sans-serif, $slab-serif
```

The `$serif`, `$sans-serif` and  `$slab-serif` variables tell your publication what fonts to use. For example, the variable `$serif: Merriweather, Georgia, serif;` tells Quire to use "Merriweather" as serif font. "Georgia" and a generic `serif, the comma-separated fonts declared after our custom font, are fallbacks in case the browser doesn’t load or support our custom one (in this case "Merriweather"). You want your fallbacks to be of the same basic type as your custom one, and go from most to least specific in the list. [Read more about fallbacks and `font-family` usage on Mozilla’s web docs.](https://developer.mozilla.org/en-US/docs/Web/CSS/font-family)

The variables `$family-primary` and `$family-secondary` tell your publication where to use the fonts you specify with the above variables. If the `$family-primary` font of your publication is `$serif`, "Merriweather" (and its fallback options) will be used in the body text of the publication pages.

## Adding a New Font

[Note] Any font you add to your project should be under an open license, or you should have an explicit license to use it. While licensed fonts may offer variety, using them often means paying fees, and tracking usage. Additionally, if you are using GitHub to publicly share your Quire project, licensed fonts should **never** be included in your repository without also being listed on your `.gitignore` file, as this will expose the files to other users.

For open license fonts, [Google Fonts](https://fonts.google.com/) is a great source, but other more artisanal options abound like the faces from the [League of Moveable Type](https://www.theleagueofmoveabletype.com/), or even the [Cooper Hewitt’s own open source font](https://www.cooperhewitt.org/open-source-at-cooper-hewitt/cooper-hewitt-the-typeface-by-chester-jenkins/). For more free fonts and for thoughtful ideas about their use, Jeremiah Shoaf’s [*The Definitive Guide to Free Fonts*](https://www.typewolf.com/free-fonts), is worth the purchase price.

The steps to adding new fonts to your publication are:

### 1. Preparing Your Font Files and Adding Them to Your Project

It’s recommended to include your font files in multiple file formats in order to increase browser compatibility. Ideally, you will have each of your fonts in the following formats: `.eot`, `.woff2`, `.woff`, and `.ttf`. If this is not the case, you can use a free webfont generator[&] like the one from Font Squirrel to produce these various formats from a single source.

All the fonts you’d like to add should go in a folder named after the font, and all should be named consistently. We recommend the following format with lowercase and no spaces:

```
📁 cooper-hewitt
  📄 cooper-hewitt-bold.eot
  📄 cooper-hewitt-bold.ttf
  📄 cooper-hewitt-bold.woff
  📄 cooper-hewitt-bold.woff2
  📄 cooper-hewitt-bolditalic.eot
  📄 cooper-hewitt-bolditalic.ttf
  📄 cooper-hewitt-bolditalic.woff
  📄 cooper-hewitt-bolditalic.woff2
```

In your `themes/quire-starter-theme` folder, all fonts are stored in `source/fonts`. Move your folder of fonts there.


[note] If you are using GitHub, and this is a licensed font, or a font you don’t otherwise want available to anyone outside your project, add a line to your project’s `.gitignore` file to make sure the fonts are not added to the git record.

```
cooper-hewitt
```

You will continue to have the fonts available in your local copy of your project, but anyone working on a clone or fork of your repository will have to manually add your font files to their local copy for them to appear in the project properly when they preview or build the site.

When you ultimately host the final site on a web server, the fonts will be included in the built files and will need to be included in the package on the web server. Files hosted this way are not readibly accessible to non-technical users, but are still public. For another layer of protection, if it’s of a concern, font files could be assigned more generic names (ie., `f1-bld.ttf` instead of `cooper-hewitt-bold.ttf`). For complete protection of licensed/proprietary font files, other solutions should be sought.

### 2. Adding Font Information to Your Stylesheets

Open the file `source/css/fonts.scss`. Each font in your font folder should have its own `@font-face` entry as the examples in this file demonstrate.

```css
@font-face {
  font-family: "Cooper Hewitt";
  src: url("../fonts/cooper-hewitt/cooper-hewitt-bold.eot");
  src: url("../fonts/cooper-hewitt/cooper-hewitt-bold.eot?#iefix") format("embedded-opentype"),
       url("../fonts/cooper-hewitt/cooper-hewitt-bold.woff2") format("woff2"),
       url("../fonts/cooper-hewitt/cooper-hewitt-bold.woff") format("woff"),
       url("../fonts/cooper-hewitt/cooper-hewitt-bold.ttf") format("truetype");
  font-weight: 700;
  font-style: normal;
}
```

- The `font-family` name is what you will use to call the font in your stylesheets. It is typically in title case, and can include spaces. The `font-family` name should be the same for all weights and styles of font you are adding. Meaning, all `""Cooper Hewitt""` not `""Cooper Hewitt" Bold"` or `""Cooper Hewitt" Light Italic"`.

The individual weights and styles are instead specified with the `font-weight` and `font-style` properties.

- The `font-weight` should be an integer set to match named weight of your font. Following the table below, a “Light” font would have a `font-weight` of 200. A “Bold” font would have a `font-weight` of 700.

| `font-weight` | Font name |
| --- | --- |
| 100 | Extra Light or Ultra Light |
| 200 | Light or Thin |
| 300 | Book or Demi |
| 400 | Normal or Regular |
| 500 | Medium |
| 600 | Semibold, Demibold |
| 700 | Bold |
| 800 | Black, Extra Bold or Heavy |
| 900 | Extra Black, Fat, Poster or Ultra Black |

- The `font-style` will be either `normal` or `italic`.

### 3. Using Your New Font

With the font files included in the `source/fonts` folder, and all the matching `@font-face` entries saved to the `source/css/fonts.scss` file, you can now use your font anywhere in your site CSS with `font-family`.

```css
h1 {
  font-family: "Cooper Hewitt";
}
```

Typically, you’ll want to change fonts across the project. For instance making all the main body copy a new font, or all the headings. This can be done in the `source/css/variables.scss` file that we describe in the [Customizing fonts section](#customizing-fonts):

To replace all `$sans-serif` uses with a new font:

```scss
$sans-serif: "Cooper Hewitt", Helvetica, sans-serif;
```

Or to leave the existing `$sans-serif` and just make all the primary font be our new one:

```scss
$family-primary: "Cooper Hewitt", Helvetica, sans-serif;
```

The rules about fallback fonts described in the [Customizing fonts section](#customizing-fonts) above also apply to the new fonts.
