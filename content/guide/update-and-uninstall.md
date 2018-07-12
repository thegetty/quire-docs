---
title: Updating or Uninstalling Quire
type: page
---

## Updating Your Theme to a Newer Version

Before updating your theme, make note of any changes you made to it as these will need to be manually copied over to the updated version of the theme if you want to keep them. Usually, this would only be changes to the style variables.

1. In the theme repository on GitHub, use the “Clone or download” button to download a ZIP file of the most current version of the theme, or, go to the repository’s Releases page to choose a particular release.

2. Once downloaded, unzip the package.

3. In the `themes` folder of your Quire project, delete the existing folder there, and replace it with the one you just downloaded. The replacement folder must be named the same as the original.

4. In your command line shell, navigate to your project folder and run the command `quire install`. This will install your theme’s dependencies.

5. Once the install process is complete, manually copy over any changes/customizations to the theme that had made previously, and run `quire preview` to confirm.

You may also need to clear your browser cache to get the new theme stylesheets to reload.

## Changing to a New Theme

1. In the theme repository on GitHub, use the “Clone or download” button to download a ZIP file of the most current version of the theme, or, go to the repository’s Releases page to choose a particular release.

2. Once downloaded, unzip the package.

3. Add the new theme package to the `themes` folder of your Quire project. Leave the old theme there for now, until you confirm your new theme works and you are sure you want to use it.

4. In your project’s `config.yml` file change the name listed under `theme` from `"quire-starter-theme"` to the name of the new theme.

5. In your command line shell, navigate to your project folder and run the command `quire install`. This will install your theme’s dependencies.

6. Once the install process is complete, run `quire preview` to confirm.

You may also need to clear your browser cache to get the new theme stylesheets to reload.

## Updating the Quire CLI

As we develop, you may also want/need to update your Quire CLI (the part of Quire that gives you the ability to run `quire` commands in your command line shell). In particular, the CLI is pegged to a particular version of the Quire Starter Theme (at least for now), so if you’re using an older CLI any new projects you start will also have an older version of the theme.

1. In your User/Home directory where you initially installed Quire, look for the `quire-cli` folder and delete it.

2. In your command line shell, enter the following three commands in order:

    ```
    git clone https://github.com/gettypubs/quire-cli.git
    ```

    ```
    cd quire-cli
    ```

    ```
    npm install -g
    ```

You now have the latest Quire CLI and any new projects you start will also have the newest theme. Your previously-started projects will keep their original version of theme. You may in some cases see errors or issues when running Quire commands with a newer version of the CLI, in older projects. These can be fixed manually, or, you can also always re-install [your original version of the CLI](https://github.com/gettypubs/quire-cli/releases) to run those older projects if necessary.

## Uninstalling Quire

To uninstall Quire:

1. From a new window in your command line shell (you should be in your home/user directory where you initially installed Quire) type the following two commands:

    ```
    cd quire-cli
    ```

    ```
    npm uninstall -g
    ```

2. In the folder/finder view, go to your user/home directory where you initially installed Quire, look for the `quire-cli` folder and delete it.
