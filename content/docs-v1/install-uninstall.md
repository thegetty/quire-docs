---
title: Install or Update
weight: 6060
type: essay
abstract: "Get set up to use Quire on macOS and Windows"
aliases:
  - /documentation/install-update/
---

Quire is free to use and open source. Quire uses the [3-clause BSD open source license](https://github.com/thegetty/quire/blob/main/LICENSE). Installation instructions can be found below.

When installing Quire, keep in mind, there is no user interface so it may look or feel different than other publishing software. This was an intentional decision. The transparency of Quire's backend provides more flexibility and opportunities for customization.

When you install Quire what you are actually installing is something called a {{< q-def "command-line interface" >}} or CLI. The CLI enables you to create, preview and output publications using simple commands like `quire new`, `quire preview` and `quire build`.

{{< q-class "box warning" >}}
- Quire v1 is currently in a pre-release/testing phase. If you need troubleshooting assistance either search or post your questions on our [Discussions Forum](https://github.com/thegetty/quire/discussions). For bugs, please report them using our [Issue Tracker](https://github.com/thegetty/quire/issues).
{{< /q-class >}}

## Install Quire v1 (macOS)


1. **Node.js** enables you to run javascript on your computer. Download and install the **LTS version** of Node.js: https://nodejs.org/en/download/.
2. Installing and running Quire requires using the {{< q-def "command-line shell" >}} which on a Mac is called  **Terminal**. Open it by pressing Command–Space Bar and typing “Terminal”.
3. In your Terminal, install **Quire** with the following command:

    ```text
    npm install --global @thegetty/quire-cli
    ```

    The Quire installation process may take a few minutes, during which time there will be messaging output in your Terminal. The only messages of any concern are those labeled as ERROR or ERR. You can ignore any messages that tell you to run `npm audit`.

4. If you receive an error message that says "Error: EACCES: permission denied", this is related to the ownership and **permissions settings** for the global node_modules directories installed in step 1. To fix this issue, run the following command:

    ```text
    sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
    ```

    Then try step 3 again.

4. Confirm installation by running the following command in your Terminal:

    ```text
     quire --version
     ```

    You should see a version number that begins with a 1. If you receive the message "command not found" this means installation was unsuccessful.

5. Vist the [*Get Started*](/docs-v1/get-started) section of the documentation to begin a new Quire project.

## Install Quire v1 (Windows)

1. Download and install **Git for Windows**: https://gitforwindows.org/. Follow the prompts to install the necessary version control software on your computer.
2. **Node.js** enables you to run javascript on your computer. Download and install the **LTS version** of Node.js: https://nodejs.org/en/download/. Bypass any prompts related to installing [Chocolatey](https://chocolatey.org/).  
3. Installing and running Quire requires using {{< q-def "command-line shell" >}} which on a PC is called **Windows PowerShell**. Open the PowerShell by right clicking on Start and selecting “Windows PowerShell (Admin)”, or search for it in the search bar and select “Run as Administrator”. The only time you need to run PowerShell as an Admin is during install.
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

7. Before getting started, press `cd ~` to move into your computer's home directory, then visit the [*Get Started*](/docs-v1/get-started) section of the documentation to begin a new Quire project.

## Update Quire

Updating Quire will not affect your existing projects. It will only take effect on *new* projects that were started after the update process. While any *new* projects will use the latest version of Quire, older, previously started projects will remain untouched. This is to avoid any unforeseen and unintended changes to publications that are completed or in progress as the version of Quire you use can effect layouts of a page, availability of features, etcetera.

1. Run the following install command to update Quire to the latest release:

    ```text
    npm install --global @thegetty/quire-cli
    ```

2. Confirm what version you are running with the following command:

    ```text
    quire --version
    ```

{{< q-class "box tip" >}}
If you are a legacy version (v0) Quire user and are having trouble getting the v1 version to run, try [uninstalling](#uninstall-quire) Quire first. Close your command-line shell and then follow the steps above to update to the latest version.
{{< /q-class >}}

## Re-Install Legacy Versions of Quire

Visit [our page on NPM](https://www.npmjs.com/package/@thegetty/quire-cli?activeTab=versions) for an overview of Quire's release history.

If you need to go back and work on a past project created with a legacy version (v0) of Quire, run the normal Quire install command but add a suffix that includes the version number you would like to install. For example, version 0.20.4 would be re-installed using:

```text
npm install --global @thegetty/quire-cli@0.20.4
```

When using v0 versions of Quire, you must revert back to the **v14.18.1 release** of Node.js: [https://nodejs.org/download/release/v14.18.1/node-v14.18.1.pkg](https://nodejs.org/download/release/v14.18.1/node-v14.18.1.pkg). Otherwise, you will receive errors when running Quire commands.

{{< q-class "box tip" >}}
Node Version Manager (NVM) is a software for Mac users that helps you easily toggle back-and-forth between Node.js versions. More information can be found at [https://github.com/nvm-sh/nvm](https://github.com/nvm-sh/nvm).
{{< /q-class >}}

### Update an Existing Project

TK

## Uninstall Quire

Run the following command in your command-line shell to uninstall Quire.

```text
npm uninstall --global @thegetty/quire-cli
```

Keep in mind, this will only uninstall the Quire CLI and not other related software like Node.js.
