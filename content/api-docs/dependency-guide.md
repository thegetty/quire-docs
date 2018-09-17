---
title: Dependency Guide
type: essay
weight: 403
---

Each Quire project relies on two projects the `quire-cli` a command line interface (cli) to run commands to preview and build a static website, a PDF or an EPUB and the `quire-starter-theme` a front end development toolkit that allows users to shape the output of the website, PDF and EPUB. This page explains what makes these two projects work and what major dependencies currently make quire what it is.

{{< q-figure id="1.16" class="is-small" >}}

> Hugo is a static HTML and CSS website generator written in Go. It is optimized for speed, ease of use, and configurability. Hugo takes a directory with content and templates and renders them into a full HTML website. Hugo relies on Markdown files with front matter for metadata, and you can run Hugo from any directory. This works well for shared hosts and other systems where you don’t have a privileged account.

Quire makes use of Hugo via the npm package <a href="https://www.npmjs.com/package/hugo-bin"/>`hugo-bin`</a>

Quire uses Hugo’s cli, templating system and http server. to create a way to preview your site while editing the front end code, build a static html site and aids Prince XML to create a PDF of your publication you are building.

{{< q-figure id="1.17" class="is-small" >}}

> Prince can also be used by authors and publishers to typeset and print documents written in HTML, XHTML, or one of the many XML-based document formats. Prince is capable of formatting academic papers, journals, magazines, and books.

Quire uses the output of Hugo static-site generator to build a PDF as referenced above.

{{< q-figure id="1.18" class="is-small" >}}

> At its core, webpack is a static module bundler for modern JavaScript applications. When webpack processes your application, it internally builds a dependency graph which maps every module your project needs and generates one or more bundles.

Quire makes use of Webpack via the npm package <a href="https://www.npmjs.com/package/webpack"/>`webpack`</a>

Currently Quire starter theme uses the latest version of Webpack 4 to bundle front end assets and support the development workflow.

To modify the Webpack configuration for your project edit this file

`<your-project-directory>/themes/quire-starter-theme/webpack.config.js`

### [pe-epub](https://github.com/peoples-e/pe-epub) and [pe-epub-fs](https://github.com/peoples-e/pe-epub-fs)

>"pee pub" makes epubs better. Our goal is to make it as easy as possible to output a valid epub. It's used in production over at The People's E-Book. pe-epub-fs extends pe-epub so you can import local assets from your filesystem rather than from the web.

Quire uses these projects to generate the EPUB file. This file can be access on any device or software that reads the .epub file format. These projects generate a mostly style stripped version of the publication. These projects have been receiving limited maintenance. Quire is currently seeking a replacement to output the EPUB file.

## Quire Dependency Tables

### CLI Dependencies

| Dependency | NPM Description |
| --- | --- |
| [axios](https://www.npmjs.com/package/axios) | Promise based HTTP client for the browser and node.js |  
| [chalk](https://www.npmjs.com/package/chalk) | Terminal string styling done right |  
| [cheerio](https://www.npmjs.com/package/cheerio) | Fast, flexible & lean implementation of core jQuery designed specifically for the server. |  
| [command-exists](https://www.npmjs.com/package/command-exists) | node module to check if a command-line command exists |  
| [commander](https://www.npmjs.com/package/commander) | The complete solution for node.js command-line interfaces, inspired by Ruby's commander. |  
| [execa](https://www.npmjs.com/package/execa) | A better `child_process` |  
| [glob](https://www.npmjs.com/package/glob) | Match files using the patterns the shell uses, like stars and stuff. |  
| [hugo-bin](https://www.npmjs.com/package/hugo-bin) | Binary wrapper for Hugo |  
| [js-yaml](https://www.npmjs.com/package/js-yaml) | YAML 1.2 parser / writer for JavaScript |
| [lodash](https://www.npmjs.com/package/lodash) | The Lodash library exported as Node.js modules. |
| [pe-epub]() | Makes epubs better. |  
| [pe-epub-fs]() | Extends pe-epub so you can import local assets from your filesystem rather than from the web |
| [rimraf](https://www.npmjs.com/package/rimraf) | The UNIX command rm -rf for node. |  
| [striptags](https://www.npmjs.com/package/striptags) | An implementation of PHP's strip_tags in Node.js. |
| [webpack](https://www.npmjs.com/package/webpack) | webpack is a module bundler |  
| [yaml-front-matter](https://www.npmjs.com/package/yaml-front-matter) | Parses yaml or json at the front of a string. Places the parsed content, plus the rest of the string content, into an object literal. |  

### CLI Dev Dependencies

| Dependency | NPM Description |
| --- | --- |
| [elint]([https://www.npmjs.com/package/eslint]) | ESLint is a tool for identifying and reporting on patterns found in ECMAScript/JavaScript code. |  
| [eslint-config-standard](https://www.npmjs.com/package/eslint-config-standard)  | Shareable configs are designed to work with the extends feature of .eslintrc files. You can learn more about Shareable Configs on the official ESLint website. |  
| [eslint-plugin-promise](https://www.npmjs.com/package/eslint-plugin-promise)  | Enforce best practices for JavaScript promises. |  
| [eslint-plugin-standard](https://www.npmjs.com/package/eslint-plugin-standard)  | ESlint Rules for the Standard Linter |  
| [jsdoc](https://www.npmjs.com/package/jsdoc)  | An API documentation generator for JavaScript. |  
| [jsdoc-template-argon](https://www.npmjs.com/package/jsdoc-template-argon)  | Template System for jsdoc |
| [mocha](https://www.npmjs.com/package/mocha)  | Simple, flexible, fun JavaScript test framework for Node.js & The Browser |  
| [tmp](https://www.npmjs.com/package/tmp)  | A simple temporary file and directory creator for node.js. |

### Starter Theme Dependencies

| Dependency | NPM Description |
| --- | --- |
| [bulma]([https://www.npmjs.com/package/bulma]) | Bulma is a CSS framework. There is no JavaScript included. |  
| [hammerjs](https://www.npmjs.com/package/hammerjs)  | Hammer is a open-source library that can recognize gestures made by touch, mouse and pointerEvents |
| [jquery](https://www.npmjs.com/package/jquery)  | jQuery is a fast, small, and feature-rich JavaScript library. |  
| [leaflet](https://www.npmjs.com/package/leaflet)  | Leaflet is the leading open-source JavaScript library for mobile-friendly interactive maps.  |  
| [lodash](https://www.npmjs.com/package/lodash)  |  lodash is a fast, small, and feature-rich JavaScript library. |  
| [lunr](https://www.npmjs.com/package/lunr)  | A bit like Solr, but much smaller and not as bright. |
| [smoothstate](https://www.npmjs.com/package/smoothstate)  | smoothState.js is a jQuery plugin that progressively enhances page loads to give us control over page transitions. |  
| [template-polyfill](https://www.npmjs.com/package/template-polyfill)  | A polyfill for the HTML5 `<template>` tag. |  
| [velocity-animate](https://www.npmjs.com/package/velocity-animate)  | Velocity is an animation engine with the same API as jQuery's $.animate(). |  


### Starter Theme Dev Dependencies

| Dependency | NPM Description |
| --- | --- |
| [babel-loader](https://www.npmjs.com/package/babel-loader) | This package allows transpiling JavaScript files using Babel and webpack. |  
| [clean-webpack-plugin](https://www.npmjs.com/package/clean-webpack-plugin) | A webpack plugin to remove/clean your build folder(s) before building. |  
| [css-loader](https://www.npmjs.com/package/css-loader)   | The css-loader interprets @import and url() like import/require() and will resolve them. |  
| [eslint](https://www.npmjs.com/package/eslint) | ESLint is a tool for identifying and reporting on patterns found in ECMAScript/JavaScript code. |  
| [extract-text-webpack-plugin](https://www.npmjs.com/package/extract-text-webpack-plugin) | Extract text from a bundle, or bundles, into a separate file. |
| [file-loader](https://www.npmjs.com/package/file-loader) | Instructs webpack to emit the required object as file and to return its public URL |  
| [glob](https://www.npmjs.com/package/glob) | Match files using the patterns the shell uses, like stars and stuff. |  
| [node-sass](https://www.npmjs.com/package/node-sass) | Node-sass is a library that provides binding for Node.js to LibSass, the C version of the popular stylesheet preprocessor, Sass. |
| [purify-css](https://www.npmjs.com/package/purify-css) | A function that takes content (HTML/JS/PHP/etc) and CSS, and returns only the used CSS. |
| [purifycss-webpack](https://www.npmjs.com/package/purifycss-webpack) | This plugin uses PurifyCSS to remove unused selectors from your CSS. You should use it with the extract-text-webpack-plugin. |  
| [sass-loader](https://www.npmjs.com/package/sass-loader) | Loads a Sass/SCSS file and compiles it to CSS. |
| [style-loader](https://www.npmjs.com/package/style-loader) | Adds CSS to the DOM by injecting a `<style>` tag |  
| [uglifyjs-webpack-plugin](https://www.npmjs.com/package/uglifyjs-webpack-plugin) | This plugin uses UglifyJS v3 (`uglify-es`) to minify your JavaScript |
| [webpack](https://www.npmjs.com/package/webpack) | webpack is a module bundler |  
| [url-loader](https://www.npmjs.com/package/url-loader) | Loads files as `base64` encoded URL |  
