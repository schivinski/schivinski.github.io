# schivinski.github.io

Personal academic website of Bruno Schivinski, built with [Quarto](https://quarto.org)
and published free on GitHub Pages.

## What updates by itself

- **Publications** are pulled from the public ORCID record
  (0000-0002-4095-1922) every Monday and on every change to the site. Add a paper
  to ORCID and it appears here within a week. Missing co-author lists are filled
  from Crossref.
- To hide an item without removing it from ORCID, add its DOI or exact title to
  `data/hide.txt`.

## Editing pages by hand

All pages are plain text and can be edited directly on github.com (pencil icon):

| Page | File |
|---|---|
| About | `index.qmd` |
| Teaching | `teaching.qmd` |
| Marketing Watch digests | `watch/posts/<date>-<slug>/index.qmd` |
| Colours and fonts | `styles.scss` |

**Review mode (current):** saving a change only *builds* the site, to check
nothing is broken. To publish, open **Actions → Build and publish site → Run
workflow**, tick *Publish to schivinski.github.io*, and run it.

## Marketing Watch

Weekly digests are drafted by Claude from the sources in `watch/sources.yml` and
arrive as a **pull request**. Nothing is published until the pull request is merged.
