# Marketing in 3: how an issue is made

The series was renamed from "Marketing Watch" to **Marketing in 3** (Bruno's choice: catchy, easy to
remember, extends to merch and products; the "3" is not explained on the site). URLs stay under `/watch/` so links and
the RSS feed (`/watch/index.xml`, subscribe page `/watch/subscribe.html`) keep working.

One issue per call, in the order of `watch/PLAN_2026.md` (Project doc `claude/marketing-watch-2026-plan.md`).
Issue 1 (`watch/issues/2026-01-12-generative-ai-ad-images.yml`) is the template: copy its structure and tone.

## Steps
1. **Read the lead paper in full** (Bruno sends the PDF; otherwise the open-access version). Abstract-only is not enough
   for "how to apply" and "what to expect". Note every number with its study.
2. **Get the two "also new" items**: abstracts from Crossref or Semantic Scholar
   (`https://api.semanticscholar.org/graph/v1/paper/DOI:<doi>?fields=title,abstract,authors`). 3–4 sentences each,
   own words, ending with what a practitioner should do with it.
3. **Write the data file** `watch/issues/<week_of>-<slug>.yml` (fields as in issue 1):
   - `title`: the question a marketer would type into Google or ask an AI, plus the source ("What a Journal of Marketing study found").
   - `description`: 140–160 characters, with the headline number.
   - `short_answer`: 50–80 words that answer the title directly (this is what search and AI engines quote).
   - `takeaways`: 4 bullets, each with a number.
   - `sections`: what they did (with a facts box), what they found, field evidence, the key practical insight; 1–3 charts.
   - `how_to`: exactly 6 concrete steps, ordered for the "Ready. Set. Market." block (kicker: Marketing in 3 steps): 1–2 **Ready** (decide and
     prepare: where it fits, what to choose or check), 3–4 **Set** (build it: the execution), 5–6 **Market** (launch and
     measure: roll out, test, monitor). The builder groups them in pairs, shown as bullets (no numbers).
     **These six are the implementation, not a recap** (Bruno, 13 October 2026). The rest of the page explains the study; this
     block has to work on its own for a reader who skipped straight to it and wants to act today. So:
     - Write every step as an instruction to the reader, in the imperative: "Draft three versions…", "Send it within 48 hours…".
     - **Plain English, as plain as it can be made** (Bruno, 14 October 2026): short sentences, everyday words, one
       instruction per sentence. Give a number the reader can count (three or four elements, seven days, 100 people) and,
       where possible, a test they can run for themselves ("shrink it on screen until it is the size of a stamp"). Someone
       who skipped the whole article should be able to follow all six without rereading a line. Issue 22 is the model.
     - No references back to the paper: no "in this study", "the authors found", "the researchers point to", no sample sizes,
       no statistics, no citing the brands the paper used as examples. The evidence lives in the sections above.
     - Each step names the thing to do, where it happens and, where it matters, how much or how often. Prefer a number the
       reader can act on (how many versions, how many hours, which channel) over a number from the results table.
     - A reader should be able to run all six without having read a word of the rest of the page.
     * `expect`: realistic outcomes, costs and caveats. `limits`: when it fails.
   - `faq`: 4–5 questions people actually ask; answers stand alone and include the evidence.
   - `keywords`: 8–12 search phrases. `topics`: 2–3 categories (AI, Advertising, Social media, UGC, Influencers,
     Personalization, Privacy, Retail, Service, Search, Creative, Research methods).
     Topics are the clickable labels on the issue: each opens `watch/topics/<topic>.html`, the page listing every
     issue on that topic, and drives the "Keep reading" picks and the topic bar on the Marketing in 3 page. Reuse the
     existing topic names exactly; a new name creates a new topic page (add its title and description to
     `TOPIC_INFO` in `scripts/build_watch.py`).
4. **Pick the picture**: a striking, high-quality photograph of the paper's subject (issue 1: a car), not an illustration.
   It must stop the scroll: bold colour, strong light, close crop and a clear focal point, editorial or advertising quality
   (Bruno: "sexy looking photos that entice the viewer"). Avoid bland stock scenes and generic office shots.
   **Ask Bruno for a generated image whenever the shot would be better made than found** (Bruno, 13 October 2026): write
   him a prompt and he renders it in Gemini (Nano Banana). Always ask when the subject has to look like an advertising
   model, when a real identifiable face would sit under a headline that makes a claim about that person, or when nothing
   on Unsplash is good enough. A prompt specifies photographic style and camera, subject and styling, light and colour,
   mood and gaze, 16:9 horizontal with headroom for the 1600×900 and 1200×630 crops, and no text, logos or watermarks.
   A generated image is credited in the caption as made with AI, never passed off as a photograph.
   Otherwise source from Unsplash (free Unsplash Licence; avoid Unsplash+), prefer images without prominent logos, don't
   reuse an earlier issue's subject, credit the photographer in the caption. The Unsplash Licence covers the
   photographer's copyright, not the model's likeness, so avoid putting an identifiable real face next to a headline that
   makes a claim about that person. Save `watch/images/issue-NN-<slug>.jpg` (1600×900) and `-og.jpg` (1200×630).
   Then run `python scripts/make_watch_images.py` and commit the new files in `watch/images/web/`: these light WebP
   copies are what readers actually download (cards and hero), the JPEGs stay as share images and fallback.
   **People every two or three issues** (Bruno, 26 October 2026): at least one hero in every run of three issues must show
   people, so the series does not drift into abstract objects and keeps a personal connection with readers. Before picking
   a hero, look at the last two issues; if neither shows people, this one must. Prefer a Gemini image from Bruno (send him
   the prompt early); if none arrives in time, use a free Unsplash photo of people whose faces are not tied to a claim in
   the headline, and say so in the report.
5. **Build and check**: `python scripts/build_paper_pages.py && python scripts/build_watch.py && quarto render`.
   Look at desktop and 390 px mobile (no horizontal scroll), confirm the JSON-LD parses.
6. **Publish**: commit, push, dispatch the publish workflow.

## Writing rules
- Plain English for practitioners; no jargon without a gloss. Short paragraphs.
- Every number traceable to the paper (study number in the chart source line). Never invent effect sizes.
- Say what was *not* shown (limits, small tests, one category).
- Our words only: no reproduced abstracts, figures or ad images from the paper. Charts are redrawn from reported numbers.
- Dates: `week_of` is the issue's only date. It is shown as "Week of …", orders the archive and is used everywhere
  else (JSON-LD, Open Graph, RSS, sitemap via `scripts/fix_watch_dates.py`). Never add or show any other publication
  or build date on the site (Bruno's standing rule: the series reads as if it has run weekly all along).

## What makes the pages findable
Question-style title and H2s, answer-first summary, FAQ block, descriptive image alt text, BlogPosting + FAQPage +
BreadcrumbList JSON-LD with the paper as `about`/`citation` (DOI), author entity with ORCID/Scholar/LinkedIn,
canonical URL, Open Graph/Twitter large image, RSS, sitemap, and an llms.txt entry. All generated by `scripts/build_watch.py`.

## Pre-prints

If the issue is written from an accepted manuscript or pre-print, add `source_basis:` to the issue YAML (e.g. "the authors' accepted manuscript (pre-print) of the article, so wording and figures may differ slightly in the final typeset version"). It replaces "the published article" in the Source note. Still take volume, issue, pages and licence from Crossref. First used in issue 10.

## Charts

- `scripts/build_watch.py` sizes the label column from the longest bar label (about 7px per character) and widens the
  whole viewBox to match, so long labels no longer clip at the left edge. Fixed 15 October 2026 after Bruno spotted it
  on issue 26; 14 charts going back to issue 1 had been quietly cut off and were repaired by the same rebuild.
- Even so, keep bar labels short. Anything past about 35 characters shrinks the bars on screen, because the SVG scales
  to the card width. Put the detail in the chart title or the source line instead of the label.
- The value label only shows a unit when `unit` is `%`. For any other unit, put it in the chart title.

## Authors' names link to ORCID; external links open in a new tab (Bruno, 18 October 2026)
- **No new byline or author section** (Bruno: the issue does not grow). The text stays as before: authors named where
  the prose, the FAQ citation and the Source already name them; universities mentioned in the prose as in earlier issues.
- Add `researchers:` under `paper:`, one entry per author in byline order: `name` as printed in the paper,
  `affiliation` as printed in its affiliation footnote, `orcid` as the bare iD. Draft it with
  `python scripts/paper_authors.py <doi>`, then check every line against the PDF; the paper wins (for issue 40 OpenAlex
  held a different iD for one author than the one the paper prints). Leave `orcid: ""` when none is listed.
- The builder then links, to the author's ORCID: the first mention of each full name in the short answer, sections or
  FAQ; the surnames inside the study's own citation, e.g. "(Bravin, Clegg & Berger, 2026, Journal of Marketing)"; and
  each name in the Source reference. Links get a thin green underline. The JSON-LD lists each author as a `Person` with
  `affiliation`, `sameAs` and an ORCID `identifier`, which is what lets a search on an author's name surface the issue.
- **Revised 19 October 2026 (Bruno), from issue 42 onwards.** (1) The first section opens by naming the authors with their
  universities, in the style of issue 22: "Jiaming Fang, Qiqi Zheng, Miyan Liao, Lintong Han and Lu Liu, working across three
  Chinese universities, set out to ...". Write each name exactly as in `researchers:`; the builder links the first mention of
  each full name to ORCID. Do not write "the Groningen team"-style openers without the names. (2) Citations are plain: the FAQ
  citation "(Boluki, Shehu & Bijmolt, 2026, Journal ...)" and the Source reference carry no author links, only the DOI link.
  The builder now does this for every issue except 41, which stays as published (issues 1-40 were switched at no cost by the
  rebuild; their prose openers were not rewritten).
- **Every external link opens in a new tab.** `scripts/external_links.py` (post-render) adds `target="_blank"` and
  `rel="noopener"` to any link that leaves schivinski.com, site-wide.
- Trialled on issue 40, then approved. On 18 October 2026 Bruno asked for the same author data on issues 1-39. It was
  filled from the publisher (Crossref) and ORCID registries, not from the PDFs: an ORCID is kept only when Crossref lists
  it for that author, or when OpenAlex lists it and that ORCID record carries the paper's DOI; otherwise no link. Where a
  registry gave no affiliation the field is empty. If Bruno spots a wrong affiliation or iD on an old issue, fix the
  `researchers:` block in its YAML.
- **From issue 41, the `description` starts with the first author** ("Boluki et al. find that ..."), still 140-160
  characters. It feeds the search snippet, the share preview and the structured data, so a search that pairs an author's
  name with a topic can match, and it adds nothing to the length of the page itself.

## Freshness rules (Bruno, standing)
- **No repeats inside an issue.** Give each fact one home. Plan a quick "fact ledger" before writing: the short answer,
  each takeaway, each section, the FAQ and "what to expect" should each carry different numbers or a new angle. If a
  point must come back (e.g. in the FAQ for search), say it in different words and only when it is needed.
- **No dashes in the prose** (Bruno, 13 October 2026): do not use em dashes or en dashes as punctuation inside a
  sentence, and do not set an aside between dashes. Rewrite with commas, or split into two sentences. Hyphens in
  compound words ("user-generated") and number ranges in tables and chart labels are unaffected.
- **Changes apply forward only** (Bruno, 13 October 2026): when a rule here changes, it governs the next issue and
  everything after it. Never go back and rework published issues to match, unless Bruno asks for a retrofit.
- **No copy-paste feel across issues.** Keep the structure, but vary the sentences. Before publishing, compare the new
  issue with earlier ones (5-word phrase overlap) and rewrite any shared wording. Avoid stock lines such as "My reading,
  not tested in the paper, is that"; flag our own extrapolation in fresh words each time.
- **Plain, conversational English.** Short sentences, everyday words, the occasional direct "you".
- Also-new blurbs should end in a fresh line, not the same "Do X" formula every week.

## Choosing papers from analytics (Bruno, 24 October 2026; from the 2 November monthly run)
- Before picking each month's batch, pull the last 90 days from GA4 (property 560083062, schivinski.com, via the Supermetrics
  connector) and GoatCounter as a cross-check: views, engaged time, scroll, returning readers per issue and topic; traffic
  sources (organic search, LinkedIn, direct, referrals) and countries; search terms; and AI referrals (ChatGPT and other
  assistants, already tracked).
- Of each 4 papers: 2 **trend** papers on the topics that are performing best, and 2 **test** papers on adjacent topics that
  could open a new readership while staying close to the active topics.
- Score last month's test issues against the trend issues over their first 14 days. A test topic that holds up becomes a trend topic.
- Write a brief one-page report (trends, test results, reasons for each paper), send it to Bruno in the chat and save it to
  the project docs (claude/m3-reports/YYYY-MM.md), then book the calendar slot as before.
- From January 2027 the series goes to two issues a week (Monday and Thursday). Batch size, date labels and how Bruno's own
  papers fit are to be settled with him then.

## Bruno's own papers, older work (Bruno, 26 October 2026)
- When an issue covers one of Bruno's own papers that is not new, it keeps the template but is written in his first person,
  with a disclosure line in the opening ("this issue covers my own paper"), and adds one personal, reflective section on
  what the findings mean today (first used in issue 43: "Why I think this matters more in the age of AI"). Keep opinions
  clearly his view, not findings, and never invent anecdotes or facts about his life.
- The "Ready. Set. Market." steps follow the paper's published pathways (for issue 43, the branches of the decision tree).
- The paper also gets its paper page (PAPER_PAGES.md), and the issue links to it through `related_pages`.

## Twice weekly: Monday and Thursday (Bruno, 27 October 2026)
- From issue 43 (2 November 2026) a new issue comes out every Monday and Thursday at 08:00 Sydney time.
- `week_of` now holds the issue's own date (a Monday or a Thursday). Readers see the day, e.g. "Monday 2 November 2026"
  (`dateline()` in scripts/build_watch.py); issues 1 to 42 keep "Week of ...". The email kicker uses the same line.
- Site copy says "New issues every Monday and Thursday" (home page, Marketing in 3 page, coffee prompts, email form,
  share cards, llms.txt).
- Monthly batches are eight papers (four trend, four test), chosen from analytics as above.

## Research focus: digital marketing only (Bruno, 27 October 2026)
- Bruno no longer works on games or gamification; his research path is digital marketing. Issue 47 (in-game advertising,
  16 November 2026) is the last gaming issue.
- From the next batch, do not pick gaming, esports or gamification papers, even when analytics show traffic to his gaming
  pages (for example the Gaming Disorder Test), unless the paper clearly sits in his digital marketing thread (for example
  social media brand engagement or digital advertising that happens to use a game setting). Use test slots for other
  digital marketing audiences instead.

## Author emails: never for Bruno's own papers (Bruno, 28 October 2026)
- The author thank-you email (project doc `claude/mkt3-author-thankyou-template.md`) and any request for a copy of the
  paper (the "Automated emails" chat) are **never sent automatically when the featured paper is Bruno's own or
  co-authored by him**, whatever the author position. This covers every author on such a paper, not only Bruno.
- For every other paper (no Bruno authorship) the thank-you email goes out as normal after the issue is verified live.
- How to tell: check the paper's author list for "Schivinski". If he is an author, skip the email step, write
  "no email (Bruno's own paper)" in the Thank-you column of `claude/mkt3-author-log.md`, and say so in the run report.
- Every publish-run prompt that carries the AUTHOR THANK-YOU step must also carry this exception.
- Issue 43 (2 November 2026) is a deliberate one-off: its scheduled run sends the template as a test to Bruno's own
  work address only, set up on his instruction of 27 October 2026, before this rule. No co-authors are emailed.
- First issue under the rule: issue 52 (Thursday 3 December 2026, Leite, Pontes & Schivinski, JTTM), preloaded as a draft.
