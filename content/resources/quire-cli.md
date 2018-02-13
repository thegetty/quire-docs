---
title: Quire CLI Instructions
type: page
---

Quire CLI, or command line interface, ([quire-cli](https://github.com/gettypubs/quire-cli)) is the control for creating, previewing and outputting Quire projects. It is written in JavaScript and requires [Node.js 8.9.4 LTS](https://nodejs.org) to run. Quire CLI is typically run from Terminal on a Mac, and Git Bash (or its equivalent) on a PC. The following commands are available:

| Command | Description |
| -------------- | -------------- |
| `quire -V` or `quire --version` | Output the version number. |
| `quire -h` or `quire --help` | Output usage information. |
| `quire new project-name` | Create a new Quire project named `project-name` in the current directory. Name can be anything, but shouldn’t contain spaces. |
| `quire preview` | Run a local server to preview the project in a browser. Defaults to previewing at http://localhost:1313/, but will use other port numbers (such as http://localhost:6532/) if `1313` is busy. The specific address will be listed in your command line terminal after running the command. |
| `quire build` | Build the files of the current project into the `public` directory. These can then be hosted on any web server. |
| `quire pdf` | Generate a PDF version of the current project. |
| `quire epub` | Generate an EPUB version of the current project. |