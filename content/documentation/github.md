---
title: GitHub for Quire
weight: 600
type: essay
---

GitHub is a project management platform centered around git-based version control. That means it’s a good place to host your project and track changes to it, whether you’re working on your own, or with a team of collaborators. The Getty uses GitHub to manage all of its publications, as well as Quire itself.

To get started, you just need to [sign up for a free GitHub account](https://github.com/join), and [download and install the free GitHub Desktop software](https://desktop.github.com/). (Advance users will often use git and GitHub from their {{< q-def "command-line shell" >}}.)

## Hosting Your Project Code on GitHub

GitHub uses git to track changes in project files. When you start a new project with `quire new`, it comes already configured as a git repository. (You might have noticed a mysterious `.git` directory in your project.) Follow the steps below to host the code on GitHub. Note that this will load just the raw code of the current version of your project, not the online publication itself. Instructions for updating your project code on GitHub, and for hosting a website version are the following.

1. Open GitHub Desktop and go to File > Add Local Repository (Cmd-O). Select your project repository and click Add Repository

2. If there are any Changes listed in the left-hand pane of the window, type "Initial commit" in the Summary field below, and then click the Commit to Master button.

3. At the top right of the window, click Publish Repository (next to the cloud icon). In the pop-window, keep the Name as is, add a text Description if you’d like, and click the Publish Repository button.

{{< q-figure id="github-desktop-publish" >}}

Your project code is now on GitHub! To see it, go to Repository > View on GitHub (Shift-Cmd-G) or visit https://github.com/YOUR-USERNAME/YOUR-PROJECT-DIRECTORY-NAME.

## Using GitHub to Manage Changes to Your Project

Once your project is on GitHub, you’ll want to keep it updated. There are three basic steps for this:

1. Save changes in your text editor
2. Commit those changes to the git repository
3. Push those commits up to GitHub

First, continue making and saving changes regularly in your text editor. When you’ve made a batch, go to GitHub Desktop and you should see them listed there. On the left will be a list of all the files added, deleted, or edited. On the right will be a view that shows exactly what changes were made inside each file. The old text will be highlighted in red, and the new text will be highlighted in green.

{{< q-figure id="github-desktop-initial-commit" >}}

At this point, your changes are saved locally in your project, but GitHub doesn’t know anything about them. For that, you need to “commit” the changes to the git record in your project, and then “push” those commits up to GitHub.

To make a commit, you type a required summary of the change you’re making, an optional longer description, and then click the "Commit to Master" button. So that it’s descriptive to future you, and to others looking at the code, the summary should be a phrase that completes the sentence “This commit will __”. Phrases like “Add contributor names and bios;” “Fix typos in section pages;” or “Change header color” would all work well.

Think about your commits in meaningful bundles, that could be undone without effecting other areas of your project. Rather than committing all the random changes you made to a single file, or everything you did before lunch that day, commit changes that make sense together.

{{< q-class "box tip" >}}

- You can break changes into multiple commits by using the check boxes in the lefthand list to select which files will or won’t be included in a given commit.

{{< /q-class >}}

Even after saving your changes in your text editor and committing them in GitHub Desktop, GitHub itself still doesn’t know about them. For that you need to “push” your commits to GitHub. For that simply use the "Push origin" link in the upper right. Pushing can include one or many commits, and you can push as often as you’d like, but it’s typically good to do it at least a couple times day when actively working on a project.

## Using GitHub to Collaborate with Others on Your Project

With a project on GitHub, it’s possible for others to make changes and commits to it as well. There are three basic ways this can happen:

- They can fork (copy) your repository, make changes to it and then submit a pull request to you to review and merge the changes into your project. This can be more complicated to manage, but it’s safer as it ensures they can’t unintentionally do anything irreversible to your project.
- You can make them a collaborator on your repository in which case they can work on it directly just as you would. This is generally easier to manage, but grants them full access to your repository.
- If your project is hosted in a GitHub Organization account, you can add them to the organization team.

When collaborating with others, be communicative about what areas of the project you’re working on and try to avoid cross overs. If you have multiple people connected to a project and pushing commits to the GitHub repository, there’s a good chance you will at some point make changes that are incompatible with someone else’s changes.The trick with multiple people working in a single project is managing these potential change conflicts. Git is designed to deal with these sorts of issues.

When working with others on a project, use branches as a way of managing different users' changes and avoiding conflicts. Users can make changes on their branch before submitting a pull request to have the changes committed to the master branch. This allows you to review these changes and identify possible conflicts before they are added to your project. There are a number of guides for forking repositories, using branches, and making pull requests online.

## Installing an Existing Quire Project from GitHub

1. Open GitHub Desktop and go to File > Clone Repository (Shift+Cmd+O).

2. Click the URL tab, and enter the URL or GitHub username and repository name where indicated.

3. Click Clone.

Alternately, from the GitHub page of the project, click the green “Clone or download” button and select “Open in Desktop” and follow the prompts.

You now have a copy of that project on your computer, that is still connected to the original copy on GitHub. If you make changes to it, they can be committed back to the original.

{{< q-class "box warning" >}}

- In order to run and view the Quire preview of a project cloned from GitHub, you’ll need to first run `quire install` in your project directory.

{{< /q-class >}}
