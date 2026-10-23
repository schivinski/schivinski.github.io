#!/usr/bin/env python3
"""Build Marketing in 3 issue pages from watch/issues/<week>-<slug>.yml.

Each data file becomes watch/posts/<slug>/index.qmd with:
  * a practitioner page: short answer, takeaways, findings with charts, how to apply, what to expect, limits,
    FAQ, two "also new" items, the citation;
  * search and AI-discovery markup: description, Open Graph / Twitter image, JSON-LD (BlogPosting with the
    paper as `about` and `citation`, FAQPage, BreadcrumbList), keywords, and an entry in llms.txt.
Only issues with `status: live` are built on public builds. See watch/WATCH_GUIDE.md.
"""
from __future__ import annotations

import datetime as dt
import html
import json
import os
import re
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
SITE = "https://schivinski.com"
ISSUES = ROOT / "watch" / "issues"
POSTS = ROOT / "watch" / "posts"
AUTHOR = {
    "@type": "Person", "@id": f"{SITE}/#bruno", "name": "Bruno Schivinski", "url": f"{SITE}/",
    "jobTitle": "Associate Professor of Marketing",
    "affiliation": {"@type": "CollegeOrUniversity", "name": "Gdańsk University of Technology"},
    "sameAs": ["https://orcid.org/0000-0002-4095-1922",
               "https://scholar.google.com/citations?user=f-iKGD8AAAAJ",
               "https://www.linkedin.com/in/bruno-schivinski-b2baa044"],
}
INK, AMBER, BAR, MUTED, RULE = "#15203b", "#e0a12a", "#aab3c5", "#5b6476", "#dde1e8"
TOPICS_DIR = ROOT / "watch" / "topics"
WEB = ROOT / "watch" / "images" / "web"   # WebP copies made by scripts/make_watch_images.py

# Topic pages (watch/topics/<slug>.html): the page title and the search description for each topic.
TOPIC_INFO = {
    "AI": ("AI in marketing: research for practitioners",
           "What new research says about AI in marketing, from generative AI ads to chatbots and AI service, "
           "explained in plain English with steps to apply it."),
    "Advertising": ("Advertising research for practitioners",
                    "New peer-reviewed advertising research, explained in plain English: what works in digital "
                    "ads, how to apply it and what results to expect."),
    "Social media": ("Social media marketing research for practitioners",
                     "Social media marketing studies from the leading journals, explained for practitioners: "
                     "engagement, content, memes, live streams and what to do next."),
    "UGC": ("User-generated content (UGC) research for practitioners",
            "Research on user-generated content, online reviews and customer photos, explained in plain English "
            "with practical steps for brands and platforms."),
    "Influencers": ("Influencer marketing research for practitioners",
                    "What peer-reviewed studies say about influencer marketing: endorsement rates, scandals and "
                    "credibility, with steps you can apply to campaigns."),
    "Personalization": ("Personalization research for practitioners",
                        "New research on personalization and targeting in marketing, explained in plain English: "
                        "when it pays, when it backfires and how to apply it."),
    "Privacy": ("Consumer privacy research for practitioners",
                "Marketing research on consumer privacy and data use, explained for practitioners, with practical "
                "steps for collecting and using customer data well."),
    "Retail": ("Retail and e-commerce research for practitioners",
               "Retail and e-commerce studies from the top marketing journals, explained in plain English: carts, "
               "stores, returns and what retailers can do next."),
    "Service": ("Customer service research for practitioners",
                "Research on customer service, frontline staff and service technology, explained in plain English "
                "with steps managers can apply."),
    "Search": ("Search and search advertising research for practitioners",
               "New research on search engines, AI search and search advertising, explained for marketers, with "
               "practical steps and realistic expectations."),
    "Creative": ("Creative and content research for practitioners",
                 "What new research says about ad creative, images, video and content design, explained in plain "
                 "English with steps to apply it."),
    "Research methods": ("Marketing research methods for practitioners",
                         "New methods for testing marketing ideas, from in-feed experiments to field tests, "
                         "explained in plain English for practitioners."),
}


def topic_slug(t: str) -> str:
    return re.sub(r"[^a-z0-9]+", "-", t.lower()).strip("-")


def thumb_src(d: dict, prefix: str) -> str:
    """Card image: the light WebP thumbnail when it exists, otherwise the Open Graph JPEG."""
    stem = d["image"]["og"].rsplit(".", 1)[0].removesuffix("-og")
    if (WEB / f"{stem}-640.webp").exists():
        return f"{prefix}images/web/{stem}-640.webp"
    return f"{prefix}images/{d['image']['og']}"


def card(d: dict, prefix: str) -> str:
    """One issue as a list card; prefix is the path from the page to watch/ (e.g. '../')."""
    href = f"{prefix}posts/{d['slug']}/index.html"
    return (f'<article class="watch-item"><a class="watch-thumb" href="{href}" tabindex="-1" aria-hidden="true">'
            f'<img src="{thumb_src(d, prefix)}" alt="" loading="lazy" decoding="async" width="640" height="336"></a>'
            f'<div><p class="watch-meta">Issue {d["issue"]} · Week of <time datetime="{d["week_of"]}">'
            f'{long_date(d["week_of"])}</time></p><h3><a href="{href}">{esc(d["short_title"])}</a></h3>'
            f'<p>{esc(plain(d["description"]))}</p></div></article>')


def topic_counts(data: list) -> dict:
    counts: dict = {}
    for d in data:
        for t in d.get("topics", []):
            counts[t] = counts.get(t, 0) + 1
    return counts


def topic_bar(counts: dict, current: str | None, prefix: str) -> str:
    """Topic filter: 'All issues' plus one link per topic, each opening that topic's page."""
    items = [f'<a class="chip" href="{prefix}index.html"{" aria-current=\"page\"" if current is None else ""}>'
             f'All issues</a>']
    for t in sorted(counts, key=lambda k: (-counts[k], k)):
        cur = ' aria-current="page"' if t == current else ""
        items.append(f'<a class="chip" href="{prefix}topics/{topic_slug(t)}.html"{cur}>{esc(t)}'
                     f'<span class="chip-n">{counts[t]}</span></a>')
    return ('<nav class="mw-topicbar" aria-label="Browse issues by topic"><p class="mw-topicbar-label">Browse by topic</p>'
            f'<div class="chips">{"".join(items)}</div></nav>')


def keep_reading(d: dict, data: list) -> str:
    """Up to three other issues that share the most topics with this one (newest first on ties)."""
    mine = set(d.get("topics", []))
    scored = [(len(mine & set(o.get("topics", []))), o["week_of"], o) for o in data if o["slug"] != d["slug"]]
    scored = [s for s in scored if s[0] > 0]
    scored.sort(key=lambda s: (s[0], s[1]), reverse=True)
    picks = [s[2] for s in scored[:3]]
    if not picks:
        return ""
    links = " · ".join(f'<a href="../../topics/{topic_slug(t)}.html">{esc(t)}</a>' for t in d.get("topics", []))
    return ('<section id="keep-reading" class="mw-more"><h2>Keep reading</h2>'
            f'<p class="mw-more-topics">More issues on {links}</p>'
            '<div class="watch-list">' + "".join(card(o, "../../") for o in picks) + "</div></section>")




PHASES = [("Ready", "Decide and prepare"), ("Set", "Build it"), ("Market", "Launch and measure")]


def how_to_html(steps: list) -> str:
    """'Ready. Set. Market.' (Marketing in 3 steps): six points grouped in pairs under Ready, Set and Market."""
    if len(steps) != 6:  # fallback: plain numbered list
        return ('<section id="how-to-apply-it"><h2>How to apply it</h2><ol class="mw-steps">'
                + "".join(f"<li><strong>{esc(a)}.</strong> {md(b)}</li>" for a, b in steps) + "</ol></section>")
    out = ['<section id="how-to-apply-it" class="mw-howto"><p class="mw-rsg-kicker">Marketing in 3 steps</p>'
           '<h2>Ready. Set. Market.</h2><div class="mw-rsg">']
    for i, (name, sub) in enumerate(PHASES):
        pair = steps[2 * i: 2 * i + 2]
        out.append(f'<div class="mw-phase"><div class="mw-phase-dot" aria-hidden="true">{i + 1}</div>'
                   f'<div class="mw-phase-tag"><span class="mw-phase-name">{name}</span>'
                   f'<span class="mw-phase-sub">{sub}</span></div>'
                   f'<ul class="mw-rsg-steps">'
                   + "".join(f"<li><strong>{esc(a)}.</strong> {md(b)}</li>" for a, b in pair) + "</ul></div>")
    out.append("</div></section>")
    return "".join(out)

def related_pages_html(slugs: list, lead_doi: str = "") -> str:
    """Paper pages on this site: the lead paper's own page first, then any other related pages."""
    lead, rest = [], []
    for sl in slugs:
        f = ROOT / "papers" / "data" / f"{sl}.yml"
        if not f.exists():
            continue
        p = yaml.safe_load(f.read_text(encoding="utf-8")) or {}
        if p.get("status") != "locked":
            continue
        item = (f'<li><a href="../../../papers/{esc(sl)}.html">{esc(p.get("title", sl))}</a>'
                f'<span>{esc(p.get("journal", ""))}</span></li>')
        (lead if str(p.get("doi", "")).lower() == str(lead_doi).lower() else rest).append(item)
    out = []
    if lead:
        out.append('<section id="on-this-site" class="mw-related"><h2>The paper, in full, on this site</h2>'
                   f'<ul>{"".join(lead)}</ul></section>')
    if rest:
        out.append('<section id="related-research" class="mw-related"><h2>Related research on this site</h2>'
                   f'<ul>{"".join(rest)}</ul></section>')
    return "".join(out)


def support_cfg() -> dict:
    f = ROOT / "watch" / "support.yml"
    return (yaml.safe_load(f.read_text(encoding="utf-8")) if f.exists() else {}) or {}


def support_card(where: str = "issue", text_key: str = "text") -> str:
    """'Buy me a coffee or a pint' card from watch/support.yml; empty until a support URL is set."""
    cfg = support_cfg()
    url = cfg.get("url") or ""
    if not url:
        return ""

    def svg(name: str) -> str:
        f = ROOT / "assets" / "icons" / f"{name}.svg"
        if not f.exists():
            return ""
        t = re.sub(r"<!--.*?-->", "", f.read_text(encoding="utf-8"), flags=re.S).strip()
        return t.replace("<svg", '<svg aria-hidden="true" focusable="false"', 1)

    opts = cfg.get("options") or [{"label": cfg.get("button", "Buy me a pint"), "icon": "beer", "primary": True}]
    btns = []
    for o in opts:
        cls = "mw-support-btn" + (" mw-support-btn-main" if o.get("primary") else "")
        price = f'<span class="mw-support-price">{esc(o["price"])}</span>' if o.get("price") else ""
        note = f'<span class="mw-support-note">{esc(o["note"])}</span>' if o.get("note") else ""
        btns.append(f'<a class="{cls}" href="{esc(url)}" target="_blank" rel="noopener">'
                    f'{svg(o.get("icon", ""))}<span class="mw-support-label">{esc(o["label"])}</span>{price}{note}</a>')
    return (f'<div class="mw-support" role="complementary" aria-label="Support Marketing in 3">'
            f'<div class="mw-support-icon">{svg("beer")}</div>'
            f'<p>{esc(cfg.get(text_key) or cfg.get("text", ""))}</p>'
            f'<div class="mw-support-btns">{"".join(btns)}</div>'
            + (f'<p class="mw-support-hint">{esc(cfg["hint"])}</p>' if cfg.get("hint") else "") + '</div>')

def support_inline(prefix: str = "../../../", text_key: str = "inline_text") -> str:
    """The round-avatar coffee prompt: mid-issue (after the how-to) and on the Subscribe page. `prefix` is the
    relative path to the site root. The link opens Ko-fi in the on-site dialog (scripts/add_support.py)."""
    cfg = support_cfg()
    url = cfg.get("url") or ""
    if not url:
        return ""
    o = (cfg.get("options") or [{}])[0]
    price = f'<span class="mw-coffee-price">{esc(o["price"])}</span>' if o.get("price") else ""
    return ('<div class="mw-coffee" role="complementary" aria-label="Support Marketing in 3">'
            f'<img class="mw-coffee-avatar" src="{prefix}assets/support/bruno-coffee.webp" alt="" width="96" height="96" loading="lazy">'
            f'<div class="mw-coffee-text"><p class="mw-coffee-title">{esc(cfg.get("inline_title", "Useful?"))}</p>'
            f'<p>{esc(cfg.get(text_key) or cfg.get("inline_text", ""))}</p></div>'
            f'<a class="mw-coffee-btn" href="{esc(url)}" target="_blank" rel="noopener">'
            f'{svg_icon("coffee")}<span>{esc(o.get("label", "Buy me a coffee"))}</span>{price}</a></div>')


def newsletter_cfg() -> dict:
    f = ROOT / "watch" / "newsletter.yml"
    return (yaml.safe_load(f.read_text(encoding="utf-8")) if f.exists() else {}) or {}


# Messages the email form shows. Keys match the Lambda function's replies (newsletter/lambda/handler.py) and the
# ?check=1 style flags it redirects to when JavaScript is off.
EMAIL_MSGS = {
    "check": "Almost done. Check your inbox for an email from issues@marketingin3.com and tap the link to confirm.",
    "invalid": "That email address does not look right. Please check it and try again.",
    "slow": "Too many tries in a short time. Please wait a few minutes and try again.",
    "busy": "Too many tries in a short time. Please wait a few minutes and try again.",
    "error": "Something went wrong. Please try again in a moment.",
    "undeliverable": "That address cannot receive email from us. Please try another one.",
    "confirming": "Confirming your subscription…",
    "ok": "You are subscribed. The next issue arrives in your inbox on Monday.",
    "expired": "This confirmation link has expired or was already used. Enter your address again for a fresh one.",
}

EMAIL_JS = """<script>(function(){if(window.m3Email)return;window.m3Email=1;
var M=%s;
function ep(f){return f.getAttribute('action').replace(/\\/subscribe$/,'');}
function say(f,k){var s=f.querySelector('.mw-email-status');if(!s)return;s.textContent=M[k]||M.error;
s.className='mw-email-status is-'+(k==='ok'||k==='check'?'ok':(k==='confirming'?'wait':'bad'));}
function gc(e){try{if(window.goatcounter&&goatcounter.count)goatcounter.count({path:e,title:e,event:true});}catch(x){}}
document.querySelectorAll('form.mw-email').forEach(function(f){
var src=f.querySelector('input[name=source]');if(src)src.value=location.pathname;
f.addEventListener('submit',function(e){if(!window.fetch)return;e.preventDefault();
var b=f.querySelector('button');b.disabled=true;
var data={email:f.email.value,website:f.website.value,source:location.pathname};
fetch(f.getAttribute('action'),{method:'POST',headers:{'content-type':'application/json'},body:JSON.stringify(data)})
.then(function(r){return r.json().catch(function(){return {status:'error'};});})
.then(function(j){say(f,j.status);if(j.status==='check'){f.classList.add('is-done');gc('email-subscribe');}})
.catch(function(){say(f,'error');}).then(function(){b.disabled=false;});});});
var q=new URLSearchParams(location.search),f=document.querySelector('form.mw-email');if(!f)return;
['check','invalid','slow','error'].forEach(function(k){if(q.get(k))say(f,k);});
var t=q.get('t');if(t){say(f,'confirming');
fetch(ep(f)+'/confirm',{method:'POST',headers:{'content-type':'application/json'},body:JSON.stringify({t:t})})
.then(function(r){return r.json().catch(function(){return {status:'error'};});})
.then(function(j){say(f,j.status);if(j.status==='ok'){f.classList.add('is-done');gc('email-confirmed');}
if(history.replaceState)history.replaceState(null,'',location.pathname+'#email');})
.catch(function(){say(f,'error');});}
})();</script>"""


def email_form(variant: str = "inline") -> str:
    """The email signup form (watch/newsletter.yml); empty while no signup endpoint is set.
    variant "inline": the band in every issue next to the coffee prompt; "card": the Subscribe page."""
    cfg = newsletter_cfg()
    endpoint = (cfg.get("endpoint") or "").strip().rstrip("/")
    if not endpoint:
        return ""
    t = cfg.get("form") or {}
    fid = f"m3-email-{variant}"
    title = esc(t.get("title", "Get it by email"))
    head = (f'<div class="mw-sub-icon" aria-hidden="true">{svg_icon("mail")}</div><h2 id="email">{title}</h2>'
            if variant == "card" else f'<p class="mw-email-title">{title}</p>')
    return (f'<form class="mw-email mw-email-{variant}" action="{esc(endpoint)}/subscribe" method="post">'
            f'<div class="mw-email-text">{head}<p>{esc(t.get("text", ""))}</p></div>'
            f'<div class="mw-email-row"><label class="visually-hidden" for="{fid}">Email address</label>'
            f'<input id="{fid}" type="email" name="email" required autocomplete="email" inputmode="email" '
            f'placeholder="you@example.com" maxlength="254">'
            f'<input class="mw-hp" type="text" name="website" tabindex="-1" autocomplete="off" aria-hidden="true">'
            f'<input type="hidden" name="source" value="">'
            f'<button type="submit">{esc(t.get("button", "Subscribe"))}</button></div>'
            f'<p class="mw-email-status" role="status" aria-live="polite"></p>'
            f'<p class="mw-email-note">{esc(t.get("privacy", ""))}</p></form>'
            + EMAIL_JS % json.dumps(EMAIL_MSGS, ensure_ascii=False))


def svg_icon(name: str) -> str:
    f = ROOT / "assets" / "icons" / f"{name}.svg"
    if not f.exists():
        return ""
    t = re.sub(r"<!--.*?-->", "", f.read_text(encoding="utf-8"), flags=re.S).strip()
    return t.replace("<svg", '<svg aria-hidden="true" focusable="false"', 1)


def esc(x) -> str:
    return html.escape(str(x or ""), quote=True)


def md(text: str) -> str:
    """Minimal inline markdown: **bold**, *italic*; escapes everything else."""
    t = esc(text.strip())
    t = re.sub(r"\*\*(.+?)\*\*", r"<strong>\1</strong>", t)
    t = re.sub(r"(?<!\*)\*(?!\*)(.+?)\*", r"<em>\1</em>", t)
    return t


def plain(text: str) -> str:
    return re.sub(r"\s+", " ", re.sub(r"\*+", "", text)).strip()


def paras(text: str) -> str:
    return "".join(f"<p>{md(p)}</p>" for p in re.split(r"\n\s*\n", text.strip()) if p.strip())


def long_date(d: str) -> str:
    x = dt.date.fromisoformat(d)
    return f"{x.day} {x.strftime('%B %Y')}"


def apa(p: dict) -> str:
    a = p["authors"]
    names = ", ".join(a[:-1]) + ", & " + a[-1] if len(a) > 1 else a[0]
    vol = f", <em>{esc(p['volume'])}</em>" if p.get("volume") else ""
    iss = f"({esc(p['issue'])})" if p.get("issue") else ""
    pages = f", {esc(p['pages'])}" if p.get("pages") else ""
    return (f"{esc(names)} ({p['year']}). {esc(p['title'])}. <em>{esc(p['journal'])}</em>{vol}{iss}{pages}. "
            f'<a href="https://doi.org/{esc(p["doi"])}">https://doi.org/{esc(p["doi"])}</a>')


def chart_svg(c: dict, cid: str) -> str:
    """Horizontal bar chart, one series; the highlighted bar(s) in amber, values labelled at the bar end."""
    lo, hi = c["scale"]
    dec = c.get("decimals", 2)
    ROW, PAD, PLOT = 40, 70, 360
    # The label column has to fit the longest label, or the text is clipped at the left edge of the viewBox.
    # Roughly 7px per character at font-size 13.5 in Hanken Grotesk, which slightly over-estimates on purpose.
    LAB = max(250, int(max(len(str(b[0])) for b in c["bars"]) * 7.0) + 24)
    W = LAB + PLOT + PAD
    plot = PLOT
    H = ROW * len(c["bars"]) + 34
    x = lambda v: LAB + (v - lo) / (hi - lo) * plot
    g = []
    # recessive grid
    span = hi - lo
    step = c.get("step") or (20 if span > 60 else 10 if span > 20 else 1 if span > 4 else 0.5)
    v = lo
    while v <= hi + 1e-9:
        g.append(f'<line x1="{x(v):.1f}" y1="4" x2="{x(v):.1f}" y2="{H - 26}" stroke="{RULE}" stroke-width="1"/>'
                 f'<text x="{x(v):.1f}" y="{H - 8}" font-size="12" text-anchor="middle" fill="{MUTED}">{v:g}</text>')
        v += step
    for i, b in enumerate(c["bars"]):
        label, val = b[0], b[1]
        hl = len(b) > 2 and b[2]
        y = 8 + i * ROW
        w = max(2, x(val) - LAB)
        unit = c.get("unit", "")
        vtxt = f"{val:.{dec}f}{'%' if unit == '%' else ''}"
        fw = ' font-weight="600"' if hl else ""
        utxt = "" if unit == "%" else " " + esc(unit)
        g.append(f'<g><title>{esc(label)}: {vtxt}{utxt}</title>'
                 f'<text x="{LAB - 12}" y="{y + 19}" font-size="13.5" text-anchor="end" fill="{INK}"{fw}>{esc(label)}</text>'
                 f'<rect x="{LAB}" y="{y + 4}" width="{w:.1f}" height="22" rx="4" fill="{AMBER if hl else BAR}"/>'
                 f'<text x="{LAB + w + 8:.1f}" y="{y + 20}" font-size="13.5" fill="{INK}"{fw}>{vtxt}</text></g>')
    svg = (f'<svg viewBox="0 0 {W} {H}" role="img" aria-labelledby="{cid}-t" '
           f'font-family="Hanken Grotesk, Arial, sans-serif"><title id="{cid}-t">{esc(c["title"])}</title>{"".join(g)}</svg>')
    rows = "".join(f"<tr><th scope=\"row\">{esc(b[0])}</th><td>{b[1]}</td></tr>" for b in c["bars"])
    table = (f'<div class="mw-sr"><table><caption>{esc(c["title"])}</caption>'
             f"<tr><th>Group</th><th>Value ({esc(c.get('unit', ''))})</th></tr>{rows}</table></div>")
    return (f'<figure class="mw-chart" id="{cid}"><figcaption class="mw-chart-title">{esc(c["title"])}</figcaption>'
            f'<div class="mw-chart-svg">{svg}</div>{table}'
            f'<p class="mw-chart-src">{esc(c.get("source", ""))}</p></figure>')


def hero_html(img: dict) -> str:
    """Hero photo: WebP at two widths when available (much lighter), with the original JPEG as fallback."""
    stem = img["file"].rsplit(".", 1)[0]
    tag = (f'<img src="../../images/{esc(img["file"])}" alt="{esc(img["alt"])}" width="1600" height="900" '
           f'fetchpriority="high" decoding="async">')
    if (WEB / f"{stem}-960.webp").exists() and (WEB / f"{stem}-1600.webp").exists():
        return (f'<picture><source type="image/webp" sizes="(max-width: 900px) 100vw, 900px" '
                f'srcset="../../images/web/{stem}-960.webp 960w, ../../images/web/{stem}-1600.webp 1600w">{tag}</picture>')
    return tag


def orcid_url(o: str) -> str:
    o = (o or "").strip()
    if not o:
        return ""
    return o if o.startswith("http") else f"https://orcid.org/{o}"


def researchers(p: dict) -> list:
    """The paper's authors as printed in the paper: name, affiliation (as published), ORCID when the author has one."""
    return [r for r in (p.get("researchers") or []) if r.get("name")]


def link_names(html: str, p: dict, used: set, cite_only: bool = False, cites: bool = True) -> str:
    """Put an ORCID link on authors' names where the text already names them (Bruno, 18 October 2026).

    Full names ("Jonah Berger") are linked at their first mention in the prose; surnames are linked inside the study's own
    citation, e.g. "(Bravin, Clegg & Berger, 2026, Journal of Marketing)". Text inside existing links and tags is left alone.
    Nothing is added to the page: only names that are already there become links.
    """
    rs = [r for r in researchers(p) if orcid_url(r.get("orcid", ""))]
    if not rs:
        return html
    year = str(p.get("year", ""))

    def a(r, text):
        return (f'<a class="mw-orcid-link" href="{esc(orcid_url(r["orcid"]))}" '
                f'title="{esc(r["name"])} on ORCID">{text}</a>')

    def sub_text(text: str) -> str:
        if not cite_only:
            hits = []
            for r in rs:
                key = ("full", r["name"])
                m = None if key in used else re.search(r"(?<![\w-])" + re.escape(r["name"]) + r"(?![\w-])", text)
                if m:
                    hits.append((m.start(), m.end(), r))
                    used.add(key)
            if hits:  # link full names (right to left keeps offsets valid) and leave this text node's citations as they are
                for st, en, r in sorted(hits, key=lambda h: -h[0]):
                    text = text[:st] + a(r, text[st:en]) + text[en:]
                return text

        def cite(m):
            inner = m.group(0)
            for r in rs:
                sur = r["name"].split()[-1]
                inner = re.sub(r"(?<![\w>-])" + re.escape(sur) + r"(?![\w-])", lambda x: a(r, x.group(0)), inner, count=1)
            return inner
        return re.sub(r"\([^()]*?\b" + re.escape(year) + r"\b[^()]*?\)", cite, text) if (year and cites) else text

    out, depth = [], 0
    for part in re.split(r"(<[^>]+>)", html):
        if part.startswith("<"):
            if re.match(r"<a\b", part, re.I):
                depth += 1
            elif re.match(r"</a\s*>", part, re.I):
                depth = max(0, depth - 1)
            out.append(part)
        elif depth == 0 and part.strip():
            out.append(sub_text(part))
        else:
            out.append(part)
    return "".join(out)


def apa_linked(p: dict, cites: bool = True) -> str:
    """APA reference; authors link to ORCID only where the issue still uses linked citations (issue 41)."""
    html = apa(p)
    rs = researchers(p)
    if not rs or not cites:
        return html
    for au, r in zip(p["authors"], rs):
        url = orcid_url(r.get("orcid", ""))
        if url and esc(au) in html:
            html = html.replace(esc(au), f'<a class="mw-orcid-link" href="{esc(url)}" title="{esc(r["name"])} on ORCID">{esc(au)}</a>', 1)
    return html


def person_ld(r) -> dict:
    if isinstance(r, str):
        return {"@type": "Person", "name": r}
    out = {"@type": "Person", "name": r["name"]}
    if r.get("affiliation"):
        out["affiliation"] = {"@type": "Organization", "name": r["affiliation"]}
    url = orcid_url(r.get("orcid", ""))
    if url:
        out["@id"] = url
        out["sameAs"] = url
        out["identifier"] = {"@type": "PropertyValue", "propertyID": "ORCID", "value": url.rsplit("/", 1)[-1]}
    return out


def body(d: dict, prev_next: tuple, data: list) -> str:
    p = d["paper"]
    img = d["image"]
    used = set()
    cites = d["issue"] == 41   # Bruno, 19 Oct 2026: citations are plain (DOI link only); issue 41 was left as published
    out = [f'<p class="mw-kicker">Marketing in 3 · Issue {d["issue"]} · Week of {long_date(d["week_of"])}</p>',
           f'<figure class="mw-hero">{hero_html(img)}<figcaption>{esc(img["caption"])}</figcaption></figure>',
           f'<section class="mw-answer" aria-label="Short answer"><h2>The short answer</h2><p>{link_names(md(d["short_answer"]), p, used, cites=cites)}</p></section>',
           '<section class="mw-takeaways"><h2>Key takeaways</h2><ul>'
           + "".join(f"<li>{md(t)}</li>" for t in d["takeaways"]) + "</ul></section>"]
    charts = d.get("charts", {})
    for s in d["sections"]:
        sid = re.sub(r"[^a-z0-9]+", "-", s["h"].lower()).strip("-")
        out.append(f'<section id="{sid}"><h2>{esc(s["h"])}</h2>{link_names(paras(s["body"]), p, used, cites=cites)}')
        if s.get("facts"):
            out.append('<dl class="mw-facts">' + "".join(f"<div><dt>{esc(k)}</dt><dd>{md(v)}</dd></div>"
                                                          for k, v in s["facts"]) + "</dl>")
        if s.get("chart"):
            out.append(chart_svg(charts[s["chart"]], f"chart-{s['chart']}"))
        out.append("</section>")
    out.append(how_to_html(d["how_to"]))
    inline = support_inline()
    if inline:
        out.append(inline)
    form = email_form("inline")   # email signup next to the coffee prompt; empty until watch/newsletter.yml has an endpoint
    if form:
        out.append(form)
    out.append('<section id="what-to-expect"><h2>What to expect</h2><ul class="mw-list">'
               + "".join(f"<li>{md(x)}</li>" for x in d["expect"]) + "</ul></section>")
    out.append('<section id="where-it-does-not-work"><h2>Where it does not work</h2><ul class="mw-list">'
               + "".join(f"<li>{md(x)}</li>" for x in d["limits"]) + "</ul></section>")
    out.append('<section id="questions"><h2>Questions marketers ask</h2>'
               + "".join(f'<div class="mw-faq"><h3>{esc(f["q"])}</h3><p>{link_names(md(f["a"]), p, used, cites=cites)}</p></div>' for f in d["faq"])
               + "</section>")
    if d.get("also"):
        out.append('<section id="also-new"><h2>Also new this week</h2><div class="mw-also">'
                   + "".join(f'<article><p class="mw-also-src"><em>{esc(a["journal"])}</em> · {a["year"]}</p>'
                             f'<h3><a href="https://doi.org/{esc(a["doi"])}">{esc(a["title"])}</a></h3>'
                             f'<p class="mw-also-au">{esc(a["authors"])}</p><p>{md(a["text"])}</p></article>'
                             for a in d["also"]) + "</div></section>")
    oa = (f' Open access ({esc(p["licence"])}): free to read at the publisher.' if p.get("open_access") else "")
    out.append(f'<section id="source" class="mw-source"><h2>Source</h2><p class="mw-cite">{apa_linked(p, cites)}</p>'
               f'<p class="mw-note">This brief is written for practitioners from '
               f'{esc(d.get("source_basis", "the published article"))}.{oa} '
               f'Numbers are as reported by the authors; read the article for full methods.</p></section>')
    out.append(related_pages_html(d.get("related_pages") or [], p.get("doi", "")))
    out.append(keep_reading(d, data))
    out.append('<div class="mw-author"><img src="../../../assets/bruno.jpg" alt="Bruno Schivinski" width="64" height="64">'
               '<div><p><strong>Bruno Schivinski</strong> is Associate Professor of Marketing at Gdańsk University of '
               'Technology. He studies how consumers engage with brands in digital and social media.</p>'
               '<p><a href="../../../index.html">About Bruno</a> · <a href="../../index.html">All Marketing in 3 issues</a> · '
               '<a href="../../subscribe.html">Subscribe</a></p></div></div>')
    card = "" if inline else support_card()
    if card:
        out.append(card)
    prev, nxt = prev_next
    nav = []
    if prev:
        nav.append(f'<a class="mw-prev" href="../{prev["slug"]}/index.html"><span>Previous issue</span>{esc(prev["short_title"])}</a>')
    if nxt:
        nav.append(f'<a class="mw-next" href="../{nxt["slug"]}/index.html"><span>Next issue</span>{esc(nxt["short_title"])}</a>')
    if nav:
        out.append('<nav class="mw-pn" aria-label="More issues">' + "".join(nav) + "</nav>")
    return "\n".join(out)


def jsonld(d: dict, url: str) -> str:
    p = d["paper"]
    img_url = f"{SITE}/watch/images/{d['image']['og']}"
    hero = f"{SITE}/watch/images/{d['image']['file']}"

    def scholarly(doi, title, authors, journal, year):
        return {"@type": "ScholarlyArticle", "name": title, "headline": title, "sameAs": f"https://doi.org/{doi}",
                "identifier": {"@type": "PropertyValue", "propertyID": "DOI", "value": doi},
                "author": [person_ld(a) for a in authors],
                "datePublished": str(year), "isPartOf": {"@type": "Periodical", "name": journal}}

    lead = scholarly(p["doi"], p["title"], researchers(p) or p.get("authors_full", p["authors"]), p["journal"], p["year"])
    words = len(re.findall(r"\w+", json.dumps(d, ensure_ascii=False)))
    graph = [
        {"@type": "BlogPosting", "@id": f"{url}#article", "mainEntityOfPage": url, "url": url,
         "headline": d["title"], "alternativeHeadline": d["short_title"], "description": plain(d["description"]),
         "abstract": plain(d["short_answer"]),
         "image": [{"@type": "ImageObject", "url": img_url, "width": 1200, "height": 630},
                   {"@type": "ImageObject", "url": hero, "width": 1600, "height": 900}],
         "datePublished": d["week_of"], "dateModified": d.get("modified", d["week_of"]),
         "author": AUTHOR, "publisher": {"@id": AUTHOR["@id"]},
         "isPartOf": {"@type": "Blog", "name": "Marketing in 3", "url": f"{SITE}/watch/index.html"},
         "articleSection": "Marketing in 3", "position": d["issue"],
         "keywords": ", ".join(d["keywords"]), "inLanguage": "en", "wordCount": words,
         "about": [lead] + [{"@type": "Thing", "name": t} for t in d.get("topics", [])],
         "citation": [lead] + [scholarly(a["doi"], a["title"], [a["authors"]], a["journal"], a["year"]) for a in d.get("also", [])],
         "isAccessibleForFree": True},
        {"@type": "FAQPage", "@id": f"{url}#faq",
         "mainEntity": [{"@type": "Question", "name": f["q"], "acceptedAnswer": {"@type": "Answer", "text": plain(f["a"])}}
                        for f in d["faq"]]},
        {"@type": "BreadcrumbList", "itemListElement": [
            {"@type": "ListItem", "position": 1, "name": "Home", "item": f"{SITE}/index.html"},
            {"@type": "ListItem", "position": 2, "name": "Marketing in 3", "item": f"{SITE}/watch/index.html"},
            {"@type": "ListItem", "position": 3, "name": d["short_title"], "item": url}]},
    ]
    ld = json.dumps({"@context": "https://schema.org", "@graph": graph}, ensure_ascii=False)
    meta = [f'<script type="application/ld+json">{ld}</script>',
            f'<meta name="keywords" content="{esc(", ".join(d["keywords"]))}">',
            f'<meta name="author" content="Bruno Schivinski">',
            f'<meta property="og:type" content="article">',
            f'<meta property="article:published_time" content="{d["week_of"]}">',
            f'<meta property="article:author" content="Bruno Schivinski">',
            f'<meta property="article:section" content="Marketing in 3">',
            f'<link rel="canonical" href="{url}">']
    meta += [f'<meta property="article:tag" content="{esc(k)}">' for k in d["keywords"][:8]]
    return "\n".join("    " + m for m in meta) + "\n"


def build(d: dict, prev_next: tuple, data: list) -> dict:
    slug = d["slug"]
    url = f"{SITE}/watch/posts/{slug}/"   # clean directory URL: what gets shared, and what the sitemap lists
    fm = {
        "title": d["title"],
        "subtitle": plain(d["dek"]),
        "description": plain(d["description"]),
        "date": d["week_of"],
        "date-format": "D MMMM YYYY",
        "language": {"title-block-published": "Week of"},
        "categories": d.get("topics", []),
        "image": f"../../images/{d['image']['og']}",
        "image-alt": d["image"]["alt"],
        "open-graph": {"title": d["title"], "description": plain(d["description"]),
                       "image": f"../../images/{d['image']['og']}", "image-width": 1200, "image-height": 630},
        "twitter-card": {"title": d["title"], "description": plain(d["description"]), "card-style": "summary_large_image",
                         "image": f"../../images/{d['image']['og']}"},
        "page-layout": "article",
        "body-classes": "mw-page",
        "issue": d["issue"],
        # light card image for the list templates (absolute, because listings do not rewrite custom fields)
        "thumb": "/watch/" + thumb_src(d, ""),
    }
    text = ("---\n" + yaml.safe_dump(fm, allow_unicode=True, sort_keys=False, width=1000)
            + "include-in-header:\n  text: |\n" + jsonld(d, url) + "---\n\n"
            + f"<!-- GENERATED from watch/issues/{d['_file']} by scripts/build_watch.py. Edit the data file. -->\n\n"
            + "```{=html}\n" + body(d, prev_next, data) + "\n```\n")
    out = POSTS / slug
    out.mkdir(parents=True, exist_ok=True)
    (out / "index.qmd").write_text(text)
    return {**d, "url": url}


def write_topics(data: list) -> None:
    """One page per topic (watch/topics/<slug>.qmd) listing every issue on it, plus the topic bar for the
    main Marketing in 3 page (watch/_generated/topic-bar.md). Topic chips on issue pages link to these pages
    (scripts/link_topics.py)."""
    counts = topic_counts(data)
    newest = sorted(data, key=lambda x: x["week_of"], reverse=True)
    gen = ROOT / "watch" / "_generated"
    gen.mkdir(exist_ok=True)
    (gen / "topic-bar.md").write_text("```{=html}\n" + topic_bar(counts, None, "") + "\n```\n")
    # "Buy me a pint": empty files while watch/support.yml has no url, so nothing shows
    cfg = support_cfg()
    line = ""
    if cfg.get("url"):
        line = (f'<p class="mw-support-line">{esc(cfg.get("line", ""))} '
                f'<a href="{esc(cfg["url"])}" target="_blank" rel="noopener">'
                f'{esc(cfg.get("link") or cfg.get("button", "Buy me a pint"))}</a></p>')
    (gen / "support-line.md").write_text("```{=html}\n" + line + "\n```\n" if line else "\n")
    sub_card = support_inline("../", "inline_text_subscribe")
    (gen / "support-card.md").write_text("```{=html}\n" + sub_card + "\n```\n" if sub_card else "\n")
    # Email signup card for the Subscribe page (empty until watch/newsletter.yml has an endpoint)
    form = email_form("card")
    if form:
        privacy = (
            '<details class="mw-email-privacy"><summary>How your address is handled</summary>'
            '<p>Bruno Schivinski runs Marketing in 3 and is responsible for your data. Your email address is used for '
            'one thing: sending you each new issue. It is stored with Amazon Web Services in Sydney, Australia, '
            'is never sold or shared, and is deleted from the list as soon as you unsubscribe. A record of when you '
            'confirmed is kept as proof of your consent, and delivery reports (whether an email arrived or bounced) are kept '
            'for 30 days. Every email has an unsubscribe link. Amazon processes the data '
            'for Marketing in 3 under its data processing terms, which include the EU Standard Contractual Clauses '
            'for transfers outside the European Economic Area.</p>'
            '<p>The legal basis is your consent (GDPR Article 6(1)(a)), which you can withdraw at any time. To see, '
            'correct or delete what is held about you, reply to any issue or write to '
            '<a href="mailto:issues@marketingin3.com">issues@marketingin3.com</a>. You can also complain to your '
            'data protection authority; in Poland that is the UODO.</p></details>')
        card_html = (f'<section class="mw-sub-card mw-email-card" aria-labelledby="email">{form}{privacy}</section>')
        (gen / "email-card.md").write_text("```{=html}\n" + card_html + "\n```\n")
    else:
        (gen / "email-card.md").write_text("\n")
    TOPICS_DIR.mkdir(exist_ok=True)
    keep = set()
    for t, n in counts.items():
        slug = topic_slug(t)
        keep.add(f"{slug}.qmd")
        title, desc = TOPIC_INFO.get(t, (f"{t}: marketing research for practitioners",
                                          f"New marketing research on {t.lower()}, explained in plain English for "
                                          "practitioners, with steps to apply it and what to expect."))
        url = f"{SITE}/watch/topics/{slug}.html"
        items = [d for d in newest if t in d.get("topics", [])]
        extra = [d for d in newest if d not in items][: max(0, 3 - len(items))]
        ld = {"@context": "https://schema.org", "@graph": [
            {"@type": "CollectionPage", "@id": url, "url": url, "name": title, "description": desc,
             "isPartOf": {"@type": "Blog", "name": "Marketing in 3", "url": f"{SITE}/watch/"},
             "about": {"@type": "Thing", "name": t}, "inLanguage": "en", "author": {"@id": AUTHOR["@id"]},
             "mainEntity": {"@type": "ItemList", "numberOfItems": len(items), "itemListElement": [
                 {"@type": "ListItem", "position": i + 1, "url": f"{SITE}/watch/posts/{d['slug']}/", "name": d["title"]}
                 for i, d in enumerate(items)]}},
            {"@type": "BreadcrumbList", "itemListElement": [
                {"@type": "ListItem", "position": 1, "name": "Home", "item": f"{SITE}/"},
                {"@type": "ListItem", "position": 2, "name": "Marketing in 3", "item": f"{SITE}/watch/"},
                {"@type": "ListItem", "position": 3, "name": t, "item": url}]}]}
        fm = {"title": title, "description": desc, "page-layout": "article", "body-classes": "mw-topic-page",
              "image": f"../images/{items[0]['image']['og']}",
              "open-graph": {"title": title, "description": desc, "image": f"../images/{items[0]['image']['og']}",
                             "image-width": 1200, "image-height": 630},
              "twitter-card": {"title": title, "description": desc, "card-style": "summary_large_image",
                               "image": f"../images/{items[0]['image']['og']}"}}
        word = "issue" if n == 1 else "issues"
        body_html = (f'<p class="mw-kicker"><a href="../index.html">Marketing in 3</a> · Topic</p>'
                     f'<p class="mw-topic-intro">{n} {word} of Marketing in 3 on <strong>{esc(t)}</strong>, newest first. '
                     f'Each one explains a new peer-reviewed study in plain English, with steps to apply it.</p>'
                     + topic_bar(counts, t, "../")
                     + '<div class="watch-list">' + "".join(card(d, "../") for d in items) + "</div>")
        if extra:
            body_html += ('<section class="mw-more"><h2>More recent issues</h2><div class="watch-list">'
                          + "".join(card(d, "../") for d in extra) + "</div></section>")
        text = ("---\n" + yaml.safe_dump(fm, allow_unicode=True, sort_keys=False, width=1000)
                + "include-in-header:\n  text: |\n"
                + f'    <link rel="canonical" href="{url}">\n'
                + f'    <script type="application/ld+json">{json.dumps(ld, ensure_ascii=False)}</script>\n'
                + "---\n\n<!-- GENERATED by scripts/build_watch.py from the issue topics. Do not edit. -->\n\n"
                + "```{=html}\n" + body_html + "\n```\n")
        (TOPICS_DIR / f"{slug}.qmd").write_text(text)
    for stale in TOPICS_DIR.glob("*.qmd"):
        if stale.name not in keep and "GENERATED by scripts/build_watch.py" in stale.read_text():
            stale.unlink()


def llms(built: list[dict]) -> None:
    f = ROOT / "llms.txt"
    txt = f.read_text() if f.exists() else ""
    txt = txt.split("\n## Marketing in 3 issues")[0].rstrip("\n") + "\n"
    if built:
        txt += ("\n## Marketing in 3 issues\nWeekly briefs that translate new research from leading marketing journals "
                "for practitioners: what the study found, how to apply it, what to expect. Cite the original article.\n")
        for d in sorted(built, key=lambda x: x["week_of"], reverse=True):
            p = d["paper"]
            txt += (f"- [{d['title']}]({d['url']}): {plain(d['short_answer'])} Source: {p['authors'][0].split(',')[0]} et al., "
                    f"{p['year']}, {p['journal']}, https://doi.org/{p['doi']}.\n")
    f.write_text(txt)


def main() -> int:
    files = sorted(ISSUES.glob("*.yml"))
    data = []
    for f in files:
        d = yaml.safe_load(f.read_text())
        d["_file"] = f.name
        if os.environ.get("PUBLISH") == "1" and d.get("status") != "live":
            continue
        data.append(d)
    data.sort(key=lambda d: d["week_of"])
    keep = {d["slug"] for d in data}
    if os.environ.get("PUBLISH") == "1":
        for stale in POSTS.glob("*/index.qmd"):
            if stale.parent.name not in keep and (stale.read_text().find("GENERATED from watch/issues") >= 0):
                stale.unlink()
    built = [build(d, (data[i - 1] if i else None, data[i + 1] if i + 1 < len(data) else None), data)
             for i, d in enumerate(data)]
    write_topics(data)
    llms(built)
    print(f"Marketing in 3: built {len(built)} issue(s)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
