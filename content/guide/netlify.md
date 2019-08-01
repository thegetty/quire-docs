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


## Netlify Build Configuration

Once you accounts are connected you will asked to provide a `Production` directory or `Build` directory. Instead of doing this, which is fine, my recommendation is heading back to your repository and creating a `netlify.toml` file which will run commands from the root directory. These commands are set in the scripts object in the your `package.json` file. Currently the `package.json` file is not in the root directory so make a copy of the one in your theme folder. In quire-starter-theme the path is `themes/quire-starter-theme/package.json`. 

Now add this to your `package.json` in the root directory add this to `scripts` object:

```json
"scripts": {
 "build": "cd themes/quire-starter-theme && webpack --config webpack/webpack.config.prod.js && cd ../../ && hugo --minify --config config.yml,config/site.yml"
}
```

This is the command we are running to build the Quire site in Netlify via our configuration below.

```toml
# netlify.toml

[build]
publish = "public"
command = "npm run build"

[context.production.environment]
HUGO_VERSION = "0.55.4"
HUGO_ENV = "production"
HUGO_ENABLEGITINFO = "true"
# NPM_VERSION = "6.4.1"

[context.split1]
command = "npm run build"

[context.split1.environment]
HUGO_VERSION = "0.55.4"
HUGO_ENV = "production"
# NPM_VERSION = "6.4.1"

[context.deploy-preview]
command = "npm run build"

[context.deploy-preview.environment]
HUGO_VERSION = "0.55.4"
# NPM_VERSION = "6.4.1"

[context.branch-deploy]
command = "npm run build"

[context.branch-deploy.environment]
HUGO_VERSION = "0.55.4"
# NPM_VERSION = "6.4.1"

[context.next.environment]
HUGO_ENABLEGITINFO = "true"
```

