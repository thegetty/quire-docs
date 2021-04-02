---
title: Project Management with GitHub
weight: 4150
type: essay
---

[GitHub](https://github.com) is a project management platform centered around git-based version control. While it was originally developed as a useful tool for developers, it is now used by artists, writers, and other non-tech professionals. In fact, Getty uses GitHub to manage all of its publications, as well as Quire itself. We strongly recommend using GitHub as a tool for managing your Quire projects (whether collaborating or working solo).

**Here are some of GitHub's main advantages:**

- GitHub is free to use.
- It's a secure platform for hosting your project's code and creating an electronic back-up of your work.
- GitHub saves the entire version history of your project (including deleted files) enabling you to track changes, revert changes, and restore earlier versions.
- You can use GitHub to create test versions of your project and experiment with new ideas before officially incorporating them.
- Github makes working with collaborators easy. You and your colleagues can work in different versions of the project, review and comment on one another's work, and incorporate any approved changes into the master project.
- In the case of Quire, we also use GitHub to host our [community forum](https://github.com/thegetty/quire/discussions) where you can ask and answer questions, share ideas, and assist fellow Quire community members.

{{< q-class "box tip" >}}
- For more information, we recommend checking out [GitHub Docs](https://docs.github.com/en/free-pro-team@latest/github) to learn by topic, [GitHub Glossary](https://docs.github.com/en/github/getting-started-with-github/github-glossary) to understand key terms, and [GitHub Guides](https://guides.github.com/) for a broad overview. We also encourage you to check out Coding Train's [Git and Github for Poets](https://www.youtube.com/playlist?list=PLRqwX-V7Uu6ZF9C0YMKuns9sLDzK6zoiV) video series as a helpful primer.
{{< /q-class >}}

To get started, [sign up for a free GitHub account](https://github.com/join). While advanced users will often use git and Github from their {{< q-def "command-line shell" >}}, we recommend downloading and installing the [free GitHub Desktop software](https://desktop.github.com/) as a more user-friendly platform.

Next, you will have two options:

1. **Host Your Project's Code on GitHub**: Create a new repository on GitHub and add a project that lives locally on your computer. (This would be the case if you recently used `quire new`.) Please note, you are only hosting your project's code and not the actual online version of it.
2. **Clone an Existing Project from Github**: Copy an existing repository off GitHub to work locally on your computer. This would be the case when collaborating with others who have already created a repository.

## Host Your Project's Code on GitHub

GitHub uses something called "git" to track changes in project files. When you start a Quire project with `quire new`, it comes already configured as a git repository. (You might have noticed a mysterious `.git` directory in your folder.) This means your project is ready to be uploaded to GitHub as a new [repository](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/about-repositories).

1. Open GitHub Desktop and click the upper left-hand corner where it says "Current Repository." Click "Add" and choose the option to "Add Existing repository..."

2. Navigate to the project in your {{< q-def "home directory" >}} and click "Add Repository."

3. If there are any items listed in the window's left-hand pane, you will need to commit them to your project.  As this will be your first commit, type "Initial commit" in the Summary field and click the "Commit to master" button.

{{< q-figure id="github-desktop-initial-commit" >}}

4. Click the blue-button that says "Publish Repository". This will push your repository up to GitHub.com. In the pop-window, keep the name as is and add a description if you would like. Then click "Publish Repository".

{{< q-figure id="github-desktop-publish" >}}

Your project code is now on GitHub! To see it, go to Repository > View on GitHub or visit https://github.com/YOUR-USERNAME/YOUR-PROJECT-NAME.

[[Insert image of a repository?]]

## Clone an Existing Project from GitHub

If you are collaborating on a project, and one of your colleagues has already hosted your project code on GitHub, you can clone (or make a copy) of this repository to work on it locally.

1. Click on the upper left-hand corner of GitHub Desktop where it says "Current Repository." Click "Add" and choose the option to "Clone repository..."

2. Click the URL menu option and cut-and-paste the URL (https://github.com/USERNAME/PROJECT-NAME) for your desired repository. Be sure to choose the local path where you want your project to live on your computer. (We recommend creating a GitHub folder in your home directory and storing the project in there.)

Alternately, you can copy this project directly from GitHub.com. Navigate to the project on GitHub, click the green “Code” button, select “Open with GitHub Desktop,” and follow the prompts.

{{< q-class "box warning" >}}
- To view a preview of a Quire project cloned from GitHub, you’ll need to first run `quire install` in your project directory. Then run `quire preview` and navigate to [http://localhost:1313/](http://localhost:1313/).
{{< /q-class >}}

You now have a copy of that project on your computer that is still connected to the original code on GitHub. You are ready to collaborate!

[[Mention forking somewhere. Explanations about forking: https://github.community/t/the-difference-between-forking-and-cloning-a-repository/10189 and https://opensource.com/article/17/12/fork-clone-difference and https://thenewstack.io/getting-legit-with-git-and-github-cloning-and-forking/]]


## Manage Project Changes on GitHub

There are three basic steps for making and managing changes to your project on GitHub:

1. Save changes in your text editor
2. Commit those changes to the git repository
3. Push those commits up to GitHub
4. Merge those changes into the master version of your project

### Save Changes

Open your project in your text editor (File > Open > [your project name]), make, and save changes. When you go into GitHub Desktop, you should see a list of all the files added, deleted, or edited in the left-hand pane. On the right, you'll see exactly what changes were made inside each file. Old text will be highlighted in red, while any new text will be highlighted in green. This enables you to compare and review changes easily.

{{< q-class "box tip" >}}
- Save changes with either Command-S or File > Save. If working on multiple markdown files, make sure to save each file individually. You will see a little blue dot at the top of the page if there are any unsaved changes.   
{{< /q-class >}}

### Commit Changes

At this point, your changes have been saved locally (i.e. only on your computer), but GitHub doesn’t know anything about them. For that, you need to make a [commit](https://docs.github.com/en/github/committing-changes-to-your-project/about-commits), or a small grouping of meaningful changes.

To make a commit, write a required summary of the change you’re making (a longer description is optional) and click the "Commit to master" button. Keep in mind, a key advantage of GitHub is that you can undo your work by reverting commits and returning to earlier versions of your project. Here are a few tips for styling your commits to make that process easier:

- Keep the commit name concise (around 50 characters max), so you can quickly and easily browse them in the future.
- If you need to explain the commit in greater detail, use the description field (around 72 characters max).
- The summary should be a phrase that completes the sentence “This commit will __”.
- Use present/imperative tense, such as “Add contributor names and bios;” “Fix typos in section pages;” or “Change header color”.

When naming commits, think of them as purposefully connected bundles that you could undo at a later date without effecting other areas of your project. Rather than committing all the random changes you made to a single file or everything you did before lunch that day, commit changes that *make sense together*.

[[Include more tips / examples of good commits]]

{{< q-class "box tip" >}}
- Changes are organized by the file in which they were made. Use the checkboxes at the lefthand of your window to select which changes will or won’t be included in a given commit. Break your work into individual commits or commits with multiple changes.
{{< /q-class >}}

### Push Changes

Even after saving changes in your text editor and committing them in GitHub Desktop, GitHub still doesn’t know about them. For that, you need to [push](hhttps://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/pushing-changes-to-github#pushing-changes-to-github) your commits to GitHub. Use the "Push origin" link in the upper-right corner. Pushing can include one or many commits, and you can push as often as you’d like, but it’s typically good to do it at least a couple of times a day when actively working on a project.

Now the changes to your project have been successfully saved in GitHub!

## Collaborate with Others using GitHub

One of the main advantages of using GitHub is that it's an excellent tool for managing projects what have multiple people working on it. Once the project is on GitHub and either forked or cloned by you and your colleagues, you can all make changes and commits to the same project. Just remember to add your colleagues as collaborators on your project and give them the appropriate permissions.

{{< q-class "box tip" >}}
- When setting-up a new repository you have [two options](https://docs.github.com/en/github/getting-started-with-github/types-of-github-accounts): you can you can invite users to become collaborators to your personal repository or groups of people can collaborate across many projects at the same time in organization accounts. Each has different options for [managing settings and permissions](https://docs.github.com/en/github/setting-up-and-managing-your-github-user-account/managing-user-account-settings).
{{< /q-class >}}

Clear communication is vital when collaborating with GitHub. If multiple people are working on a project and all making changes to the same files, there’s a good chance you will run into conflicts. While git is specifically designed to deal with these sorts of issues, it's important to avoid working on the same sections at the same time.

### Create a Branch

A good way to manage users' changes and avoid conflicts is by using [branches](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-branches#working-with-branches). Branches are essentially parallel versions of a project. Users can make changes on their branch without effecting the main version of the project. This allows you to review changes and identify possible conflicts before they are incorporated into your project.

[[Include tips for how to think about branches]]

### Submit a Pull Request & Merge Changes

Once you have pushed your changes you will be promoted to submit a [pull request](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests). This is a request for your collaborators to review and comment on changes before incorporating them into the main project. Once approved, you can [merge](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/merging-a-pull-request#about-pull-request-merges), or incorporate, these changes into the master version of your project.

## Manage Third Party Assets with GitHub

If you plan to make your repository visibile to the public at some point, we highly recommend not committing third-party licensed assets into it, as this can expose those assets to easy, unlicensed use by other people. We recommend putting these images in a secondary repository that always remains private but can be connected to the main repo through a [git submodule](https://github.blog/2016-02-01-working-with-submodules/).

[[Is there more info we can add about this?]]

## Manage Large File Sizes with Git LFS

Individual large files (greater than 100MB) will be blocked by GitHub if you commit them to your project and then try to push them up. You will receive the error message:

> The following files are over 100MB. IF you commit these files, you will no longer be able to push this repository to GitHub.com We recommend you avoid committing these files or use Git LFS to store large files on GitHub.com.

[Git Large File Storage (LFS)](https://git-lfs.github.com/) is a tool that moves your large files elsewhere and in their place stores references pointing to them in your repo. GitHub then uses these references as a guide to locate your large files.

Another use for Git LFS is avoided bloated repository sizes. One of GitHub’s key advantages is version control. Git tracks all activity in your project over the course of its history enabling you to restore earlier versions. That means git keeps track of every file that’s ever been associated with that project (even the deleted ones). This can lead to slowed performance. We recommend adapting Git LFS as part of your workflow to avoid issues further down the road.

For additional information on [managing large file sizes and instructions for downloading Git LFS](https://docs.github.com/en/github/managing-large-files/installing-git-large-file-storage) please refer to the GitHub documentation.  
