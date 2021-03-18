---
title: Deploy Your Project
weight: 5701
type: essay
abstract: "Preview & Deploy Your Project Online"
---

A Quire site is designed to be hosted on virtually any web server, either one your institution already runs, or a new server from any hosting service you might sign up for. You do not need any special back-end setup.

When hosting a site this way, you will typically follow these steps:

1. If you plan to include PDF and e-book files as part of you published project, it's important that you start by following the directions in the [*Output Your Project*](documentation/multiformat-output) section of the documentation.
2. Update the `baseURL` in `config/site.yml` to match the URL where the site will ultimately be hosted.
3. Create the HTML files for your project by running `quire site` in your command-line shell. The files will be built into your project’s `site` folder along with all the necessary static assets like image files, stylesheets and script files. The `site` file will be updated and overwritten each time you run `quire site`.
4. Upload the contents of the `site` folder to your web host based on the directions they provide.

If you do not already have a web server or hosting plan, we recommend using either [Netlify](https://www.netlify.com) or [GitHub Pages](https://pages.github.com/).

*Both Netlify and Github Pages deployment options require a basic understanding of how to create a repository, and commit and merge changes changes. If you are new to GitHub, we recommend starting with [GitHub Docs](https://docs.github.com/en/github) to learn by topic or checking out the [GitHub for Quire](/documentation/github) section of our documentation. We also encourage you to check out Coding Train’s video series is a great resource as well [Git and Github for Poets](https://www.youtube.com/playlist?list=PLRqwX-V7Uu6ZF9C0YMKuns9sLDzK6zoiV). And please see [GitHub Best Practices](#github-best-practices) below for tips on how to manage large files and third party assets when working with GitHub.*

## Netlify

Netlify enables you to create a quick preview site using your `site` files or you can connect it with your Github account to generate a shareable preview site that automatically updates every time you push changes to your project. (Please note, while we use GitHub and reference it throughout our documentation, you can also link Netlify to your GitLab or BitBucket account.) You can also use Netlify to host your final project when it's ready to publish.

[Sign up](https://app.netlify.com/signup) for a Netlify account and connect it with your GitHub account.

### Manual Deploy with Netlify

Manual deploy is ideal if you have a small site or want to run a quick preview, and you can use this option without needing a GitHub account. However, you will need to go through the process of rebuilding the site, compressing files, and reuploading them to Netlify each time you make an update, which may be burdensome if you have a lot of images or larger files. For continuous deployment please see [*Continuous Deploy with Netlify*](#continuous-deploy-with-netlify).

1. When you are ready to launch your project, run `quire site` in your command-line shell.

2. Navigate to your project in your home directory and compress the `site` folder.

3. Go to Netlify Drop: [https://app.netlify.com/drop](https://app.netlify.com/drop). Make sure you are logged in to your account and then drag-and-drop your compressed `site` folder into the indicated area.

4. You will be given a default URL to preview your project. Rename this URL by navigating to “Site settings” and changing the site name. (You also have the option to buy a domain or set-up a domain you already own.)

If you make further edits to your project and would like to preview them you will need to repeat this process.

1. Delete the old compressed `site` folder.

2. Run `quire site` again (your files will be automatically overwritten.)

3. Compress the newly updated `site` folder.

4. In Netlify, navigate to “Deploys” at the top of the page. You will see a blank space that reads, “Need to update your site." Simply drag-and-drop your new compressed `site` folder here and your link will be automatically updated.

### Continuous Deploy with Netlify

By keeping your project files on GitHub and linking them directly to your Netlify account, any time you merge changes in Github, your preview link will be automatically updated. This process requires a few extra steps to get set-up, but will save time in the long run.

1. If you haven't already, create a repository for your project on GitHub.

2. To proceed with deployment, you will need to add two files to your repository: `netlify.toml` and `package.json`. [Download them](/downloads/site-deploy.zip), add them to your repo, and merge changes before proceeding.

3. Log in to [Netlify](https://app.netlify.com/). On the “Team Overview” page, click the button that says “New Site from Git.”

4. Next you'll want to “Connect to Git Provider.”

5. If you see “no repositories found” you will be prompted to configure Netlify on GitHub.

6. Once this configuration is complete, choose the repository you would like to preview.

7. Set the "build command" as `npm run build` and the "publish directory" as `site`.  

8. Hit "Deploy Site." Depending on the size of your project, this may take a few moments. Follow along with the build process (and check for errors) by navigating to "Publication Deploys" section and scrolling down to the "Deploy Log".

9. You will be given a default URL to preview your project. You can rename this URL by navigating to “Site settings” and changing the site name. (You also have the option to buy a domain or set-up a domain you already own.)

10. Should you need to make any updates to your site, just merge the changes and Netlify will automatically update your preview link. You can check "Production Deploys" in the site overview section to these track changes.

{{< q-class "box tip" >}}
- Now that you have linked Netlify to your Github account, you'll see notifications about Netlify testing the site each time you submit a new pull request. If the checks pass, you can click the bottom-most link to launch a preview of your site. If the checks fail, there may be broken links, incorrect YAML, or other issues with your project files.
{{< /q-class >}}

### Domains

There 3 ways of connecting a domain to Netlify

- Purchase your domain through Netlify and run your DNS through their interface
- Add a proxy to your webserver
- Add an alias CNAME to your DNS to point to your Netlify domain

Any of these will work, it is more specific to what you want your domain to be.

## GitHub Pages

GitHub enables you to not only host your project code, but you can also use it to host a live version of your site. Learn more on the [GitHub Pages](https://pages.github.com/) website.

### Preview Your Project with Github Pages

1. First, if you haven't already, follow the steps in the [*GitHub*](documentation/github/#hosting-your-project-code-on-github) section of our docs to create a repository for your project.

2. In your text editor, open the `config/environments/github.yml` file.

3. Update the `baseURL` to correspond to your own GitHub site. It will follow the pattern: https://YOUR-USERNAME.github.io/YOUR-PROJECT-DIRECTORY-NAME. So, if your GitHub username is bonjovi and your project file is blaze-of-glory, your `baseURL` would be https://bonjovi.github.io/blaze-of-glory.

4. Set the `canonifyURLs` to `true`.

5. Commit and merge these changes to the repo.

4. Open Terminal, navigate to your project and enter:

    ```text
    bin/deploy.sh
    ```

    This runs a script to deploy your site to GitHub pages. The script may ask for your GitHub username and password. (Remember that the password cursor won’t move to show that you’re typing. Just type the password and hit enter.)

5. If your repository is private, you will need to navigate to your repository on GitHub and update your settings.

6. In "Settings" scroll down to the "Danger Zone" and click on "Change project visibility."

7. For "Source" switch the branch to `gh-pages` and save.

8. Your site should now be published at https://YOUR-USERNAME.github.io/YOUR-PROJECT-DIRECTORY-NAME.

## GitHub Best Practices

If you’re using GitHub or a related service to manage your Quire projects (whether deploying with Netlify or GitHub Pages), you should be mindful of how you handle third-party assets (like images you license for use), as well as files with large files sizes (like high-resolution images and even the PDF and e-book outputs from Quire itself). Neither should be committed into a git repository without some careful forethought.

One of the amazing things about git/GitHub is that a project tracked with git can be rolled back and fully restored to any point in its history. That means that git keeps track of every file that’s ever been associated with the project. This includes deleted files, which by design are never truly deleted. They're kept in version control in case you want to revert back to an older version that uses that file. Keep in mind that these deleted files can contribute to the overall size of your repository.

### Third-Party Licensed Assets

If you plan to make your repository visibility public at some point, we highly recommend not committing third-party licensed assets into it, as this can expose those assets to easy, unlicensed use by other people. We recommend putting these images in a secondary repository that always remains private but can be connected to the main repo through a [git submodule](https://github.blog/2016-02-01-working-with-submodules/).

### Large Files

Individual large files (greater than 100MB) will be blocked by GitHub if you commit them into your project and then try to push them up. Also, multiple large files of even more modest size can quickly lead to bloated repository sizes and slowed performance.

Deleting committed files doesn’t clear up issues with GitHub or reduce the repo's overall size because these files remain in your git version history. You’ll find you need to jump through some technical hoops to remove the files and rewrite the git history permanently. It is best not to commit them in at all.

As a solution, when you are working with larger file sizes, we recommend utilizing GitHub's [LFS (Large File Storage)](https://git-lfs.github.com/). This allows larger files to be stored in a separate location that can be linked to your repository.

If you are working on a larger project in GitHub, it’s a good idea to set up and start using LFS from the beginning. It will save you many headaches down the road. Read more about [managing large files](https://docs.github.com/en/github/managing-large-files) in GitHub’s docs.
