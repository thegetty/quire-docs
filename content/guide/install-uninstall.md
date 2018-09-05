---
title: Install and Uninstall
weight: 201
type: essay
---

## Mac Os installation

Open your your Terminal command line application and follow the four steps below. First to install support software for Quire, and then Quire itself. Note that when you type a password in the command line, the cursor doesn’t move, but your typing is being registered. Simply type the password, and hit Enter.

1. Install **Apple’s Xcode** by copying and pasting the following command and hitting enter. After hitting ender, an additional alert notification will pop up. Click “Install” and follow the prompts.

    ```text
    xcode-select --install
    ```

2. Visit the **Node.js** site, and download and install the current LTS (long-term support) version: [https://nodejs.org](https://nodejs.org)

3. Visit the **PrinceXML** site, download the Mac OS version, and uncompress the folder: [http://www.princexml.com/download/](http://www.princexml.com/download/)

    Copy and paste the following two lines in your Terminal at once and press enter. Note that this assumes the file downloaded into your Downloads folder (the Mac default) and that the version you downloaded was 11.3, you can update the command if either of these is not the case.

    ```text
    cd Downloads/prince-11.3-macosx
    sudo ./install.sh
    ```

    The Terminal will ask for your computer password. After entering it another message will appear in the Terminal shell to confirm that PrinceXML should be installed in the `/usr/local` directory. Press enter.

    When complete, type `cd` into the Terminal to return to your home/user directory.

    ```text
    cd
    ```

4. Copy and paste the following line into your Terminal to download the **Quire CLI** (command line application) to your computer from GitHub.

    ```text
    git clone https://github.com/gettypubs/quire-cli.git
    ```

    You may asked to enter your GitHub username and password. When complete, install the CLI by copying and pasting the following commands into your Terminal and pressing enter. The first resets user permissions for your local directory, the second installs Quire.

    ```text
    sudo chown -R $USER /usr/local
    ```

    ```text
    cd quire-cli
    npm install -g
    ```

When complete, type `quire --version` to confirm proper installation. It should return a version number, otherwise, if it says `command not found`, the Quire CLI has not been properly installed. Refer to the “Troubleshooting” section below.

### Troubleshooting

TK

<!--
The full Quire system is not currently available to PC users. However, PC users can still start and work on Quire projects, preview the online edition, and output final files for it. They will not, however, be able to:
- Output PDF or EPUB editions
- Make changes to Style (.scss) or Javascript (.js) files inside the themes folder
The following steps will install the necessary software for running a Quire project on a PC, and show you how to start a new project as well.
-->


## Windows Installation

1. Download **Git for Windows** by clicking on "Download" at https://gitforwindows.org/. An exe file will be downloaded, click on it and hit "run", you should see a setup wizard screen that will install Git for Windows. During the installation, use the default settings.

2. Download and install **Node.js** and **npm** at https://nodejs.org/en/download/. Make sure you get the LTS version of Node.js, npm will be installed during the same process. The Windows installer will be downloaded, just open it and a setup wizard screen will guide you through the process.

3. Download **Prince** for Windows. You would download either the 32-bit installer or the 64-bit installer depending on your processor. To install Prince you can follow the instructions at their site: https://www.princexml.com/doc-install/#windows

4. Open **PowerShell** (that should be installed by default in your Windows computer) and run it as administrator. To do so, right click on the icon and select "run as administrator" from the context menu.

    Then once you get the administrator PowerShell window, type the following command:

    ```tx
    npm install --g --production windows-build-tools
    ```

    This command installs c++ 2015 build tools and python 2 required for node-gyp. The process will take some time and you'll see the prompt with your the name of your computer and your username once it's complete.

5. Continue using PowerShell, but this time it's not required to run it as administrator (you can close the administrator window and open a new one) and type the following command to download **Quire CLI** to your computer from GitHub:

    ```tx
    git clone https://github.com/gettypubs/quire-cli
    ```

    A pop up window may emerge and ask you to type your GitHub username and password, then the download starts.

    Change directory to the `quire-cli` folder:

    ```text
    cd quire-cli
    ```

    and type:

    ```tx
    git checkout pc-dev
    ```

    The following command will install dependencies:

    ```tx
    npm install -g
    ```

    Installing the dependencies takes some time and you'll notice multiple text strings being generated on the screen during the process. Wait until the prompt with your username shows up and then, to verify that `quire-cli` has been installed correctly, type:

    ```tx
    quire -V
    ```

    If version number is returned, means that the install is correct.

6. Lastly, to navigate to your home directory and create a new project or publication type:

    ```tx
    cd ~
    ```

## Starting a New Quire Project

The steps you follow to create a new Quire publication or project are the same for MAC Os and all Windows versions.

1. To create a new project type:

    ```tx
    quire new your-project-name
    ```

    This command will install the starter kit, set up the theme and install dependencies wait until you see a text string that says "theme and dependencies sucessfully installed" and the prompt with your username pops up.

2. Then enter the new directory by typing:

    ```tx
    cd your-project-name
    ```

3. And install starter theme dependencies with the following command:

    ```tx
    quire install
    ```

    This process can last a few minutes, once again wait until you see the prompt.

4. Now you can preview the project, and any edits you'd make, by typing:

    ```tx
    quire preview
    ```

    Once running, open a browser and visit [http://localhost:1313](http://localhost:1313) to see the publication. To stop the preview you can either press ctrl+c or type `quire stop`.


### Troubleshooting

TK

## Updating the Quire CLI

As we develop, you may also want/need to update your [Quire CLI](../quire-cli-instructions/). In particular, the CLI is pegged to a particular version of the Quire Starter Theme (at least for now), so if you’re using an older CLI any new projects you start will also have an older version of the theme.

1. In your User/Home directory where you initially installed Quire, look for the `quire-cli` folder and delete it.

2. In your command line shell, enter the following three commands in order:

    ```tx
    git clone https://github.com/gettypubs/quire-cli.git
    ```

    ```tx
    cd quire-cli
    ```

    ```tx
    npm install -g
    ```

You now have the latest Quire CLI and any new projects you start will also have the newest theme. Your previously-started projects will keep their original version of theme. You may in some cases see errors or issues when running Quire commands with a newer version of the CLI, in older projects. These can be fixed manually, or, you can also always re-install [your original version of the CLI](https://github.com/gettypubs/quire-cli/releases) to run those older projects if necessary.

## Uninstalling Quire

To uninstall Quire:

1. From a new window in your {{< q-glossary "Command Line Interface" >}} (you should be in your home/user directory where you initially installed Quire) type the following two commands:

    ```tx
    cd quire-cli
    ```

    ```tx
    npm uninstall -g
    ```

2. In the folder/finder view, go to your user/home directory where you initially installed Quire, look for the `quire-cli` folder and delete it.
