---
label: RECIPE
title: Hide Title and Subtitle from Cover Page with Custom CSS 
weight: 7352
type: page
online: false
---

Quire automatically generates the title and subtitle that appear on your project's cover page using information from the `publication.yaml` file. You can hide this information on the cover by using custom CSS. This especially useful if the image you are using for your cover already includes a title and subtitle. A good example of this is [*The Art of the Scene: Charles Truett Williams*](https://art-scene.cartermuseum.org/) from the Amon Carter Museum of American Art. 

## 1. Open the `custom.css` file

Navigate to your project's `_assets/styles/custom.css` file.

## 2. Add custom CSS

Cut and paste the lines of CSS listed below into the `custom.css` file. 

```css
.quire-cover__hero-body {
    clip: rect(0 0 0 0);
    clip-path: inset(50%);
    height: 1px;
    overflow: hidden;
    position: absolute;
    white-space: nowrap;
    width: 1px;
  }
```

## 3. Confirm with preview

Refresh your project and navigate to your cover page to confirm the custom CSS worked correctly. 