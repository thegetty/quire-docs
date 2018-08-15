---
title: Quire CLI Instructions
weight: 506
type: essay
---

Quire CLI, or command line interface, ([quire-cli](https://github.com/gettypubs/quire-cli)) is the control for creating, previewing and outputting Quire projects. It is written in JavaScript and requires [Node.js](https://nodejs.org) to run. Quire CLI is typically run from Terminal on a Mac, and Git Bash (or its equivalent) on a PC. The following commands are available

The full Quire CLI system is not currently available to PC users. However, PC users can still start and work on Quire projects, preview the online edition, and output final files for it, by installing and using Hugo directly (the static-site software underlying Quire). They will not, however, be able to: Output PDF or EPUB editions, or make changes to Style (.scss) or Javascript (.js) files inside the themes folder. More information can be found in the [PC installation instructions](../pc-installation/). Corresponding commands are included in the table below.


| Command | PC Option | Description |
| -------------- | -------------- | -------------- |
| `quire -V` or `quire --version` | `hugo version` | Output the version number. |
| `quire -h` or `quire --help` | `hugo -h` or `hugo --help` | Output usage information. |
| `quire new project-name` | n/a | Create a new Quire project named `project-name` in the current directory. Name can be anything, but shouldn’t contain spaces. |
| `quire preview` | `hugo server` | Run a local server to preview the project in a browser. Defaults to previewing at http://localhost:1313/, but will use other port numbers (such as http://localhost:6532/) if `1313` is busy. The specific address will be listed in your command line terminal after running the command. |
| `quire build` | `hugo` | Build the files of the current project into the `public` directory. These can then be hosted on any web server. |
| `quire pdf` | n/a | Generate a PDF version of the current project. |
| `quire epub` | n/a | Generate an EPUB version of the current project. |
| `quire install` | n/a | Install this project's theme dependencies. |
| `quire debug` | n/a | Development use only. Log info about current project. |
