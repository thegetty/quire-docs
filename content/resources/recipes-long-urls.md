---
label: RECIPE
title: "Fix Long URLs in Pop-Up Citation Boxes with Custom CSS"
weight: 7354
type: page
online: false
---

Sometimes long URLs will extend beyond the limits of a pop-up citation box as in the example below: 

{{< q-figure id="long-url" >}}

This can be fixed with custom CSS.

```CSS
.quire-citation__content, .quire-page__content__references {        
    overflow-wrap: break-word; 
    word-wrap: break-word; -ms-word-break: break-all; 
    word-break: break-all; 
    word-break: break-word; 
}
```

{{< q-class "box" >}}
Thank you to community member [@lucafalefoto](https://github.com/lucafalefoto) for suggesting this solution along with the additional resource [Better Line Breaks for Long URLs](https://css-tricks.com/better-line-breaks-for-long-urls/).
{{< /q-class >}}

Please note that this fix breaks the URL at a random point, rather than per the [*Chicago Manual of Style*](https://www.chicagomanualofstyle.org/home.html)'s recommendation to break *before* punctuation, such as a slash or an underscore. This fix also only applies to URLs in pop-up citations and not those that appear in the footnotes or bibliography section. 

An alternative, although somewhat tedious solution, is to add a "line break opportunity" HTML element (`<wbr>`) before all punctuation marks as in the example below:

```HTML
https://<wbr>www.metmuseum.org<wbr>/art<wbr>/metpublications<wbr>/Italian<wbr>_Renaissance<wbr>_and<wbr>_Baroque<wbr>_Bronzes<wbr>_in<wbr>_th<wbr>_Metropolitan<wbr>_Museum<wbr>_of<wbr>_Art
```
