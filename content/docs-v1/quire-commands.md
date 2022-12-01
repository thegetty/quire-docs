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

`quire new project-name`
: Create a new Quire project named `project-name` in the current directory. The name can be anything, but shouldn’t contain spaces or special characters.

`quire preview`
: Run a local server to preview the project in a browser. The default URL for previewing is http://localhost:8080/, but will use other port numbers if 8080 is busy. The specific address will be listed in your command-line shell after running this command. If there are errors in your project, messaging will appear in your command-line shell that point you to issues in your Markdown or YAML.

`quire install`
: Install Quire's dependencies when you clone a Quire project and are preview it for the first time. This command only needs to be run once in a project.

## Output Files

`quire build`
: Builds the Quire website, PDF, and EPUB files simultaneously.  

## Get Help

`quire -V` `quire --version`
: Output the version number.

`quire -h` `quire --help`
: Provide a list of helpful Quire commands.

`quire debug`
: Development use only. Log info about current project.

## Helpful Non-Quire commands

There are some additional commands that you will use that are not specific to Quire.

`cd`
: Used to change project directories. You will use this command to navigate into your Quire project directory. Once you are in the directory you can run commands like `quire preview`, `quire install`, and `quire build`.

`cd ..`
: Will take you back one directory level. This is especially useful if you keep multiple Quire projects as sub-directories within a main directory.

`ls`
: Used to list all the files when in a project directory. This can be useful in making sure you are in the right folder.

`!!`
: will re-run the last command you entered

Control-C
: Not a command but rather a key-combo you can press to stop a quire project from previewing.
