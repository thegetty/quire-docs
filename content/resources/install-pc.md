---
title: Quire Installation
subtitle: PC
type: page
---

Open your your command line shell application and follow the steps below. If you have not previously installed a command line shell, we recommend [Git for Windows](https://gitforwindows.org/) which comes with a shell called Git Bash. When installing Git for Windows, you can accept all the default options.

The following steps will install support software for Quire, and then Quire itself. Note that when you type a password in the command line, the cursor doesn’t move, but your typing is being registered. Simply type the password, and hit Enter.

1. Visit the **Node.js** site, and download and install the current LTS (long-term support) version: [https://nodejs.org](https://nodejs.org). You will have to restart your computer for Node to finish installing.

2. Download and install **[Hugo](https://gohugo.io/getting-started/installing/#windows)** following the directions on their website. Note that for Windows 7 and 8 users, you will also need to install a **path editor**, such as the one from [codeplex](https://patheditor2.codeplex.com/).

    Next, open your your Git Bash command line application and one-by-one copy and paste the following commands to install Quire:

3. Copy the **Quire CLI** (command line application) to your computer from GitHub:

    ```
    git clone https://github.com/gettypubs/quire-cli.git
    ```

4. Install the **Quire CLI**:

    ```
    cd quire-cli
    npm install -g
    ```

When complete, type `quire --version` to confirm proper installation. It should return a version number, otherwise, if it says `command not found`, the Quire CLI has not been properly installed. Refer to the “Troubleshooting” section below.

### Troubleshooting

TK


