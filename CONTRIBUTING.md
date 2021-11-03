# Quire Documentation Contributor Guidelines

*Thank you for your interest in contributing to Quire! No matter what level of experience you have, we welcome all contributions, big and small.*

Below you will find information about this respository, the types of contributions we are seeking, and a step-by-step guide for submitting contributions via GitHub. Keep reading to learn more about contributing to Quire or proceed to the **[Get Started with a Contribution](#get-started-with-a-contribution)** section. **[Helpful Resources](#helpful-resources)** can be found at the end of these guidelines.


## Learn About Contributing to Quire

Developed by Getty, Quire is a new, multiformat publishing tool available for immediate access and use. Quire is in limited beta, © J. Paul Getty Trust, and not yet released as open-source software. **For a free license to use Quire, please complete [this form](http://bit.ly/quire-signup).**

There are the two Quire repositories hosted on GitHub:

- [**quire**](https://github.com/thegetty/quire):  Core Quire code including command-line interface, default starter content, and default theme.
- [**quire-docs**](https://github.com/thegetty/quire-docs): Quire website and documentation.

You are currently in the **quire-docs** repository. Our website and documentation are actually built using Quire. That means contributing to this repo will give you an opportunity to work on a live Quire project. The process may be familiar for some, and for others, it will be a good way to familiarize yourself with the tool. If you haven't already, please [install Quire](https://quire.getty.edu/documentation/install-uninstall/) to get started.


## Identify a Contribution to Make

Our website and docs are updated continuously for clarity and completeness, but it’s not always easy to keep up with the pace of Quire’s development. We invite you to share your ideas or jump in and make edits yourself. Below you will find a list of the types of contributions we are looking for:

**Fix a Typo or Broken Link:** Sometimes, little things like typos or broken links can slip through the cracks, and every small fix you make really helps.

**Copyedit Text:** As a regular user of Quire, you’ll likely find sections of the text that can be improved or clarified for other users. You’ll know best!

**Propose/Write a New Section:** Have you recently contributed a new feature to our main [Quire repository](https://github.com/thegetty/quire) and have the time to add the corresponding documentation? Have you come across a TK section (shorthand for “to come”) and would like to complete it? Do you have an idea for a new section? We’d love your help!

**Propose/Write an Article for the Website:** We’re always interested in adding articles about specific aspects of working in Quire to our [Learn](https://quire.getty.edu/learn/) knowledge base. Maybe you have some tips on modifying shortcodes or styling with CSS in the custom.css.

**Translate the Documentation:** The Quire community is global, and we hope to be able to continue to expand access to Quire, including to non-English speakers. If you are interested in translating our documentation or even just sections of the documentation, we'd love to talk to you about it.

>If this is your first time contributing and you don't know where to start, check the [issue tracker](https://github.com/thegetty/quire-docs/issues) for posts that include the “good first issues” label. These are small and approachable edits we could use your help with!

## Get Started with a Contribution

### 1. Use the Issue Tracker

We use GitHub’s [issue tracker](https://github.com/thegetty/quire-docs/issues/) to track work that needs to be done, is currently being done, or is proposed to be done. Unless your changes are small and very straightforward, we ask that all contributions are recorded in the issue tracker either by commenting on a existing issue or proposing a new one. Click [new issue](https://github.com/thegetty/quire-docs/issues/new/choose), follow the prompts in the "Website & Documentation Suggestion" form, and submit!

This approach has several advantages:

- Lets people know you’re working on it
- Gives the core team and the community a chance to give feedback before you do any work
- Helps to ensure your contribution will be accepted and successfully merged in

#### Work on an Existing Issue

If you are working on a previously posted issue, please comment on that issue and let us know you are working on it. That prevents duplicating efforts or having your changes rejected because someone else is working on it.

#### Post a New Issue

Post a new issue that you found and would like to tackle. You can also post a new issue and leave it for someoen else to take on.

### 2. Start Work on Your Contribution

Now that you've identified your contribution, your next step will be to use GitHub and a text editor (such as Atom) to make the desired changes. We use GitHub to manage all our work on Quire. If you are new to GitHub, we recommend creating a [new GitHub account](https://github.com/join) and downloading [GitHub Desktop](https://desktop.github.com/). Instructions follow.

**Fork & Clone Your Quire Project from Github**
1. Go to the [quire-docs repository](https://github.com/thegetty/quire-docs) on GitHub.com.
2. Click the "Fork" button at the top right. This creates a parallel version of the project for you to work in.
3. Click the green button that says "Code."
4. Choose the option to "Open with GitHub Desktop." This copies (or clones) the forked repository to your computer.
5. You may be asked how you plan to use this fork. Choose "To contribute to the parent project" and click "Continue."

**Create a New Branch to Work In**
1. In GitHub desktop, make sure you are in the correct repository. At the top right, under "Current Repository," it should say `quire-docs`.
2. Navigate to where it says “Current Branch” in your GitHub Desktop window.
3. Select “new branch” to the right of the Filter box.
4. Name your branch following this branch naming convention: `Type/Issue#/Description` (For example, "Edit/#20/Fix-typo".)
>For Type, the options are: **Edit, Add, Translate.** Issue-# is only needed if this pull request addresses an existing issue. 
5. Make sure it is based on the `main` branch.
6. Click "Publish Branch."

**Open Project File in Text Editor**
1. Open the text editor of your choice. (We suggest using [Atom](atom.io).)
2. Select File > Open in your menu bar.
3. Navigate to your home directory and select your `quire-docs` folder.
4. In your text editor, expand the `content` folder to see the editable markdown files and look for the file you'd like to make your changes in.

**Save Changes in Text Editor**
1. To save changes, hit File > Save or Command-S (Mac) or Control-S (PC).
2. If working on multiple markdown files, make sure to save each file individually.

**Preview Your Changes Live**
1. Pull up your [command line](https://quire.getty.edu/learn/tutorial/#1-work-in-a-command-line-shell) to navigate through your computer files.
2. Use the `cd` command to navigate to your computer's home directory and then use `cd` to navigate into your `quire-docs` folder.
3. Once you are in your `quire-docs` folder, run the following commands: `quire install` followed by `quire preview` when the install is complete.
4. Go to [http://localhost:1313](http://localhost:1313) to preview the project as you work on it.

**Make Commits in GitHub Desktop**
1. At the bottom left, _above_ where it says “Description“, write a short and meaningful name for your commit. You have the option to include a description as well.
2. Press the blue button that says, “Commit to [branch name].”

**Push Changes in GitHub**
1. You will be given the option to "Push origin." Click this button.
2. Now the changes you've made have been successfully saved to your branch on GitHub.

### 3. Submit Your Contribution

Once you've pushed your suggested changes through GitHub Desktop, you will submit it to us for review as a pull request. A pull request says, “Hey, I did something useful for you, want to pull it in and merge it into your project?” It's a chance for Quire’s core team to evaluate the proposed changes made and decide whether to:

- merge them in as-is
- merge them in with changes
- reject them

A pull request doesn’t have to represent finished work. We always recommend opening a pull request early on, so others can watch or give feedback on your progress. You may receive feedback or requests for changes to your pull request from the Quire team before your work can be merged. Answer questions in the pull request comments, make changes and new commits if needed, or suggest alternative solutions if you have them.

**Create a Pull Request in GitHub**
1. Click the blue button that says “Create Pull Request.” This will take you to a pull request template on GitHub.com.
2. Confirm that the branch in the base repository drop-down menu is the `main` branch of the `thegetty/quire-docs` repo. The head repository will be `GitHub-username/quire-docs`. (For example, `quire-user/quire docs`.) The compare branch should be the one you just created.
3. Fill out the template by answering the questions provided.
4. Click the green button that says “Create Pull Request” if all your changes are ready for review. Or click the drop-down arrow and choose “Create Draft Pull Request” if you are still making changes.
5. Once your pull request has been reviewed and approved, you will see your work merged into the Quire documentation and website!!


>**At this point, we hope you feel ready to contribute! But don’t hesitate to [ask for help or clarification](mailto:quire@getty.edu); everyone’s a beginner at first. And thank you again for your interest in making Quire a better tool for all!** 🦄


## Helpful Resources

- [Code of Conduct](https://github.com/thegetty/quire-docs/blob/main/CODE_OF_CONDUCT.md)
- [Website & Documentation Style Guide](https://github.com/thegetty/quire-docs/wiki/Quire-Website-&-Documentation-Style-Guide)
- [GitHub Desktop Documentation](https://docs.github.com/en/desktop)
- [Open Source Guide: “How to Contribute to Open Source”](https://opensource.guide/how-to-contribute/)
- [Website](https://quire.getty.edu)
- [Issue Tracking](https://github.com/thegetty/quire-docs/issues/)
- [Documentation](https://quire.getty.edu/documentation)
- [Community Forum](https://github.com/thegetty/quire/discussions)

**Quire Core Team:**

Greg Albers ([@geealbers](https://github.com/geealbers)), product manager<br />
David Newbury ([@workergnome](https://github.com/workergnome)), product manager<br />
Matthew Hrudka ([@mphstudios](https://github.com/mphstudios)), lead maintainer<br />
Erin Cecele Dunigan ([@Erin-Cecele](https://github.com/Erin-Cecele)), community manager<br />

Contact us at [quire@getty.edu](mailto:quire@getty.edu)

>**All are welcome.** As an open-source community, Quire is committed to providing a safe, welcoming, and inclusive environment for all our community members and those wishing to become involved. Please see our **[Code of Conduct](https://github.com/thegetty/quire/blob/main/CODE_OF_CONDUCT.md)** for more on the expectations and protections we have in place for the community.
