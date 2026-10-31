"""Quarto post-render step: add Google Analytics 4 (measurement ID G-JPC5W7TFHD) to every page.

GoatCounter (add_analytics.py) stays the cookie-free primary counter. GA4 runs beside it for the
fuller picture (user flow, paths, returning visitors) in Google's reports, in Looker Studio and in
Supermetrics. Consent is handled per visitor:

  * Consent Mode starts with everything denied, so nothing is stored before a decision is made.
  * Visitors whose time zone is in Europe (a proxy for the EU, EEA and UK that needs no IP lookup
    and no third-party geolocation call) are shown a banner and are counted only if they accept.
  * Everyone else has analytics_storage granted on load. They can opt out on /privacy.html, which
    clears the stored choice.
  * The choice is remembered in localStorage under mw-consent-v1. Clearing it asks again.
  * Google Signals and ad personalisation stay off, so the data is never used for ad targeting.
  * It only loads on the live domain, so local previews and test builds are never counted.

Accepting fires an extra page_view, because the automatic one has already gone out cookieless and
would otherwise be missing from the reports for that first page.

Pages with their own include-in-header replace the site-wide one, so the snippet is inserted here,
after rendering, like add_analytics.py."""
import os
from pathlib import Path

out = Path(os.environ.get("QUARTO_PROJECT_OUTPUT_DIR", "_site"))
GA_ID = "G-JPC5W7TFHD"
MARK = "ga4-snippet"

SNIPPET = """<script id="__MARK__">
(function () {
  if (location.hostname !== 'schivinski.com' && location.hostname !== 'www.schivinski.com') return;
  var KEY = 'mw-consent-v1';
  window.dataLayer = window.dataLayer || [];
  function gtag() { dataLayer.push(arguments); }
  window.gtag = gtag;
  gtag('consent', 'default', {
    analytics_storage: 'denied',
    ad_storage: 'denied',
    ad_user_data: 'denied',
    ad_personalization: 'denied'
  });

  var saved = null;
  try { saved = localStorage.getItem(KEY); } catch (e) {}
  var tz = '';
  try { tz = Intl.DateTimeFormat().resolvedOptions().timeZone || ''; } catch (e) {}
  var mustAsk = tz.indexOf('Europe/') === 0;

  function grant() { gtag('consent', 'update', {analytics_storage: 'granted'}); }
  if (saved === 'granted' || (!mustAsk && saved !== 'denied')) grant();

  gtag('js', new Date());
  var path = location.pathname;
  var group = path === '/' || path === '/index.html' ? 'Home'
    : /^\\/watch\\/posts\\//.test(path) ? 'Marketing in 3 issue'
    : /^\\/watch\\/topics\\//.test(path) ? 'Marketing in 3 topic'
    : /^\\/watch\\//.test(path) ? 'Marketing in 3'
    : /^\\/papers\\//.test(path) ? 'Paper'
    : /^\\/(mentoring|consultancy)/.test(path) ? 'Services'
    : /^\\/teaching/.test(path) ? 'Teaching'
    : /^\\/publications/.test(path) ? 'Publications'
    : /^\\/privacy/.test(path) ? 'Privacy' : 'Other';
  var cfg = {allow_google_signals: false, allow_ad_personalization_signals: false, content_group: group};
  if (group === 'Marketing in 3 issue') {
    try {
      var ld = document.querySelectorAll('script[type="application/ld+json"]');
      for (var i = 0; i < ld.length; i++) {
        var j = JSON.parse(ld[i].textContent), g = j['@graph'] || [j];
        for (var k = 0; k < g.length; k++) if (g[k]['@type'] === 'BlogPosting' && g[k].position) cfg.issue_number = String(g[k].position);
      }
      var t = document.querySelectorAll('.mw-more-topics a');
      if (t.length) cfg.topic = Array.prototype.map.call(t, function (a) { return a.textContent.trim(); }).join(', ').slice(0, 100);
    } catch (e) {}
  }
  gtag('config', '__ID__', cfg);

  // Bridge used by the site's click and form handlers: the same event labels GoatCounter gets are sent to GA4
  // as named events, so conversions (leads, sign-ups, support clicks) can be marked as key events there.
  window.mwTrack = function (label) {
    try {
      var l = String(label || ''), i = l.indexOf('/'), head = i < 0 ? l : l.slice(0, i), rest = i < 0 ? '' : l.slice(i + 1);
      if (head === 'form') gtag('event', 'generate_lead', {form_page: rest || '/'});
      else if (head === 'email-confirmed') gtag('event', 'sign_up', {method: 'newsletter'});
      else if (head === 'email-subscribe') gtag('event', 'newsletter_request');
      else if (head === 'support') gtag('event', 'support_click');
      else if (head === 'article') gtag('event', 'article_click', {doi: rest.slice(0, 100)});
      else if (head === 'materials') gtag('event', 'materials_download', {file_name: rest.slice(0, 100)});
      else if (head === 'copy') gtag('event', 'copy_text', {what: rest.split('/')[0]});
      else if (head === 'feed') gtag('event', 'feed_click');
      else if (head === 'share') gtag('event', 'share', {method: rest.split('/')[0]});
    } catch (e) {}
  };
  var s = document.createElement('script');
  s.async = true;
  s.src = 'https://www.googletagmanager.com/gtag/js?id=__ID__';
  document.head.appendChild(s);

  if (!mustAsk || saved) return;
  function ask() {
    var bar = document.createElement('div');
    bar.className = 'mw-consent';
    bar.setAttribute('role', 'dialog');
    bar.setAttribute('aria-label', 'Analytics cookies');
    bar.innerHTML = '<p>Count this visit in Google Analytics? It tells me which issues people read. '
      + 'Analytics only: no advertising, no profiling, nothing shared with advertisers. '
      + '<a href="/privacy.html">How I handle data</a></p>'
      + '<div class="mw-consent-btns">'
      + '<button type="button" class="mw-consent-btn mw-consent-no">No thanks</button>'
      + '<button type="button" class="mw-consent-btn mw-consent-yes">Accept</button>'
      + '</div>';
    document.body.appendChild(bar);
    function choose(v) {
      try { localStorage.setItem(KEY, v); } catch (e) {}
      if (v === 'granted') { grant(); gtag('event', 'page_view'); }
      if (bar.parentNode) bar.parentNode.removeChild(bar);
    }
    bar.querySelector('.mw-consent-yes').addEventListener('click', function () { choose('granted'); });
    bar.querySelector('.mw-consent-no').addEventListener('click', function () { choose('denied'); });
  }
  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', ask);
  else ask();
})();
</script>""".replace("__MARK__", MARK).replace("__ID__", GA_ID)

n = 0
for f in out.rglob("*.html"):
    s = f.read_text(encoding="utf-8")
    if MARK in s or "</body>" not in s:
        continue
    head, _, tail = s.rpartition("</body>")
    f.write_text(head + SNIPPET + "\n</body>" + tail, encoding="utf-8")
    n += 1
print(f"add_ga4: {n} page(s)")
