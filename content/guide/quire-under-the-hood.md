---
title: Quire Dependecy Guide
type: page
---

Each Quire project make use of quire-cli to run commands and the quire-starter-theme to shape the output. This page explains what makes these 2 projects work and what major dependencies currently make quire what it is.

## Hugo <img src="https://raw.githubusercontent.com/gohugoio/hugoDocs/master/static/img/hugo-logo.png" width="200"/>

Hugo is a static HTML and CSS website generator written in Go. It is optimized for speed, ease of use, and configurability. Hugo takes a directory with content and templates and renders them into a full HTML website.

Hugo relies on Markdown files with front matter for metadata, and you can run Hugo from any directory. This works well for shared hosts and other systems where you don’t have a privileged account.

Hugo renders a typical website of moderate size in a fraction of a second. A good rule of thumb is that each piece of content renders in around 1 millisecond.

Hugo is designed to work well for any kind of website including blogs, tumbles, and docs.

Quire makes use of Hugo via the npm package `hugo-bin` https://www.npmjs.com/package/hugo-bin

`npm install `

## 📁 config

