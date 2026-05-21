---
label: RECIPE
title: Display a Video Cover Image
weight: 7356
type: page
online: false
---

You can use an animated GIF or WEBP file to create an animated cover for your project. Resolutions can often be an issue for these files though, as having a high-enough quality file to look good as a full-sized cover image, often results in a very large file size and poor load times for users. In these cases you may want to customize your project to instead use a short video file.

You can have a video cover in Quire by making a few customizations to your project. You'll want to use a short MP4 video that will work when played in a loop. The shorter the video clip, the smaller the file will be and the better it will load for your users.

{{< q-class "warn" >}}

This will only work for the online/HTML version of your Quire project. This recipe does not offer fallbacks for the PDF or EPUB output. For those, you can create a static version as a JPG file. For EPUB, add the JPG to your `content/_assets/images` directory and list it under `epub.defaultCoverImage` in `content/_data/config.yaml`. For PDF, output your PDF file without a cover and manually add the static cover JPG directly as the first page.

{{< /q-class >}}

Start by customizing the cover layout to display the video instead of a static image. In `_layouts/cover.liquid` replace:

```html
<div
  class="quire-cover__overlay"
  style="background-image: url('{{ imagePath }}');"
  >
  {% comment %} This ensures background image asset gets copied into epub package {% endcomment %}
  <img class="visually-hidden" src="{{ imagePath }}" alt="" data-outputs-include="epub" />
</div>
```

With: 

```html
<div class="quire-cover__overlay">
  <video autoplay muted loop class="quire-cover__video">
    <source src="{{ imagePath }}" type="video/mp4" />
  </video>
</div>
```

Next, add some CSS styles to ensure the video is sized properly. In `content/_assets/styles/custom.css` add:


```css
.quire-cover__video {
  object-fit: cover;
  min-height: calc(95vh - 3rem - 2px);
  max-height: calc(95vh - 3rem - 2px);
  width: 100vw;
}
```

Finally, add your MP4 video file to `content/_assets/images` and reference it in `content/index.md` like you would any cover image:

```yaml
---
layout: cover
order: 1
image: cover-video.mp4
outputs:
  - html
---
```