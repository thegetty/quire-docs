---
title: Quire Workshop
weight: 7500
type: essay
abstract: 
aliases:
---

## About Quire 

Quire provides a way for students, researchers, professors, curators, and more to publish multimedia-rich scholarship on the web. Digital publications created with Quire are designed to last a long time. The same set of files used to create the website can also be used to create a pdf, e-book, and print book. No prior coding experience is necessary. 

More TK

## Examples of Quire Publications 

{{< q-showcase projects="museum_digital_practice_2022, yale_italian_paintings, materia_issue4, _getty_marrow_report" grid="4" >}}

## Quire Benefits 

- Quire is developed, tested, and used by Getty
- Quire is free to use. No proprietary software or ongoing maintenance is required.
- One set of files can produce multiple formats: web (primary version), PDF, e-book 
- No pre-existing technical skills are necessary
- We have a vibrant and diverse community of users available to provide assistance and inspiration 

## Quire Challenges 

- There is no graphical user interface (GUI)
- You are working with potentially unfamiliar tools like the command line and a text editor
- You are working with potentially unfamiliar coding languages like Markdown and YAML

The goal of this workshop is to take the potential challenges of Quire and make them feel approachable so that attendees leave feeling confident and excited to continue experimenting and, hopefully, creating their own projects with Quire. 

---

## Before Getting Started

1. Install Quire: https://quire.getty.edu/docs-v1/install-uninstall/ 
2. Install Visual Studio Code, a free text-editor: https://code.visualstudio.com/

## Part 1. Introduction to Basic Concepts 

In this section you will learn about and get hands on experience with the command-line interface (CLI), which is used to navigate your Quire project, and Markdown, which is the language used to write your Quire project. 

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

You can think of your text editor, like the free-tool Visual Studio Code, as a supplement to Microsoft Word. Rather than using buttons to format the appearance of your text, you are using symbols instead. Quire then converts those symbols into HTML. 

**What is Markdown?**

Markdown is a text formatting standard that defines the use of very simple text character combinations in order to indicate structure and formatting that can easily be transferred to more complicated HTML (web markup). For example, something surrounded in asterisks in Markdown turns into italics in the final publication: *emphasis* = emphasis.

**What are the benefits of using Markdown?**

Markdown enables you to keep your publication's content in a non-proprietary plain-text format. No proprietary software is needed to open and access your files. That means should certain technology go obsolete, your content will remain stable and accessible. 

An alternative to Markdown is writing in HTML: 

```HTML
<h2>An Unordered HTML List</h2>

<ul>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>  
```

In Markdown this would simply be: 

```Markdown
## An Unordered HTML List

- Coffee
- Tea
- Milk 
```

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

Now that you understand two of the most fundamental, and tricky to wrap your head around, concepts of Quire, using the command-line interface and writing in Markdown, it's time to get a new project up and running and put these concepts in action. 

### Use the CLI to Start and Preview a New Quire Project 

In addition to using the CLI to navigate Quire, as we explored earlier, it can also be used to tell Quire what to do, including create a new project, preview a project, or output a website, pdf, and e-book. In the steps below, we will use the CLI to create a new project, navigate into that project's folder, and preview. 

#### Try it Yourself 

1. Open your Terminal or Powershell 
2. Type the command `quire new my-project` and hit enter. The process may take a few minutes. You will see the words "successfully installed" when the process is complete. 
3. Type `cd my project` in your Terminal/Powershell to navigate into your new project
4. Type `quire preview` to generate a preview website. Ignore the output in the Terminal/Powershell. You are just looking for: http://localhost:8080/. 
5. Cut-and-paste the URL into your browser. Ta-da! Your new project is up-and-running!

### Open Your Project with Visual Studio Code

Now that you have your new project up-and-running, it's time to edit it! First, we must open the project with our text editor and familiarize ourselves with the file structure.  

![Text Editor](/img/screenshots/text-editor.jpg)

#### Try it Yourself

1. Open Visual Studio Code
2. Click File>Open and then navigate to your home directory where you should see your `my-project` folder
3. Select the `my-project` folder, find the `content` folder, and double-click to open it in Visual Studio Code. 

### Navigating Files with Visual Studio Code 

The "content" folder is where pretty much all the action takes place. The most important files/folders within "content" are the following: 

| File/Folder | Purpose Served |
|---|---|
| Markdown files | Indicated by the `.md` suffix. This is where the vast majority of written content lives, with each file representing a different "page" in your publication | 
| `_data` folder | Contains YAML files. These are a plain-text way of capturing information that appears in multiple places through your publication like captions, chapter titles, object information, etc.|  
| `_assets` folder | Where a lot of the customization takes place. Includes things like fonts, images, and CSS/JavaScript files. | 

#### Try it Yourself

1. Take a moment to explore the various folders and files that make up your Quire project
2. Can you find where the images that make up the project live?

### Making Edits with Visual Studio Code 

Before we dig into the `_data` and `_assets` folder, let's take a closer look at a Markdown file and make some simple edits make on what we learned in Part 1. 

#### Try it Yourself  

1. Open the `intro.md` file
2. Make any changes you would like to the Markdown
3. Preview the results 

## Part 3. Going Deeper with YAML  

Now that you are more comfortable with the CLI and working in Markdown, let's dig deeper into the role YAML plays in a Quire project, and take a closer look at the `_data` and `_assets` folders. 

### YAML 

**What is YAML?**

YAMl literally stands for "YAML Ain't Markup Language". This hints at the fact that YAML serves a different purpose than Markdown. While YAML is also written in a plain-text, human-readable format, it's primary purpose is saving text/content as data. 

**What are the benefits of using YAML?**

YAML is a way of capturing information that appears in multiple places throughout your project and is therefore treated like data. This prevents you from needing to write things multiple times. 

**Examples of YAML in a Quire Project**

There are three types of YAML you will encounter in a Quire project. 

| File/Folder | Purpose Served |
|---|---|
| Page YAML | Appears at the top of a `.md` file. Includes things like page title and contributors, page layout, and order the page appears in the publication | 
|`Publication.yaml` | Found in the `_data` folder. This is where the metadata for the publication lives. Includes publication title and contributors, copyright information, BISAC codes, publisher, CC license, revision history , etc. |  
| `figures.yaml`, `objects.yaml`, `references.yaml` etc. |  Also found in the `_data` folder. Where data like captions, references, and tombstone information is stored and assigned an `id`. That `id` can then be used in a `.md` file to pull in the content from the `.yaml` file. | 

### Page YAML 

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










