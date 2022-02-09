---
title: Sample Quire Workflow
weight: 6600
type: page
abstract:  "An example of the Getty Publications workflow for Quire books"
---

Below we outline the general workflow Getty Publications follows when creating [Quire books](https://www.getty.edu/publications/digital/digitalpubs.html). We understand that many organizations have smaller staff but we hope this documentation of our internal process can provide insight and serve as a starting point for developing your organization's Quire workflow.

## Project Roles

| Role | Description |
| -- | -- |
| **Author(s)** | writes the content that comprises a manuscript |
| **Project editor** | project manages and oversees concept and structure of a publication |
| **Digital team** | converts manuscript into Quire publication using GitHub and a text editor, also oversees technical customizations |
| **Copy editor** | corrects grammatical, factual, and stylistic errors in the text |
| **Proofreader** | checks for formatting errors and inconsistencies |
| **Production** | manages the creation of the physical publication, and some multiformat design features |

*Note: The project editor and copy editor have a basic understanding of Quire and GitHub, while the digital team has more advanced and specialized technical knowledge.*

## Pre-transmittal

*This phase of the publishing process precedes the transmittal of the manuscript from editorial to the digital team.*

- The **authors** submit the manuscript as Word files to the **project editor**.

- The manuscript undergoes editorial review and peer review before being sent back to the **authors**. The authors return their revised manuscript to the **project editor**.

- The **project editor** meets with the **digital team** to review content and begin discussing the form the Quire publication will take. Three things are covered:

    1. Any special tagging that needs to be done to the files to ensure a clear conversion from a Word document into a [Markdown](/documentation/fundamentals/#markdown-basics) file. This helps the text-editing process run smoothly and efficiently.

    2. Special requirements such as the use of videos, pop-ups, IIIF images, etc.

    3. The Content model of the book is reviewed to identify unique attributes or places where the pattern of the book diverges from the default. Quire is built to look for patterns so this is a critical step that will inform the data structuring of the publication and YAML formatting.

- A prototype is created to work through the project structure and any complex needs or concepts.

- The **project editor** gives the **copy editor** a memo outlining the tagging instructions. The **copy editor** reviews the manuscript, queries the **authors** and incorporates their changes, and “tags” the manuscript.

<div class="box tip">

- See our recommended [*Manuscript Prep*](/learn/manuscript-prep/) for information on how to prepare Word documents for a smooth conversion into Markdown.

</div>

## Transmittal & First Pages

-   Images and manuscript text come together in a final package that is transmitted from the **project editor** to the **digital team** along with a memo outlining important information about the publication. This marks the official hand-off of the publication from editorial and begins the Quire conversion process.

-   The **digital team** creates a repository for the project in GitHub.

-   The **digital team** uses Pandoc to convert the manuscript Word files into Markdown files. See our [Pandoc instructions](/documentation/fundamentals/#microsoft-word-to-markdown-conversion) in the Quire documentation for more information about this process.

-   The **digital team** uses [GitHub Desktop](/documentation/github/) to clone the project repository and create a `first-pages` branch. This marks the beginning of *first pages* (in other words, the first digital draft of the project).

-   The **digital team** uses a text editor to open the project and create a [publication outline](/documentation/getting-started/#create-a-publication-outline) with placeholder Markdown files and landing pages structured according to the publication's Table of Contents. The converted Markdown is then added to the corresponding content files.

-   The **digital team** creates the publication's data files (`publication.yml`, `figures.yml`, `references.yml`, etc.) and cleans up YAML formatting on individual Markdown files.

-   The **digital team** processes the publication images and creates a [git submodule](https://github.blog/2016-02-01-working-with-submodules/) The submodule creates a private repository for third-party assets. It is only required when the main project is a public repository.

-   Once the submodule is ready, images can be placed in the Markdown files using the figure shortcode. Other [shortcodes](/documentation/page-content/#use-shortcodes-to-add-features) are added where necessary.

<div class="box tip">

- See our [*Text-Editing Guide*](/learn/text-editing/) for the steps we follow to add content to a Quire project via text editor.

</div>

-   Any additional changes or customizations to the *first pages* version of the publication can either be made in the `first-pages` branch or in task-specific branches. Task-specific branches should always be reviewed before being merged into the `first-pages` branch. The review process allows for a second set of eyes on the project to catch any potential errors. It’s helpful if the person reviewing has a good understanding of Quire and GitHub, but it’s not required. Changes can be merged once they have been approved.

*Changes are not merged into the `master` branch until the very end of the publication process.*

-   Once all the publication content and data is added, formatting and customization are complete, and all ancillary branches are merged into the `first-pages` branch, the project is output for review. The **digital team** deploys a preview version of the website via Netlify and sends the URL, PDF, and hard copies of the publication to the **project editor**.

*Preview sites are always marked with an “uncorrected proof” banner.*

-   These files are then sent to the **proofreader** and **authors** for review.

-   The **project editor** collates all corrections in a master hard-copy set that will be entered into GitHub in the *second pages* phase.

## Second Pages

-   The **digital team** creates a `second-pages` branch in GitHub based on the `first-pages` branch. Additional task- or user-specific branches should be made from, and therefore merged into, the `second-pages` branch.

-   Any straightforward changes are entered in GitHub by either the **project editor** or **copy editor**. A printout of the manuscript with any complicated or outstanding edits marked with Post-Its and a memo outlining website issues are sent to the **digital team**.

-   The **digital team** tackles these edits in Github. Anything that cannot be immediately resolved is added to the repository’s [issue tracker](https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issues) for more thorough review and problem-solving.

-   Once all *second pages* changes are complete, the **digital team** deploys a another preview version of the website via Netlify and sends the URL, PDF, and hard copies of the publication to the **project editor**.

-   A print-on-demand version of the publication is printed and reviewed by **production** and the **digital team**, with special attention to image quality.

## Final Pages

-   A final round of review takes place, marking the *final pages* phase. All changes are merged into the `master` branch on Github.

-   Once again, the **digital team** deploys a preview version of the website via Netlify and sends the URL, PDF, and hard copies of the publication go out for department review.

-   Once the final (ideally, few and minor) changes are approved and merged, a PDF is sent to a short-run digital printer. A final proof is printed and reviewed.

-   Once the final printed proof is approved, the publication is considered ready for launch.

## Launch

-   The printer prints one hundred copies and the e-book files are sent to corresponding vendors.

-   Altogether, an eight-to-twelve-week period marks the time between publication completion and the final publication "pub date." During this time, Marketing & Publicity promote the publication by sending out a press release and link to the preview site. Review copies are sent to authors and institutions that request copies. Promotion is also done on social media (Instagram, Facebook, Twitter, etc.). The book is listed on the Getty Publications website and in the sales catalog.

-   Print books are delivered to our warehouse approximately one month before the pub date.

-   On the pub date, the website goes live. The publication (both e-book and print copies) is now available for sale on Amazon, the Getty website, and through other venues.

<br>

**This marks the end of a Quire publication's workflow.**

</br>
