---
title: Quire Installation
subtitle: PC
type: page
---

The full Quire system is not currently available to PC users. However, PC users can still start and work on Quire projects, preview the online edition, and output final files for it. They will not, however, be able to:

- Output PDF or EPUB editions
- Make changes to Style (.scss) or Javascript (.js) files inside the themes folder

The following steps will install the necessary software for running a Quire project on a PC, and show you how to start a new project as well.

1. Download and install **Git for Windows**:

    Download the 32-bit or 64-bit version of Git for Windows to match your operating system. (Check your computer by clicking the Start button, right-clicking Computer, and then clicking Properties. Under System, you can view the system type.)

    [https://gitforwindows.org/](https://gitforwindows.org/)

    When installing, you can accept all the default options. When complete open the “Git Bash” program which is the command line shell you’ll use to run Quire projects. If you installed the 64-bit version and it doesn’t open, we recommend trying the 32-bit.

2. Download and install **Hugo**:

    In your User directory, create a folder called `hugo` and within that, a subdirectory called `bin`.

    Download the 32-bit or 64-bit version of Hugo **0.31.1** to match your operating system.

    [https://github.com/gohugoio/hugo/releases/tag/v0.31.1](https://github.com/gohugoio/hugo/releases/tag/v0.31.1)

    Right click on the downloaded file and use the WinZip “Extract to ...” option to extract the contents into the `hugo/bin` directory you created.

    Open Git Bash, with the "Run as administrator" option (right click), and copy and paste the following line, replacing `YOUR-USER-DIRECTORY` with the name of your actual directory.

    ```
    setx PATH "%PATH%;C:\Users\YOUR-USER-DIRECTORY\hugo\bin"
    ```

    [*More directions for installation can be found in the [Hugo documentation](https://gohugo.io/getting-started/installing/#windows).*]

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


### Troubleshooting

TK


