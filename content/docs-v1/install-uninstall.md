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
- Quire v1 is currently in a pre-release/testing phase. Please report any bugs or issues you run across in our [Issue Tracker](https://github.com/thegetty/quire/issues).

    [Sign-up for our newsletter](https://newsletters.getty.edu/h/t/DDE7B9372AAF01E4) to stay updated on the official release.
{{< /q-class >}}

## Install Quire v1 (macOS)

Installing and running Quire requires using the Terminal {{< q-def "command-line shell" >}}. Open it from your Applications/Utilities folder or by pressing Command–Space Bar and typing “Terminal”.

1. In your Terminal, install Apple’s Xcode (a set of developer tools for your mac) with the command `xcode-select --install`
2. Download and install the **v18.12.1 release** of Node.js: [https://nodejs.org/download/release/v18.12.1/node-v18.12.1.pkg](https://nodejs.org/download/release/v18.12.1/node-v18.12.1.pkg). Node.js enables you to run javascipt on your computer.
3. Back in your Terminal, install Quire with the command `npm install --global @thegetty/quire-cli@pre-release`

    The Quire installation process may take a few minutes, during which time there will be messaging output in your Terminal. The only messages of any concern are those labeled as ERROR or ERR.

4. Confirm installation by running the command `quire --help` in your Terminal. This should bring up a list of Quire commands. If you receive the message "command not found", this means installation was unsuccessful.

For installation troubleshooting, search or post to our [Discussions Forum](https://github.com/thegetty/quire/discussions).

{{< q-class "box tip" >}}
- If you will still be using the legacy version of Quire (v0) on past projects, you will need to continue to run those with the **v14.18.1 release** of Node.js: [https://nodejs.org/download/release/v14.18.1/node-v14.18.1.pkg](https://nodejs.org/download/release/v14.18.1/node-v14.18.1.pkg). Node Version Manager (NVM) is a software that can be used to toggle back-and-forth with Node.js versions. More information can be found at [https://github.com/nvm-sh/nvm](https://github.com/nvm-sh/nvm).
{{< /q-class >}}

## Install Quire v1 (Windows)

Coming soon...


## Update Quire

{{< q-class "box warning" >}}
- Updating Quire will not effect your existing projects. It will only take effect on any new projects you start after updating.
{{< /q-class >}}

Note that while any *new* projects you start at this point will use the latest version of Quire just installed, older, previously started projects will remain untouched. This is to avoid any unforeseen and unintended changes to publications that are completed or in progress as the version of Quire you use can effect layouts of a page, availability of features, etcetera.


To update Quire to the latest version, you can run the single install command again. In your command-line shell (Terminal on macOS and PowerShell in Administrator mode on Windows), type the following text and hit enter:

```text
npm install --global @thegetty/quire-cli@pre-release
```

### Update an Existing Project

TK

## Uninstall Quire

In your command-line shell (Terminal on macOS and PowerShell in Administrator mode on Windows), type the following text and hit enter to uninstall Quire. Keep in mind, this will only uninstall the Quire CLI and not other related software like Node.js or Apple Xcode.

```text
npm uninstall --global @thegetty/quire-cli
```
