---
title: Quire Commands
weight: 6120
type: essay
abstract: "Learn how to start and preview projects, output files, and more"
aliases:
  - /documentation/quire-commands/
---

Quire commands are typically run from Terminal on a Mac and Git Bash (or its equivalent) on a PC. They control creating, previewing, and outputting Quire projects. The following commands are available.

{{< q-class "box tip" >}}
- Run `quire --help` in your command-line shell for a full list of the Quire commands and options defined below.
{{< /q-class >}}

## Start and Preview Projects

`quire new project-name`
: Create a new Quire project named `project-name` in the current directory. The name can be anything, but shouldn’t contain spaces or special characters.

`quire preview`
: Run a local server to preview the project in a browser. Defaults to previewing at http://localhost:8080/, but will use other port numbers if 8080 is busy. The specific address will be listed in your command-line terminal after running the command. If you’re having any issue with the preview, try running `quire preview --verbose` instead. This outputs error, warning, and other processing information that can sometimes be useful in troubleshooting.

`quire dev`
:

`quire install`
: Install Quire's dependencies when you clone a Quire project and are preview it for the first time. This command only needs to be run once in a project.

## Output Files

`quire build`
: Build the Quire website, PDF, and EPUB files simultaneously.  

## Get Help

`quire -V` `quire --version`
: Output the version number.

`quire -h` `quire --help`
: Provide a list of helpful Quire commands.

`quire preview --verbose`
: Show verbose output in the command-line shell. Includes warnings, errors, and process information.

`quire debug`
: Development use only. Log info about current project.
