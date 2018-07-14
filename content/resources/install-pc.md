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

    `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`

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

   Download  ```wget https://www.princexml.com/download/prince_12-1_ubuntu18.04_amd64.deb```
   
   ```
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

    **Note:** Since OS X 10.9, `/usr/bin/git` has been preset by Xcode command line tools, which means we can't properly detect if Git is installed or not. You need to manually install the Xcode command line tools before running the install script, otherwise, it'll fail. (see [#1782](https://github.com/creationix/nvm/issues/1782))

    **Note:** On OS X, if you get `nvm: command not found` after running the install script, one of the following might be the reason:-
      - your system may not have a [`.bash_profile file`] where the command is set up. Simply create one with `touch ~/.bash_profile` and run the install script again
      - you might need to restart your terminal instance. Try opening a new tab/window in your terminal and retry.

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
    
    If version number is returned quire-cli was installed correctly

    ```
    cd ~
    ```

5. Start a new **Quire** project

    Create a new project

    ```
    quire new your-project-name
    ```
    Enter the new directory

    ```
    cd your-project-name
    ```

    Install starter theme dependencies

    ```
    quire install
    ```
    
    then to start editing run
    
    ```
    quire preview
    ```

    Once running, open a browser and visit [http://localhost:1313](http://localhost:1313) to see the publication.


### All Other Windows Users:

1. Download and Install Gitbash -> https://gitforwindows.org/
2. Download and Install node and npm -> https://nodejs.org/en/download/
3. Download and Install Prince XML for Windows -> https://www.princexml.com/doc-install/#windows
4. Run as admin from powershell  (this installs c++ 2015 build tools and python 2 required for node-gyp)
    ```
    npm install --g --production windows-build-tools
    ```
5. From the git-bash terminal run

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
    
    If version number is returned quire-cli was installed correctly

    ```
    cd ~
    ```
    
5. Start a new **Quire** project

    Create a new project

    ```
    quire new your-project-name
    ```
    Enter the new directory

    ```
    cd your-project-name
    ```

    Install starter theme dependencies

    ```
    quire install
    ```
    
    then to start editing run
    
    ```
    quire preview
    ```

    Once running, open a browser and visit [http://localhost:1313](http://localhost:1313) to see the publication.
    

### Troubleshooting

TK


