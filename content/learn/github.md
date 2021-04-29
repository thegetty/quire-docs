---
title: Learning GitHub
weight: 6800
type: page
online: false
---

## Steps for Using Quire and GitHub Together

The following steps are examples of a potential workflow when using GitHub as a project management tool alongside Quire. Creating branches and making pull requests are an optional way of working that provides extra checks and balances. You can learn more about GitHub in the [*Project Management for GitHub*](/documentation/github) section of our documentation.

### Host Your Quire Project on Github
*The most common way to get started with GitHub is to upload or host your project on the platform.*

1. Open GitHub Desktop and click the upper left-hand corner where it says “Current Repository.” Click “Add” and choose the option to “Add Existing repository…”
2. Navigate to your `[quire-project-name]` folder and click “Add Repository.”
3. If there are any items listed in the window’s left-hand pane, you will need to commit them to your project. As this will be your first commit, type “Initial commit” in the Summary field.
4. Click the “Commit to master” button.

### Download Your Quire Project from Github
*If a colleague has already hosted your project on GitHub, you will need to be added as a project collaborator, and then you can download or clone the project to your computer and work on it locally.*

1. Open GitHub Desktop.
2. Click on the upper left-hand corner of the application window, where it says “Current Repository”. Click “Add” and choose the option to “Clone repository…”
3. Click the URL menu option and cut-and-paste the URL for your desired repository. (Alternately, you can copy this project directly from GitHub.com. Navigate to the project on GitHub, click the green “Code” button, select “Open with GitHub Desktop”, and follow the prompts.)
4. Save the Quire project. (We recommend saying it in your home directory.)

### Preview Your Quire Publication
*This is recommended as a way to double-check the edits you are making in your Quire publication.*

1. Next, you are going to use the command line to navigate through your computer files.
- If using a Mac computer, press Command-Spacebar to open Spotlight. Then write “Terminal” and hit enter.
- For PCs, we recommend installing Git for Windows, which comes with a shell called Git BASH.
2. Use the cd command to navigate to your computer's home directory and then navigate into your `[quire-project-name]` folder. (For more on using command line see our [*Learning Command Line*](/learn/command-line) article.)
3. Once you are in your `[quire-project-name]` folder, run the following commands:
```
quire install
quire preview
```
4. Go to http://localhost:1313 to view the changes live.

### Open Your Project in GitHub Desktop
*You will use GitHub to save, manage, and track any changes made to your Quire project.*

1. At the top right, click "Current Repository" and either choose your project repository from the list or add it per the instructions in [Download Your Quire Project from GitHub](#download-your-quire-project-from-github).

### Create a New Branch in GitHub Desktop
*A branch is a parallel version of your project that you can edit in directly without compromising the main version.*

1. Before starting a new branch, click the “Fetch Origin” button at the top right. This will pull down any recently merged changes to the master project. That way when you start a new branch you are working off the most up-to-date version.
2. Navigate to where it says “Current Branch” at the top of your GitHub Desktop window.
3. Click the drop-down arrow and select “new branch” to the right of the Filter box.
4. Name your branch.
5. Select “main” where it says “Create branch based on.” This means you are creating a new branch that runs parallel to the main project.

### Open Project File in Atom
*When you are ready to start editing, open your Quire project in your text editor to get started. While we recommend using Atom you are welcome to use any text editor that you feel comfortable with.*

1. Open Atom
2. Click File > Open
3. Navigate to your home directory and your GitHub folder
4. Select `[quire-project-name]`
5. In Atom, expand the contents folder to see the editable markdown files

### Save Changes in Atom
*After you make changes in Atom, be sure to save them!*

1. To save, hit File > Save or Command-S (Mac) or Control-S (PC).
2. If working on multiple markdown files, make sure to save each file individually. You will see a little blue dot at the top of the page if there are any unsaved changes.

### Make Commits in GitHub Desktop
*A commit is a record of a change or revision you have made to your Quire project. It is one step in the process of saving your changes to the git record of your project.*

1. At the bottom left, above where it says description, write a short name for your commit. You have the option to include a description as well.
2. Press the blue button that says “Commit to [branch name].”

### Push Changes in GitHub
*You must “push” the changes to GitHub to save them to your repository.*

1. After you have made all your commits, click on the “Push Origin” button at the top right.
2. Now the changes to your project have been successfully saved to your branch on GitHub.

### Create a Pull Request in GitHub
*Once you are done making changes, you can submit a “pull request," a request for a collaborator to review or comment on your work.*

1. Click the blue-button that says “Create Pull Request.” This will take you to GitHub.com.
2. Confirm that the branch in the base drop-down menu is the branch where you want to merge your changes. In most cases, this will be the master or main branch.
3. You can leave the default title or type a new title and description for your pull request.
4. On the right-hand side, you will see an option to choose a reviewer. Choose the colleague you would like to review your work. (Note" reviewers must be added as collaborators first.)
5. Click the green-button that says “Create Pull Request” if all your changes are ready for review. Or click the drop-down arrow and choose “Create Draft Pull Request” if you are still making changes that will be included in this particular pull request.

### Review and Merge a Pull Request in GitHub
*Comment on and request changes to a pull request. Once the pull request is approved changes can be merged into the master copy of your project.*

1. Navigate to “Pull Requests” on the main page of your repository.
2. In the list of pull requests, choose the one you’d like to review.
3. Click “+/- Files changed”.
4. Hover over the section of text you would like to comment on.
5. You will see a blue square with a plus mark pop-up. Write your comments here.
6. When you are done commenting click, “Start a Review.” You will have the option to comment, approve, and request changes.
7. Once the pull request has been approved, provided there are no conflicts, you will see a green-button that says “merge pull request.” Click this and, voila, your changes are now incorporated.
