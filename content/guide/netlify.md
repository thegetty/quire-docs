---
title: Netlify for Quire
weight: 215
type: essay
---

## Netlify 

{{< q-figure id="netlify-logo" >}}

Netlify is a web developer platform that multiplies productivity.

By unifying the elements of the modern decoupled web, from local development to advanced edge logic, Netlify enables a 10x faster path to much more performant, secure, and scalable websites and apps.

Our bet on the JAMstack is quickly coming true. The web is rapidly changing away from monolithic to decoupled apps, and web developers are storming ahead with more power than ever. Netlify is built to cater to that movement, and in just a few years we’ve on-boarded more than half a million businesses and developers, and are building and serving millions of web projects daily around the globe.

## Steps to deploy to Netlify

- As stated in the previous page add your code to Github repositiory
- Next sign up to Netlify here -> https://app.netlify.com/signup
- Connect your Netlify account to your Github or Gitlab account


### Netlify Build Configuration

Once you accounts are connected you will asked to provide a `Production` directory or `Build` directory. Instead of doing this, which is fine, my recommendation is heading back to your repository and creating a `netlify.toml` file which will run commands from the root directory. These commands are set in the scripts object in the your `package.json` file. Currently the `package.json` file is not in the root directory so make a copy of the one in your theme folder. In quire-starter-theme the path is `themes/quire-starter-theme/package.json`. 

Now add this to your `package.json` in the root directory add this to `scripts` object:

```json
"scripts": {
 "build": "cd themes/quire-starter-theme && webpack --config webpack/webpack.config.prod.js && cd ../../ && hugo --minify --config config.yml,config/site.yml"
}
```

This is the command we are running to build the Quire site in Netlify via our configuration below. It first runs Webpack to build our assets, CSS, JS. Then it runs the Hugo command to build the static.  

```toml
# netlify.toml

# This section is the production configuration and is all you need to deploy
[build]
publish = "public"
command = "npm run build"

[context.production.environment]
HUGO_VERSION = "0.55.4"
HUGO_ENV = "production"
HUGO_ENABLEGITINFO = "true"

# These next configurations are optional

# This section is the pull request configuration
[context.deploy-preview]
command = "npm run build"

[context.deploy-preview.environment]
HUGO_VERSION = "0.55.4"

# This section is the branch configuration
[context.branch-deploy]
command = "npm run build"

[context.branch-deploy.environment]
HUGO_VERSION = "0.55.4"

# This section is the branch configuration but targets a specific branch and also runs a different command
[context.stage]
command = "npm run build:stage"

[context.stage.environment]
HUGO_VERSION = "0.55.5"
```

### Alteraing the Hugo command

When we run the build process on Netlify we may want to add flags to our Hugo command to make Hugo behave differntly either on a specific branch or in the preview deploy.
Let say for example we want to add the flag to build drafts for a branch and not for production. 
We have the command `npm run build:stage` above, let's use that. 

Our scripts block will now be

```json
"scripts": {
 "build": "cd themes/quire-starter-theme && webpack --config webpack/webpack.config.prod.js && cd ../../ && hugo --minify --config config.yml,config/site.yml",
 "build:stage": "cd themes/quire-starter-theme && webpack --config webpack/webpack.config.prod.js && cd ../../ && hugo --minify -D"
}
```

We are able to add the `-D` or `--buildDrafts` to the Hugo command to build drafts on our stage branch in our repository but not in master which can consider live or production.

Adding extra commands is a great way to preview code!


## Domains

There 3 ways of connecting a domain to Netlify

- Purchase your domain through Netlify and run your DNS through there interface
- Add a proxy to your webserver 
- Add an alias CNAME to your DNS to point to your Netlify domain

Any of these will work, it is more specific to want you want your domain to be

