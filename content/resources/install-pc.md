---
title: Quire Installation
subtitle: PC
type: page
---
<!--
The full Quire system is not currently available to PC users. However, PC users can still start and work on Quire projects, preview the online edition, and output final files for it. They will not, however, be able to:
- Output PDF or EPUB editions
- Make changes to Style (.scss) or Javascript (.js) files inside the themes folder
The following steps will install the necessary software for running a Quire project on a PC, and show you how to start a new project as well.
-->

### Windows 10 Users:

1. Install the Windows Subsystem for Linux:

    Open PowerShell as Administrator and run:

    ```
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
    ```

    Restart your computer when prompted.

    Open the Microsoft Store and choose your favorite Linux distribution.

    Quire recommend [Ubuntu](https://www.ubuntu.com/)

    From the distro's page, select "Get"

    Once the download has completed, select "Launch".


2. Download and install **Prince**:

   From the terminal that just loaded

   ```
   cd ~
   ```

   Run these commands to download and install PrinceXML

   ```sh
   wget https://www.princexml.com/download/prince_12-1_ubuntu18.04_amd64.deb

   sudo gdebi prince_10r2-1_debian8.0_amd64.deb
   ```

   If you chose a different distribution of Linux there are more instructions here -> https://www.princexml.com/doc-install/#linux

3. Install **node js and npm through nvm**

   Detailed information here -> https://github.com/creationix/nvm#install-script

   To install or update nvm, you can use the [install script][2] using cURL:

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

    **Note:** You can add `--no-use` to the end of the above script (...`nvm.sh --no-use`) to postpone using `nvm` until you manually [`use`](#usage) it.

    You can customize the install source, directory, profile, and version using the `NVM_SOURCE`, `NVM_DIR`, `PROFILE`, and `NODE_VERSION` variables.
    Eg: `curl ... | NVM_DIR="path/to/nvm"`. Ensure that the `NVM_DIR` does not contain a trailing slash.

    <sub>*NB. The installer can use `git`, `curl`, or `wget` to download `nvm`, whatever is available.*</sub>

    **Note:** On Linux, after running the install script, if you get `nvm: command not found` or see no feedback from your terminal after you type:

    ```sh
    command -v nvm
    ```
    simply close your current terminal, open a new terminal, and try verifying again.


    If the above doesn't fix the problem, open your `.bash_profile` and add the following line of code:

    `source ~/.bashrc`

    - For more information about this issue and possible workarounds, please [refer here](https://github.com/creationix/nvm/issues/576)

    ### Verify installation

    To verify that nvm has been installed, do:

    ```sh
    command -v nvm
    ```

    which should output 'nvm' if the installation was successful. Please note that `which nvm` will not work, since `nvm` is a sourced shell function, not an executable binary.

    To download, compile, and install the latest release of node, do this:

    ```sh
    nvm install node
    ```

    And then in any new shell just use the installed version:

    ```sh
    nvm use node
    ```

4. Install **Quire-CLI**

    ```
    git clone https://github.com/gettypubs/quire-cli
    ```

    ```
    cd quire-cli
    ```

    ```
    git checkout pc-dev
    ```

    Install Dependencies

    ```
    npm install -g
    ```

    Verify

    ```
    quire -V
    ```

    If version number is returned quire-cli was installed correctly, you can now leave the directory.

    ```
    cd ~
    ```

    ### All Other Windows Users:

    1. Download **Git for Windows** by clicking on "Download" at https://gitforwindows.org/. An exe file will be downloaded, click on it and hit "run", you should see a setup wizard screen that will install Git for Windows. During the installation, use the default settings.

    2. Download and install **Node.js** and **npm** at https://nodejs.org/en/download/. Make sure you get the LTS version of Node.js, npm will be installed during the same process. The Windows installer will be downloaded, just open it and a setup wizard screen will guide you through the process.

    3. Download **Prince** for Windows. You would download either the 32-bit installer or the 64-bit installer depending on your processor. To install Prince you can follow the instructions at their site: https://www.princexml.com/doc-install/#windows

    4. Open **PowerShell** (that should be installed by default in your Windows computer) and run it as administrator. To do so, right click on the icon and select "run as administrator" from the context menu. Then once you get the administrator PowerShell window, type the following command:

      ```
      npm install --g --production windows-build-tools
      ```
    This command installs c++ 2015 build tools and python 2 required for node-gyp. The process will take some time and you'll see the prompt with your the name of your computer and your username once it's complete.

    5.  Continue using PowerShell, but this time it's not required to run it as administrator (you can close the administrator window and open a new one) and type the following command to download **Quire CLI** to your computer from GitHub:

      ```
      git clone https://github.com/gettypubs/quire-cli
      ```
      A pop up window may emerge and ask you to type your GitHub username and password, then the download starts.

      Change directory to the `quire-cli` folder:

      ```
      cd quire-cli
      ```
      and type:

      ```
      git checkout pc-dev
      ```

      The following command will install dependencies:

      ```
      npm install -g
      ```
      Installing the dependencies takes some time and you'll notice multiple text strings being generated on the screen during the process. Wait until the prompt with your username shows up and then, to verify that `quire-cli` has been installed correctly, type:

      ```
      quire -V
      ```

      If version number is returned, means that the install is correct.

      Lastly, to navigate to your home directory and create a new project or publication type:

      ```
      cd ~
      ```

    ### Starting a New Quire Project

    The steps you follow to create a new Quire publication or project are the same for all versions of Windows.

    1. To create a new project type:

        ```
        quire new your-project-name
        ```
    This command will install the starter kit, set up the theme and install dependencies wait until you see a text string that says "theme and dependencies sucessfully installed" and the prompt with your username pops up.

    2. Then enter the new directory by typing:

        ```
        cd your-project-name
        ```

    3. And install starter theme dependencies with the following command:

        ```
        quire install
        ```
    This process can last a few minutes, once again wait until you see the prompt.

    4. Now you can preview the project, and any edits you'd make, by typing:

        ```
        quire preview
        ```
    Once running, open a browser and visit [http://localhost:1313](http://localhost:1313) to see the publication. To stop the preview you can either press ctrl+c or type `quire stop`.


    ### Troubleshooting

    TK
