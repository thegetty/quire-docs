---
title: Quire Installation
subtitle: Mac
type: page
---

Open your your Terminal command line application and follow the four steps below. First to install support software for Quire, and then Quire itself. Note that when you type a password in the command line, the cursor doesn’t move, but your typing is being registered. Simply type the password, and hit Enter.

1. Install **Apple’s Xcode** by copying and pasting the following command and hitting enter. After hitting ender, an additional alert notification will pop up. Click “Install” and follow the prompts.

    ```
    xcode-select --install
    ```

2. Visit the **Node.js** site, and download and install the current LTS (long-term support) version: [https://nodejs.org](https://nodejs.org)

3. Visit the **PrinceXML** site, download the Mac OS version, and uncompress the folder: http://www.princexml.com/download/

    Copy and paste the following two lines in your Terminal at once and press enter. Note that this assumes the file downloaded into your Downloads folder (the Mac default) and that the version you downloaded was 11.3, you can update the command if either of these is not the case.

    ```
    cd Downloads/prince-11.3-macosx
    sudo ./install.sh
    ```

    The Terminal will ask for your computer password. After entering it another message will appear in the Terminal shell to confirm that PrinceXML should be installed in the `/usr/local` directory. Press enter.

    When complete, type `cd` into the Terminal to return to your home/user directory.

    ```
    cd
    ```

4. Copy and paste the following line into your Terminal to download the **Quire CLI** (command line application) to your computer from GitHub.

    ```
    git clone https://github.com/gettypubs/quire-cli.git
    ```

    You may asked to enter your GitHub username and password. When complete, install the CLI by copying and pasting the following commands into your Terminal and pressing enter. The first resets user permissions for your local directory, the second installs Quire.

    ```
    sudo chown -R $USER /usr/local
    ```

    ```
    cd quire-cli
    npm install -g
    ```

When complete, type `quire --version` to confirm proper installation. It should return a version number, otherwise, if it says `command not found`, the Quire CLI has not been properly installed. Refer to the “Troubleshooting” section below.

### Troubleshooting

TK
