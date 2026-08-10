---
title: Font Customization
weight: 6360
type: essay
abstract: "Add external fonts to your publication"
aliases:
  - /documentation/fonts-customization/
---

## Import Fonts from Google Fonts or Bunny Fonts

For long-term performance and preservation it is recommended to include all font files within the project rather than hosting them from a third-party service. However, in cases where that is not possible/practical, or where you first want to try out some font options before committing, hosted fonts from [Google Fonts](https://fonts.google.com) or its open-source, privacy-first mirror, [Bunny Fonts](https://fonts.bunny.net), can be used in your project.

1. On your preferred service, find the font you want and add it to your font selections with the "Add variant" (Bunny) or "Get font" (Google) option on the page. 

2. View your selected fonts in the menu in the upper right of the page. In Google, click "Get embed code" and select the web `@import` option. In Bunny, the `@import` option will be displayed immediately. The single `@import` line will include all of the fonts you selected.

3. Copy the `@import` code and paste it into your project's `content/_assets/fonts/index.scss` file, on a new line anywhere near the top of the file. (Note that Google Fonts may also wrap the `@import` code in `<style>` tags, these tags should not be included in your `index.scss` file.)

    ```css
    @import url(https://fonts.bunny.net/css?family=andada-pro:400);
    ```

    ```css
    @import url('https://fonts.googleapis.com/css2?family=Andada+Pro&display=swap');
    ```

4. Along with the `@import` rule, both font services will also indicate a specific way of calling the font with `font-family`. Copy this naming and use it to create a new variable in your project's `content/_assets/styles/variables.scss` file with the other pre-defined fonts that are there. If you selected more than one font in your `@import` rule, be sure to create a new variable for each one.

    ```css
    font-family: 'Andada Pro', serif;
    ```


    ```scss
    $andada-pro: 'Andada Pro', serif;
    ```

5. Use the new variable to update the font selection anywhere one is made in the `variables.scss` file, or in SCSS files elsewhere in the `content/_assets/styles` directory.

    ```scss
    $quire-headings-font: $andada-pro; // headings
    ```

If you go back to your font service provider and select different or additional fonts, be sure to go back and update your `@import` line and add/remove the appropriate font variables from `variables.scss`.

### Font Weights and Italics

When selecting fonts in Google Fonts or Bunny Fonts, you will likely need to choose the specific weights of the fonts you want to use in your project, as well as the matching italics for that weight if you need them. 400 is a typical "regular" font weight for body text. 700 is a typical "bold" weight. And these two weights are sufficient for all of Quire's included templates.

It saves bandwidth for your web hosting and the visitors to your site to only select the weights you will actually use in your project.

Some fonts will be offered as so-called "variable" fonts. In these cases, all the available font weights and styles will be included in a single, compressed file. So you only need to select the one file to get access to all of the weights and italics.

## Add a New Font

TK

### 1. Prepare Your Font Files and Add Them to Your Project

TK

### 2. Add Font Information to Your Stylesheets

TK

### 3. Use Your New Font

TK
