"""Quarto post-render step: add Google Analytics 4 (measurement ID G-JPC5W7TFHD) to every page.

GoatCounter (add_analytics.py) stays the cookie-free primary counter. GA4 runs beside it for the
fuller picture in Google's reports and in Supermetrics, and is set up privacy-first:
  - Consent Mode defaults to denied for analytics and all ad storage, so GA4 sets no cookies and
    only sends cookieless pings (no banner exists to grant consent; nothing ever flips it to granted).
  - Google signals and ad personalisation are off.
  - It only loads on the live domain, so local previews and test builds are never counted.
If a cookie banner is ever added, update analytics_storage to 'granted' on acceptance for full GA4 data.
Pages with their own include-in-header replace the site-wide one, so the snippet is inserted here,
after rendering, like add_analytics.py."""
import os
from pathlib import Path

out = Path(os.environ.get("QUARTO_PROJECT_OUTPUT_DIR", "_site"))
GA_ID = "G-JPC5W7TFHD"
MARK = "ga4-snippet"

SNIPPET = """<script id="%(mark)s">
(function () {
  if (location.hostname !== 'schivinski.com' && location.hostname !== 'www.schivinski.com') return;
  window.dataLayer = window.dataLayer || [];
  function gtag() { dataLayer.push(arguments); }
  window.gtag = gtag;
  gtag('consent', 'default', {
    analytics_storage: 'denied',
    ad_storage: 'denied',
    ad_user_data: 'denied',
    ad_personalization: 'denied'
  });
  gtag('js', new Date());
  gtag('config', '%(id)s', {allow_google_signals: false, allow_ad_personalization_signals: false});
  var s = document.createElement('script');
  s.async = true;
  s.src = 'https://www.googletagmanager.com/gtag/js?id=%(id)s';
  document.head.appendChild(s);
})();
</script>""" % {"mark": MARK, "id": GA_ID}

n = 0
for f in out.rglob("*.html"):
    s = f.read_text(encoding="utf-8")
    if MARK in s or "</body>" not in s:
        continue
    head, _, tail = s.rpartition("</body>")
    f.write_text(head + SNIPPET + "\n</body>" + tail, encoding="utf-8")
    n += 1
print(f"add_ga4: {n} page(s)")
