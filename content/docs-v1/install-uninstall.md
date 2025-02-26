---
title: Install or Update
weight: 6060
type: essay
abstract: "Get set up to use Quire on macOS and Windows"
aliases:
  - /documentation/install-update/
---

Quire is free to use and open source. Quire uses the [3-clause BSD open source license](https://github.com/thegetty/quire/blob/main/LICENSE).

There is no graphical user interface (GUI) for Quire. So using it may look or feel different than other publishing software. This was an intentional decision. The transparency of Quire's backend provides more flexibility and control over customizations. Instead of a GUI you will be using the {{< q-def "command-line shell" >}} (referred to as "Terminal" on a Mac and "Powershell" on a PC) to operate the command-line interface (CLI), a text-based interface used to run program tasks. When you install Quire, you are actually installing the Quire CLI. 

{{< q-class "box warning" >}}
- Quire v1 is currently in a pre-release/testing phase. If you need troubleshooting assistance either search or post your questions on our [Discussions Forum](https://github.com/thegetty/quire/discussions). For bugs, please report them using our [Issue Tracker](https://github.com/thegetty/quire/issues).
{{< /q-class >}}

## Install Quire v1 (macOS)

1. To use the command-line interface on a Mac press Command–Space Bar and type “Terminal”.

2. **Apple’s Xcode** is a set of [developer tools for your mac](https://en.wikipedia.org/wiki/Xcode). Install Apple's Xcode by entering the following command in your Terminal and pressing enter. 

    ```text
    xcode-select --install
    ```

    Some operating systems will already have Xcode installed, in which case you will receive the message "command line tools are already installed". If Xcode is not already installed, an additional notification will pop up. Click “Install” and follow the prompts.

3. **Node.js** enables you to run javascript on your computer. Download and install the Quire-supported version of Node.js. **Use the drop-down menu to select v18.20.4 (LTS)**: https://nodejs.org/en/download/prebuilt-installer. 

    You can also install a Node.js [package manager](https://nodejs.org/en/download/package-manager) with the command line. A package manager enables you to install more than one version of Node. This is useful when working on multiple Quire projects, some of which might be tied to either newer or older versions of Node.

4. In your Terminal, install **Quire** with the following command:

    ```text
    npm install --global @thegetty/quire-cli
    ```

    The Quire installation process may take a few minutes, during which time there will be messaging output in your Terminal. The only messages of any concern are those labeled as ERROR or ERR. You can ignore any messages that tell you to run `npm audit`.

{{< q-class "box tip" >}}
- If you receive an error message that says "Error: EACCES: permission denied," this is related to the ownership and **permissions settings** for the global `node_modules` directories installed in step 1. Please see our [*Troubleshooting*](/docs-v1/troubleshooting/#installing-quire-on-macos) section for a solution. 
{{< /q-class >}}

5. Confirm installation by running the following command in your Terminal:

    ```text
     quire --version
     ```

    You should see a version number that begins with a 1. If you receive the message "command not found" this means installation was unsuccessful.

6. Visit the [*Quire Basics Tutorial*](/docs-v1/tutorial/) or [*Get Started*](/docs-v1/getting-started) section of the documentation to learn how to use Quire or get started with a new project. 

## Install Quire v1 (Windows)

{{< q-class "box warning" >}}
- At this time, Windows support is not as robust as the support we are able to provide for macOS users. We are working to improve this. If you are well versed in Windows operating systems and would like to provide troubleshooting support for the community, please get in touch with us at [mailto:quire@getty.edu](quire@getty.edu)
{{< /q-class >}}

1. To use the command-line interface on a PC, right click the Start button and select “Windows PowerShell (Admin)”, or search for it in the search bar and select “Run as Administrator”. The only time you need to run PowerShell as an Admin is during install.

2. Download and install **Git for Windows**: https://gitforwindows.org/. Follow the prompts to install the necessary version control software on your computer.

3. **Node.js** enables you to run javascript on your computer. Download and install the Quire-supported version of Node.js. **Use the drop-down menu to select v18.20.4 (LTS)**: https://nodejs.org/en/download/prebuilt-installer. 

    You can also install a Node.js [package manager](https://nodejs.org/en/download/package-manager) with the command line. A package manager enables you to install more than one version of Node. This is useful when working on multiple Quire projects, some of which might be tied to either newer or older versions of Node.
    
4. In your PowerShell, install **Quire** with the following command:

    ```text
    npm install --global @thegetty/quire-cli
    ```

    The Quire installation process may take a few minutes, during which time there will be messaging output in your PowerShell.

5. Once Quire has been installed, change your PowerShell **permissions settings** by running the command:

    ```text
    Set-ExecutionPolicy -ExecutionPolicy Unrestricted
    ```
    A message will pop-up that says "The execution policy helps protect you from scripts that you do not trust. Changing the execution policy might expose you to the security risks. Do you want to change the execution policy?" Type "Y" to accept this change.

    Please note, this setting can be easily reverted by running the command `  Set-ExecutionPolicy -ExecutionPolicy Restricted`.

6. Confirm installation by running the following command in your PowerShell:

    ```text
    quire --version
    ```

    You should see a version number that begins with a 1. If you receive the message "command not found" this means installation was unsuccessful.

7. Before getting started, press `cd ~` to move into your computer's home directory. Then visit the [*Quire Basics Tutorial*](/docs-v1/tutorial/) or [*Get Started*](/docs-v1/getting-started) section of the documentation to learn how to use Quire or get started with a new project.

## Update Quire

By default, every new project you start with Quire will use the most recent version of the Quire project package. So if you install the Quire CLI today and start a new project, that project will use today's version of Quire. If you then start a second project six months from now, that project will use that future version of Quire including any new features or bug fixes that may have been added in the intervening months. Read about updating an existing project in the section below.

You may occasionally want/need to update the version of the Quire CLI you are running. For instance if a particular command or functionality has been added or fixed. To do that:

1. Run `npm install --global @thegetty/quire-cli`

2. Confirm your new version with `quire --version`

Updating the Quire CLI will have **no effect** on your existing projects. The features and functionality of any given project are independent of the version of the CLI you are running. An older or newer version of the CLI is only relevant to the functioning of [Quire commands](/docs-v1/quire-commands/) like `quire preview` or `quire build`.

## Update an Existing Project

Updating an existing Quire project to the latest version of Quire is a manual process. It involves starting a new project and copying your old files into it, or copying the files of the new project into your old one. Unless you are using {{< q-def "git" >}} for version control on your project (see the section below), it will be easier to copy your project files into a new project rather than the other way around.

1. Make a copy of your existing project to keep as a backup in case you need to start over.

2. Start a new project with `quire new my-new-project`. 

3. Delete the following demo files in the new project and replace them with your own:

    a. All the Markdown (`.md`) files in the `content` directory

    b. The `content/_assets/images` directory

    c. All the YAML (.yaml) files in the `content/_data` directory **except** `config.yaml`

4. If you made any changes to `config.yaml`, update those individually into the new `config.yaml` file. (It's best not to replace the entire `config.yaml` file with your old one as there may be new or renamed values there that would conflict with the newer templates.)

5. If you made any changes to the styles of your project, particularly `content/_assets/styles/variables.scss` or `content/_assets/styles/custom.css`, copy those over to the new project.

6. Run `quire preview` to confirm everything is working.

### Update an Existing Project That Uses Git for Version Control

If you are using {{< q-def "git" >}} for version control on your project, you will want to start a new project and copy its files into your existing project in order to maintain your project’s git history.

1. Create a new git branch in your existing project for the update.

2. Start a new project with `quire new my-new-project`.

3. Replace the following files and directories in your project with the copies from the new project:

    ```
    package.json
    package-lock.json
    _plugins/
    _lib/
    _layouts/
    _includes/
    .node-version
    .gitignore
    .eslintrc
    .eleventyignore
    .eleventy.js
    .quire
    content/_computed/
    content/_assets/fonts/
    content/_assets/javascript/
    content/_assets/styles/
    content/_data/config.yaml
    ```

    If you made any customizations to any of these files previously—for instance to `content/_assets/styles/variables.scss`—you will need to copy those over into the replaced files individually.

    Note that some of these are "hidden" files that you will see in a text editor, but not in your Finder or File Explorer. To show hidden files in Finder on macOS type Shift-Command-Period(.); in File Explorer on Windows 10/11, follow [Microsoft’s instructions](https://support.microsoft.com/en-us/windows/view-hidden-files-and-folders-in-windows-97fbc472-c603-9d90-91d0-1166d1d9f4b5).

4. Delete the old `node_modules` in your project and run `npm install` to reinstall them with the latest versions.

5. Run `quire preview` to confirm everything is working.

6. Merge your updated git branch into the base branch of your project.

{{< q-class "box tip" >}}
- If you make customizations to any of the template files in your Quire project (like those found in `_includes` or `_plugins`) we recommend adding a code comment to the top of those customized files to make them easier to identify and carry over when manually updating your project as described above. And also keeping a running list of them in a README file.
{{< /q-class >}}

## Re-Install Legacy Versions of Quire

Visit [our page on NPM](https://www.npmjs.com/package/@thegetty/quire-cli?activeTab=versions) for an overview of Quire's version release history.

If you need to go back and work on a past project created with a legacy version (v0) of Quire, run the normal Quire install command but add a suffix that includes the version number you would like to install. For example, version 0.20.4 would be re-installed using:

```text
npm install --global @thegetty/quire-cli@0.20.4
```

If you are having trouble switching Quire versions try [uninstalling](#uninstall-quire) Quire first. Close your command-line shell and then follow the steps above to update to the latest version.

When using v0 versions of Quire, you must revert back to the **v14.18.1 release** of Node.js: [https://nodejs.org/download/release/v14.18.1/node-v14.18.1.pkg](https://nodejs.org/download/release/v14.18.1/node-v14.18.1.pkg). Otherwise, you will receive errors when running Quire commands.

{{< q-class "box tip" >}}
Node Version Manager (NVM) is a software for Mac users that helps you easily toggle back-and-forth between Node.js versions. You can even tether different versions of Quire to different versions of node, eliminating the constant need to re-install. More information can be found at [https://github.com/nvm-sh/nvm](https://github.com/nvm-sh/nvm).
{{< /q-class >}}

## Uninstall Quire

Run the following command in your command-line shell to uninstall Quire.

```text
npm uninstall --global @thegetty/quire-cli
```

Keep in mind, this will only uninstall the Quire CLI and not other related software like Node.js.
