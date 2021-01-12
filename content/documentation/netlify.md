---
title: Netlify for Quire
weight: 5600
type: essay
abstract: "Recommended platform for deploying your website"
---

## Netlify

{{< q-figure id="netlify-logo" >}}

> Netlify is a web developer platform that multiplies productivity.
>
> By unifying the elements of the modern decoupled web, from local development to advanced edge logic, Netlify enables a 10x faster path to much more performant, secure, and scalable websites and apps. Our bet on the JAMstack is quickly coming true.
>
> The web is rapidly changing away from monolithic to decoupled apps, and web developers are storming ahead with more power than ever. Netlify is built to cater to that movement, and in just a few years we’ve on-boarded more than half a million businesses and developers, and are building and serving millions of web projects daily around the globe.

For Quire, Netlify can automatically generate a preview site to share with your collaborators every time you push changes to your project, and can also use it to host your final project when it's ready to publish.

## Steps to deploy to Netlify

- Add your code to Github repository
- Next sign up to Netlify here -> https://app.netlify.com/signup
- Connect your Netlify account to your Github or Gitlab account


### Netlify Build Configuration

Once your accounts are connected you will asked to provide a `Production` directory or `Build` directory. Instead of doing this, which is fine, my recommendation is heading back to your repository and creating a `netlify.toml` file which will run commands from the root directory. These commands are set in the scripts block in the your `package.json` file.  In quire-starter-theme the path is `themes/quire-starter-theme/package.json`. Quire comes with a Netlify build command already, but as you will read below it is very easy to add or modify your own.

```json
"scripts": {
 "build:netlify": "webpack --config webpack/webpack.config.prod.js && cd ../../ && hugo --minify --config config.yml,config/site.yml"
}
```

This is the command we are running to build the Quire site in Netlify via our configuration below and comes installed with Quire. It first runs Webpack to build our assets, CSS, JS. Then it runs the Hugo command to build the static.

Now let's create the `netlify.toml` in the root directory. Copy and paste this text below into a new file called `netlfy.toml` and put it in the root directory of your project.

```toml
# netlify.toml
# The prefix is the path to your package.json file in your theme
# Change the path of your theme if it is not themes/quire-starter-theme.

# This section is the production configuration and is all you need to deploy

[build]
# Base is the path to your themes package.json file.
base = "themes/quire-starter-theme"
command = "npm run build:netlify"

[context.production.environment]
HUGO_VERSION = "0.55.5"
HUGO_ENV = "production"
HUGO_ENABLEGITINFO = "true"

# These next configurations are optional

# This section is the pull request configuration
[context.deploy-preview]
# Base is the path to your themes package.json file.
base = "themes/quire-starter-theme"
command = "npm run build:netlify"

[context.deploy-preview.environment]
HUGO_VERSION = "0.55.5"

# This section is the branch configuration
[context.branch-deploy]
# Base is the path to your themes package.json file.
base = "themes/quire-starter-theme"
command = "npm run build:netlify"

[context.branch-deploy.environment]
HUGO_VERSION = "0.55.5"

# This section is the branch configuration but targets a specific branch and also runs a different command
[context.stage]
# Base is the path to your themes package.json file.
base = "themes/quire-starter-theme"
command = "npm run build:stage"

[context.stage.environment]
HUGO_VERSION = "0.55.5"
```

### Alter or add another command

When we run the build process on Netlify we may want to add flags to our Hugo command to make Hugo behave differently, either on a specific branch or in the preview deploy.
Let's say, for example, we want to add the flag to build drafts for a branch and not for production.
We have the command `npm run build:stage` above, let's use that.

Our scripts block will now be

```json
"scripts": {
"build": "webpack --config webpack/webpack.config.prod.js && cd ../../ && hugo --minify --config config.yml,config/site.yml",
"build:stage": "webpack --config webpack/webpack.config.prod.js && cd ../../ && hugo --minify -D"
}
```

We are able to add the `-D` or `--buildDrafts` to the Hugo command to build drafts on our stage branch in our repository but not in master which can consider live or production.

Adding extra commands is a great way to preview code!

## Domains

There 3 ways of connecting a domain to Netlify

- Purchase your domain through Netlify and run your DNS through their interface
- Add a proxy to your webserver
- Add an alias CNAME to your DNS to point to your Netlify domain

Any of these will work, it is more specific to what you want your domain to be.

## Private Submodules

Once you have a proper build and deploy on Netlify, you may need to have a private submodule to save content or images that you may not want to expose.

If you have a private submodule and need to tie it together with your project, there's a few steps you'll need to follow to get it linked and working.

If you're new to submodules, these are some useful guides:

- https://github.blog/2016-02-01-working-with-submodules/
- https://git-scm.com/book/en/v2/Git-Tools-Submodules

Once you have it working locally, you'll need to push it to Netlify.

- Go to https://www.netlify.com/support/ and fill out a ticket
- Request an SSH key for your private submodule
- Wait until they send you an SSH key
- Go to your deploy settings in your repo, on GitHub it's https://github.com/user/repo/settings/keys (swap user and repo with your account or org and the respective private submodule repo)
- Click 'Add deploy key', add name to save it as and paste your SSH key from Netlify

Once that's all in place redeploy and you should have your private submodule linking correctly.  Go back to your Netlify deploy and trigger a redeploy.

## Netlify and Git LFS

If you are using [Git Large File Storage (LFS)](https://git-lfs.github.com/) to manage large files in your GitHub or GitLab repository, you will need to set two environment variables in the Netlify deploy settings for your site.

In Netlify, go to Site Settings > Build & Deploy > Environment. Click “Edit variables”, add these two variables, and click save:

| Key | Value |
| --- | ----- |
| GIT_LFS_ENABLED | true |
| GIT_LFS_FETCH_INCLUDE | \*.jpeg,\*.jpg,\*.png,\*.epub,\*.mobi,\*.pdf |

Modify the list of file types for GIT_LFS_FETCH_INCLUDE depending on what files you’ve previously chosen to have managed by Git LFS when you originally set it up in your repository. If you’re not sure, check your repository’s `.gitattributes` file.

The settings will take effect on your next site deploy.

If they are not set, or set improperly, you will find that certain images may not show up on your site, and download files will not be available, or will download incompletely.

*As an alternative, Netlify also offers it’s own Large Media storage option, which you can read about at [https://docs.netlify.com/large-media/overview/](https://docs.netlify.com/large-media/overview/).*