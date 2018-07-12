---
title: Quire Installation
subtitle: PC
type: page
---

The full Quire system is not currently available to PC users. However, PC users can still start and work on Quire projects, preview the online edition, and output final files for it. They will not, however, be able to:

- Output PDF or EPUB editions
- Make changes to Style (.scss) or Javascript (.js) files inside the themes folder

The following steps will install the necessary software for running a Quire project on a PC, and show you how to start a new project as well.

### Windows 10 Users:

1. Install the Windows Subsystem for Linux:

    Open PowerShell as Administrator and run:

    `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`

    Restart your computer when prompted.

    Open the Microsoft Store and choose your favorite Linux distribution.

    From the distro's page, select "Get"

    Once the download has completed, select "Launch".


2. Download and install **Prince**:


3. Start a new **Quire** project

    ```
    git clone --recursive https://github.com/gettypubs/quire-starter.git
    ```

    You may be asked for your GitHub username and password. Note that when you type a password in the command line, the cursor doesn’t move, but your typing is being registered. Simply type the password, and hit Enter.

    Change directory into the new `quire-starter` folder you just created.

    ```
    cd quire-starter
    ```

    And then run Hugo to see a live preview of your site.

    ```
    hugo server
    ```

    Once running, open a browser and visit [http://localhost:1313](http://localhost:1313) to see the publication.


### All Other Windows Users:

1. Download and Install Gitbash -> https://gitforwindows.org/
2. Download and Install node and npm -> https://nodejs.org/en/download/
3. run as admin from powershell npm install --g --production windows-build-tools (this installs c++ 2015 build tools and python 2 required for node-gyp)
4. git clone git@github.com:gettypubs/quire-cli.git; cd quire-cli;
5. npm i -g
6. quire -V

### Troubleshooting

TK


