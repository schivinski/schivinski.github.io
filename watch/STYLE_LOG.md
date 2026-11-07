# Marketing in 3: style log

Bruno's language corrections, started 5 November 2026. Every issue follows every rule here: the live series and every
look-back tab (2025, 2024 and any later one). The log grows with each correction, so the writing improves issue by issue.

## How to use it
- **Before writing an issue,** read the rules below, together with watch/WATCH_GUIDE.md.
- **Before publishing,** run `python3 scripts/style_check.py watch/issues/<file>.yml`. With no arguments it checks every issue.
  It fails on any phrase in the banned list below. Rules about tone or structure that a script cannot catch are checked by
  hand against the entries.
- **When Bruno flags a sentence:**
  1. Fix it where he points to it.
  2. Add an entry below: date, issue, the flagged words, his comment, the rule and the fix.
  3. Put fixed expressions in the banned list.
  4. Copy this file to the Project doc `claude/m3-style-log.md`.
  - Each correction is a general rule, not a one-off.
  - Rules apply from the next issue on. Earlier issues are fixed only when Bruno asks; he did for entries 1 to 3.
- **Fixing something that is already live:** edit the YAML, run the check, build, commit, push and dispatch the publish
  workflow as usual. This sends no emails.
  - The newsletter sends each issue once only (DynamoDB claim `sent#<issue>`).
  - Author emails are a separate manual step, never triggered by publishing.

## Banned phrases (checked by scripts/style_check.py)
One per line, case-insensitive. A line starting with `re:` is a regular expression. A line `allow <file part> :: <regex>`
is an exception for a literal or technical use in files whose name contains `<file part>` (`*` for every file): the name
of a theory, a sound that is the subject of the study, or words quoted from a study. Add an exception only for such cases.
<!-- style-check:start -->
- dry run
- re: \bearn(s|ed|ing)? its keep\b
- re: \b(loud|louder|loudest|loudly|quiet|quieter|quietest|quietly|silent|silently|silence|silences|silenced|hush|hushed|shout|shouts|shouted|shouting|muted|deafening|roaring|noisy|noisier|noisiest|whisper|whispers|whispered|whispering)\b
- allow * :: spiral of silence
- allow asmr-whisper-ads :: \bwhisper(s|ed|ing)?\b
- allow sensory-words-grocery-reviews :: Sound: noise, loud, quiet
- allow ruminating-complaint-posts :: noisy neighbours|loud music|words like noisy, loud
<!-- style-check:end -->

## General rules drawn from the entries so far
- Write the way people talk. Avoid stock idioms that sound written rather than spoken, even common ones. Say plainly what
  happened or why it matters: "a simulation", not "a dry run"; "is the real test", "pays off" or "is the most useful part",
  not "earns its keep".
- Keep the register academic. Do not describe people, brands, posts, data or effects with sound words: loud, quiet,
  silent, silence, whisper, shout, hushed, noisy and the like. Name the actual property: prominent or subtle, active or
  inactive, visible or unnoticed, did not reply, withdrew, imprecise, off-peak.

## Entries

### 1. "dry run" (5 Nov 2026, issue 45)
- **Flagged:** section heading "A dry run where the answer was known".
- **Bruno:** "no one talks like that".
- **Rule:** do not call a simulation, pilot or test a "dry run". Name what it was.
- **Fixed:** "Testing it first in a simulation".
- **Also fixed on Bruno's request (5 Nov 2026):** 2025 tab, recommendation-price-reviews fact box. "Before launch, a dry run
  gave four groups ..." became "Before launch, the team showed four groups ...".

### 2. "earns its keep" (5 Nov 2026, issue 45)
- **Flagged:** "The busy season is where a creative tool earns its keep."
- **Bruno:** "earns its keep - not very natural as well".
- **Rule:** no "earns/earn its keep" in any form. Say what it means: it pays off, it is the real test, it is the most useful part.
- **Fixed:** "The real test for any creative tool is the busy season."
- **Also fixed on Bruno's request (5 Nov 2026):**
  - Issue 18 (deepfake-ad-disclosures): "The second experiment is the most useful part of the paper."
  - 2024 tab, retail-media-off-site-sales: "so paid placement pays off for items ...".
  - 2025 tab, ideology-ai-recommendations: the clause was cut, so the sentence ends "... or a shorter track record."
  - 2025 tab, ar-augmentation-quality: "unlikely to pay off just by existing".

### 3. Sound words used as descriptions: loud, quiet, silent and the like (7 Nov 2026, all issues)
- **Flagged:** sound words used to describe things, for example in the 2024 tab's first issue (dataveillance-chilling-effects):
  "some quietly change what they do" and the step "Watch for your data going quiet".
- **Bruno:** "Do not use loud, quiet, silent, etc. when describing something. That is not academic language."
- **Rule:** never use loud, quiet, silent, silence, whisper, shout, hushed, muted, noisy, roaring or similar sound words to
  describe people, brands, content, behaviour, data or effects, in any form ("quietly", "louder", "go quiet",
  "stay silent", "noisier estimates"). Say what is meant:
  - prominent or subtle (brand placement)
  - active, highly active or less active (fans, followers, users)
  - did not reply, non-response, not replying (brands)
  - withdrew, held back, stopped posting (customers)
  - unnoticed, without notice, discreetly, out of sight (processes)
  - off-peak (hours, seasons)
  - imprecise or less precise, varied more (estimates)
  - bold (design)
  - "aloud" instead of "out loud" for speaking
- **Exceptions (in the banned block):** only literal or technical uses, such as the theory name "spiral of silence", the
  whispered voice that is the subject of the ASMR study, and words quoted from a study's materials.
- **Fixed on Bruno's request (7 Nov 2026):** 145 edits in 68 issues across the live series and the 2023, 2024 and 2025
  tabs, including issue 45 ("the firm's off-peak winter season", "Platform variation"). `scripts/style_check.py` now
  catches every form of these words.

