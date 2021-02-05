---
title: Install or Update
weight: 4000
type: essay
abstract: "Get set up to use Quire on macOS, Window, or Linux"
---

{{< q-class "box warning" >}}
- Quire is in a limited beta, © J. Paul Getty Trust, and not yet released as open source software. For a free license to use Quire for your publication projects (and for additional access to support) [please sign up](https://goo.gl/forms/Ih4SOHje0Z9dm3C73).
{{< /q-class >}}

## macOS Installation

Installing and running Quire requires using the Terminal {{< q-def "command-line shell" >}}. Open it from your Applications/Utilities folder or by pressing Command–Space Bar and typing “Terminal”. If you are new to the command-line, read our tutorial [*Working in a Command-line Shell*](/learn/tutorial/#1-working-in-a-command-line-shell).

### Quick Install

If you’re eager to get started, this will install the complete Quire package but without e-book or PDF output capability. These may be added later, by following steps 2–4 in the Full Install guidelines below.

1. Install the **LTS** version of Node.js: [https://nodejs.org](https://nodejs.org)
2. In Terminal, install Quire with: `npm install --global @thegetty/quire-cli`
3. Confirm installation: `quire --help`

The Quire installation process may take several minutes, during which time there will be considerable messaging output in Terminal. The only messages of any concern are those labeled as ERROR or ERR. These likely indicate a failed installation, as would seeing "command not found" after entering `quire --help` in step 3. Search or post to our [Discussions Forum](https://github.com/thegetty/quire/discussions) to troubleshoot installation issues.

### Full Install

Follow the steps below to first install the support software for Quire, and then Quire itself.

1. **Node.js** enables you to run javascript on your computer. Visit the Node.js site, and download and install the older LTS (long-term support) version, which is sufficient and more stable than the higher “Current” version that is also available for download: [https://nodejs.org](https://nodejs.org).

2. **Pandoc** serves two purposes in Quire: You can use it to [convert Word documents to Markdown](/fundamentals/#microsoft-word-to-markdown-conversion), and it enables you to create EPUB e-book files of your Quire project with the `quire epub` command. Visit the Pandoc repository on GitHub, and download the macOS .pkg file of the latest release: [https://github.com/jgm/pandoc/releases/](https://github.com/jgm/pandoc/releases/). Install by double clicking the icon and following the prompts.

3. **Kindle Previewer**, along with Pandoc, enables you to create MOBI e-book files of your Quire project with the `quire mobi` command. Visit Amazon’s Kindle Previewer page and downoad the Mac version: https://kdp.amazon.com/en_US/help/topic/G202131170. Install by double clicking the icon and following the prompts.

4. **PrinceXML** enables you to create a PDF version of your Quire project with the `quire pdf` command. Visit the PrinceXML site, download the Mac OS version, uncompress the folder, and rename it to "prince": [http://www.princexml.com/download/](http://www.princexml.com/download/).

    Open Terminal and type these lines in, hitting enter after each:

    ```text
    cd Downloads/prince
    sudo ./install.sh
    ```

    You will be prompted to enter your computer password. Press enter. You should receive a message that PrinceXML will be installed in the `/usr/local` directory. Press enter again. If successful you will see a message in the Terminal saying "installation complete." Or, if you get a "no such file or directory" message after the first line, the file you dowloaded is either not in your Downloads folder, or is not named "prince". Correct as necessary and try again.

    When complete, type `cd` into the Terminal to return to your {{< q-def "home directory">}}.

    ```text
    cd
    ```

5. **Quire** is operated through a {{< q-def "command-line interface" >}} (CLI) that enables you to create, preview and output publications using Terminal with commands like `quire new`, `quire preview` and `quire site`. You can learn more in the [*Quire Commands*](/documentation/quire-cli/) chapter of our guide. Copy and paste the following line into Terminal to install Quire:

    ```text
    npm install --global @thegetty/quire-cli
    ```

    The Quire installation process may take several minutes, during which time there will be considerable messaging output in Terminal. The only messages of any concern are those labeled as ERROR or ERR. These likely indicate a failed installation.

    To verify installation, enter the command below. This will give you a list of [commands](/documentation/quire-cli/) that will help you get started using and navigating Quire. And if you get "command not found" it means it was not installed correctly.

    ```text
    quire --help
    ```

    Search or post to our [Discussions Forum](https://github.com/thegetty/quire/discussions) to troubleshoot installation issues.

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

6.  The **Quire CLI** ({{< q-def "command-line interface" >}})is the core of Quire. It is used for creating, previewing, and outputting projects. You can learn more about the Quire CLI in the [*Quire CLI Commands*](/documentation/quire-cli/) chapter of our guide. To download Quire CLI to your computer from GitHub, continue using PowerShell, but this time it's not required to run it as administrator (you can close the administrator window and open a new one). Type the following command:

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

    Installing the dependencies takes some time, and you'll notice multiple text strings being generated on the screen during the process. Wait until the prompt with your username shows up and then, to verify that `quire-cli` has been installed correctly, type:

    ```tx
    quire -V
    ```

    If the version number is returned, it means that the install is correct.

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

Detailed information about this installation can be found in this link [https://github.com/nvm-sh/nvm#install-script](https://github.com/nvm-sh/nvm#install-script).

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

Simply close your current terminal, open a new terminal, and try verifying again.

If the above doesn't fix the problem, open your `.bash_profile` and add the following line of code:

  ```sh
  source ~/.bashrc
  ```

For more information about this issue and possible workarounds, please [refer here](https://github.com/nvm-sh/nvm/issues/576)
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

## Update Quire

As we develop, you may also want/need to update Quire. Updating Quire will mean that any new projects you start will have the newest updates. It will not effect existing projects, with one exception.

As Quire is updated, Quire commands may change

This means that running


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

## Update the Theme

To update the version of a theme you have:

1. In the `themes` directory of your project, delete the current theme directory. It’s `quire-starter-theme` by default.
2. Copy in your new theme directory ensuring that it has the same name as the original.
3. Open your command-line shell and navigate to the project directory using the `cd` (change directory) command. For example, if your project directory was called `my-project`, and it was in your main user directory, you’d enter `cd my-project`.
3. Still in the command-line shell, type `quire install` and press enter to install the theme dependencies for your project. (This is done automatically when running `quire new`, but needs to be done manually when adding a new or replacement theme.)

{{< q-class "box warning" >}}
- Be sure to save any [customizations you’ve made](/documentation/styles-customization/) inside your theme. (Typically style changes to the `variables.scss` file.) You’ll have to copy these over into the new theme manually once it is installed.
{{< /q-class >}}

## Install a New Theme

TK

## Uninstall Quire

To uninstall Quire:

1. From a new window in your command-line shell (you should be in your home/user directory where you initially installed Quire) type the following two commands:

    ```tx
    cd quire-cli
    ```

    ```tx
    npm uninstall -g
    ```

2. In the folder/finder view, go to your user/home directory where you initially installed Quire, look for the `quire-cli` folder and delete it.
