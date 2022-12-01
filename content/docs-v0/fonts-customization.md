---
title: Font Customization
weight: 5500
type: essay
menu: false
abstract: "Add external fonts to your publication"
---

Typography is an important element of style in your Quire publication. Quire allows different levels of font customization, from using the already embedded open license fonts in the default Quire theme (`themes/default`), to adding new external fonts.

## Customize Fonts

Quire’s defualt theme includes three embedded, open license fonts: ["Noto Sans"](https://github.com/googlefonts/noto-fonts), ["Noto Serif"](https://github.com/googlefonts/noto-fonts), and ["IBM Plex Sans Condensed"](https://github.com/IBM/plex). You can adjust which fonts are used where in the "variables" file of your {{< q-def "theme" >}}, `themes/default/source/css/variables.scss`:

```scss
$ibm-sans: 'IBM Plex Sans Condensed', sans-serif;
$noto-sans: 'Noto Sans', sans-serif;
$noto-serif: 'Noto Serif', serif;

$quire-primary-font: null; // body and menu text
$quire-headings-font: null; // headings
$quire-footnotes-font: null; // footnotes and page backmatter
$quire-navigation-font: null; // navbar and next/prev buttons
```

The `$quire-primary-font`, `$quire-headings-font`, `$quire-footnotes-font`, and `$quire-navigation-font` variables are listed first with "null" values. Left as is, Quire will use the default fonts as specified elsewhere in the templates. You can choose your own combinations by using a defined font in place of "null":

```scss
$quire-headings-font: $noto-serif;
```

## Add a New Font

{{< q-class "box warning" >}}

- Any font you add to your project should be under an open license, or you should have an explicit license to use it. While licensed fonts may offer variety, using them often means paying fees and tracking usage. Additionally, if you are using GitHub to publicly share your Quire project, licensed fonts should **never** be included in your repository without also being listed on your `.gitignore` file, as this will expose the files to other users.

{{< /q-class >}}

For open license fonts, [Google Fonts](https://fonts.google.com/) is a great source, but other more artisanal options abound, like the faces from the [League of Moveable Type](https://www.theleagueofmoveabletype.com/) or even [Cooper Hewitt’s own open source font](https://www.cooperhewitt.org/open-source-at-cooper-hewitt/cooper-hewitt-the-typeface-by-chester-jenkins/). For more free fonts and for thoughtful ideas about their use, Jeremiah Shoaf’s [*The Definitive Guide to Free Fonts*](https://www.typewolf.com/free-fonts) is worth the purchase price.

The steps to adding new fonts to your publication are:

### 1. Prepare Your Font Files and Add Them to Your Project

It’s recommended to include your font files in multiple file formats in order to increase browser compatibility. Ideally, you will have each of your fonts in the following formats: `.eot`, `.woff2`, `.woff`, and `.ttf`. If this is not the case, you can use a free webfont generator, like the one from Font Squirrel, to produce these various formats from a single source.

All the fonts you’d like to add should go in a folder named after the font, and all should be named consistently. We recommend the following format with lowercase and no spaces:

```md
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

In your `themes/default` folder, all fonts are stored in `source/fonts`. Move your folder of fonts there.

```
cooper-hewitt
```

If you are using GitHub, and this is a licensed font, or a font you don’t otherwise want available to anyone outside your project, add a line to your project’s `.gitignore` file to make sure the fonts are not added to the git record.

You will continue to have the fonts available in your local copy of your project, but anyone working on a clone or fork of your repository will have to manually add your font files to their local copy for them to appear in the project properly when they preview or build the site.

When you ultimately host the final site on a web server, the fonts will be included in the built files and will need to be included in the package on the web server. Files hosted this way are not readily accessible to non-technical users, but are still public. For another layer of protection, font files could be assigned more generic names (ie., `f1-bld.ttf` instead of `cooper-hewitt-bold.ttf`). For complete protection of licensed/proprietary font files, other solutions should be sought.

### 2. Add Font Information to Your Stylesheets

Open the file `source/css/fonts.scss`. Each font in your font folder should have its own `@font-face` entry, as the examples in this file demonstrate.

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

### 3. Use Your New Font

With the font files included in the `source/fonts` folder, and all the matching `@font-face` entries saved to the `source/css/fonts.scss` file, you can now use your font anywhere in your site CSS with `font-family`.

```css
h1 {
  font-family: "Cooper Hewitt";
}
```

Typically, you’ll want to change fonts across the project. For instance, making all the main body copy a new font, or all the headings. This can be done in the `source/css/variables.scss` file that we describe in the [Customize fonts section](#customizing-fonts):

To replace all `$sans-serif` uses with a new font:

```scss
$sans-serif: "Cooper Hewitt", Helvetica, sans-serif;
```

Or to leave the existing `$sans-serif` and just make all the primary font be our new one:

```scss
$family-primary: "Cooper Hewitt", Helvetica, sans-serif;
```

The rules about fallback fonts described in the [Customize fonts section](#customizing-fonts) above also apply to the new fonts.
