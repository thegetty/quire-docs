---
title: Use an Existing Quire Project as a Template
weight: 6520
type: essay
online: false
---

Follow the steps below to use GitHub to create a new project based on a preexisting one. This is especially useful for journals and other serial publications.

1. In your Finder (macOS) or File Explorer (Windows) find the project you want to make a new version of and duplicate the entire project folder and give it a new name. (If the original project is not already on your computer, clone a fresh copy from GitHub.)

2. In Terminal (macOS) or PowerShell (Windows) open the new, duplicated project and run these two commands:

    ```
    rm -rf .git
    git init
    ```

    (The first removes the existing git history from the old project, the second reinitializes the project as a fresh git repository.)


3. In GitHub Desktop chose File > Add Local Repository. Navigate to the duplicated project you just created and chose it. When prompted, click the Initialize Git LFS button. (If not prompted, this command should be done in the command line by running `git lfs install` in the project folder.)

4. Once added to GitHub Desktop, you’ll see that all the project files will be listed under Changes and will need to be committed. We recommend committing them all at once with the Summary written simply as “Initial commit" plus the name of the original project you duplicated. For example: “Initial commit from my-original-project-name." Other more detailed information can be added in the Description field.

5. Click Publish repository in the upper right to send the files to github.com.

6. Run `quire install` in the project to install the necessary software dependencies before previewing and getting to work adding your new content.
