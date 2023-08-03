---
title: Quire Commands
weight: 6120
type: essay
abstract: "Learn how to start and preview projects, output files, and more"
aliases:
  - /documentation/quire-commands/
---

Quire commands are typically run from Terminal on a Mac and PowerShell on a PC. They control creating, previewing, and outputting Quire projects. The following commands are available.

{{< q-class "box tip" >}}
- Run `quire --help` in your command-line shell for a full list of the Quire commands and options defined below.
{{< /q-class >}}

## Start and Preview Projects

| Command       | Action   | Notes              |
| ------------- | -------- | ------------------ |
| **`quire new my-project`** | Create a new Quire project with the default starter content | In this instance, the new project is named `my-project` but the name can be anything as long as it doesn't contain spaces or special characters. When you run this command, a folder containing default starter content will be created in your computer's home directory. |
| **`quire preview`** | Run a local server to preview the project in a browser | The default URL for previewing is http://localhost:8080/. If there are errors in your project, messaging will appear in your command-line shell that point you to issues in your Markdown or YAML. |


{{< q-class "box warning" >}}
- Use `npm install` to install Quire’s dependencies when you clone a project and preview it for the first time. This command only needs to be run once in a project.
{{< /q-class >}}


## Output Files

| Command       | Action   | Notes              |
| ------------- | -------- | ------------------ |
| **`quire build`** | Build site files used to create various outputs | This creates the site files for the HTML format of the project. These site files are then used to create the PDF or EPUB versions of the project. This is therefore a necessary step before running the commands `quire epub` and `quire pdf`.|
| **`quire pdf`** | Output Quire project in PDF format | You must run `quire build` before running this command. |
| **`quire epub`** | Output Quire project in EPUB format | You must run `quire build` before running this command. |
| **`quire clean`** | Remove old build outputs | |

## Get Help

| Command       | Action   | Notes              |
| ------------- | -------- | ------------------ |
| **`quire --version`** | List Quire version number | This is useful for troubleshooting and confirming updates. |
| **`quire --help`** | Provide list of Quire commands | This is useful if you need a reminder of commands. |


## Not Yet Implemented

These commands are not yet available but are currently under development.

| Command       | Action   | Notes              |
| ------------- | -------- | ------------------ |
| **`quire debug`** | Provide log into about current project | This will produce version numbers for the following: Quire, 11ty, Node, NPM, and your computer's operating system. This information will be requested when logging bugs and requesting troubleshooting support. |
| **`quire configure`** | Edit the Quire CLI configuration | |
| **`quire preview pdf`** | Preview your Quire publication as a PDF |
| **`quire preview epub`** | Preview your Quire publication as an EPUB |
| **`quire server`** | Start a local web server to serve a previously built Quire site | |
| **`quire version`** | Set the Quire version you want to use when running commands | This will be useful when switching between old and new Quire projects. |

## Helpful Non-Quire commands

| Command       | Action   | Notes              |
| ------------- | -------- | ------------------ |
| **`cd`** | Used to change project directories | You will use this command to navigate into your Quire project directory. Once you are in the directory you can run commands like `quire preview` and `quire build`. |
|  **`cd ..`** | Will take you back one directory level | This is especially useful if you keep multiple Quire projects as sub-directories within a main directory. |
| **`ls`** | Used to list all the files when in a project directory | This can be useful in making sure you are in the right folder. |
|  **`!!`** | This will re-run the last command you entered | |

{{< q-class "box tip" >}}
- The key combo `Control-C` can be used to stop the preview of a Quire project. Stopping and restarting the Quire preview is helpful for troubleshooting.
{{< /q-class >}}
