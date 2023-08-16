---
title: References
weight: 6040
type: essay
abstract: "At-a-glance guide to Quire API"
aliases:
  - /documentation/for-developers/
---

Below is a quick guide to Quire repositories, CLI commands and options, Global YAML files, front matter, and shortcode parameters. 

## Repositories

### quire

https://github.com/thegetty/quire

Quire’s primary repository, with the command-line interface and 11ty template packages

### quire-starter-default

https://github.com/thegetty/quire-starter-default

The default starter for a Quire project

### quire-starter-iiif

https://github.com/thegetty/quire-starter-iiif

A starter with more examples of IIIF features

### quire-docs

https://github.com/thegetty/quire-docs

This repository is specifically for the Quire website and documentation.

## Project structure and composition

TK

## Configuration

| Object | Object Properties | Additional Properties | Expected Value | Description |
| ------ | ------------------| -------------------- | -------------- | ----------- |
| `accordion` | `controls` | | "arrow", <br> "plus-minus" | Default symbol for accordion menu is "arrow" |  
| | `copyButton` | `arialabel` | string | Labels an interactive element for accessibility purposes. The default is "Copy page section link to clipboard" | 
| | | `successtext` | string | The default is "Copied page section link to clipboard" | 
| | | `symbol` |  | Symbol that will be used in Markdown. Default is `§` |  
| | `globalControls` | `collapseText` | string | The default is "Collapse All" | 
| | | `expandText` | string | Default is  "Expand All" | 
| `analytics`| `googleId` | |  | Add your Google Analytics tag here. If you don't have one leave the value as `''` | 
| `bylineFormat` | | | "name",<br> "name-title",<br> "false" | Choose false if you don't want a byline to appear | 
| `bibliography` | `displayOnPage` | | boolean | If you want to suppress the page-level bibliography but keep the in-text citations, go into the change the value to false | 
| | `displayShort` | | boolean | Bibliographies can appear with or without the short form of the citation. The default is set to true. If you only want to show the full references, change the value to false |
| | `heading` | | string | A heading can be customized to go above this bibliography. The default heading is “Bibliography” | 
| `citations` | `divider` | |  | Determines the separation between short form citation and the page number. The Default is `','` | 


***NOTE TO ERIN - DEFINE BOOLEAN v STRING***

### Markdown Rendering 

`fractions` <br>
`hrefTargerBlank` 

## Publication API

TK

## Shortcodes API

TK