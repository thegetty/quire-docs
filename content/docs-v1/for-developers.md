---
title: For Developers
weight: 6040
type: essay
abstract: "API docs and Quire repository guide"
aliases:
  - /documentation/for-developers/
---

TK

## Repositories

### quire

https://github.com/thegetty/quire

Quire’s primary repository, with the command-line interface and 11ty template packages

### quire-docs

https://github.com/thegetty/quire-docs

This repository is specifically for the Quire website and documentation.

### quire-starter-default

https://github.com/thegetty/quire-starter-default

The default starter for a Quire project

### quire-starter-iiif

https://github.com/thegetty/quire-starter-iiif

A starter with more examples of IIIF features

## Local Development

### `quire-11ty`

To create a new project with a local `quire-11ty` package, use `quire new` with the `--quire-path` option and path to your local `quire-11ty` package.

```
quire new my-project --quire-path ~/path/to/local/quire/packages/11ty/
```

### Starters

To create a new project with a local or remote starter, you can pass an absoulte path or url as the second parameter to `quire new`.

```
quire new my-project ~/path/to/local/starter/
```

```
quire new my-project https://github.com/thegetty/quire-starter-iiif.git
```

#### `quire-11ty` compatibility

At its most basic, a Quire starter contains a `package.json`, styles, global data files, and markdown templates for a Quire project. A starter is a standalone repository separate from the main [`quire`](http://github.com/thegetty/quire) repository. When creating a new project with the `quire new` command, the starter contents are merged with the contents of the `quire-11ty` package to create a Quire project. Since these packages are somewhat interdependent, modifications to the markup in the `quire-11ty` project, or to the styles and YAML structures in the starter may also require changes to the other project.

To address this, a starter's `package.json` lists `quire-11ty` as a peer dependency. The `quire-11ty` version should be specified as "latest" or using [semantic versioning](https://semver.org) to pin the starter to an older version if compatibility with later releases is an issue.

## Configuration

TK

## Publication API

TK

## Shortcodes API

TK