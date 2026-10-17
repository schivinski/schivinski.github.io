"""Quarto post-render step: add the GoatCounter visitor counter to every page.

GoatCounter (https://schivinski.goatcounter.com) is cookie-free, so no consent banner is needed.
The snippet only loads on the live domain, so local previews and test builds are never counted.
Besides page views it records these clicks as events (shown in GoatCounter with the prefixes below):
  download/<file>      PDF downloads (accepted manuscripts and other PDFs)
  materials/<path>     scale toolkit files (questionnaire, Qualtrics, R, Mplus, codebook)
  article/<doi>        "Read the article" / "Published version" links to the publisher
  outbound/<host>      any other link that leaves the site (Scholar, ORCID, LinkedIn, ...)
  copy/<what>          "Copy citation", "Copy the full questionnaire", "Copy the item list"
  feed                 RSS feed links
  form/<page>          mentoring or consultancy request sent successfully (Web3Forms)
Pages with their own include-in-header replace the site-wide one, so the snippet is inserted
here, after rendering, like the favicons in add_icons.py."""
import os
from pathlib import Path

out = Path(os.environ.get("QUARTO_PROJECT_OUTPUT_DIR", "_site"))
CODE = "schivinski"
MARK = "goatcounter-snippet"

SNIPPET = """<script id="%(mark)s">
(function () {
  if (location.hostname !== 'schivinski.com' && location.hostname !== 'www.schivinski.com') return;
  var s = document.createElement('script');
  s.async = true;
  s.src = 'https://gc.zgo.at/count.js';
  s.setAttribute('data-goatcounter', 'https://%(code)s.goatcounter.com/count');
  document.head.appendChild(s);

  function send(path, title) {
    if (window.goatcounter && window.goatcounter.count) {
      window.goatcounter.count({path: path, title: title || path, event: true});
    }
  }
  function label(el) { return (el.textContent || '').replace(/\\s+/g, ' ').trim().slice(0, 120); }
  var page = location.pathname.replace(/index\\.html$/, '').replace(/\\.html$/, '') || '/';

  document.addEventListener('click', function (e) {
    var copy = e.target.closest && e.target.closest('[data-copy]');
    if (copy) { send('copy/' + copy.getAttribute('data-copy') + page, label(copy) + ' (' + page + ')'); return; }
    var a = e.target.closest && e.target.closest('a[href]');
    if (!a) return;
    var url;
    try { url = new URL(a.getAttribute('href'), location.href); } catch (err) { return; }
    var p = url.pathname;
    if (url.host === location.host) {
      if (/\\/papers\\/materials\\//.test(p)) send('materials/' + p.split('/papers/materials/')[1], label(a));
      else if (/\\.pdf$/i.test(p)) send('download/' + p.split('/').pop(), label(a) + ' (' + page + ')');
      else if (/\\.xml$/i.test(p)) send('feed', label(a));
      return;
    }
    if (url.protocol !== 'http:' && url.protocol !== 'https:') return;
    if (/(^|\\.)doi\\.org$/.test(url.host)) send('article/' + p.replace(/^\\//, ''), label(a) + ' (' + page + ')');
    else send('outbound/' + url.host.replace(/^www\\./, ''), label(a) + ' (' + page + ')');
  }, true);

  if (window.fetch) {
    var f = window.fetch;
    window.fetch = function (input, init) {
      var target = typeof input === 'string' ? input : (input && input.url) || '';
      var r = f.apply(this, arguments);
      if (/api\\.web3forms\\.com/.test(target)) {
        r.then(function (res) { if (res.ok) send('form' + page, 'Request form sent (' + page + ')'); }, function () {});
      }
      return r;
    };
  }
})();
</script>""" % {"mark": MARK, "code": CODE}

n = 0
for f in out.rglob("*.html"):
    s = f.read_text(encoding="utf-8")
    if MARK in s or "</body>" not in s:
        continue
    head, _, tail = s.rpartition("</body>")
    f.write_text(head + SNIPPET + "\n</body>" + tail, encoding="utf-8")
    n += 1
print(f"add_analytics: {n} page(s)")
