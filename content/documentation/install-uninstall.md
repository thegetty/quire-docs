---
title: Install or Update
weight: 4100
type: essay
---

{{< q-class "box warning" >}}
- Quire is in a closed beta. Installation will not work unless you have [requested and been given access](https://goo.gl/forms/Ih4SOHje0Z9dm3C73).
{{< /q-class >}}

## macOS Installation

Open your Terminal {{< q-glossary "command-line shell" >}} (found in your Applications/Utilities folder or by pressing Command–Space Bar and type “Terminal” ) and follow the steps below. First, install support software for Quire, and then Quire itself. If you are new to the command-line, read our tutorial on [“Working in a Command-line Shell”](/tutorial#1-working-in-a-command-line-shell).

1. **Apple’s Xcode** is a set of developer tools for your mac. More information can be found [here](https://en.wikipedia.org/wiki/Xcode). Install Apple's Xcode by copying and pasting the following command and pressing enter. If Xcode is not already installed, an additional alert notification will pop up. Click “Install” and follow the prompts.

    ```text
    xcode-select --install
    ```

2. **Node.js** enables you to run javascript on your computer. The Quire CLI is written in javascript. Visit the Node.js site, and download and install the current LTS (long-term support) version: [https://nodejs.org](https://nodejs.org).

3. **Pandoc** serves two purposes in Quire. You can use it to convert Word documents to Markdown, and you can also use it to create e-book files of your Quire project. Visit the Pandoc repository on GitHub, and download the macOS .pkg file of the latest release: [https://github.com/jgm/pandoc/releases/](https://github.com/jgm/pandoc/releases/). Install by double clicking the icon and following the prompts.

4. **PrinceXML** enables you to create a PDF version of your Quire project. Visit the PrinceXML site, download the Mac OS version, and uncompress the folder: [http://www.princexml.com/download/](http://www.princexml.com/download/).

    Copy and paste the following two lines in a blank Word or Notes document:

      ```text
      cd Downloads/prince-XX.X-macosx
      sudo ./install.sh
      ```
    Before you can proceed, you need to update **prince-XX.X-macosx** with the correct version number.

    Go to the Downloads folder to make sure the Prince zip file is there. The Prince folder should have a number listed in its title. Make sure XX.X in Word or Notes document matches this number by deleting and replacing with the correct version numbers. The line may end in macos or macosx. Make sure the it matches exactly what the program looks like in your Downloads folder and delete the "x" if necessary.

    Once updated, paste the two lines together in Terminal. You will be prompted to enter your computer password. Press enter. You should receive a message that PrinceXML will be installed in the `/usr/local` directory. Press enter again. If successful you will see a message in the Terminal saying "installation complete."

    When complete, type `cd` into the Terminal to return to your home directory.

    ```text
    cd
    ```

5. The **Quire CLI** ({{< q-glossary "command-line interface" >}}) is the core of Quire. It is used for creating, previewing, and outputting projects. You can learn more about the Quire CLI in the ["Quire CLI Commands"](https://gettypubs.github.io/quire/guide/quire-cli/) chapter of our guide.  Copy and paste the following line into your Terminal to download the Quire CLI to your computer from GitHub.

    ```text
    git clone https://github.com/gettypubs/quire-cli.git
    ```

    You may be asked to enter your GitHub username and password. When complete, install the CLI by copying and pasting the following commands into your Terminal and pressing enter. The first resets user permissions for your local directory, the second installs Quire.

    ```text
    sudo chown -R $USER /usr/local
    ```

    ```text
    cd quire-cli
    npm install -g
    ```

When complete, type `quire --version` to confirm proper installation. It should return a version number, otherwise, if it says `command not found`, the Quire CLI has not been properly installed. Refer to the [“Troubleshooting”](#troubleshooting) section below.

## Windows Installation

1. Download **Git for Windows** by clicking on "Download" at https://gitforwindows.org/. An exe file will be downloaded, click on it and hit "run", you should see a setup wizard screen that will install Git for Windows. During the installation, use the default settings.

2. **Node.js** and **npm** enable you to run javascript on your computer. Download and install Node.js and npm at https://nodejs.org/en/download/. Make sure you get the LTS version of Node.js, npm will be installed during the same process. The Windows installer will be downloaded, just open it and a setup wizard screen will guide you through the process. Node.js

3. **PrinceXML** enables you to create a PDF version of your Quire project. You will need to download either the 32-bit installer or the 64-bit installer depending on your operating system. To install Prince you can follow the instructions at their site: https://www.princexml.com/doc-install/#windows

4. **Pandoc** serves two purposes in Quire. You can use it to convert Word documents to Markdown, and you can also use it to create e-book files of your Quire project. You will need to download either the 32-bit installer or the 64-bit installer depending on your operating system. To install Pandoc you can either download the .msi or download the .zip file and run the .exe file in the directory. Either way works and will install Pandoc onto your system.

5. Open **PowerShell** (that should be installed by default in your Windows computer) and run it as administrator. To do so, right click on the icon and select "run as administrator" from the context menu.

    Then once you get the administrator PowerShell window, type the following command:

    ```tx
    npm install --g --production windows-build-tools
    ```

    This command installs c++ 2015 build tools and python 2 required for node-gyp. The process will take some time and you'll see the prompt with the name of your computer and your username once it's complete.

6.  The **Quire CLI** ({{< q-glossary "command-line interface" >}})is the core of Quire. It is used for creating, previewing, and outputting projects. You can learn more about the Quire CLI in the ["Quire CLI Commands"](https://gettypubs.github.io/quire/guide/quire-cli/) chapter of our guide. To download Quire CLI to your computer from GitHub, continue using PowerShell, but this time it's not required to run it as administrator (you can close the administrator window and open a new one). Type the following command:

    ```tx
    git clone https://github.com/gettypubs/quire-cli
    ```

    A pop up window may emerge and ask you to type your GitHub username and password, then the download starts.

    Change directory to the `quire-cli` folder:

    ```text
    cd quire-cli
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

7. Lastly, to navigate to your home directory and create a new project or publication type:

    ```tx
    cd ~
    ```

## Linux Installation

1. Open terminal

2. Download and install **Prince**:

```tx
cd ~
```

Run these commands to download and install PrinceXML

```sh
wget https://www.princexml.com/download/prince_12-1_ubuntu18.04_amd64.deb

sudo gdebi prince_10r2-1_debian8.0_amd64.deb
  ```
If you chose a different distribution of Linux there are more instructions here -> https://www.princexml.com/doc-install/#linux

3. Install node js and npm through nvm

Detailed information about this installation can be found in this link [https://github.com/creationix/nvm#install-script](https://github.com/creationix/nvm#install-script)

To install or update nvm, you can use the install script using cURL:

  ```sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
  ```
or Wget:

  ```sh
  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
  ```
<sub>The script clones the nvm repository to `~/.nvm` and adds the source line to your profile (`~/.bash_profile`, `~/.zshrc`,      `~/.profile`, or `~/.bashrc`).</sub>

  ```sh
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
  ```
**Note:** You can add `--no-use` to the end of the above script (...`nvm.sh --no-use`) to postpone using `nvm` until you manually `use` it.

You can customize the install source, directory, profile, and version using the `NVM_SOURCE`, `NVM_DIR`, `PROFILE`, and `NODE_VERSION` variables.
Eg: `curl ... | NVM_DIR="path/to/nvm"`. Ensure that the `NVM_DIR` does not contain a trailing slash.

<sub>*NB. The installer can use `git`, `curl`, or `wget` to download `nvm`, whatever is available.*</sub>

**Note:** On Linux, after running the install script, if you get `nvm: command not found` or see no feedback from your terminal after you type:

  ```sh
  command -v nvm
  ```

simply close your current terminal, open a new terminal, and try verifying again.

If the above doesn't fix the problem, open your `.bash_profile` and add the following line of code:

  ```sh
  source ~/.bashrc
  ```

For more information about this issue and possible workarounds, please [refer here](https://github.com/creationix/nvm/issues/576)
to verify that nvm has been installed, do:

  ```sh
  command -v nvm
  ```

which should output 'nvm' if the installation was successful. Please note that `which nvm` will not work, since `nvm` is a sourced shell function, not an executable binary.
To download, compile, and install the latest release of node, do this:

  ```sh
  nvm install --lts
  ```

And then in any new shell just use the installed version:

  ```sh
  nvm use --lts
  ```

4. Install **Pandoc** for EPUB and MOBI output

  ```tx
  cd ~
  ```

Visit https://github.com/jgm/pandoc/releases and download the latest .deb file

  ```sh
  wget https://github.com/jgm/pandoc/releases/download/2.2.3.2/pandoc-2.2.3.2-1-amd64.deb
  ```
Install the .deb file

  ```sh
  sudo dpkg -i pandoc-2.2.3.2-1-amd64.deb
  ```
This will install the pandoc and pandoc-citeproc executables and man pages.

Verify Pandoc was installed

   ```sh
   pandoc -v
   ```

If Pandoc version information is returned then Pandoc was successfully installed on your system.

5. Install **Quire-CLI**

```sh
git clone https://github.com/gettypubs/quire-cli
```

```sh
cd quire-cli
```

```sh
git checkout pc-dev
```
Install Dependencies

```sh
npm install -g
```
Verify

```sh
quire -V
```
If version number is returned, quire-cli was installed correctly. You can now leave the directory.

```sh
cd ~
```

## Updating the Quire CLI

As we develop, you may also want/need to update your Quire CLI. The CLI is pegged to a particular version of the Quire Starter Theme (at least for now), so if you’re using an older CLI, any new projects you start will have the corresponding older version of the theme.

1. In your command-line shell, to first uninstall and discard the existing version of the CLI, enter the following four commands in order:

    ```tx
    cd quire-cli
    ```

    ```tx
    npm uninstall -g
    ```

    ```tx
    cd
    ```

    ```tx
    rm -rf quire-cli
    ```

3. Still in your command-line shell, enter these three commands to download the latest version and install it:


    ```tx
    git clone https://github.com/gettypubs/quire-cli.git
    ```

    ```tx
    cd quire-cli
    ```

    ```tx
    npm install -g
    ```

You now have the latest Quire CLI and any new projects you start will also have the newest theme. Your previously-started projects will keep their original version of theme unless you [update the theme](#updating-the-theme) separately.

You may in some cases see errors or issues when running Quire commands with a newer version of the CLI in older projects. These can be fixed manually, or, you can also re-install [your original version of the CLI](https://github.com/gettypubs/quire-cli/releases) to run those older projects if necessary.

## Updating the Theme

To update the version of a theme you have:

1. In the `themes` directory of your project, delete the current theme directory. It’s `quire-starter-theme` by default.
2. Copy in your new theme directory ensuring that it has the same name as the original.
3. Open your command-line shell and navigate to the project directory using the `cd` (change directory) command. For example, if your project directory was called `my-project` and it was in your main user directory, you’d enter `cd my-project`.
3. Still in the command-line shell, type `quire install` and press enter to install the theme dependencies for your project. (This is done automatically when running `quire new`, but needs to be done manually when adding a new or replacement theme.)

{{< q-class "box warning" >}}
- Be sure to save any [customizations you’ve made](/guide/styles-customization) inside your theme. (Typically style changes to the `variables.scss` file.) You’ll have to copy these over into the new theme manually once it is installed.
{{< /q-class >}}

## Installing a New Theme

TK

## Uninstalling Quire

To uninstall Quire:

1. From a new window in your command-line shell (you should be in your home/user directory where you initially installed Quire) type the following two commands:

    ```tx
    cd quire-cli
    ```

    ```tx
    npm uninstall -g
    ```

2. In the folder/finder view, go to your user/home directory where you initially installed Quire, look for the `quire-cli` folder and delete it.

## Troubleshooting

**Downloading the Quire CLI to your computer from GitHub through the Terminal**

If you have {{< q-glossary "two-factor authentication" >}} set-up, you may need to create a personal access token in GitHub to get Quire CLI to download properly.

Follow these steps:

1. Run

    ```text
    git clone https://github.com/gettypubs/quire-cli.git
    ```

2. For username: enter your Github Username

   For Password: **follow the directions below.**

3. In GitHub follow this link (https://github.com/settings/tokens) to access the personal token access token page.

6. Click **generate** new token.

7. Give your token a descriptive name.

8. This page allows you to select the scopes or permissions you'd like to grant this token. In this instance, click **repo** at the very top.

9. Scroll down to the bottom of the page and click **generate token**.

10. Copy the token to your clipboard before closing this window. For security reasons, after you navigate off the page, you will not be able to see the token again.

**Resetting user permission for local directory**

When entering

  ```text
  sudo chown -R $USER /usr/local
  ```

You will be prompted to enter a password and may receive the following error, *Operation not permitted*.

Please note, on some computers you may not need to run this command.

Try continuing with the installation process to see if everything is running smoothly:

  ```text
  cd quire-cli
  npm install -g
  ```

If this works, then you can ignore the *sudo chown* command.

When when you have finished these steps, type the following command to confirm proper installation:

  ```text
  quire --version
  ```
