---
title: Troubleshooting
weight: 6410
type: page
abstract: "Find solutions to common problems"
---

## Installation

### Installing Quire on macOS

If you receive an error message that says "Error: EACCES: permission denied", this is related to the ownership and **permissions settings** for the global node_modules directories that are installed with Quire. To fix this issue, run the following command:

```text
sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
```

## Quire Commands

### Running `quire build` on Windows 10

There is currently an issue with `quire build` on Windows 10. It is with one of Quire external dependencies and we are awaiting a fix. In the meantime, there is a workaround. In the `node_modules/@11ty/eleventy-plugin-vite/EleventyVite.js` file in your project, add `await fsp.rm(tmp, { recursive: true, force: true });` between lines 51 and 52. And then on line 63 of the same file, change `path.sep` to `/`. Save the changes and `quire build` should work as expected.

### Running `quire new` on macOS

If you're a Mac user and receive an error message that references "Developer/CommandLineTools" that means you need to install Apple Xcode, a set of developer tools for your Mac. Run the command `xcode-select --install`. It may take a few minutes to install. Once install is complete, try creating a new project again. 

## Other Issues

### Working with Very Large Projects

The following error has been seen in projects with a lot of individual Markdown files, a lot of large images, or a lot of shortcode usage. It is caused by node.js running out of memory while trying to process the project files.

```
FATAL ERROR: Ineffective mark-compacts near heap limit Allocation failed - JavaScript heap out of memory
```

The fix is to increase the amount of memory allocated to Node.js following these steps:

1. Determine the amount of memory on your machine. On macOS, go to the Apple () menu and select "About This Mac" and look for Memory. On Windows, go to "About your PC" and look for Installed RAM.
2. Convert the amount you want to allocate from GB to MB by multiplying the GB number by 1024. You want to allocate as much as you can to Node while leaving a modest portion for other processes. If you have 16GB of memory try allocating 12GB to Node, which would be 12288.
3. Open your command line shell, change directory (`cd`) into your project, and enter the following line to set the value temporarily in your project using the MB amount from the step above.

    macOS:

    ```
    export NODE_OPTIONS=--max-old-space-size=12288
    ```

    Windows:

    ```
    $env:NODE_OPTIONS = '--max-old-space-size=12288'
    ```

4. Run `quire preview`

If the error persists try allocating more memory by repeating Step 3 with a larger number. Up to half a GB less than your total memory.

**Note:** setting the `NODE_OPTIONS` in this way will only persist as long as you have the same command-line session running. You will need to use the above `export`/`$env` command each time you start a close and re-open the command-line shell to work on your large project.