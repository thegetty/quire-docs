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

If you’re eager to get started, this will install the complete Quire package but without e-book or PDF output capability. These may be added later, by following steps 3–5 in the Full Install guidelines below.

1. In Terminal, install Apple’s Xcode with: `xcode-select --install`
2. Download and install the **LTS** version of Node.js: [https://nodejs.org](https://nodejs.org)
3. In Terminal, install Quire with: `npm install --global @thegetty/quire-cli`
4. Confirm installation: `quire --help`

The Quire installation process may take several minutes, during which time there will be considerable messaging output in Terminal. The only messages of any concern are those labeled as ERROR or ERR. These likely indicate a failed installation, as would seeing "command not found" after entering `quire --help` in step 3. Search or post to our [Discussions Forum](https://github.com/thegetty/quire/discussions) to troubleshoot installation issues.

### Full Install

Follow the steps below to first install the support software for Quire, and then Quire itself.

1. **Apple’s Xcode** is a set of developer tools for your mac. More information can be found [here](https://en.wikipedia.org/wiki/Xcode). Install Apple's Xcode by copying and pasting the following command and pressing enter. If Xcode is not already installed, an additional alert notification will pop up. Click “Install” and follow the prompts.

  ```text
  xcode-select --install
  ```

2. **Node.js** enables you to run javascript on your computer. Visit the Node.js site, and download and install the older LTS (long-term support) version, which is sufficient and more stable than the higher “Current” version that is also available for download: [https://nodejs.org](https://nodejs.org).

3. **Pandoc** serves two purposes in Quire: You can use it to [convert Word documents to Markdown](/fundamentals/#microsoft-word-to-markdown-conversion), and it enables you to create EPUB e-book files of your Quire project with the `quire epub` command. Download the macOS installer, double-click it and follow the prompst to install: https://pandoc.org/installing.html

4. **Kindle Previewer**, along with Pandoc, enables you to create MOBI e-book files of your Quire project with the `quire mobi` command. Visit Amazon’s Kindle Previewer page and downoad the Mac version: https://kdp.amazon.com/en_US/help/topic/G202131170. Install by double clicking the icon and following the prompts.

5. **PrinceXML** enables you to create a PDF version of your Quire project with the `quire pdf` command. Visit the PrinceXML site, download the Mac OS version, uncompress the folder, and rename it to "prince": [http://www.princexml.com/download/](http://www.princexml.com/download/).

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

6. **Quire** is operated through a {{< q-def "command-line interface" >}} (CLI) that enables you to create, preview and output publications using Terminal with commands like `quire new`, `quire preview` and `quire site`. You can learn more in the [*Quire Commands*](/documentation/quire-cli/) chapter of our guide. Copy and paste the following line into Terminal to install Quire:

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

Installing Quire requires using Windows PowerShell {{< q-def "command-line shell" >}} as an Administrator. Open it by right clicking on Start and selecting “Windows PowerShell (Admin)”, or search for it in the search bar and select “Run as Administrator”. If you are new to the command-line, read our tutorial [*Working in a Command-line Shell*](/learn/tutorial/#1-working-in-a-command-line-shell).

### Quick Install

If you’re eager to get started, this will install the complete Quire package but without e-book or PDF output capability. These may be added later, by following steps 3–5 in the Full Install guidelines below.

1. Download and install Git for Windows: https://gitforwindows.org/
2. Download and install the **LTS** version of Node.js: [https://nodejs.org](https://nodejs.org)
3. In Windows PowerShell (Admin), install Quire with: `npm install --global @thegetty/quire-cli`
4. Confirm installation: `quire --help`

The Quire installation process may take several minutes, during which time there will be considerable messaging output in PowerShell. The only messages of any concern are those labeled as ERROR or ERR. These likely indicate a failed installation, as would seeing "command not found" after entering `quire --help` in step 3. Search or post to our [Discussions Forum](https://github.com/thegetty/quire/discussions) to troubleshoot installation issues.

### Full Install

1. **Git for Windows** at https://gitforwindows.org/. An EXE file will be downloaded, click on it and hit "run", you should see a setup wizard screen that will install Git for Windows. During the installation, use the default settings.

2. **Node.js** enables you to run javascript on your computer. Visit the Node.js site, and download and install the older LTS (long-term support) version, which is sufficient and more stable than the higher “Current” version that is also available for download. The MSI installer will be downloaded, open it and a setup wizard screen will guide you through the process: [https://nodejs.org](https://nodejs.org).

3. **Pandoc** serves two purposes in Quire: You can use it to [convert Word documents to Markdown](/fundamentals/#microsoft-word-to-markdown-conversion), and it enables you to create EPUB e-book files of your Quire project with the `quire epub` command. Download the Pandoc MSI installer file, open it and a setup wizard screen will guide you through the process: https://pandoc.org/installing.html

4. **Kindle Previewer**, along with Pandoc, enables you to create MOBI e-book files of your Quire project with the `quire mobi` command. Visit Amazon’s Kindle Previewer page and downoad the Widows version: https://kdp.amazon.com/en_US/help/topic/G202131170. Install by double clicking the icon and following the prompts.

5. **PrinceXML** enables you to create a PDF version of your Quire project. At https://www.princexml.com/download/, download either the 32-bit or 64-bit EXE installer depending on your operating system. (If you’re not sure of your system  open the Settings app by pressing Windows+I. Go to System > About and look for the “System type” entry on the right side.) Click on the downloaded file and hit "run", you should see a setup wizard screen that will guide you through install.

6. **Windows Build Tools** is a set of developer tools for your PC. To install them, open PowerShell as administrator, type the following command, and hit enter:

    ```text
    npm install --g --production windows-build-tools
    ```

    This command installs c++ 2015 build tools and python 2 required for node-gyp. The process will take some time and you’ll see the starting prompt with the name of your computer once it’s complete.

6. **Quire** is operated through a {{< q-def "command-line interface" >}} (CLI) that enables you to create, preview and output publications using Windows PowerShell with commands like `quire new`, `quire preview` and `quire site`. You can learn more in the [*Quire Commands*](/documentation/quire-cli/) chapter of our guide. Copy and paste the following line into PowerShell to install Quire:

    ```text
    npm install --global @thegetty/quire-cli
    ```

    The Quire installation process may take several minutes, during which time there will be considerable messaging output in Terminal. The only messages of any concern are those labeled as ERROR or ERR. These likely indicate a failed installation.

    To verify installation, enter the command below. This will give you a list of [commands](/documentation/quire-cli/) that will help you get started using and navigating Quire. And if you get "command not found" it means it was not installed correctly.

    ```text
    quire --help
    ```

    Search or post to our [Discussions Forum](https://github.com/thegetty/quire/discussions) to troubleshoot installation issues.

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
