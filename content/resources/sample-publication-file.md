---
title: "Sample `publication.yml` File"
weight: 509
type: essay
---

```yaml
# ==============================================================================
# Publication.yml
# ------------------------------------------------------------------------------
#
# This file houses the bibliographic info and general metadata for your digital
# publication.

# ------------------------------------------------------------------------------
# Title & Description
# ------------------------------------------------------------------------------

title:
subtitle:
reading_line:
short_title:

description:
  one_line:
  full:
  online:
  pdf_ebook:

promo_image:

# ------------------------------------------------------------------------------
# Publication Details
# ------------------------------------------------------------------------------

url:
pub_date:
language:
pub_type: # book | journal-periodical | other

identifier:
  isbn:
  issn:
  doi:
  uuid:

series_periodical_name:
series_issue_number:

publisher:
  - name:
    location:
    url:

# ------------------------------------------------------------------------------
# Contributors
# ------------------------------------------------------------------------------

contributor_as_it_appears:

contributor:
  - id:
    type: # primary | secondary | project-team
    first_name:
    last_name:
    full_name:
    file_as:
    title:
    affiliation:
    role:
    role_code:
    bio:
    url:
    pic:

# ------------------------------------------------------------------------------
# Copright & License
# ------------------------------------------------------------------------------

copyright:

license:
  name:
  abbreviation:
  url:
  icon:
  scope: # full | text-only | some-exceptions
  online_text:
  pdf_ebook_text:

# ------------------------------------------------------------------------------
# Formats, Resources & Links
# ------------------------------------------------------------------------------

resource_link:
  - type: # other-format | related-resource | footer-link
    name:
    url:
    link_relation:
    media_type:
    identifier:
      isbn:
      issn:
      doi:
      uuid:
    icon:

# ------------------------------------------------------------------------------
# Subjects
# ------------------------------------------------------------------------------

subject:
  - type: # keyword | bisac | getty
    name:
    identifier:

library_of_congress_cip_data:

# ------------------------------------------------------------------------------
# Revision History
# ------------------------------------------------------------------------------

revision_history:
  - date:
    summary:

repository_url:

```
