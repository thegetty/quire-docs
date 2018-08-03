---
title: Quire Installation
subtitle: PC
type: page
---
<!--
The full Quire system is not currently available to PC users. However, PC users can still start and work on Quire projects, preview the online edition, and output final files for it. They will not, however, be able to:
- Output PDF or EPUB editions
- Make changes to Style (.scss) or Javascript (.js) files inside the themes folder
The following steps will install the necessary software for running a Quire project on a PC, and show you how to start a new project as well.
-->

### Windows 10 Users:

1. Install the Windows Subsystem for Linux:

    Open PowerShell as Administrator and run:

    ```
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
    ```

    Restart your computer when prompted.

    Open the Microsoft Store and choose your favorite Linux distribution.
    
    Quire recommends the LTS version of [Ubuntu](https://www.ubuntu.com/)

    From the distro's page, select "Get"

    Once the download has completed, select "Launch".
    
    Now that you have access to the command line in the Linux Subsytem this can be considered a Linux install.
    
    [Follow this link to the Linux Installation instructions.](https://github.com/gettypubs/quire/blob/nhulea-dev/content/resources/install-linux.md) 

### All Other Windows Users:

1. Download and Install Git for Windows -> https://gitforwindows.org/ - **Use the default settings on install**
2. Download and Install node and npm -> https://nodejs.org/en/download/ - **Use latest LTS version of node.js** 
3. Download and Install Prince XML for Windows -> https://www.princexml.com/doc-install/#windows - **Use the default settings on install**
4. Run as admin from Powershell  (this installs c++ 2015 build tools and python 2 required for node-gyp)
    ```
    npm install --g --production windows-build-tools
    ```
5. Now continuing from Powershell Install Quire CLI (admin is not required for the rest of these commands)

    ```
    git clone https://github.com/gettypubs/quire-cli
    ```
    
    ```
    cd quire-cli
    ```
    
    ```
    git checkout pc-dev
    ```
    
    Install Dependencies
    
    ```
    npm install -g
    ```
    
    Verify
    
    ```
    quire -V
    ```
    
    If version number is returned quire-cli was installed correctly, you can now leave the directory.

    ```
    cd ~
    ```
    
5. Start a new **Quire** project

    Create a new project

    ```
    quire new your-project-name
    ```
    Enter the new directory

    ```
    cd your-project-name
    ```

    Install starter theme dependencies

    ```
    quire install
    ```
    
    then to start editing run
    
    ```
    quire preview
    ```

    Once running, open a browser and visit [http://localhost:1313](http://localhost:1313) to see the publication.
    

### Troubleshooting

TK


