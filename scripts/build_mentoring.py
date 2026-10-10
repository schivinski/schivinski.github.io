#!/usr/bin/env python3
"""Build mentoring.qmd from data/mentoring.yml.

Page: intro with calls to action and credentials; five service plans (icon, price range with what moves the price,
what is included, a request button that preselects the service in the form); how pricing works; workshops for
institutions; how it works; principles; FAQ; request form (Web3Forms, delivered to the owner's email).
JSON-LD: Service with an OfferCatalog (EUR price ranges), FAQPage and BreadcrumbList.
"""
from __future__ import annotations

import html
import json
import re
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
SITE = "https://schivinski.github.io"
PAGE = f"{SITE}/mentoring.html"


def esc(x) -> str:
    return html.escape(str(x or ""), quote=True)


def icon(name: str, cls: str = "mt-ico") -> str:
    svg = (ROOT / "assets" / "icons" / f"{name}.svg").read_text()
    svg = re.sub(r"<!--.*?-->", "", svg, flags=re.S).strip()
    svg = re.sub(r'class="[^"]*"', f'class="{cls}" aria-hidden="true" focusable="false"', svg, count=1)
    return re.sub(r"\s+", " ", svg)


def eur(n: int) -> str:
    return f"€{n:,}"


def rng(a: int, b: int) -> str:
    return f"€{a:,}–{b:,}"


def plan(p: dict) -> str:
    sig = " mt-plan-signature" if p.get("badge") else ""
    badge = f'<span class="mt-badge">{esc(p["badge"])}</span>' if p.get("badge") else ""
    rows = p.get("tiers") or [{"label": p["low"], "min": p["min"]}, {"label": p["high"], "min": p["max"]}]
    def amt(t):
        return rng(t["min"], t["max"]) if "max" in t else eur(t["min"])
    aria = "Price by document type" if p.get("tiers") else "What moves the price"
    scale = (f'<div class="mt-scale"><div class="mt-track" aria-hidden="true"></div><ul class="mt-tiers" aria-label="{aria}">'
             + "".join(f'<li><span>{esc(t["label"])}</span><span class="mt-tier-p">{amt(t)}</span></li>' for t in rows)
             + "</ul></div>")
    incl = "".join(f"<li>{icon('check', 'mt-tick')}<span>{esc(i)}</span></li>" for i in p["includes"])
    return (f'<article class="mt-plan{sig}" id="plan-{esc(p["id"])}">{badge}'
            f'<div class="mt-plan-head"><span class="mt-plan-icon">{icon(p["icon"])}</span>'
            f'<h3>{esc(p["name"])}</h3></div>'
            f'<p class="mt-for">{esc(p["for"])}</p>'
            f'<p class="mt-price"><span class="mt-amount">{rng(p["min"], p["max"])}</span>'
            f'<span class="mt-unit">{esc(p["unit"])}</span></p>'
            f'<div class="mt-body">{scale}<ul class="mt-incl">{incl}</ul></div>'
            f'<a class="mt-btn mt-plan-cta" href="#request" data-service="{esc(p["id"])}">{esc(p["cta"])}</a></article>')


def form(d: dict, title: str | None = None, lede: str | None = None, default: str = "") -> str:
    f = d["form"]
    title = title or f["title"]
    lede = lede or f["lede"]
    roles = "".join(f"<option>{esc(r)}</option>" for r in f["roles"])
    services = "".join(f'<option value="{esc(s["value"])}" data-id="{esc(s["id"])}">{esc(s["value"])}</option>'
                       for s in f["services"])
    return f'''<section class="mt-request" id="request" aria-labelledby="request-title">
<div class="mt-request-intro"><span class="mt-plan-icon">{icon("mail")}</span><h2 id="request-title">{esc(title)}</h2>
<p>{esc(lede)}</p><p class="mt-small">{esc(f["privacy"])}</p></div>
<form class="mt-form" id="mt-form" novalidate data-key="{esc(d["web3forms_key"])}" data-default="{esc(default)}"
  data-success="{esc(f["success"])}" data-error="{esc(f["error"])}">
<input type="checkbox" name="botcheck" class="mt-hp" tabindex="-1" autocomplete="off" aria-hidden="true">
<div class="mt-field"><label for="f-name">Name</label><input id="f-name" name="name" autocomplete="name" required></div>
<div class="mt-field"><label for="f-email">Email</label><input id="f-email" name="email" type="email" autocomplete="email" required></div>
<div class="mt-field"><label for="f-role">I am a</label><select id="f-role" name="role" required><option value="">Choose one</option>{roles}</select></div>
<div class="mt-field"><label for="f-service">Service</label><select id="f-service" name="service" required><option value="">Choose a service</option>{services}</select></div>
<div class="mt-field"><label for="f-inst">Institution <span class="mt-opt">(optional)</span></label><input id="f-inst" name="institution" autocomplete="organization"></div>
<div class="mt-field"><label for="f-country">Country</label><input id="f-country" name="country" autocomplete="country-name" required></div>
<div class="mt-field mt-wide"><label for="f-msg">Your project and what you need</label>
<textarea id="f-msg" name="message" rows="5" required placeholder="For example: the stage of your project, the method you are using, and any deadline."></textarea></div>
<div class="mt-field mt-wide"><label for="f-deadline">Deadline <span class="mt-opt">(optional)</span></label><input id="f-deadline" name="deadline" placeholder="For example: journal resubmission by 30 November"></div>
<label class="mt-consent mt-wide"><input type="checkbox" name="consent" value="yes" required> I agree that my details are used only to reply to this request.</label>
<div class="mt-wide mt-submit"><button type="submit" class="mt-btn mt-btn-primary">{esc(f["button"])}</button>
<p class="mt-status" role="status" aria-live="polite"></p></div>
</form></section>'''


SCRIPT = r'''<script>
(function () {
  var form = document.getElementById('mt-form'); if (!form) return;
  var sel = document.getElementById('f-service');
  function choose(id) {
    if (!id) return;
    for (var i = 0; i < sel.options.length; i++) { if (sel.options[i].dataset.id === id) { sel.selectedIndex = i; break; } }
  }
  document.querySelectorAll('a[data-service]').forEach(function (a) {
    a.addEventListener('click', function () { choose(a.dataset.service); setTimeout(function () { document.getElementById('f-name').focus({preventScroll: true}); }, 450); });
  });
  choose(form.dataset.default);
  var q = new URLSearchParams(location.search).get('service'); if (q) choose(q);
  var status = form.querySelector('.mt-status'), btn = form.querySelector('button[type=submit]');
  form.addEventListener('submit', function (e) {
    e.preventDefault();
    status.className = 'mt-status';
    if (!form.checkValidity()) { status.textContent = 'Please complete the highlighted fields.'; status.classList.add('is-error'); form.classList.add('was-validated'); return; }
    var key = form.dataset.key;
    var data = Object.fromEntries(new FormData(form).entries());
    if (data.botcheck) return;
    if (!key || key.indexOf('PASTE') === 0) {  // form service not configured yet: hand over to the visitor's email app
      var to = ['bruno', 'schivinski'].join('.') + '@' + ['gmail', 'com'].join('.');
      var body = ['Name: ' + data.name, 'Email: ' + data.email, 'I am a: ' + data.role, 'Service: ' + data.service,
        'Institution: ' + (data.institution || ''), 'Country: ' + data.country, 'Deadline: ' + (data.deadline || ''), '', data.message].join('\n');
      location.href = 'mailto:' + to + '?subject=' + encodeURIComponent('Website request: ' + data.service) + '&body=' + encodeURIComponent(body);
      status.textContent = 'Your email app should open with the request ready to send.'; status.classList.add('is-ok'); return;
    }
    delete data.botcheck;
    data.access_key = key;
    data.subject = 'Website request: ' + data.service + ' (' + data.name + ')';
    data.from_name = 'schivinski.github.io';
    btn.disabled = true; status.textContent = 'Sending…';
    fetch('https://api.web3forms.com/submit', {method: 'POST', headers: {'Content-Type': 'application/json', 'Accept': 'application/json'}, body: JSON.stringify(data)})
      .then(function (r) { return r.json(); })
      .then(function (j) {
        if (j.success) { form.reset(); form.classList.remove('was-validated'); status.textContent = form.dataset.success; status.classList.add('is-ok'); }
        else { status.textContent = form.dataset.error; status.classList.add('is-error'); }
      })
      .catch(function () { status.textContent = form.dataset.error; status.classList.add('is-error'); })
      .finally(function () { btn.disabled = false; });
  });
})();
</script>'''


def jsonld(d: dict) -> str:
    person = {"@type": "Person", "@id": f"{SITE}/#person", "name": "Bruno Schivinski", "url": f"{SITE}/",
              "jobTitle": "Associate Professor of Marketing"}
    offers = []
    for p in d["plans"]:
        offers.append({"@type": "Offer", "name": p["name"], "description": p["for"], "url": f"{PAGE}#plan-{p['id']}",
                       "itemOffered": {"@type": "Service", "name": p["name"], "description": "; ".join(p["includes"])},
                       "priceSpecification": {"@type": "PriceSpecification", "minPrice": p["min"], "maxPrice": p["max"],
                                              "priceCurrency": "EUR", "unitText": p["unit"]}})
    inst = d["institutions"]
    offers.append({"@type": "Offer", "name": inst["title"], "description": inst["text"].strip(),
                   "priceSpecification": {"@type": "PriceSpecification", "minPrice": inst["prices"][0]["from"],
                                          "priceCurrency": "EUR", "unitText": "per half day"}})
    graph = [
        {"@type": "Service", "@id": f"{PAGE}#service", "name": d["title"], "url": PAGE,
         "serviceType": ["Research mentoring", "PhD coaching", "Academic coaching", "Structural equation modelling consultation",
                         "Grant proposal review", "Manuscript review"],
         "description": d["description"].strip(), "provider": person, "areaServed": "Worldwide",
         "availableChannel": {"@type": "ServiceChannel", "serviceUrl": f"{PAGE}#request"},
         "hasOfferCatalog": {"@type": "OfferCatalog", "name": d["plans_title"], "itemListElement": offers}},
        {"@type": "FAQPage", "mainEntity": [{"@type": "Question", "name": f["q"],
                                             "acceptedAnswer": {"@type": "Answer", "text": f["a"]}} for f in d["faq"]]},
        {"@type": "BreadcrumbList", "itemListElement": [
            {"@type": "ListItem", "position": 1, "name": "Home", "item": f"{SITE}/"},
            {"@type": "ListItem", "position": 2, "name": "Mentoring", "item": PAGE}]},
    ]
    blob = json.dumps({"@context": "https://schema.org", "@graph": graph}, ensure_ascii=False)
    return f'    <script type="application/ld+json">{blob}</script>\n'


def main() -> None:
    d = yaml.safe_load((ROOT / "data" / "mentoring.yml").read_text())
    creds = "".join(f'<li>{icon(c["icon"])}<span>{esc(c["text"])}</span></li>' for c in d["credentials"])
    hero = (f'<section class="mt-hero"><p class="mt-intro">{esc(d["intro"].strip())}</p>'
            '<div class="mt-ctas"><a class="mt-btn mt-btn-primary" href="#request">Request a session</a>'
            '<a class="mt-btn mt-btn-ghost" href="#request" data-service="intro">Book a free 15-minute intro call</a></div>'
            f'<ul class="mt-creds">{creds}</ul></section>')
    plans = (f'<section class="mt-plans" aria-labelledby="plans-title"><h2 id="plans-title">{esc(d["plans_title"])}</h2>'
             f'<p class="mt-lede">{esc(d["plans_lede"].strip())}</p>'
             '<p class="mt-swipe">Swipe to compare all five.</p>'
             f'<div class="mt-plan-grid">{"".join(plan(p) for p in d["plans"])}</div></section>')
    pricing = ('<section class="mt-pricing" aria-label="How pricing works"><ul>'
               + "".join(f'<li><span class="mt-plan-icon mt-soft">{icon(x["icon"])}</span><div><h3>{esc(x["title"])}</h3>'
                         f'<p>{esc(x["text"])}</p></div></li>' for x in d["pricing"])
               + f'</ul><p class="mt-small">{esc(d["pricing_note"])}</p></section>')
    i = d["institutions"]
    inst = (f'<section class="mt-inst"><span class="mt-plan-icon mt-inv">{icon(i["icon"])}</span><div class="mt-inst-body">'
            f'<h2>{esc(i["title"])}</h2><p>{esc(i["text"].strip())}</p></div><div class="mt-inst-price">'
            + "".join(f'<p><span>{esc(x["label"])}</span><strong>from {eur(x["from"])}</strong></p>' for x in i["prices"])
            + f'<p class="mt-small">{esc(i["note"])}</p>'
            f'<a class="mt-btn mt-btn-amber" href="#request" data-service="workshop">{esc(i["cta"])}</a></div></section>')
    steps = (f'<section class="mt-steps"><h2>{esc(d["steps_title"])}</h2><ol>'
             + "".join(f'<li><span class="mt-step-ico">{icon(s["icon"])}</span><h3>{esc(s["title"])}</h3><p>{esc(s["text"])}</p></li>'
                       for s in d["steps"]) + "</ol></section>")
    princ = (f'<section class="mt-principles"><h2>{esc(d["principles_title"])}</h2><ul>'
             + "".join(f'<li><span class="mt-plan-icon mt-soft">{icon(x["icon"])}</span><div><h3>{esc(x["title"])}</h3>'
                       f'<p>{esc(x["text"])}</p></div></li>' for x in d["principles"]) + "</ul></section>")
    faq = ('<section class="mt-faq"><h2>Questions</h2>'
           + "".join(f'<details><summary>{esc(f["q"])}</summary><p>{esc(f["a"])}</p></details>' for f in d["faq"])
           + "</section>")
    body = f'<div class="mt-wrap">{hero}{plans}{pricing}{inst}{steps}{princ}{faq}{form(d)}</div>{SCRIPT}'
    fm = {"title": d["title"], "subtitle": d["subtitle"], "description": d["description"].strip(),
          "page-layout": "full", "body-classes": "mentoring-page"}
    text = ("---\n" + yaml.safe_dump(fm, allow_unicode=True, sort_keys=False, width=1000)
            + "include-in-header:\n  text: |\n" + jsonld(d) + "---\n\n"
            + "<!-- GENERATED from data/mentoring.yml by scripts/build_mentoring.py. Edit the data file. -->\n\n"
            + "```{=html}\n" + body + "\n```\n")
    (ROOT / "mentoring.qmd").write_text(text)
    c = d["consultancy_form"]
    partial = form(d, c["title"], c["lede"], "consultancy") + SCRIPT
    (ROOT / "_request-form-consultancy.qmd").write_text(
        "<!-- GENERATED by scripts/build_mentoring.py from data/mentoring.yml. -->\n\n```{=html}\n" + partial + "\n```\n")
    print(f"Mentoring page: {len(d['plans'])} plan(s), {len(d['faq'])} FAQ(s)")


if __name__ == "__main__":
    main()
