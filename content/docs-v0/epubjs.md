---
title: Creating Epubs with Epub.js
weight: 5700
type: essay
menu: false
abstract: "Using a Publication manifest and Epub.js to create Epub files"
---

[Epub.js](https://github.com/futurepress/epub.js)is an open source library for parsing and rendering Epub files using Javascript. The [CLI for Epub.js](https://github.com/futurepress/epubjs-cli) enables creating Epub files from [W3C Publication Manifests](https://www.w3.org/TR/pub-manifest/).

## Publication Manifest
A publication manifest is a JSON-LD serialized document that allows for expressing information about a digital publication, and providing URLs to the resource that publication requires.

At its simplest, the document contains:
* The `@context` for the JSONn-LD document
* The type of the document, which for manifest that will eventually be used to create and Epub should always be `Book`.
* For Epub generation the document should include a  `conformsTo`  with the Epub specification url.
* A unique  `id`  for the document.
* A reading order array of HTML files that contain the publications content in the order it should be displayed.
* Links to any resources that content will link to, such as stylesheets / images / fonts etc.
* A `url` is also required for the manifest standard but is optional when using a manifest to convert to Epub as it will be ignored.

```json
{
	"@context": [
		"https://schema.org",
		"https://www.w3.org/ns/pub-context"
	],
	"type": "Book",
	"conformsTo": "https://www.w3.org/publishing/epub3/",
	"id": "example.book.123",
	"readingOrder": [
		{
			"url": "content/titlepage.html",
			"encodingFormat": "text/html",
			"name": "Title Page"
	  },
		...
	],
	"resources" : {
		{
			"url": "css/stylesheet.css",
			"encodingFormat": "text/css"
		}
		...
	}
}

```

## Metadata
The manifest can support any schema.org metadata but when converting to Epub there are a few important ones that will be included in the generated `package.opf`.

* `dateModified` -> `dcterms:modified`
* `id` -> `dc:identifier`
* `inLanguage` -> `dc:language`
* `dateModified` -> `dcterms:modified` 
* `rights` -> `dc:rights`
* `creators[]` -> `dc:creator`
* `contributor[]` -> `dc:contributor`
* `title` -> `dc:title`
* `source` -> `dc:source`
* `subject` -> `dc:subject`
* `description` -> `dc:description`

## Reading Order
Each item in the `readingOrder` array will be converted to a spine item in the epub. Any content that shouldn’t be ordered (`linear=“no”`) should be included in `resources` instead.

Each item should have an `url` entry containing a relative path to the items HTML file.

Optionally items can include a `properties`  array, which will be passed as spine item properties when converting to Epub.

## Resources
Resources should contain the `url` of all the assets that a publication will need to display, and will all be included in the output Epub zip file.

For example,  a cover HTML page might look like:
```json
{
    "url": "content/cover.html",
    "encodingFormat": "text/html",
    "rel": "cover"
}
```

The `url`  entry can be relative or absolute.

The `encodingFormat`  is the mime-type of the linked resource, including this helps to identify the type of resource but is optional as it can be inferred from the filename.


There are a few special `rel` options to help with converting to Epub:
* `cover` -> identifies the cover spine item
* `cover-image` -> identifies the cover image url
* `contents` -> identifies the Table of Contents / Nav for the Epub

## Using the Epubjs CLI
Quire will output the required JSON document to convert a publication into Epub, but should any tweaks or debugging be needed it can be manually updated after building in `_epub/manifest.json`.

**Note:** the `manifest.json` in the `_site` folder is unrelated and used by 11ty.

After making any tweaks, you can re-run the Epub generation outside of Quire by using the `epubjs-cli` library directly.

```sh
npx epubs-cli create ./_epub/manifest.json -o mybook.epub
```

## Validation

[EpubCheck](https://www.w3.org/publishing/epubcheck/) is a command line tool from the W3C to validate that an ePub file conforms to the requirements defined in the Epub specifications. It checks the package info, looks for missing files and tests content markup.

Installing requires Java, and can be [installed by downloading a zip](https://w3c.github.io/epubcheck/docs/installation/). However, on a Mac it's easiest to use homebrew to install it:

```sh
brew install epubcheck
```

Then running it just requires the path to the Epub to check:

```sh
epubcheck output.epub
```

You can get more information on any errors or warning that it outputs at https://w3c.github.io/epubcheck/docs/messages/.
