---
title: Quire Dependecy Guide
type: page
---

Each Quire project make use of quire-cli to run commands and the quire-starter-theme to shape the output. This page explains what makes these 2 projects work and what major dependencies currently make quire what it is.

<a alt="HUGO" title="HUGO" href="https://gohugo.io/"><img src="https://raw.githubusercontent.com/gohugoio/hugoDocs/master/static/img/hugo-logo.png" alt="HUGO" title="HUGO" width="100"/></a>

> Hugo is a static HTML and CSS website generator written in Go. It is optimized for speed, ease of use, and configurability. Hugo takes a directory with content and templates and renders them into a full HTML website. Hugo relies on Markdown files with front matter for metadata, and you can run Hugo from any directory. This works well for shared hosts and other systems where you don’t have a privileged account.

Quire makes use of Hugo via the npm package <a href="https://www.npmjs.com/package/hugo-bin"/>`hugo-bin`</a>

Quire uses hugo's command line interface(cli), templating system and http server. to create a way to preview your site while editig the front end code, build a static html site and aids Prince XML to create a PDF of your publication you are building.

<a  alt="Prince XML" title="Prince XML" href="https://www.princexml.com/"><img src="https://www.princexml.com/images/Prince-logo-footer.png" alt="Prince XML" title="Prince XML" width="100"/></a>

> Prince can also be used by authors and publishers to typeset and print documents written in HTML, XHTML, or one of the many XML-based document formats. Prince is capable of formatting academic papers, journals, magazines, and books.

<a href="https://webpack.js.org/" alt="WEbpack" title="WEbpack" ><img src="https://camo.githubusercontent.com/d18f4a7a64244f703efcb322bf298dcb4ca38856/68747470733a2f2f7765627061636b2e6a732e6f72672f6173736574732f69636f6e2d7371756172652d6269672e737667" alt="WEbpack" title="WEbpack" width="100"/></a>

> At its core, webpack is a static module bundler for modern JavaScript applications. When webpack processes your application, it internally builds a dependency graph which maps every module your project needs and generates one or more bundles.
