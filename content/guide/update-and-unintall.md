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

TK

## Uninstalling Quire

TK
