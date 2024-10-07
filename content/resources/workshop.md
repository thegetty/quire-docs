---
title: Quire Workshop
weight: 7500
type: essay
abstract: 
aliases:
---

## About Quire 

Quire is an open-source publishing tool that is developed by Getty and used to create scholarly, visually-rich publications that are designed for discoverability, longevity, and sustainability.

The tool provides a way for students, researchers, professors, curators, and more to publish multimedia-rich scholarship on the web. The same set of files used to create the website can also be used to create a pdf, e-book, and print book. 

## Examples of Quire Publications 

{{< q-showcase projects="museum_digital_practice_2022, yale_italian_paintings, materia_issue4, _getty_marrow_report" grid="4" >}}

## Quire Benefits 

- Developed, tested, and used by Getty
- Free to use. No proprietary software or ongoing maintenance is required.
- One set of files can produce multiple formats
- No pre-existing technical skills are necessary
- Vibrant and diverse community of users available to provide assistance and inspiration 

## Quire Challenges 

- There is no graphical user interface (GUI)
- You are working with potentially unfamiliar tools like the command line and a text editor
- You are working with potentially unfamiliar coding languages like Markdown and YAML

## About this Workshop 

This workshop seeks to take the aforementioned challenges of Quire and break the various tools, languages, and processes into approachable and easy to understand concepts. We additionally provide attendees with hands-on experience so they can leave feel comfortable and confident navigating and using Quire. Our hope is that individuals who take this workshop will leave excited to continue experimenting and creating with Quire.

The workshop takes approximately 3 and half hours to complete, with additional excercises and resources at the end to encourage continued learning. Th workshop is broken into the following parts: 

**Part 1**: Introduction to Basic Concepts (Learning to Love the Command Line and Text Editor)
**Part 2**: Basic Concepts in Action 
**Part 3**: Going Deeper With YAML and the `_data` folder
**Part 4**: Going Deeper with the `_assets` folder 

---

## Before Getting Started

1. Install Quire: https://quire.getty.edu/docs-v1/install-uninstall/ 
2. Install Visual Studio Code, a free text-editor: https://code.visualstudio.com/

## Part 1. Introduction to Basic Concepts 

In this section you will learn about, and get hands on experience with, the two main tools that are required to use Quire: the command-line interface (CLI), which is used to navigate and trigger processes in your Quire project, and the text editor, which is the tool used to write and edit your project.  

### Learning to Love the Command-Line Interface 

**What is the command-line interface?**

A command-line interface (CLI) is a text-based user interface used to run program tasks. All computers have them. The user types commands, strings of text, into the CLI. This is opposed to a graphical user interface (GUI) for a software program, in which the user controls the program through visualized buttons, toggles and menus. 

This is what the command-line interface looks like when it is first opened on a Mac computer: ![command line shell](/img/screenshots/command-line-shell.jpg)

**What are the benefits of using the command-line interface?**

The main benefit of the CLI is efficiency. Instead of spending time finding and clicking on individual files, you can use the CLI to perform actions on several files with simple text commands. Additionally, CLI applications often consume fewer network resources compared to graphical applications. It's worth noting that the CLI is a powerful tool, however, it is used in a very basic, straight forward way when working on Quire projects, so don't be intimidated! 

**Navigating with the CLI**

Use commands like `cd` ("change directory") and `ls` ("list") to navigate your computer's files: ![commandline vs folder](/img/screenshots/commandline-vs-folder.jpg)

#### Try it for Yourself

Mac: 

 1. Press Command-Spacebar to open Spotlight 
 2. Type "Terminal" (Mac's name for the CLI) and hit enter
 3. Type `ls`to list the contents of your computer's home directory
 4. Open your Finder
 5. Press Command-H (to open your "home directory") and compare the files in that folder with what you see listed in the Terminal

PC: 

 1. Open the Start menu 
 2. Select Windows Powershell and hit enter
 3. Type `~` and hit enter to ensure you are in User and not Administrator mode.
 4. Type `ls` in Powershell to list the contents of your computer's home directory
 5. Click File Explorer
 6. Click the PC icon (to open your "home directory") and compare the files in that folder with what you see listed in Powershell

Go Deeper: 

 1. Choose a file you want to navigate into
 2. Type `cd` and the name of the chosen folder and hit enter
 3. Continue exploring 
 4. Close your Terminal/Powershell when you are done 

### Learning to Love the Text Editor

You can think of your text editor, like the free-tool Visual Studio Code, as a supplement to Microsoft Word. A text editor is used to create, change, or edit plain-text files. The beauty of plain-text files is that they do not require proprietary software. Therefore, content is written in a way where, should certain technology go obsolete, your content will remain stable and accessible. The text editor is your primary interface for working on your Quire project, so it's important to get comfortable with it. It is especially important to get comfortable with Markdown, the used format for more narrative or textual content. 

**What is Markdown?**

Markdown might seem strange at first, but it is a very approachable way of formatting text using simple character combinations to indicate structure and visual formatting without needing to write in a complicated language like Rich Text Format (RTFF) or HTML. Rather than using buttons to format the appearance of your text, as you would in Microsoft Word, you are using symbols instead. Quire then does the heavy lifting and converts those symbols into HTML for you. For example, something surrounded in asterisks in Markdown turns into italics in the final publication: *emphasis* = emphasis.

**What are the benefits of using Markdown?**

Markdown was designed for *readability* and is not heavily marked up with tags like other coding languages. 

A list written in HTML:

```HTML
<h2>An Unordered HTML List</h2>

<ul>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>  
```

The same list written in Markdown: 

```Markdown
## An Unordered HTML List

- Coffee
- Tea
- Milk 
```

The fact that Markdown is preserved in a human-readable format, makes it very easy to edit and it also helps preserve the longevity of your content. 

#### Try it Yourself

Mac:

1. Open Visual Studio Code
2. Go to File and select "New File"
3. Type "Hi my name is [your name]" 
4. Type "Hi my name is [your name]" a second time and this time put two asterisks on either side of `**your name**`
4. Press Command-Shift-V to preview the HTML version 
5. Press Command-\ to create a split screen and drag one tab over to the right side to view a side-by-side comparison

PC: 

Go Deeper:

1. Visit this page and play around with the different Markdown options: http://quire.getty.edu/docs-v1/fundamentals/#markdown-basics. 
2. Close Visual Studio Code when you are done exploring. 

## Part 2. Basic Concepts in Action 

Now that you understand two of the most fundamental tools needed to use Quire, it's time to get a new project up and running and put these concepts in action. 

### Use the CLI to Start and Preview a New Quire Project 

In addition to using the CLI to navigate Quire, as we explored earlier, it can also be used to tell Quire what to do, including create a new project, preview a project, or output a website, pdf, and e-book. In the steps below, we will use the CLI to create a new project, navigate into that project's folder, and preview. 

Please note: The command `quire new` generates a default starter project. It is a sample publication meant to serve as a jumping off point. It serves as a useful template with images and text that can be delete or substituted when creating your own project. 

#### Try it Yourself 

1. Open your Terminal or Powershell 
2. Type the command `quire new my-project` and hit enter. The process may take a few minutes. You will see the words "successfully installed" when the process is complete. 
3. Type `cd my project` in your Terminal/Powershell to navigate into your new project
4. Type `quire preview` to generate a preview website. Ignore the output in the Terminal/Powershell. You are just looking for: http://localhost:8080/. 
5. Cut-and-paste the URL into your browser. Ta-da! Your new project is up-and-running!

### Open Your Project with Visual Studio Code

Now that you have your new project up-and-running, it's time to edit it! First, we must open the project with our text editor and familiarize ourselves with the file structure.  

The default starter project when it is first opened in your Text Editor ![Text Editor](/img/screenshots/text-editor.jpg)

#### Try it Yourself

1. Open Visual Studio Code
2. Click File>Open and then navigate to your home directory where you should see your `my-project` folder
3. Select the `my-project` folder, find the `content` folder, and double-click to open it in Visual Studio Code. 

### Navigating Files with Visual Studio Code 

The "content" folder is where pretty much all the action takes place. The most important files/folders within "content" are the following: 

| File/Folder | Purpose Served |
|---|---|
| Markdown files | Indicated by the `.md` suffix. This is where the vast majority of your content lives, with each file representing a different "page" in your publication | 
| `_data` folder | Contains YAML files. These are a plain-text way of capturing information that appears in multiple places through your publication like captions, chapter titles, object information, etc.|  
| `_assets` folder | Where a lot of the customization takes place. Includes things like fonts, images, and CSS/JavaScript files. | 

#### Try it Yourself

1. Take a moment to explore the various folders and files that make up your Quire project
2. Can you find where the images that make up the project live?

### Making Edits with Visual Studio Code 

Let's take a closer look at a Markdown files (indicated by `.md`) and make some simple edits based on what we learned in Part 1. 

#### Try it Yourself  

1. Open the `intro.md` file
2. Make any changes you would like to the Markdown
3. Preview the results 

You can use this page of the Quire documentation as a reference: http://quire.getty.edu/docs-v1/fundamentals/#markdown-basics.

## Part 3. Going Deeper with YAML  

In addition to Markdown, the other format you will save content in in Quire is YAML. Let's learn more about the different roles YAML plays in your Quire project, taking a closer look at Page YAML the `.yaml` files found in the `_data` folder. 

### YAML 

**What is YAML?**

YAMl literally stands for "YAML Ain't Markup Language". YAML is also written in a plain-text, human-readable format, it's primary purpose is saving text/content as data. It's less about how the content is written and more about how and where the information is saved in your project. YAML is formatted as the name of a data item (a key), followed by a colon, a space, and then the data item’s value. A key-value pair. 

Here is an example of how YAML is formatted: 

`title: My Project`

"Title" represents the key and "My Project" represents the value. 

**What are the benefits of using YAML?**

YAML is a way of capturing information that appears in multiple places throughout your project and is therefore treated like data. This prevents you from needing to write things multiple times. YAML is also considered easier to read and write than other data-specific formats, like JSON, especially for non-developers. 

**Examples of YAML in a Quire Project**

There are three types of YAML you will encounter in a Quire project. 

| File/Folder | Purpose Served |
|---|---|
| Page YAML | Appears at the top of a `.md` file. Includes things like page title and contributors, page layout, and order the page appears in the publication | 
|`Publication.yaml` | Found in the `_data` folder. This is where the metadata for the publication lives. Includes publication title and contributors, copyright information, BISAC codes, publisher, CC license, revision history , etc. |  
| `figures.yaml`, `objects.yaml`, `references.yaml` etc. |  Also found in the `_data` folder. Where data like captions, references, and tombstone information is stored and assigned an `id`. That `id` can then be used in a `.md` file to pull in the content from the `.yaml` file. | 


### Page YAML 

Every page (indicated by `.md`) in a Quire publication must start with a block of YAML. The three core attributes used to define every page are title, layout, and order. All page YAML, no matter how many attributes it has, appears at the top of a MArkdown page and appears between a set of three dashes.

```YAML
---
title:
layout:
order:
---
```

#### Try it Yourself

### `publication.yaml`

#### Try it Yourself

### `figures.yaml`

#### Try it Yourself

## Part 4. Going Deeper with the `_assets` Folder

### Where images are stored 

### Shortcodes

**What are shortcodes?**

**What are the benefits of using shortcodes?**

#### Try it Yourself

### Variables

**What are variables?**

**What are the benefits of using variables?**

#### Try it Yourself










