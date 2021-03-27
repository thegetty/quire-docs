---
title: GitHub for Quire
weight: 600
type: essay
---

[GitHub](https://github.com) is a project management platform centered around git-based version control. While it was originally developed as a useful tool for developers, it is now being used by artists, writers, and other non-tech professionals as well. In fact, the Getty uses GitHub to manage all of its publications, as well as Quire itself. We strongly recommend using GitHub as a tool for managing your Quire projects (whether collaborating or working solo). Here are some of GitHub main advantages:

- GitHub is free to use.
- It's a secure platform for hosting your project's code and creating an electronic back-up of your work.
- GitHub saves the entire version history of your project enabling you to track changes, revert changes, and restore earlier versions.
- You can use GitHub to create test versions of your project and experiment with new ideas before officially incorporating them with the master project.
- Github makes working with collaborators easy. You can each work in different versions of the project, review and comment on one another's work, and incorporate any approved changes back into the master project.
- In the case of Quire, we also use GitHub to host our [community forum](https://github.com/thegetty/quire/discussions) where you can ask and answer questions, share ideas, and assist fellow Quire community members.

{{< q-class "box tip" >}}
- To learn more, we recommend checking out [GitHub Docs](https://docs.github.com/en/free-pro-team@latest/github) to learn by topic, the [GitHub Glossary](https://docs.github.com/en/github/getting-started-with-github/github-glossary) to understand key terms, and [GitHub Guides](https://guides.github.com/) for a more broad overview. We also encourage you to check out Coding Train’s  [Git and Github for Poets](https://www.youtube.com/playlist?list=PLRqwX-V7Uu6ZF9C0YMKuns9sLDzK6zoiV) video series as a helpful primer.
{{< /q-class >}}

To get started, [sign up for a free GitHub account](https://github.com/join). While advanced users will often use git and Github from their {{< q-def "command-line shell" >}}, we recommend downloading and installing the [free GitHub Desktop software](https://desktop.github.com/) as a more user-friendly platform.

Next you will have two options:

1. **Host Your Project's Code on GitHub**: Create a new repository on GitHub and add a project that lives locally on your computer. (This would be the case if you recently used `quire new`.) Please note, you are only hosting your project's code and not the actual online version of it.
2. **Clone an Existing Project from Github**: Copy an existing repository off GitHub to work on locally on your computer. This would be the case when collaborating with others who have already created a repository.

## Host Your Project's Code on GitHub

GitHub uses something called "git" to track changes in project files. When you start a new Quire project with `quire new`, it comes already configured as a git repository. (You might have noticed a mysterious `.git` directory in your project.) This means your project is ready to be uploaded to GitHub as a new [repository](https://docs.github.com/en/github/getting-started-with-github/github-glossary#repository).

1. Open GitHub Desktop and click the upper left-hand corner where it says "Current Repository." Click "Add" and choose the option to "Add Existing repository..."

2. Navigate to the project in your {{< q-def "home directory" >}} and click "Add Repository."

3. If there are any items listed in the left-hand pane of the window you will need to commit them to your project.  As this will be your first commit, type "Initial commit" in the Summary field and click the "Commit to master" button.

{{< q-figure id="github-desktop-initial-commit" >}}

4. Click the blue button that says "Publish Repository". This will push your repository up to GitHub.com. In the pop-window, keep the name as it is and, if you would like, add a description. Then click "Publish Repository".

{{< q-figure id="github-desktop-publish" >}}

Your project code is now on GitHub! To see it, go to Repository > View on GitHub or visit https://github.com/YOUR-USERNAME/YOUR-PROJECT-DIRECTORY-NAME.

[[Insert image of a repository?]]

## Clone an Existing Project from GitHub

If you are collaborating on a project, and one of your colleagues has already hosted your project code on GitHub, you can clone (or make a copy) of this repository to work on it locally.

2. Click on the upper left-hand corner of GitHub Desktop where it says "Current Repository." Click "Add" and choose the option to "Clone repository..."

3. Click the URL menu option and cut-and-paste the URL (https://github.com/USERNAME/PROJECT-NAME) for your desired repository. Be sure to choose the local path where you want your project to live on your computer. (We recommend creating a GitHub folder in your {{< q-def "home directory" >}} and storing the project in there.)

Alternately, you can copy this project directly from GitHub.com. Navigate to the project on GitHub, click the green “Code” button and select “Open with GitHub Desktop” and follow the prompts.

{{< q-class "box warning" >}}
- In order to run and view the Quire preview of a project cloned from GitHub, you’ll need to first run `quire install` in your project directory.
{{< /q-class >}}

You now have a copy of that project on your computer, that is still connected to the original code on GitHub.

## Collaborate with Others with GitHub

Once the project is on GitHub and has been cloned by you and your colleagues, you can all make changes and commits to the same project. There are three basic ways this can happen:

- You can [fork](https://docs.github.com/en/github/getting-started-with-github/github-glossary#fork) the repository, make changes to it, and then submit a [pull request](https://docs.github.com/en/github/getting-started-with-github/github-glossary#pull-request) for your colleagues to review. Once the request has been approved you can [merge](https://docs.github.com/en/github/getting-started-with-github/github-glossary#merge) the changes into your project. This creates a system of checks and balances so no one can do anything irreversible to the project.
- You can [be added as a collaborator](https://docs.github.com/en/github/setting-up-and-managing-your-github-user-account/inviting-collaborators-to-a-personal-repository) on the repository. Any collaborators will be able to work directly in the project.
- If your project is hosted in a [GitHub Organization account](https://docs.github.com/en/github/getting-started-with-github/types-of-github-accounts#organization-accounts), you can add them to the organization team.

### Tips for Collaborating:

Clear communication is vital when collaborating with your colleagues in GitHub. If multiple people are working in a project, all pushing commits to the GitHub repository at the same time, there’s a good chance you will run into incompatible changes. While git is specifically designed to deal with these sorts of issues, it's important to avoid working on the same sections simultaneously.

A good way to manage users' changes and avoid conflicts when multiple people are collaborating on a project is by using [branches](https://docs.github.com/en/github/getting-started-with-github/github-glossary#branch). Branches are essentially parallel versions of a project. Users can make changes on their branch before submitting a pull request to have the changes merged into master branch. This allows you to review changes and identify possible conflicts before they are added to your project.

## Manage Project Changes on GitHub

There are three basic steps for managing changes to your project on GitHub:

1. Save changes in your text editor
2. Commit those changes to the git repository
3. Push those commits up to GitHub

### Save Changes

Open your project in your text editor (File > Open > [your project name]), make and save changes. When you go into GitHub Desktop you should see a list of all the files added, deleted, or edited in the left-hand pane. On the right you'll see exactly what changes were made inside each file. The old text will be highlighted in red, and the new text will be highlighted in green. This enables you to easily compare and review changes.

{{< q-class "box tip" >}}
- Save changes with either Command-S or File > Save. If working on multiple markdown files make sure to save each file individually. You will see a little blue dot at the top of the page if there are any unsaved changes.   
{{< /q-class >}}

### Commit Changes

At this point, your changes have been saved locally (i.e. only on your computer), but GitHub doesn’t know anything about them. For that, you need to [commit](https://docs.github.com/en/github/getting-started-with-github/github-glossary#commit) the changes to the git record in your project, and then “push” those commits up to GitHub.

To make a commit, write a required summary of the change you’re making (a longer description is optional) and click the "Commit to master" button. Keep in mind, a key advantage of GitHub is that you can undo your work by reverting commits and returning to earlier versions of your project. Here are a few tips for styling your commits to make that process easier:

- Keep the commit name concise (around 50 characters max) so you can quickly and easily browse them in the future.
- If you need to explain the commit in greater detail use the description field (around 72 characters max).
- The summary should be a phrase that completes the sentence “This commit will __”.
- Use present/imperative tense, such as, “Add contributor names and bios;” “Fix typos in section pages;” or “Change header color”.

When naming commits, think of them as meaningful bundles that could be undone without effecting other areas of your project. Rather than committing all the random changes you made to a single file, or everything you did before lunch that day, commit changes that make sense together.

{{< q-class "box tip" >}}
- Changes are organized by the file they were made in. You can break changes into multiple commits by using the check boxes in the lefthand list to select which files will or won’t be included in a given commit.
{{< /q-class >}}

### Push Changes

Even after saving your changes in your text editor and committing them in GitHub Desktop, GitHub still doesn’t know about them. For that you need to [push](https://docs.github.com/en/github/getting-started-with-github/github-glossary#push) your commits to GitHub. Use the "Push origin" link in the upper-right corner. Pushing can include one or many commits, and you can push as often as you’d like, but it’s typically good to do it at least a couple times day when actively working on a project.
