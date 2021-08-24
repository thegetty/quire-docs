# Quire

Developed by Getty, Quire is a new, multiformat publishing tool available for immediate access and use. Quire is in limited beta, © J. Paul Getty Trust, and not yet released as open-source software. **For a free license to use Quire, please complete [this form](http://bit.ly/quire-signup).**

Striving toward becoming a fully open-source project by spring 2022, we encourage contributions from our community members. No matter what level of experience you have, we welcome all contributions, big and small.

There are two Quire repositories hosted on GitHub that you can contribute to:

- [**quire**](https://github.com/thegetty/quire):  Core Quire code including command-line interface, default starter content, and default theme.
- [**quire-docs**](https://github.com/thegetty/quire-docs): Quire website and documentation.

Please see the [README.md](https://github.com/thegetty/quire/blob/main/README.md) in our main repository [wwww.github.com/thegetty/quire](wwww.github.com/thegetty/quire) to learn more about the technical aspects of Quire, participate in the forum, submit bugs, and more.

## Quire-Docs Repository

You are currently in the [**quire-docs**](https://github.com/thegetty/quire-docs) repository. If you are new to Quire, contributing to this repository is an excellent way to get hands-on experience with the tool because the website and docs were actually built using Quire! We try to keep our site updated continuously for clarity and completeness, but it’s not always easy to keep up with the pace of Quire’s development. We invite you to read our [Contributing Guidelines](https://github.com/thegetty/quire-docs/blob/main/CONTRIBUTING.md) and learn how you can help us develop and refine these resources for the community.

There are four main sections to the website:

- [About](https://quire.getty.edu/about/): Learn about what Quire can do, its history, and the team behind the project.
- [Community](https://quire.getty.edu/community/): Connect with other users, see what others are creating with Quire, learn how to get involved.
- [Documentation](https://quire.getty.edu/documentation/): Find instructions for how to use Quire from installation to deployment and everything in between.
- [Learn](https://quire.getty.edu/learn/): Get started by taking the Quire tutorial and peruse other helpful tools and resources to increase your Quire skillset.

### Development Notes

This project was last built with the following software versions:

- Quire 0.19.0
- Node 14.17.3 / npm 6.14.13
- Hugo 0.72
- PrinceXML 14.2
- Pandoc 2.14.1

While v0.19.0 of the core Quire default theme was used, a number of customizations were made, including:

- Custom cover/homepage layout
- Use of Getty brand fonts
- Shortcodes for glossary definitions and the community showcase display
- Top navigation with section links and a static, always-open sidebar menu on most pages

Within the theme itself, changes were made to the source/css/variables.scss file. Outside of the theme, customizations can be found in the project’s layouts directory and in static/css/custom.css.

## License

© 2021 J. Paul Getty Trust

The text and images of Quire’s documentation is licensed under a Creative Commons Attribution-NonCommercial 4.0 International License.
