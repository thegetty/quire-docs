# Quire Contributor Guidelines

**Thank you for your interest in contributing to Quire!**

Striving toward becoming a fully open-source project, we encourage contributions from our community members. No matter what level of experience you have, we welcome all contributions, big and small.

There are many ways to contribute from adding to the code, submitting bug reports and improving the documentation to participating in our forum, becoming a Quire ambassador, and attending or leading workshops, events, and training sessions.

The following Contributor Guidelines will ensure streamlined and effective communication, and will help the Quire team develop and improve Quire in a timely and efficient manner. Thank you for taking the time to read through the following considerations.

**CALLING ALL FIRST-TIMERS!** -- TK

## Important Resources

- [Issue Tracking](https://github.com/gettypubs/quire/issues/)
- [Documentation](https://gettypubs.github.io/quire/documentation/)
- [Forum](https://gettypubs.github.io/quire/community/forum/)

Contact us at [quire@getty.edu](mailto:quire@getty.edu)

**All are welcome.** As an open-source community, Quire is committed to providing a safe, welcoming, transparent, and inclusive environment for all our community members and those wishing to become involved. Please see our **[Code of Conduct](https://github.com/gettypubs/quire/blob/master/CODE_OF_CONDUCT.md)** for more on the expecations and protections for our community members.

## Quire Code Repositories

There are four repositories hosted on GitHub that make up Quire, which is currently in closed beta. Please [sign-up for access](https://forms.gle/m1fgZu5BHKhddMrW7).

- [**quire-cli**](https://github.com/gettypubs/quire-cli): The command-line interface for Quire. Written in JavaScript, it is the heart of Quire, chaining together its various parts into unified commands.
- [**quire-starter-theme**](https://github.com/gettypubs/quire-starter-theme): The theme that is included when starting a new Quire project with the `quire new` command. It is designed to broadly cover a full range of use-cases and to demonstrate the range of Quire content model. The theme is where all the page templates and layout logic exist. Quire is built on [Hugo](https://gohugo.io/).
- [**quire-starter**](https://github.com/gettypubs/quire-starter): A starter content repository used as placeholder content when starting a new Quire project with the `quire new` command. It comes with some pre-defined example content and pages with which to get started.
- [**quire**](https://github.com/gettypubs/quire): The Quire website, and the central location for issues and discussion forum posts.

## Identify a Contribution to Make

**The first step to any contribution** is to post or comment [on our issue tracker](https://github.com/gettypubs/quire/issues/) about it.

Find the existing relevant issue, or if it’s a new suggestion or bug, create an issue for it. In your comments, briefly describe your proposed solution and say whether you may need help with any aspect of it. This approach has several advantages:

- Lets people know you’re working on it
- Gives the maintainers and community a chance to give feedback before you do any work
- Helps to ensure your contribution will be accepted and successfully merged in

All Quire issues should be posted to, and are tracked through, our central https://github.com/gettypubs/quire repository. Please refer there even if the issue is more specifically about one of Quire’s other repositories.

**The second step to any contribution**, once you’ve identified what you’d like to contribute, is to start work on it and prepare to submit. Read our [submission guidelines](#submit-your-contribution) below.

### Fix a Bug

Whether you’ve found a new bug and a way to fix it, or would like to help us to tackle bugs that have already been identified, thank you!

- [Post a new bug](https://github.com/gettypubs/quire/issues/new)
- [Find an existing bug to work on](https://github.com/gettypubs/quire/issues?q=is%3Aissue+is%3Aopen+label%3Abug)

### Improve the Documentation

The Quire documentation is continuously being updated for clarity and completeness, but it’s not always easy to keep up with the pace of Quire’s development!

If there’s a section you think it missing or could be improved, we’d love for your help. And the documentation is itself a Quire site, so it should be familiar to work in.

- [Propose a new section or edit](https://github.com/gettypubs/quire/issues/new)
- [Find an existing issue](https://github.com/gettypubs/quire/issues)
- Read the Quire Documentation Style Guide -- TK

### Translate the Documentation

The Quire community is global and we hope to be able to continue to expand access to Quire, including to non-English speakers. Though we haven’t yet done any translation work on any of the documentation or materials, if that’s something you’re interested in doing, we’d love to talk to you.

- [Volunteer to do some translation](https://github.com/gettypubs/quire/issues/new)

### Write an Article

We’re always interested in adding articles about specific aspects of working in Quire to our Learn knowledge base. Maybe you have some tips on modifying shortcodes, or styling is CSS in the custom.css. Chances are the community would love to read about it.

- [Share your article idea](https://github.com/gettypubs/quire/issues/new)

*And if you need help getting your article converted from it’s current format into Markdown and onto the Quire website, we’re happy to guide you through that process.*

### Develop a New Feature or Theme

In Quire, themes contain all of a Quire publication’s key features in templates, shortcodes, styles and scripts. Themes can be complete packages of base styles and features, like [Quire’s starter theme](https://github.com/gettypubs/quire-starter-theme), or can be smaller packages of just one or more features to be layered on top of a base theme.

So, when creating a new feature of some kind, you’ll be looking to do so either within the Quire starter theme, or as a standalone theme, which other Quire users can add to their projects as they’d like.

If you’re interested in it being added to the core Quire starter theme, keep in mind some of the questions the maintainers and community will be asking of it:

- Does this feature add something new that would be useful to a broad section of Quire’s user base?
- Does this feature positively effect Quire’s primary tenants of producing publications optimized for discoverability, longevity, beauty and accessibility?
- Does this feature integrate seamlessly in Quire’s current architecture and will it be reasonable to maintain?

Even if you plan on developing your custom theme/feature independently and offering it to the Quire community as an add on, we highly recommend posting about it on the Quire issue tracker. This lets people know what you’re working on, gives them a chance to offer to help, and can bring you valuable feedback and exposure for your work.

- [View the current roadmap]((https://gettypubs.github.io/quire/documentation/))
- Read the Quire Technical Style Guide -- TK
- [Post your feature idea](https://github.com/gettypubs/quire/issues/new)

Quire is very extensible and we’re eager to see more development work come from you, our community, as you create and customize your own publications in ways that can then be shared back. Quire is in the early stages of defining what this kind of contribution will work, please don’t hesitate to [email us](mailto:quire@getty.edu) with your questions or ideas.

## Submit Your Contribution

Once you’ve identified your contribution on our issues board (either by submitting a new issue, or commenting on an existing one), you’ll next work on it and prepare to submit it to us as a pull request.



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

