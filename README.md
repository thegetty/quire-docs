# Quire

## About Quire 

Developed by Getty, Quire is a digital publishing tool that can create dynamic publications in a variety of formats, including web, print, and e-book. Quire is an ideal tool for anyone seeking to publish beautiful, scholarly digital books optimized for visual imagery and designed to ensure their content is widely accessible and stable. 

Quire is open source and free to use. View Quire's [3-clause BSD open source license](https://github.com/thegetty/quire/blob/main/LICENSE).  

Please note: Quire v1 is currently in a pre-release phase. Testing and improvements are ongoing.
There are two Quire repositories hosted on GitHub that you can contribute to:

- [**quire**](https://github.com/thegetty/quire): Quire’s primary repository, with the command-line interface and 11ty template packages
- [**quire-starter-default**](https://github.com/thegetty/quire-starter-default) The default starter content for a Quire project 
- [**quire-docs**](https://github.com/thegetty/quire-docs): The Quire website and documentation.

Please see the [README.md](https://github.com/thegetty/quire/blob/main/README.md) in our main repository [wwww.github.com/thegetty/quire](wwww.github.com/thegetty/quire) to learn more about the technical aspects of Quire, participate in the forum, submit bugs, and more.

## Quire-Docs Repository

You are currently in the [**quire-docs**](https://github.com/thegetty/quire-docs) repository. If you are new to Quire, contributing to this repository is an excellent way to get hands-on experience with the tool because the website and docs were actually built using Quire! We try to keep our site updated continuously for clarity and completeness, but it’s not always easy to keep up with the pace of Quire’s development. We invite you to read our [Contributing Guidelines](https://github.com/thegetty/quire-docs/blob/main/CONTRIBUTING.md) and learn how you can help us develop and refine these resources for the community.

There are four main sections to the website:

- [About](https://quire.getty.edu/about/): Learn about what Quire can do, its history, and the team behind the project.
- [Community](https://quire.getty.edu/community/): Connect with other users, see what others are creating with Quire, learn how to get involved.
- [Documentation](https://quire.getty.edu/docs-v1/): Find instructions for how to use Quire from installation to deployment and everything in between. (Currently we have two sets of documentation v1 and v0. The latter is for the legacy version of Quire which will be phased out.)
- [Resources](https://quire.getty.edu/resources/): Get started by taking the Quire tutorial and peruse other helpful tools and resources to increase your Quire skillset.

### Development Notes

This project was last built with the following software versions:

- Quire 0.20.4
- Node 14.17.3 / npm 6.14.13
- Hugo 0.72
- PrinceXML 14.2
- Pandoc 2.14.1

While v0.20.4 of the core Quire default theme was used, a number of customizations were made, including:

- Custom cover/homepage layout
- Use of Getty brand fonts
- Shortcodes for glossary definitions and the community showcase display
- Top navigation with section links and a static, always-open sidebar menu on most pages

Within the theme itself, changes were made to the source/css/variables.scss file. Outside of the theme, customizations can be found in the project’s layouts directory and in static/css/custom.css.

## License

© 2022 J. Paul Getty Trust

The text and images of Quire’s documentation is licensed under a Creative Commons Attribution-NonCommercial 4.0 International License.
