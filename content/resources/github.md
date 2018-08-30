---
title: GitHub for Quire
weight: 508
type: essay
---

## Hosting Your Project Code on GitHub

1. Download and install GitHub Desktop: [https://desktop.github.com/](https://desktop.github.com/)

2. Open it and go to File > Add Local Repository (Cmd-O). Select your project repository and click Add Repository

3. If there any Changes list in the left-hand pane of the window, type "Initial commit" in the Summary field below, and then click the Commit to Master button.

3. At the top right of the window, click Publish Repository (next to the cloud icon). In the pop-window, the default options should be fine, so just click Publish Repository button.

Your project code is now on GitHub. To see it, go to Repository > View on GitHub (Shift-Cmd-G) or visit https://github.com/YOUR-USERNAME/YOUR-PROJECT-DIRECTORY-NAME.

## Displaying Your Project Preview on GitHub

While you can host your project code on GitHub, you can also use it to host a live version of your site, the way it looks when you run `quire preview`.

1. First, follow the steps above to start a GitHub repository for your project, if you haven’t already.

2. In your project folder, open the `config/environments/github.yml` file.

3. Update the `baseURL` to correspond to your own GitHub site. It will follow the pattern: https://YOUR-USERNAME.github.io/YOUR-PROJECT-DIRECTORY-NAME. So, if your GitHub username is bonjovi and your project file is blaze-of-glory, your `baseURL` would be https://bonjovi.github.io/blaze-of-glory.

4. Open Terminal and navigate to your project (if it’s in your main user directory, just `cd YOUR-PROJECT-DIRECTORY-NAME`), and enter:

    ```text
    bin/deploy.sh
    ```

    This runs a script to deploy your site to GitHub pages. The script may ask for your GitHub username and password. (Remember that the password cursor won’t move to show that you’re typing. Just type the password and hit enter.)

It will take a few minutes to propagate through GitHub’s system, but your site should now be published at https://YOUR-USERNAME.github.io/YOUR-PROJECT-DIRECTORY-NAME.

Note that if you have a GitHub account that allows for private repositories, you can have a private repo and still run the deploy script. The code will note show up on the public GitHub site, but the preview will still be accessible at its URL. This is a good way of sharing a site preview to other collaborators during the development process, before your site is published.

## Using GitHub to Manage Changes to Your Project

TK

## Using GitHub to Collaborate with Others on Your Project

TK
