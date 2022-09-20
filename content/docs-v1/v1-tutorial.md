---
title: "Quire Basics Tutorial"
subtitle:
weight: 6010
type: essay
abstract: "Get started with a walkthrough of Quire fundamentals"
---

Developed by Getty, Quire offers an elegant and affordable digital publishing solution ideal for creating dynamic publications in a variety of formats, including web, print, and e-book. Through the use of static site generation and plain text files, Quire makes it possible to preserve and distribute works in a stable and accessible format.

As you get started with Quire, it is important to familiarize yourself with the three core components that you will use to create, edit, and output your Quire project:
- {{< q-def "text editor" >}} - You will use the text editor to edit your - publication files
- {{< q-def "command-line shell" >}} - You will use the command-line shell to tell Quire what to do (like `quire new` to start a new project and `quire preview` to preview your project)
- {{< q-def "web browser" >}} - You will use the web browser to preview your work in real-time

{{< q-figure id="1.4" >}}

In the following sections, you’ll learn more about these interconnected components and get some hands-on experience working in a Quire project.

## 1. Understand the Command-Line Shell

The first thing you’ll need is a command-line shell, which is an interface that allows you to control your computer through text. Macs already have a good shell installed called Terminal. It can be found in the Applications/Utilities folder (or by pressing Command–Space Bar and typing “Terminal” to search for it). For PCs, we recommend installing [Git for Windows](https://gitforwindows.org/), which comes with a shell called Git BASH.

In addition to telling Quire what to do, the command-line shell can also be used as a text-based way of viewing and navigating your computer's files. You can use command-line shell to list the contents of particular directory (otherwise known as a folder) in the same way you would use Finder or File Explorer. When you open your shell, by default, you will be in your {{< q-def "home directory" >}}.  

{{< q-figure id="commandline-vs-folder" >}}

{{< q-class "box tip" >}}
- `ls` lists all the files in the directory you’re in
- `cd` followed by a space and a directory name, will move you into that directory
- `cd` by itself will return you to your home directory
- `!!` will re-run the last command you entered
- Pressing Control–C will stop any process from running
- Typing `cd` and then dragging and dropping the Quire directory icon into your shell will copy the full file path.
{{< /q-class >}}

*For a deeper dive into the command-line, check out a ["Really Friendly Command Line Intro"](https://hellowebbooks.com/learn-command-line/), or the Programming Historian’s ["Introduction to the Bash Command Line"](https://programminghistorian.org/en/lessons/intro-to-bash).*

### Try it for Yourself

1. Open your shell.
2. Type `ls`  to list the folders and files in your home directory.
3. Type `cd` followed by the name of a directory you want to navigate to. For example, `cd Downloads` will take you into the Downloads directory.
4. Run `ls` again to view the contents of that folder.
5. Pull up your Finder or File Explorer to compare the listed files.

## 2. Install Quire

Now that you understand how to use the command-line shell, follow the steps in the documentation links below and use it to install Quire:

- [MacOS installation ](/docs-v1/install-uninstall/#macos-installation)
- [Windows installation](/docs-v1/install-uninstall/#windows-installation)
- [Linux](/docs-v1/install-uninstall/#linux-installation)

## 3. Create a New Project

Once you've successfully installed Quire, it's time to create a new project to work on. When you run the command `quire new` in the command-line shell, Quire will create a new directory in your home directory with a sample Quire publication, including content, images, and relevant metadata that you can use as a template for your own project.

{{< q-class "box tip" >}}
- Below we use the example `my-project`, but you can call your project anything you want as long as you use hyphens rather than spaces and all lowercase text.
{{< /q-class >}}

### Try it for Yourself

1. Open your command-line shell.
2. Run the following command:
```text
quire new my-project
```
3. When your starter project has finished installing, you will see a  message that reads, “Theme and dependencies successfully installed.”

## 4. Preview Your Project

Quire allows you to preview your work in realtime. All you need is your browser. Your Quire project will not be visible to anyone other than you. The preview lives locally on your computer and can even be viewed if you are not connected to the internet.

{{< q-figure id="quire-starter" >}}

### Try it for Yourself

1. Open your command-line shell.
2. Type `cd my-project` and press enter.
3. Once you are in the `my-project` folder, type `quire preview` and press enter again.
4. You will see messaging in your command-line shell that instructs you to preview your project at a link that starts with [http://localhost](http://localhost), followed by four numbers. Cut and paste that link into your browser to see a live preview of your project.

## 4. Work in a Text Editor

Some placeholder content comes with each new Quire project. To start customizing it you’ll need a text editor. Like its name implies, a text editor is simply a program used to edit text. It’s like Microsoft Word, but instead of dealing with text formatted for print, text editors use human-readable code and markup to format the text for conversion to HTML.

Macs and PCs come with some simple text editors built in, but we recommend using one that offers more in terms of auto-formatting as well as being able to see and work in multiple text files at a time. [Visual Studio Code](https://code.visualstudio.com/), [Brackets](https://brackets.io/), and [Sublime Text](https://www.sublimetext.com/) are good options.

{{< q-figure id="text-editor" >}}

### Try it for Yourself

1. If you haven't already, download and install the text editor of your choosing.
2. Open your text editor.
3. Click "File" at the top of your screen and navigate to your home directory.
4. Select your `my-project` directory and open it in your text editor.

## 5. Enter Publication Metadata

The metadata for your publication (its title, subtitle, contributors, publication date, etc.) is used under the hood for {{< q-def "search engine optimization" >}} (SEO). It is also used in various areas of your site including headings, navigation labels, and on your About or Copyright page.  As much as possible, Quire works on the principle of having information exist in only one place in your files and using code to display it in multiple places in the publication as needed. This means when you make a change to something you only do it once and it changes everywhere.

All publication metadata is in the `publication.yaml` file for your project. You can find this file in the `_data` folder of your `content` directory. The format of how the metadata is stored is called {{< q-def "YAML" >}} (*yam-ul*). It’s designed to be a plain-text way of capturing the type of important that appears in multiple places of your project and is therefore treated as data. The general principal is to have the name of a data item followed by a colon, a space, and then the data item’s value. For example:

```yaml
title: "New Deal Photography"
subtitle: "The Works of Dorothea Lange and Walker Evans"
```
{{< q-figure id="quire-starter-metadata-change" >}}


{{< q-class "box tip" >}}
- Certain character combinations can cause issues with the way the YAML data is processed and may cause your site preview to fail. It is recommended to always wrap YAML information in straight quotes to prevent these types of errors.
- Changes made to YAML files sometimes don’t preview right away in the browser. If refreshing the browser doesn’t work, stop and restart the `quire preview` process in your command-line shell.
- If you can't pinpoint what's causing an error, copy and paste your YAML text into an online [YAML validator](https://codebeautify.org/yaml-validator), which will alert you to any formatting issues.
{{< /q-class >}}

*To learn more about the way metadata is used in Quire, visit the [Metadata & Configuration](/docs-v1/metadata-configuration/) section of this guide.*

### Try it for Yourself

1. Open the `publication.yaml` file.
2. Change the title and subtitle.
3. Save the changes.
4. Preview the work in your browser and notice the changes to the navigation bar and expandable side-bar menu.

## 6. Edit Content

One of the most important directories in your Quire project, and where you will spend the majority of your time, is the aptly named `content` directory. In addition to the `_data`, `_assets`, and `_computed` folders, the `content` directory contains the editable {{< q-def "Markdown" >}} (`.md`) files that make up the bulk of your publication's content. Each `.md` file represents a page of your website/book. These files are created using YAML and Markdown.

### YAML

Just as the overall publication has metadata, each page has metadata that is also stored in YAML. You will notice the page YAML, surround by three dashes (`---`), at the top of each `.md` file. The three most basic types of page YAML that you’ll always want to include are the `title`, `layout`, and `order`. The `layout` determines how the page will be structured and `order` determines the overall page order of your publication. Without `order` value given the pages will default to alphabetical order.

```yaml
---
title:
layout:
order:
---
```

*Learn more in the [Pages Types & Structures](/docs-v1/page-types) section of this guide.*

### Try it For Yourself

1. Open the project's `introduction.md` file.
2. Change the `.md` file name to `preface.md`. Do this by right clicking on the file in your text editor and selecting “Rename”. This will also change the URL of the page.
2. In the page YAML, change the `title:` value to `Preface`.
3. Change the `layout` value from `splash` to `page`. This change will eliminate the image that appears across the top of the Preface. (You can also delete the YAML `image: figures/lange-house.jpg` as it is no longer necessary.)
4. Open the `about.md` file.
5. Add `order:` to the page YAML and give it a value of `3`. This places About (`about.md`) directly after the Table of Contents (`contents.md`) which has a `weight` of `2`, and before Preface (`preface.md`), which has a `weight` of `4`.  

### Markdown

In addition to the page YAML, `.md` files also contain {{< q-def "Markdown" >}}. Markdown is a simple, plain-text markup language that uses basic symbols, such as hash marks, asterisks, and brackets, to format content for easy conversion into HTML.

Here are some of the things you can do with Markdown:

- Add italics to a phrase by surrounding it with asterisks: `*a phrase in italics*`.
- Add a second-level heading by putting the text on it’s own line, preceded by two hashmarks: `## Heading 2`.
- Add a link by putting the link text in square brackets followed by the URL in parentheses: `[click here](http://www.myurl.com)`.

*Learn more in the [YAML & Markdown](/docs-v1/yaml-markdown) section of this guide.*

### Try it for Yourself

5. Page content goes below the YAML block. Delete the text that is there and copy-and-paste the following text that has been formatted with Markdown:
```md
## A Riotous Energy

There are many canvases the subjects of which are more
pathologic than artistic, subjects only fit for the
confessional or the privacy of the clinic. But, apart
from these *disagreeable episodes*, the main note of the
[Salon](https://en.wikipedia.org/wiki/Salon_(Paris))
is a riotous energy, the noisy ebullition of a gang
of students let loose in the halls of art.
```
6. View the changes in your browser preview.

## 7. Add Images

To add more specialized features to your publication, such as images, multimedia, or citations, Quire extends Markdown’s capabilities with a set of {{< q-def "shortcodes" >}}. Shortcodes pull data from the YAML files in the `_data` folder and insert them into your `.md` files. For example, the `figures.yaml` file contains the YAML values `caption`, `src`, and `id`. The `id` is critical and is used in the shortcode as an indicator to pull the image from `src` and the caption from `caption` into your publication. Keep in mind, if you update the information stored in `figures.yaml`, it will not only update on your page but also anywhere else that figure `id` is used.


{{< q-figure id="quire-starter-content-change-2" >}}

### Try it for Yourself

1. Type the following figure image shortcode on a new line in your `preface.md` file.
```text
{% figure id="fig-1" %}
```
2. Save the change and check the preview in your browser. A new image should appear on the Preface page.
3. Navigate to your project’s `figures.yaml` file and look for the `id` value of `"fig-1"`.
4. Make edits to the `caption` value for `"fig-1"` and preview your changes.


## 8. Customize Styles

There are number of ways you can customize the look and feel of your Quire publication, including updating the cover image or altering the colors and styles of different interface elements (like the menu, navigation bar, and links) with {{< q-def "CSS" >}} variables.

{{< q-figure id="quire-starter-styles-change" >}}

### Cover Image

A background image can be added to most pages by indicating the image in the page YAML of that page. The image itself is stored in the `content/_assets/images/figures/` directory of your project. You’ll see that this is also where images are stored for use with the `{% figure %}` shortcode mentioned above.

### Try it for Yourself

1. Open the `cover.md` file.
2. Delete the YAML value `"pattern-spiral-overlay.png" ` and replace it with the text below:
```
figures/lange-house.jpg
```
3. Save the file and preview the results in the browser.

### CSS Variables

Variables live inside the `content/_assets/styles` folder in a file called `variables.scss`. Here you’ll find a number of variables, prefixed with a dollar sign `$`, that are descriptive of what they control.

*Read more about applying your own custom CSS styles, altering page templates, and creating a new theme in the [“Customizing Styles”](/docs-v1/styles-customization/) section of this guide.*

### Try it for Yourself

1. Navigate to the `variables.scss` file in your text editor.  
2. Find the section labeled "// Declare the navbar color style: normal/accent" and change the `$navbar` value to `accent`.
3. Then scroll down to the section labeled "// Declare navbar colors." These variables control the background color of the navigation bar at the top of every page.
4. Now change the `$quire-navbar-color` value to `rosybrown`.
5. Now, save the changes in your text editor and preview it in your browser.


## 9. Output Your Project

Once you've played around with adding content and customizing your project, it's time to output it. One of the most significant differences between Quire and other digital publishing tools is the ability to produce your project in multiple formats, including website, E-book, and print. You can create these different versions of your project by running the command `quire build`.

*Read more about outputting your publication files and deploying your project in the [“Output Your Project”](/docs-v1/multiformat-output/)and ["Deploy Your Project"](/docs-v1/site-deploy/) sections of this guide.*


### Try it For Yourself

1. In your Terminal, stop the preview process by pressing Control-C.
2. To create the various formats of your publication type `quire build` and press enter.
3. In your Finder, navigate to the `X` directory and open the PDF to view it.

## Congratulations! Now What?

Congratulations on completing the tutorial! We’ve touched on Quire’s core concepts and functionality, but of course there’s more to learn and do.

Next Steps:

- Continue reading the Quire [documentation](/docs-v1/).
- Explore the [Learn section](/learn/) of our website for guidance and resources.
- Check out the [community forum](https://github.com/thegetty/quire/discussions) on GitHub Discussions.
- Browse our [community showcase](/community/community-showcase/).
- Sign up for our [newsletter](https://newsletters.getty.edu/h/t/DDE7B9372AAF01E4).
- [Contact us](mailto:quire@getty.edu) if you are interested in a one-on-one consultation to determine if Quire is right for you.
