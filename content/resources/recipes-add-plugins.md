---
label: RECIPE
title: Add Markdown Functionality with Plugins
weight: 7355
type: page
online: false
---

Quire uses a software library called [markdown-it](https://github.com/markdown-it/markdown-it) to process markdown into HTML, and it is controlled in the `_plugins/markdown/index.js` file of your project. Along with controlling Quire's existing Markdown functionality, you can also use this file to add new functionality by adding new markdown-it plugins.

Find [a complete list of available markdown-it plugins in the Node Package Manager (npm) registry](https://www.npmjs.com/search?q=keywords:markdown-it-plugin). The npm page for each plugin will explain how it works. 

There are packages like [markdown-it-sup](https://www.npmjs.com/package/markdown-it-sup) which allows you to format superscripts like `from my 1^st^ to 50^th^ birthday` or [markdown-it-sub](https://www.npmjs.com/package/markdown-it-sub) which allows you to format subscripts like `(H~2~O~3~W)`. Without these plugins the best alternative is using HTML tags which can make Markdown noisy and harder to read. For example, the HTML alternative for subscript is `(H<sub>2</sub>0<sub>3</sub>W)`. 

When you find a plugin you want to use, follow the instructions below to install it.

## Installing a markdown-it plugin into your Quire project

1. Download the plugin into your project by running `npm install plugin-npm-name` from your command-line shell while inside your project, where `plugin-npm-name` matches its name in the npm registry.

    ```
    npm install markdown-it-sup
    ```

2. Open the `_plugins/markdown/index.js` file, and add the plugin to the list of constants at the top of the page following the pattern `const pluginName = require('plugin-npm-name')` where `pluginName` can be anything you'd like, as long as it is in snake case. Snake case means that the first word is lowercase and all consecutive words have an uppercase first letter. The `plugin-npm-name` is the name of the plugin from NPM.

    ```js
    const superscriptPlugin = require('markdown-it-sup')
    ```

3. In that same file search or scroll down to find the `markdownLibrary` constant where you'll see a list of plugins being added with `use()`. Add yours to the list following the pattern `.use(pluginName)` where `pluginName` matches the one you created in step 2.

    ```js
    .use(superscriptPlugin)
    ```

You should now be able to use the plugin's functionality in your project's Markdown and YAML files.

### Variations

Please note, some plugins may require a variation to the `const` pattern. For instance [markdown-it-fancy-lists](https://www.npmjs.com/package/markdown-it-fancy-lists), which allows you to create lists with alternate indicators like `a, b, c` and `i, ii, iii`, expects `const fancyListPlugin = require('markdown-it-fancy-lists').markdownItFancyListPlugin;` with the `.markdownItFancyListPlugin` appended at the end of the line. 

These variations can be found on the main npm page. We recommend trying the pattern outlined above first, and consulting the npm page if the plugin does not function as expected. Please note, not all plugins are compatible with Quire. 


