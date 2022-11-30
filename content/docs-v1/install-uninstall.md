---
title: Install or Update
weight: 6060
type: essay
abstract: "Get set up to use Quire on macOS and Windows"
aliases:
  - /documentation/install-update/
---

There is no user interface for Quire so it may look or feel different than other publishing software. This was an intentional decision. The transparency of Quire's backend provides more flexibility and opportunities for customization.

When you install Quire what you are actually installing is something called a {{< q-def "command-line interface" >}} or CLI. The CLI enables you to create, preview and output publications using simple commands like `quire new`, `quire preview` and `quire build`.

Quire is completely free and open source. Installation instructions can be found below.

{{< q-class "box warning" >}}
- Quire v1 is currently in a pre-release/testing phase. If you need troubleshooting assistance either search or post on our [Discussions Forum](https://github.com/thegetty/quire/discussions). For bugs, please report them using our [Issue Tracker](https://github.com/thegetty/quire/issues).
{{< /q-class >}}

## Install Quire v1 (macOS)


1. **Node.js** enables you to run javascipt on your computer. Download and install the **LTS version** of Node.js: https://nodejs.org/en/download/.
2. Installing and running Quire requires using the {{< q-def "command-line shell" >}} which on a Mac is called  **Terminal**. Open it from your Applications/Utilities folder or by pressing Command–Space Bar and typing “Terminal”.
3. In your Terminal, install **Quire** with the following command:

    ```text
    npm install --global @thegetty/quire-cli
    ```

    The Quire installation process may take a few minutes, during which time there will be messaging output in your Terminal. The only messages of any concern are those labeled as ERROR or ERR. You can ignore any messages that tell you to run `npm audit`.

4. If you receive an error message that says "permission denied", this is related to the ownership and permissions settings for the global node_modules directories installed in step 1. To fix this issue, run the following command:

    ```text
    sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
    ```

    Then try step 3 again.

4. Confirm installation by running the following command in your Terminal:

    ```text
     quire --version
     ```

    You should see a version number that begins with a 1. If you receive the message "command not found", this means installation was unsuccessful.

## Install Quire v1 (Windows)

1. Download and install **Git for Windows**: https://gitforwindows.org/. Follow the prompts to install useful version control software on your computer.
2. **Node.js** enables you to run javascipt on your computer. Download and install the **LTS version** of Node.js: https://nodejs.org/en/download/. Bypass any prompts related to installing [Chocolatey](https://chocolatey.org/).  
3. Installing and running Quire requires using {{< q-def "command-line shell" >}} which on a PC is called **Windows PowerShell**. Open the PowerShell by right clicking on Start and selecting “Windows PowerShell (Admin)”, or search for it in the search bar and select “Run as Administrator”.
4. In your PowerShell, install **Quire** with the following command:

    ```text
    npm install --global @thegetty/quire-cli
    ```

    The Quire installation process may take a few minutes, during which time there will be messaging output in your PowerShell.

5. If you receive an error message that says "UnauthorizedAccess", this is related to a PowerShell permissions setting. To fix this issue, run the command:

    ```text
    Set-ExecutionPolicy -ExecutionPolicy Unrestricted
    ```
    Then try step 4 again.  

6. Confirm installation by running the following command in your PowerShell:

    ```text
    quire --version
    ```

    You should see a version number that begins with a 1. If you receive the message "command not found", this means installation was unsuccessful.

## Update Quire

Updating Quire will not affect your existing projects. It will only take effect on *new* projects that were started after the update process. While any *new* projects will use the latest version of Quire, older, previously started projects will remain untouched. This is to avoid any unforeseen and unintended changes to publications that are completed or in progress as the version of Quire you use can effect layouts of a page, availability of features, etcetera.

Follow these steps to update Quire to the latest release:

1. Uninstall Quire

```text
npm uninstall --global @thegetty/quire-cli
```

2. Reinstall Quire

```text
npm install --global @thegetty/quire-cli
```

3. Confirm what version you are running

    ```text
    quire --version
    ```
You can find Quire's release history here:

{{< q-class "box tip" >}}
For any Mac users still using the legacy version of Quire (v0) on past projects, you will need to continue to run those with the **v14.18.1 release** of Node.js: [https://nodejs.org/download/release/v14.18.1/node-v14.18.1.pkg](https://nodejs.org/download/release/v14.18.1/node-v14.18.1.pkg). Node Version Manager (NVM) is a software that can be used to toggle back-and-forth with Node.js versions. More information can be found at [https://github.com/nvm-sh/nvm](https://github.com/nvm-sh/nvm).
{{< /q-class >}}

### Update an Existing Project

TK

## Uninstall Quire

Run the following command in your command-line shell to uninstall Quire.

```text
npm uninstall --global @thegetty/quire-cli
```

Keep in mind, this will only uninstall the Quire CLI and not other related software like Node.js.
