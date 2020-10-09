---
title: Contributor Guidelines
weight: 2501
type: essay
menu: false
toc: false
---
## Introduction

Thank you for your interest in contributing to Quire! The following Contributor Guidelines will ensure streamlined and effective communication, and will help the Quire team develop and improve Quire in a timely and efficient manner. Thank you for taking the time to read through the following considerations.

### Useful Contributions

As an open-source project we encourage contributions from our community members. No matter what level of experience you have, we welcome all contributions, big and small.

There are many ways to contribute from adding to the code, submitting bug reports and improving the documentation to participating in our forum, becoming a Quire ambassador, and attending or leading workshops, events, and training sessions.

<div class="action-button">

[Get Involved](/community/join-us/)
</div>

### Important Things to Remember

Always check the **[documentation](https://quire/getty.edu/documentation)** first.

Refer to the **[forum](/community/forum/)** for support, to ask and answer questions, and for general information.

For bugs, please refer to **[GitHub Issues](https://github.com/gettypubs/quire/issues)**.

More TK

### Ground Rules

Always be friendly and patient. Be welcoming, considerate, and respectful. Be careful with the words you choose. Try to understand why we disagree. Do not make offensive comments, insults, or jokes. Do not deliberately threaten or intimidate. Do not use sexually explicit or violent language or images. Harassment will not be tolerated.  For more guidelines on appropriate behavior, please see our [Code of Conduct](https://quire/getty.edu/community/code-of-conduct).

-----------

### Responsibilities (**Text below is placeholder text**)

- Ensure cross-platform compatibility for every change that is accepted. Windows, Mac, Debian & Ubuntu Linux.
- Ensure that code that goes into core meets all requirements in this checklist: https://gist.github.com/audreyr/4feef90445b9680475f2
- Create issues for any major changes and enhancements that you wish to make. Discuss things transparently and get community feedback.
- Don't add any classes to the codebase unless absolutely needed. Err on the side of using functions.
- Keep feature versions as small as possible, preferably one new feature per version.
- Be welcoming to newcomers and encourage diverse new contributors from all backgrounds.

### Your First Contribution (**Text below is placeholder text**)

Unsure where to begin contributing to Quire? You can start by looking through these beginner and help-wanted issues:

Beginner issues - issues which should only require a few lines of code, and a test or two.

Help wanted issues - issues which should be a bit more involved than beginner issues.

Both issue lists are sorted by total number of comments. While not perfect, number of comments is a reasonable proxy for impact a given change will have.

(Bonus points: Add a link to a resource for people who have never contributed to open source before.)

Here are a couple of friendly tutorials you can include: http://makeapullrequest.com/ and http://www.firsttimersonly.com/

Working on your first Pull Request? You can learn how from this free series, How to Contribute to an Open Source Project on GitHub.

At this point, you're ready to make your changes! Feel free to ask for help; everyone is a beginner at first 😸

If a maintainer asks you to "rebase" your PR, they're saying that a lot of code has changed, and that you need to update your branch so it's easier to merge.

### Getting started (**Text below is placeholder text**)

Give them a quick walkthrough of how to submit a contribution. How you write this is up to you, but some things you may want to include:

Let them know if they need to sign a CLA, agree to a DCO, or get any other legal stuff out of the way
If tests are required for contributions, let them know, and explain how to run the tests
If you use anything other than GitHub to manage issues (ex. JIRA or Trac), let them know which tools they’ll need to contribute
For something that is bigger than a one or two line fix:

Create your own fork of the code
Do the changes in your fork
If you like the change and think the project could use it: * Be sure you have followed the code style for the project. * Sign the Contributor License Agreement, CLA, with the jQuery Foundation. * Note the jQuery Foundation Code of Conduct. * Send a pull request indicating that you have a CLA on file.
[source: Requirejs] Need more inspiration? [1] Active Admin [2] Node.js [3] Ember.js

If you have a different process for small or "obvious" fixes, let them know.
Small contributions such as fixing spelling errors, where the content is small enough to not be considered intellectual property, can be submitted by a contributor as a patch, without a CLA.

As a rule of thumb, changes are obvious fixes if they do not introduce any new functionality or creative thinking. As long as the change does not affect functionality, some likely examples include the following:

Spelling / grammar fixes
Typo correction, white space and formatting changes
Comment clean up
Bug fixes that change default return values or error codes stored in constants
Adding logging messages or debugging output
Changes to ‘metadata’ files like Gemfile, .gitignore, build scripts, etc.
Moving source files from one directory or package to another
[source: Chef] Need more inspiration? [1] Puppet

How to report a bug
Explain security disclosures first!
At bare minimum, include this sentence:

If you find a security vulnerability, do NOT open an issue. Email XXXX instead.

If you don’t want to use your personal contact information, set up a “security@” email address. Larger projects might have more formal processes for disclosing security, including encrypted communication. (Disclosure: I am not a security expert.)

Any security issues should be submitted directly to security@travis-ci.org In order to determine whether you are dealing with a security issue, ask yourself these two questions:

Can I access something that's not mine, or something I shouldn't have access to?
Can I disable something for other people?
If the answer to either of those two questions are "yes", then you're probably dealing with a security issue. Note that even if you answer "no" to both questions, you may still be dealing with a security issue, so if you're unsure, just email us at security@travis-ci.org.

[source: Travis CI] Need more inspiration? [1] Celery [2] Express.js

Tell your contributors how to file a bug report.
You can even include a template so people can just copy-paste (again, less work for you).

When filing an issue, make sure to answer these five questions:

What version of Go are you using (go version)?
What operating system and processor architecture are you using?
What did you do?
What did you expect to see?
What did you see instead? General questions should go to the golang-nuts mailing list instead of the issue tracker. The gophers there will answer or ask you to file an issue if you've tripped over a bug.
[source: Go] Need more inspiration? [1] Celery [2] Atom (includes template)

How to suggest a feature or enhancement
If you have a particular roadmap, goals, or philosophy for development, share it here.
This information will give contributors context before they make suggestions that may not align with the project’s needs.

The Express philosophy is to provide small, robust tooling for HTTP servers, making it a great solution for single page applications, web sites, hybrids, or public HTTP APIs.

Express does not force you to use any specific ORM or template engine. With support for over 14 template engines via Consolidate.js, you can quickly craft your perfect framework.

[source: Express] Need more inspiration? Active Admin

Explain your desired process for suggesting a feature.
If there is back-and-forth or signoff required, say so. Ask them to scope the feature, thinking through why it’s needed and how it might work.

If you find yourself wishing for a feature that doesn't exist in Elasticsearch, you are probably not alone. There are bound to be others out there with similar needs. Many of the features that Elasticsearch has today have been added because our users saw the need. Open an issue on our issues list on GitHub which describes the feature you would like to see, why you need it, and how it should work.

[source: Elasticsearch] Need more inspiration? [1] Hoodie [2] Ember.js

Code review process
Explain how a contribution gets accepted after it’s been submitted.
Who reviews it? Who needs to sign off before it’s accepted? When should a contributor expect to hear from you? How can contributors get commit access, if at all?

The core team looks at Pull Requests on a regular basis in a weekly triage meeting that we hold in a public Google Hangout. The hangout is announced in the weekly status updates that are sent to the puppet-dev list. Notes are posted to the Puppet Community community-triage repo and include a link to a YouTube recording of the hangout. After feedback has been given we expect responses within two weeks. After two weeks we may close the pull request if it isn't showing any activity.

[source: Puppet] Need more inspiration? [1] Meteor [2] Express.js

Community
If there are other channels you use besides GitHub to discuss contributions, mention them here. You can also list the author, maintainers, and/or contributors here, or set expectations for response time.

You can chat with the core team on https://gitter.im/cucumber/cucumber. We try to have office hours on Fridays.

[source: cucumber-ruby] Need more inspiration? [1] Chef [2] Cookiecutter

BONUS: Code, commit message and labeling conventions
These sections are not necessary, but can help streamline the contributions you receive.

Explain your preferred style for code, if you have any.
Need inspiration? [1] Requirejs [2] Elasticsearch

Explain if you use any commit message conventions.
Need inspiration? [1] Angular [2] Node.js

Explain if you use any labeling conventions for issues.
Need inspiration? [1] StandardIssueLabels [2] Atom
