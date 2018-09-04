---
title: Quire Installation
subtitle: PC
type: page
---

    1. Download **Git for Windows** by clicking on "Download" at https://gitforwindows.org/. An exe file will be downloaded, click on it and hit "run", you should see a setup wizard screen that will install Git for Windows. During the installation, use the default settings.

    2. Download and install **Node.js** and **npm** at https://nodejs.org/en/download/. Make sure you get the LTS version of Node.js, npm will be installed during the same process. The Windows installer will be downloaded, just open it and a setup wizard screen will guide you through the process.

    3. Download **Prince** for Windows. You would download either the 32-bit installer or the 64-bit installer depending on your processor. To install Prince you can follow the instructions at their site: https://www.princexml.com/doc-install/#windows

    4. Open **PowerShell** (that should be installed by default in your Windows computer) and run it as administrator. To do so, right click on the icon and select "run as administrator" from the context menu. Then once you get the administrator PowerShell window, type the following command:

      ```
      npm install --g --production windows-build-tools
      ```
    This command installs c++ 2015 build tools and python 2 required for node-gyp. The process will take some time and you'll see the prompt with your the name of your computer and your username once it's complete.

    5.  Continue using PowerShell, but this time it's not required to run it as administrator (you can close the administrator window and open a new one) and type the following command to download **Quire CLI** to your computer from GitHub:

      ```
      git clone https://github.com/gettypubs/quire-cli
      ```
      A pop up window may emerge and ask you to type your GitHub username and password, then the download starts.

      Change directory to the `quire-cli` folder:

      ```
      cd quire-cli
      ```
      and type:

      ```
      git checkout pc-dev
      ```

      The following command will install dependencies:

      ```
      npm install -g
      ```
      Installing the dependencies takes some time and you'll notice multiple text strings being generated on the screen during the process. Wait until the prompt with your username shows up and then, to verify that `quire-cli` has been installed correctly, type:

      ```
      quire -V
      ```

      If version number is returned, means that the install is correct.

      Lastly, to navigate to your home directory and create a new project or publication type:

      ```
      cd ~
      ```

    ### Starting a New Quire Project

    The steps you follow to create a new Quire publication or project are the same for all versions of Windows.

    1. To create a new project type:

        ```
        quire new your-project-name
        ```
    This command will install the starter kit, set up the theme and install dependencies wait until you see a text string that says "theme and dependencies sucessfully installed" and the prompt with your username pops up.

    2. Then enter the new directory by typing:

        ```
        cd your-project-name
        ```

    3. And install starter theme dependencies with the following command:

        ```
        quire install
        ```
    This process can last a few minutes, once again wait until you see the prompt.

    4. Now you can preview the project, and any edits you'd make, by typing:

        ```
        quire preview
        ```
    Once running, open a browser and visit [http://localhost:1313](http://localhost:1313) to see the publication. To stop the preview you can either press ctrl+c or type `quire stop`.


    ### Troubleshooting

    TK
