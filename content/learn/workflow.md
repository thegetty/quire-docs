---
title: Sample Quire Workflow
weight: 6600
type: page
abstract:  "An example of Getty Publication's workflow for Quire books"
---

Below, we outline the workflow Getty Publications's follows when creating [Quire books](https://www.getty.edu/publications/digital/digitalpubs.html). We understand that many organizations have smaller staffs but we hope this documentation of our own internal process can provide insight and serve as a jumping off point for developing your organization's own Quire workflow.

## Project Roles

**Author(s)** - writes the content that comprises a manuscript <br/>
**Lead project editor** - project manages and oversees higher level concept and structuring of a publication <br/>
**Digital team** - converts a manuscript into Quire publication using GitHub and a text editor, also oversees technical customizations <br/>
**Copy editor** - corrects grammatical, facutal, and stlystic errors in the text <br/>
**Proofreader** - checks for formatting errors and inconsistencies <br/>
**Production** - manages the physical creation of the publication

*Note: The lead project editor and copy editor have a basic understanding of Quire and GitHub, while the digital team is more advanced in their knowledge.*

## Pre-transmittal

- This is the phase of the publishing process that precedes transmitting the manuscript from editorial to the digital team (i.e. pre-transmittal.)

- The **authors** submit their manuscripts as Word files to the **lead project editor.**

- The document undergoes editorial review and peer review before being sent back to the **authors**. The author's provide the **lead project editor** with any necessary corrections or clarifications.

- The **lead project editor** meets with the **digital team** to review content and begin discussing the form the Quire publication will take. Three things are covered:

    1. Review any special tagging that needs to be done to the files to ensure a clear conversion from Word document to [Markdown](/documentation/fundamentals/#markdown-basics) file. This helps the text-editing process run smoothly and efficiently.

    2. Identify special needs such as the use of videos, pop-ups, IIIF images, etc.

    3. Assess the content model of the book to identify unique attributes or places where the pattern of the book diverges from the norm. Quire is built to look for patterns so this is a critical step that will inform the data structuring of the publication and YAML formatting.

- A prototype is often created to work through some of the project's more complicated concepts.

- The **lead project editor** gives the **copy editor** a memo outlining the tagging instructions. The **copy editor** enters the **authors'** changes and simultaneously “tags” the manuscript.

<div class="box tip">

- See our recommended [*Manuscript Prep*](/learn/manuscript-prep/) for information on how to prepare Word documents for a smooth conversion to Markdown.

</div>

## Transmittal and First Pages

-   Images and manuscript text come together in a final package that is transmitted from the **lead project editor** to the **digital team** along with a memo outlining important information about the publication. This marks the official hand-off of the publication from editorial and begins the Quire conversion process.

-   The **digital team** creates a repository for the Quire project in GitHub.

-   The **digital team** uses Pandoc to convert the manuscript Word files into Markdown files. See our [Pandoc instructions](/documentation/fundamentals/#microsoft-word-to-markdown-conversion) in the Quire documentation for more information about this process.

-   The **digital team** uses [GitHub Desktop](/documentation/github/) to clone the project repository and a `first-pages` branch is created. This marks the beginning of *first pages* (in other words, the first digital draft).

-   The **digital team** uses a text editor to open the project and create placeholder Markdown files and landing pages structured according to the publication Table of Contents. The converted Markdown text is then added to the corresponding content files.

-   In addition to adding the publication content, the **digital team** also creates the publication's data files (`publication.yml`, `figures.yml`, `references.yml`, etc.) and cleans up the YAML formatting on the individual Markdown pages.

-   The **digital team** also processes the publication images and creates a [git submodule](https://github.blog/2016-02-01-working-with-submodules/) The submodule creates a private repository for third party assets. It is only required when the main project is a public repository.

-   Once the submodule is ready, then images can be placed in the Markdown files using the figure shortcode. Other [shortcodes](/documentation/page-content/#use-shortcodes-to-add-features) are added where necessary.

<div class="box tip">

- See our [*Text-Editing Guide*](/learn/text-editing/) for the steps we follow to add content to a Quire project via text editor.

</div>

-   Any additional tweaks or customizations to the *first pages* version of the publication can either be made in the `first-pages` branch or they can be made in task-specific branches. Task-specific branches should always be reviewed before being merged in the `first-pages` branch. The review process gets a second set of eyes on the project to catch any potential errors. It’s helpful if the person reviewing has a good understanding of Quire and GitHub but it’s not required. Changes can be merged once they have been approved. Note: Changes are not merged into the `master` branch until the very end of the publication process.

-   Once all the content and publication data is added, formatting/customization is complete, and all ancillary branches are merged into the `first-pages` branch, the project is output for review. The **digital team** deploys a preview version of the website via Netlify and sends the URL, PDF, and hard copies of the publication to the **lead project editor**. Preview sites are always marked with an “uncorrected proof” banner.

-   These files are then sent to the **proofreader** and **authors** for review.

-   The **lead project editor** or **copy editor** collates all corrections onto a master hard-copy which marks the beginning of the *second pages* stage.

## Second Pages

-   The **digital team** creates a `second-pages` branch in GitHub based off of the `first-pages` branch. Additional task or user-based branches should be made from, and therefore merged into, the `second-pages` branch.

-   Any straightforward changes are entered in GitHub by either the **lead project editor** or **copy editor**. A printout of the manuscript with any complicated/outstanding edits marked with post-its and a memo outlining website issues are sent to the **digital team**.

-   The **digital team** tackles these edits in Github. Anything that can not be immediatetly resolved is added to the repository’s Issue Tracker for more thorough review/problem-solving.

-   Once all the *second pages* changes are complete, the **digital team** deploys a another preview version of the website via Netlify and sends the URL, PDF, and hard copies of the publication to the **lead project editor**.

-   Additionally, a print-on-demand version of the publication is printed and reviewed by **production** and the **digital team**. Special attention is paid to image quality.

## Final Pages

-   A final round of review takes place marking the *final pages* phase. All changes are then merged into the `master` branch on Github.

-   Once again, the **digital team** deploys a preview version of the website via Netlify and sends the URL, PDF, and hard copies of the publication are sent to the department for review.

-   Once the final few small changes are approved and merged, a PDF is sent to a short run digital printer. A final proof is printed and reviewed.

-   Once that final printed proof is approved, the publication is considered complete.

## Completion

-   The printer prints around one hundred copies and the e-book files are sent to the corresponding vendors.

-   Altogether there is an approximately 8-12 week period in between publication completion and it’s pub date. During this time, Marketing & Publicity promote the publication by sending out a press release and link to the preview site (marked with a banner). Review copies are sent to publications that request copies. Promotion is also done on social media (Instagram, Facebook, Twitter.) The book is listed on the Getty Publications website and in the sales catalog.

-   Print books are delivered to our warehouse approximately one month before the publication pub date.

-   On the publication pub date, the website goes live. The publication (both e-book and print copies) are now available for sale in places like Amazon, the Getty website, etc.

-   This marks the end of a Quire publication workflow.
