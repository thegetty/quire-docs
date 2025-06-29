---
title: Hands-On Workshop
weight: 7500
type: essay
abstract: The content of our in-person/virtual workshops 
---

## About Quire 

Quire is an open-source publishing tool developed by Getty and used to create long-lasting and discoverable publications. It is not a publishing service or a platform for hosting publications. Instead, Quire provides its users (students, researchers, professors, curators, editors, and more) with the ability to produce multimedia-rich scholarship for the web. The same set of files used to create the website can also be used to create a PDF, e-book, and print book. Quire is an excellent option for long-form book-like projects, especially those that rely on visual illustrations and scholarly elements like citations, bibliographies, and footnotes. Quire is freely available for anyone who wants to use it. You can learn more at <http://quire.getty.edu>. 

### Examples of Quire Publications 

{{< q-showcase projects="museum_digital_practice_2022, yale_italian_paintings, materia_issue4, _getty_marrow_report" grid="4" >}}

## Quire Benefits & Challenges

| **Benefits** | **Challenges** |
|----|----|
| Developed, tested, and used by Getty | There is no graphical user interface (GUI)
| No proprietary software or ongoing maintenance | You are working with potentially unfamiliar tools like the command line and a text editor
| One set of files can produce multiple formats (PDF, e-book, print) | You are working with potentially unfamiliar content formats like Markdown and YAML | 
| Pre-existing technical skills are not necessary | There is a learning curve | 
| Vibrant international community of individuals and institutions available to provide assistance and inspiration |  | 


## About this Workshop 

The workshop seeks to break down the various tools, formats, and processes necessary for using Quire into approachable and easy-to-understand concepts. We additionally provide step-by-step exercises to help partcipants gain confidence in navigating and using the tool. We aim for individuals who take this workshop to leave feeling excited and empowered to continue experimenting with Quire on their own.

**Part 1**: Basic Concepts: Command-Line Interface & Text Editor <br>
**Part 2**: Basic Concepts in Action <br>
**Part 3**: Going Deeper: YAML <br>
**Part 4**: Going Deeper: Images <br>
**Part 5**: Going Deeper: Shortcodes <br>
**Part 6**: Going Deeper: References <br>
**Part 7**: Going Deeper: Customization

*If you are interested in having a hands-on Quire workshop led by a Quire representative either in person or virtually, please contact [quire@getty.edu](mailto:quire@getty.edu).* 

---

## Before Getting Started

1. Install Quire: https://quire.getty.edu/docs-v1/install-uninstall/ 
2. Install Visual Studio Code, a free text-editor: https://code.visualstudio.com/

## Part 1. Basic Concepts

In this section, you will learn about and get hands-on experience with the two main tools that are required to use Quire: the command-line interface (CLI), which is used to navigate your project and tell Quire what processes to perform, and the text editor, which is the tool used to organize, write, and edit your project files.  

### Learning to Love the Command-Line Interface 

**What is the command-line interface?**

A command-line interface (CLI) is a text-based interface used to run program tasks. It is operated through a {{< q-def "command-line shell" >}} which is referred to as "Terminal" on a Mac and "Powershell" on a PC. The CLI enables the user to type commands as strings of text into the shell. This is opposed to a graphical user interface (GUI), in which the user controls the program through visualized buttons, toggles, and menus. 

When you install Quire, what you are actually installing is the Quire CLI. 

This is what the command-line shell looks like when it is first opened on a Mac computer: ![command line shell](/img/screenshots/command-line-shell.jpg)

**What are the benefits of using the command-line interface?**

The main benefit of the CLI is efficiency. Instead of spending time finding and clicking on *individual* files, you can use the CLI to perform actions on *several* files with simple text commands. Additionally, CLI applications often consume fewer network resources compared to graphical applications. It's worth noting that the CLI is a powerful tool; however, it is used in a very basic, straightforward way when working on Quire projects, so don't be intimidated! 

**Navigating with the CLI**

One of the primary functions of the CLI is to easily navigate files on your computer. In the exercise below, you will use commands like `cd` ("change directory") and `ls` ("list") to explore your computer's home directory, the main storage folder that contains your personal files. You will then use Finder/Explorer to do the same thing. This demonstrates how running commands in the command-line shell mirrors the process of clicking through folders in your Finder/Explorer.

![commandline vs folder](/img/screenshots/commandline-vs-folder.jpg)

<div class="try-it-yourself">

#### Try it Yourself

**Mac**: 

 1. Press Command-Spacebar to open Spotlight 
 2. Type "Terminal" (Mac's name for the command-line shell) and hit enter
 3. Type `ls` to list the contents of your computer's home directory
 4. Open your Finder
 5. Press Command+Shift+H (to open your "home directory") and compare the files in that folder with what you see listed in the Terminal

**PC**: 

 1. Open the Start menu 
 2. Select "Windows Powershell" (Windows' name for the command-line shell) and hit enter
 3. Type `~` and hit enter to ensure you are in User and not Administrator mode.
 4. Type `ls` in Powershell to list the contents of your computer's home directory
 5. Click File Explorer
 6. Click the PC icon (to open your "home directory") and compare the files in that folder with what you see listed in Powershell

**Go Deeper**: 

 1. Choose a file you want to navigate into
 2. Type `cd`, a space, and the name of the chosen folder and hit enter
 3. Continue exploring your computer's files
 4. Close your Terminal/Powershell when you are done 

 </div>

### Learning to Love the Text Editor

You can think of your text editor, like the free tool Visual Studio Code, as a supplement to Microsoft Word. A text editor is used to create, change, or edit plain-text files. The beauty of plain-text files is that they do not require proprietary software. Therefore, content is written in a way where, should certain technology go obsolete, your content will remain stable and accessible. The text editor is your primary interface for working on your Quire project, so getting comfortable with it is essential. It is especially important to familiarize yourself with Markdown, the format used for your project's more narrative/textual content. 

**What is Markdown?**

Markdown might seem strange initially, but it is a very approachable language that uses simple character combinations to indicate structure and add formatting elements (headings, bulleted lists, URLs). Rather than using buttons to format the appearance of your text, as you would in Microsoft Word, you are using symbols instead. Quire then does the heavy lifting and converts those symbols into HTML for you. For example, something surrounded by asterisks in Markdown turns into italics in the final publication: `*emphasis*` = *emphasis*.

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

The fact that Markdown is a human-readable format makes it very easy to edit and it also helps preserve the longevity of your content. 

<div class="try-it-yourself">


#### Try it Yourself


**Mac**:

1. Open Visual Studio Code
2. Go to File and select "New File"
3. Title the file `test.md` and save it to your Desktop
4. In the file, type "- Hi my name is [your name]" 
5. Type "- Hi my name is [your name]" a second time and this time put two asterisks on either side of `**your name**`
6. Press Command+Shift+V to preview the HTML version 
7. Press Command+\ to create a split screen and drag one tab over to the right side to view a side-by-side comparison

**PC**: 

1. Open Visual Studio Code
2. Go to File and select "New File"
3. Title the file `test.md` and save it to your Desktop
4. In the file, type "- Hi my name is [your name]" 
5. Type "- Hi my name is [your name]" a second time and this time put two asterisks on either side of `**your name**`
6. Press Control+Shift+V to preview the HTML version 
7. Press Control+\ to create a split screen and drag one tab over to the right side to view a side-by-side comparison

**Go Deeper**:

1. Visit this page and play around with the different Markdown options: http://quire.getty.edu/docs-v1/fundamentals/#markdown-basics
2. Close Visual Studio Code when you are done exploring

</div>

## Part 2. Basic Concepts In Action

Now that you understand two of the most fundamental tools needed to use Quire, it's time to get a new project up and running and implement these basic concepts. 

### Use the CLI to Start and Preview a New Quire Project 

In addition to using the CLI to navigate Quire, as we explored earlier, it can also be used to tell Quire what to do, including creating a new project, previewing a project, or outputting a website, PDF, and e-book. In the steps below, we will use the CLI to create a new project with the command `quire new`, navigate our computer's files into that new project folder, and then preview it. 

![Quire Starter Project](/img/screenshots/quire-starter.jpg)

*The command `quire new` generates a default starter project. It is a sample publication meant to serve as a jumping off point. It serves as a useful template with images and text that can be deleted or substituted when creating your own project.* 

<div class="try-it-yourself">

#### Try it Yourself 

1. Open your Terminal or Powershell 
2. Type the command `quire new my-project` and hit enter. The process may take a few minutes. The process is complete when you see your username appear below the text "installing dev dependencies into quire project."
3. Type `ls` to see the contents of your home directory again. This time you will notice a new folder called `my-project`
4. Type `cd my-project` in your Terminal/Powershell to navigate from your home directory into your new project
5. Type `ls` to browse the project files that were installed with the command `quire new`
6. When you are ready, make sure you are still in the `my-project` folder and type `quire preview` to generate a preview website. Ignore the output in the Terminal/Powershell. Your project is ready to preview when you see <http://localhost:8080/>. 
7. Cut-and-paste the URL into your browser. Ta-da! Your new project is up-and-running! 

</div>

### Open Your Project with Visual Studio Code

Now that you have your new project up and running, it's time to edit it! First, we must open the project with our text editor and familiarize ourselves with the file structure.  

This is what the default starter project will look like when it is first opened in your Text Editor. ![Text Editor](/img/screenshots/text-editor.jpg)


<div class="try-it-yourself">

#### Try it Yourself


1. Open Visual Studio Code 
2. Click File>Open Folder and then navigate to your home directory where you should see your `my-project` folder
3. Select the `my-project` folder and expand its contents
4. Find the `content` folder and click the Open button 
5. Go back to File and select Auto Save. This will come in handy later. 

</div>

### Navigating Files with Visual Studio Code 

The `content` folder is where pretty much all the action takes place. The most important files/folders within `content` are the following: 

| File/Folder | Purpose Served |
|---|---|
| Markdown files | Indicated by the `.md` suffix. This is where the vast majority of your content lives, with each file representing a different "page" in your publication | 
| `_data` folder | Contains YAML files. These are a plain-text way of capturing information that appears in multiple places throughout your publication like captions, chapter titles, object information, etc.|  
| `_assets` folder | Where a lot of the customization takes place. Includes things like fonts, images, and CSS/JavaScript files. | 

<div class="try-it-yourself">

#### Try it Yourself

1. Take a moment to explore the various folders and files that make up your Quire project
2. When ready, locate the `intro.md` file and open it

</div>

### Making Edits with Visual Studio Code 

Let's take a closer look at a Markdown file and make some simple edits based on what we learned in Part 1. 

<div class="try-it-yourself">

#### Try it Yourself  

1. Make any changes you would like to the Markdown of the `intro.md` file. You can use this page of the Quire documentation as a reference: http://quire.getty.edu/docs-v1/fundamentals/#markdown-basics.
2. Navigate to your browser and preview the results 

</div>

## Part 3. Going Deeper: YAML  

In addition to Markdown, YAML is the other format in which you will save content in Quire. YAML plays many roles in your Quire project, including storing important publication information like title, subtitle, authors, chapter titles, captions, references, and more. 

### Learning to Love YAML 

**What is YAML?**

YAML stands for "YAML Ain't Markup Language". YAML's primary purpose is to save text/content as data. When it comes to YAML, it's all about how that information is formatted. It is always written as a data item followed by a colon, a space, and then the data item's value.

Here is an example: 

`title: "My Project"`

You can also use Markdown when storing information as YAML: 

`title: "*My Project*"`

*We advise always wrapping YAML values in quotations.*

**What are the benefits of using YAML?**

YAML provides a way of capturing information that appears in multiple places throughout your project and is therefore treated like data. This prevents you from needing to write things multiple times. YAML is also considered easier to read and write than other data-specific formats, like JSON, especially for non-developers. 

### Page YAML 

*Every page* of content in your Quire publication must start with a block of YAML. You can identify the YAML because it appears between a set of three dashes at the top of each `.md` file. The three YAML keys that must appear on every page are: `title`, `layout`, and `order`. 

```YAML
---
title:
layout:
order:
---
```

Let's look at the `intro.md` file as an example. This is the YAML block that appears at the top of that page:

```YAML
---
title: "Introduction"
subtitle: "A Tale of Two Photographers"
layout: splash
order: 10
image: figures/lange-house.jpg
---
```

The `title` is the title of the essay, the `layout` affects the format of the page, and `order` affects the page order of the publication. You can learn more about the different layout types in our documentation: https://quire.getty.edu/docs-v1/pages/#define-page-types. 

As our next step, let's rename the "Introduction". 

<div class="try-it-yourself">

#### Try it Yourself

1. Change the `title` of the `intro.md` file to anything you like 
2. Go to your browser, and notice that the title of the essay has changed
3. Navigate to the table of contents in your project and note how the title of the Introduction has changed there as well

</div>

### `publication.yaml`

Another role YAML plays in your project is storing important metadata. This information is kept in the `publication.yaml` file and includes things like publication title and contributors, copyright information, BISAC codes, publisher information, etc. The data in this file is automatically included in the underlying code of every page of your project's online edition, supporting Search Engine Optimization (SEO) and general discovery.

The `publication.yaml` file lives in the `_data` folder along with several other YAML files such as `figures.yaml`, `objects.yaml`, and `references.yaml`. We will look at those files a little later on. For now, our focus is just on the `publication.yaml` file. 

<div class="try-it-yourself">

#### Try it Yourself

1. Navigate to the `_data` folder
2. Open the `_data` folder and find the file called `publication.yaml`
3. Take some time looking at the content of this file

</div>

### `publication.yaml` Continued

As previously mentioned, YAML stores information that is used in multiple places throughout your project. The `publication.yaml` file is a good example of that. For example, the only place the title of your Quire project lives is in this file, but that title is used on the project's cover page, the sidebar menu, in the e-book and PDF version of your publication, and in metadata used for SEO and discovery. 

![The many places the project titles appears](/img/screenshots/quire-starter-metadata-change.jpg)

<div class="try-it-yourself">

#### Try it Yourself 

1. In the `publication.yaml` file, navigate to the `# Title & Description` section
2. Change the `title` and `subtitle` to whatever you want it to be
3. In your CLI, press Control-C to stop the preview
4. Type the command `quire preview` to restart the preview
5. Navigate to the cover page of your project and note that the title has changed
6. Open the sidebar menu and note that the title has changed there as well 

</div>

*When making changes to `.yaml` files it's necessary to stop and restart the preview for the change to become active/visible.*

## Part 4. Going Deeper: Images

Now that we have changed the title of your Quire project, let's also change the cover image. 

### Where images are stored 

The images that comprise your Quire project live in the `_assets` folder in a subfolder called `images`. 

<div class="try-it-yourself">

#### Try it Yourself 

1. Navigate to the `_assets` folder
2. Select the `images` folder
3. Can you locate Dorothea Lange's famous photograph, "Migrant Mother"?

</div>

### Adding new images to your project 

Images can be easily added and subtracted from your Quire project. When adding new images they should be placed in the `_assets/images/` folder. Once the images have been saved, there are a few ways to add them to the pages of your Quire project. The first is by including `image:` and the title of your image file (ending in .jpg or .png) in the page YAML. 

For example: 

```YAML
---
title: Cover
layout: cover
order: 1
image: spiral-overlay.png
---
```

<div class="try-it-yourself">

#### Try it Yourself

1. Take some time to find an image that has a horizontal orientation
2. Save it to the `_assets/images/` folder (must be all lowercase and use dashes instead of spaces)
3. In Visual Studio Code, navigate to the `index.md` file (this is the cover page for your project)
4. In the page YAML, find the `image:` field, delete `spiral-overlay.png`, and add the name of your image file (ending in either .jpg or .png) in its place
5. Go to your browser and navigate to the cover page of your project. Note that in addition to the title changing, the cover image has changed too!

</div>

## Part 5. Going Deeper: Shortcodes 

The second way to include images in your Quire project is by using shortcodes. 

### Learning to Love Shortcodes

**What are shortcodes?**

A shortcode is a simple snippet of code inserted in a `.md` file that pulls in information from the `_data` files in your project. In Quire, shortcodes are used to insert figure images, citations, glossary terms, and more. 

**What are the benefits of using shortcodes?**

Shortcodes save a lot of time and energy. Rather than repeating lengthy information in multiple places throughout your project, you can use a shortcode as a shortcut. A shortcode usually references an `id`. For example, the shortcode below is referencing a figure image that has been assigned the id `fig-1` in the `_data/figures.yaml` file (which we will explore more closely in a minute):

`{% figure 'fig-1' %}`

When you insert the shortcode `{% figure 'fig-1' %}` into a `.md` file, you will automatically insert the image that has been assigned the id `fig-1` into the body of the text in the exact spot where the shortcode is placed. 

Here is an example of a shortcode being used in the `preface.md`:

![Example demonstrating how to insert and image with a shortcode](/img/screenshots/quire-starter-content-change-2.jpg)

<div class="try-it-yourself">

#### Try it Yourself 

1. In Visual Studio Code, navigate to the `essay.md` file
2. Locate the shortcode that includes `fig-2`
3. Go to your browser and navigate to the essay "I. American Photographs"
4. Scroll to the part of the essay that corresponds with the location of the shortcode in the `.md` file. What do you see? 

</div>

### `figures.yaml`

Each image is assigned its own `id` in the `figures.yaml` file which is found in the `_data` folder. In addition to the image file, the `id` is also associated with the caption, credit, label, alt text, etc of an image.  As mentioned earlier, the beauty of YAML is that you store information in one place and can reference it in multiple locations throughout your publication.  For example, if you edit an image's caption, rather than changing it everywhere the image appears in your publication, you only need to update it in the `figures.yaml` file and it will automatically update everywhere the `id` is used in a shortcode. 

Here is an example of a `figures.yaml` entry:

```YAML
- id: "fig-2"
  label: "Figure 2"
  src: figures/evans-sons.jpg
  caption: "Walker Evans. *Sons of the American Legion, Bethlehem, Pennsylvania*, 1935."
  credit: "The J. Paul Getty Museum, Los Angeles"
```

The `src` represents both the image file name and the path for where the image is stored in your project. In this case, the image `evans-sons.jpg` lives in a subfolder called `figures` in the main `images` folder. You can use subfolders to help organize your images; just be sure to include the subfolder name followed by a `/` in the `src` field. If you are not using subfolders then the `src` will just be the image file name (ending in .jpg or .png).

<div class="try-it-yourself">

#### Try it Yourself

1. In Visual Studio Code, navigate to the `_data` folder
2. Now locate the `figures.yaml` file
3. In the `figures.yaml` file, find the entry that corresponds with the `id: fig-2`
4. Make an edit to the `caption` for that entry
5. In your CLI, press Control-C to stop the preview
6. Type the command `quire preview` to restart the preview
7. Navigate back to your browser and note how the caption has been updated 

</div>

### Inserting the image 

Inserting a new image is a three-step process. First, save the image in the `_assets/images/` folder. Next, you must create an entry for that image in the `figures.yaml` file and assign the image an `id`. Finally, decide what `.md` file and where within that file you want the image to appear. Then enter a shortcode that references the assigned `id`.

<div class="try-it-yourself">

#### Try it Yourself 


1. Find any image you want and save it in the `_assets/images/` folder (the file name must be all lowercase and use dashes instead of spaces)
2. Go to the `figures.yaml` file and create a new entry. A new entry leads off with a dash. Make sure that all text indentations are aligned with the other entries or your will receive an error when you try to preview.
3. Create an `id` for that image. It must be all lowercase, use dashes instead of spaces, and must start with a letter (for example, `fig-15`.) Then write whatever you want for the label, caption, and credit
4. The `src` will be the image file name (ending in .jpg or .png)
5. Now go back to the `essay.md` file, and change the `id` in the shortcode `{% figure 'fig-2' 'is-pulled-right' %}` to the `id` you just created
6. In your CLI, press Control-C to stop the preview
7. Type the command `quire preview` to restart the preview
8. Navigate back to your browser. You should now see your new image, caption, credit, and label inserted in the text

</div>

## Part 6. Going Deeper: References 

YAML can also be useful when it comes to creating a bibliography or adding pop-up citations to your project. All bibliographic information for your publication is stored in the `references.yaml` file, which is also located in the `_data/` folder. 

Each entry in the `references.yaml` file must include the `full` form of the bibliographic reference and an `id`.  

```YAML
  - id: "Evans 1938"
    full: "Evans, Walker. *American Photographs*. New York: Museum of Modern Art, 1938."
```

As in the example above, the `id` would typically be the short form of the reference in an "Author Date" format. Note that unlike the `figures.yaml` file, the `id` used for references can have spaces and capital letters. The way the `id` is written is how it will appear in both the bibliography and clickable text for the pop-up citation. 

### Creating a Bibliography

In the default starter project there is a file called `bibliography.md`. When looking at the page YAML you'll notice there is a special `layout` type of `bibliography`. A `.md` file with this `layout` type will automatically pull in the information found in the `references.md` file and sort it alphabetically.  

<div class="try-it-yourself">

#### Try it Yourself 

1. Open the `references.yaml` file and note the three entries listed there
2. Navigate to your browser and click on the "Bibliography" page to see how the references are rendered online

</div>

### Inserting pop-up citations

Similar to inserting images with shortcodes, you can also use a shortcode to insert pop-up citations. This is an example of what a citation shortcode looks like: 

`{% cite 'Evans 1938' %}`

When the shortcode is added to a `.md` file, the same text that is used as the `id` appears underlined, indicating that it can be clicked on. When you click on the underlined text, the content stored in the `full` portion of the YAML entry appears. 

In addition to adding the reference information as a pop-up citation, it will also appear as an entry in a page-level bibliography. 

<div class="try-it-yourself">

#### Try it Yourself 

1. Open the `essay.md` file and find an example of a cite shortcode
2. Navigate to your browser and see how that pop-up citation is rendered online
3. Scroll down to the bottom of the essay and note the corresponding page-level bibliography 

**Go Deeper**

1. Back in the `references.yaml` file, create a new entry inclduing the `full` version of the citation, and assign an `id` written in "Author Date" format (for example: "Evans 1938")
2. Navigate to the `essay.md` file and choose a place where you want to insert the pop-up citation
3. Add the citation using the shortcode: `{% cite 'id' %}`, replacing `id` with the one you just created in the `references.yaml`
4. Stop and restart your preview
4. Go to your browser and find both the pop-up citation and the addition to the page-level bibliography in the essay. You can also navigate to the "Bibliography" and note that the new reference has been added there as well.

</div>

## Part 7. Going Deeper: Customization 

There are several ways to customize your Quire project with varying degrees of difficulty. 

To make Quire approachable to everyone, regardless of technical experience, we’ve added built-in style variables that allow for relatively easy customizations.

### Learning to Love Style Variables

**What are style variables?**

Variables are essentially a list of built-in options for making style customziations. You can use them to control things like text and background colors, specific element sizes, fonts, paragraph indents, PDF margins, and more.

**What are the benefits of using style variables?**

While the style variables have a limited range of customizations you can make, they still give you a lot of flexibility when it comes to changing the look and feel of your project without needing to learn CSS/HTML or going deeper into the code and stylesheets.

### Editing Style Variables 

The style variables are located in the `_assets` folder, in a subfolder called `styles`. There, you will find a file called `variables.scss`. 

Variables are prefixed with a dollar sign and are descriptive of what they control. For instance, `$content-background-color` changes the background color of the main content area. The following variable would make the background color appear light grey: 

`$content-background-color: LightGrey;`

Here is a list of the variables defined in Quire and what they control: https://quire.getty.edu/docs-v1/variables/#defined-variables.

Here is an example of a customization (the addition of rosy pink at the top of the page) made to the default starter project using the style variables:

![Customizations to Cover Page](/img/screenshots/quire-starter-styles-change.jpg)

<div class="try-it-yourself">

#### Try it Yourself

1. Navigate to `_assets/styles/variables.scss`
2. Make the following changes: 

    - Change `$accent-color` from `null` to `darkred`
    - Change the `$theme` from `modern` to `classic` 
    - Change `$navbar` from `normal` to `accent`

3. Navigate back to your project. What do you notice has changed? 

**Go Deeper**: 

1. Check out this list of potential color choices: https://www.w3schools.com/cssref/css_colors.php
2. Continue to play around with the variables until you find a color combination that you like!

</div>

### Learning to Love CSS 

Another way to customize your Quire project is through custom CSS. This is a more involved process than using the `variables.scss` file, but you have both more precise and broader control of changes across your project. 

**What is CSS?**

CSS stands for “Cascading Style Sheets”. It is a language used to define styles and layouts for webpages written in HTML. While HTML describes the contents of a page, CSS controls the style and formatting of the elements on the page. 

**What is the benefit of using CSS**

CSS saves a lot of time because you can apply rules across a website by just editing one file (`custom.css`).

### Creating Custom Classes with CSS 

While CSS can be used to apply changes across an entire website. There is another, more pinpointed, way to use CSS through the creation of custom classes. Say, for example, you wanted to make either a word or entire block of text appear purple. You would do that by first creating a new class called `purple-text` in the `_assets/styles/custom.css` file and then applying that new class to either a specific block of text or specific words through the use of the `<div>` and `<span>` HTML tags.

Note: you can name a class whatever you like. For the sake of simplicity, we are calling the class that will change text to the color purple `purple-text`.

<div class="try-it-yourself">

#### Try it Yourself

1. Assign a custom class by navigating to the `_assets/styles/custom.css`
2. Add the following custom class to that file

```css
.purple-text {
  color: purple;
}
```

</div>

### The `<span>` Tag 

Now that you have created the new `purple-text` class, let's apply it to a specific word with the <span> HTML tag. This tag is used when you want to customiz in-line elements.

<div class="try-it-yourself">

#### Try it Yourself

1. In the `essay.md` file, write the sentence "This word should appear purple". 
2. Before the word "purple" write `<span class="purple-text">` (this is the opening tag) and after the word "purple" write `</span>` (this is the closing tag).
3. Preview your project and note the word "purple" now appears purple.

</div>

### The `<div>` Tag 

In addition to targeting a single word with the <span> tag, you can also make changes to an entire block of text. You would do this with the <div> tag. 

<div class="try-it-yourself">

#### Try it Yourself

1. In the `essay.md` file, write the sentence "This entire sentence should appear purple" anywhere on the page. 
2. Above the sentence write `<div class="purple-text">` (this is the opening tag) and below the sentence write `</div>` (this is the closing tag).
3. Preview your project and, voila, the entire sentence should now be purple.

**Go Deeper**

1. In `_assets/styles/custom.ss` file add the following CSS to create a new class that will center text on the page.

```css
.centered-text {
  text-align: center;
}
```
2. Change the `class` in the `<div>` tag to read `centered-text`.
3. Preview your project and note that the sentence "This entire sentence should appear purple" is now centered on the page. 

</div>


### Overriding Styles with Custom CSS 

In addition to creating custom classes in the `custom.css` file and applying then with HTML tags, you can also override exisiting styles in a broader sense. One of the most common requests we get for help with custom CSS is hiding the title and subtitle from the cover page of your project, as in this example from the Leventhal Map & Education Center: https://www.leventhalmap.org/digital-exhibitions/terrains-of-independence/. Please follow the steps below to achieve this. 

<div class="try-it-yourself">

#### Try it Yourself


1. Navigate to your project's `_assets/styles/custom.css` file.
2. Cut and paste the lines of CSS listed below into the `custom.css` file. 

```css
.quire-cover__hero-body {
    clip: rect(0 0 0 0);
    clip-path: inset(50%);
    height: 1px;
    overflow: hidden;
    position: absolute;
    white-space: nowrap;
    width: 1px;
  }
```
3. Refresh your project and navigate to your cover page to confirm the custom CSS worked correctly. 

</div>


## Next Steps 

You can continue reinforcing the concepts above by creating a new page in your Quire project, adding text and images, and a pop-up citation. 

<div class="try-it-yourself">

#### Try it Yourself

1. In Visual Studio Code, create a new `.md` file by right clicking the `content` folder and choosing "New File". The file name should be all lowercase with dashes instead of spaces and should end in `.md`.
2. Add a YAML block to the top of the page, including `title`, `layout`, and `order`. *You cannot repeat an `order` number that has already been used in another `.md` file*. Don't forget to include three dashes both above and below the YAML block. 
3. Add content below the YAML block written in Markdown
4. Add a new image to the project in the `_assets/images/` folder
5. Add a `figures.yaml` entry for that image. Start with a dash and make sure the indents are aligned with the entries above it. Include an `id`, `caption`, `credit`, `label`, and include the image file name for `src`.
6. Use the `{% figure %}` shortcode to insert that image into the `.md` file you just created by including the `id` you assigned it in the `figures.yaml` file
7. Add a new entry in the `references.yaml` file. Include both an `id` (written in "Author Date" format) and a value for `full`
8. Use the `{% cite %}` shortcode to insert the pop-up citation into the `.md` file by including the `id` you assigned it in the `references.yaml` file
9. In your CLI, press Control-C to stop the preview
10. Type the command `quire preview` to restart the preview

</div>

If you get stuck at any point, please refer to the [Quire documentation](/docs-v1/) for assistance. 

## GitHub

Please see the [GitHub section of our website](/resources/github/) for a tutorial. 

