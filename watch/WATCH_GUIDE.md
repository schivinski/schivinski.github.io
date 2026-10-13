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
     - No references back to the paper: no "in this study", "the authors found", "the researchers point to", no sample sizes,
       no statistics, no citing the brands the paper used as examples. The evidence lives in the sections above.
     - Each step names the thing to do, where it happens and, where it matters, how much or how often. Prefer a number the
       reader can act on (how many versions, how many hours, which channel) over a number from the results table.
     - A reader should be able to run all six without having read a word of the rest of the page.
     * `expect`: realistic outcomes, costs and caveats. `limits`: when it fails.
   - `faq`: 4–5 questions people actually ask; answers stand alone and include the evidence.
   - `keywords`: 8–12 search phrases. `topics`: 2–3 categories (AI, Advertising, Social media, UGC, Influencers,
     Personalization, Privacy, Retail, Service, Search, Creative, Research methods).
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
