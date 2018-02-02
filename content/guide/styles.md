---
title: Customizing Styles
type: page
---

The look and feel of your Quire publication can be customized at four different levels of complexity: 1. changing style variables in the theme, 2. adding new style rules to the `custom.css` file, 3. overriding specific theme templates with your own custom version, or 4. creating an entirely new Quire theme.

## Changing the Style Variables in the Theme

Every Quire project has a theme inside the `themes` directory. When you first start a new project with the `quire new` command, the default theme included is `quire-starter-theme`. In it, you can access simple text variables that will let you update the primary color, the menu color, the background image, and more. To find the variables, open the `quire-starter-theme` directory, navigate to `source` and then `css`, and open the file called `application.scss`.

The `quire-starter-theme` uses the Bulma CSS framework, so you can use [any Bulma variables](https://bulma.io/documentation/overview/variables/), or of course you can use regular values like px or rem for sizes, and hex or rgb for colors.

```
$navbar-background-color: $dark;

$quire-menu-background-color: #fff000;

$quire-menu-background-color: $dark;

$quire-menu-width: 300px;

```

Note: you must have `quire preview` running to see changes you made. You may also sometimes need to refresh your browser page, or even clear the browser cache.

## Adding New Styles to custom.css

## Overriding Theme Templates

Other than changing the variables in `application.scss` file, it’s usually best not to make other changes in the theme itself. By not doing so, it’s much easier to update your theme or switch out other themes later, not to mention easier to undo changes you’ve made.

## Creating a New Quire Theme


