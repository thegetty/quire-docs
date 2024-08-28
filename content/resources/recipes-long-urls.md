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
- Thank you to community member [@lucafalefoto](https://github.com/lucafalefoto) for suggesting this solution along with the additional resource [Better Line Breaks for Long URLs](https://css-tricks.com/better-line-breaks-for-long-urls/).
{{< /q-class >}}
