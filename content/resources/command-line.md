---
title: Learning Command Line
weight: 7500
type: page
online: false
---

The {{< q-def "command-line shell" >}} is a text-based way of looking at your computer’s file contents. On Mac computers you’ll most often use a shell called Terminal.

![command-line-shel](/img/screenshots/command-line-shell.png/)

This can be found by pressing Command-Spacebar to launch Spotlight.

![spotlight](/img/screenshots/spotlight.jpg/)

Type "Terminal" and hit enter.

![spotlight-terminal](/img/screenshots/spotlight-terminal.jpg/)

While in your Terminal type `ls` (for list) and hit enter.

Now, open your {{< q-def "home directory">}} (open Finder and press Command-Shift-H). You'll notice the files listed in Terminal match the contents of your home directory.

![commandline-vs-folder](/img/screenshots/commandline-vs-folder.png/)

You can continue to use the `cd` command paired with a [folder name] to navigate deeper into your files. If you get lost you can enter `cd` by itself and hit enter to get back to the main directly.

Terminal is also used as a tool for running program commands, and, for our purposes, can be used to tell Quire what to do. For example the command `quire new` can be used to start a new project and `quire pdf` can be used to generate the PDF version of your site. Learn more about how to start and preview projects, output files, and more in the [*Quire CLI Commands*](/documentaton/quire-commands/) section of our documentation or enter the command `quire --help` for a list of available commands.

![cli-commands](/img/screenshots/cli-commands.jpg/)
