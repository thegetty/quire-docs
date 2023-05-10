---
title: Troubleshooting
weight: 6445
type: page
abstract: "Solutions to common problems"
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