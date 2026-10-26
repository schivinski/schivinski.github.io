"""Post-render: add a "Buy me a coffee" link to the site footer, next to "Subscribe to Marketing in 3".

Reads watch/support.yml and does nothing while its `url` is empty, so the footer only changes once the Ko-fi
page exists. Every Ko-fi link on the site opens Ko-fi's embedded widget in a dialog on the same page (no redirect); the plain
link still works if JavaScript or <dialog> is unavailable. Clicks are counted in GoatCounter as `support`."""
import html
import os
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
out = Path(os.environ.get("QUARTO_PROJECT_OUTPUT_DIR", ROOT / "_site"))
cfg = yaml.safe_load((ROOT / "watch" / "support.yml").read_text(encoding="utf-8")) or {}
url = cfg.get("url") or ""
if url:
    item = (f'<li class="nav-item mw-footer-support"><a class="nav-link" href="{html.escape(url)}" target="_blank" '
            f'rel="noopener"><p>{html.escape(cfg.get("link") or cfg.get("button", "Buy me a pint"))}</p></a></li>')
    marker = '<div class="nav-footer-right">\n      <ul class="footer-items list-unstyled">'
    n = 0
    for f in out.rglob("*.html"):
        s = f.read_text(encoding="utf-8")
        if marker in s and "mw-footer-support" not in s:
            f.write_text(s.replace(marker, marker + "\n" + item, 1), encoding="utf-8")
            n += 1
    print(f"add_support: footer link on {n} page(s)")

    embed = url.rstrip("/") + "/?hidefeed=true&widget=true&embed=true&preview=true"
    script = (
        "<script>(function(){if(!window.HTMLDialogElement)return;var d=null,body=null;"
        "function build(){d=document.createElement('dialog');d.className='mw-kofi';d.setAttribute('aria-label','Buy me a coffee');"
        f"d.innerHTML='<div class=\"mw-kofi-head\"><strong>Buy me a coffee</strong><button type=\"button\" class=\"mw-kofi-close\" aria-label=\"Close\">&times;</button></div>"
        f"<div class=\"mw-kofi-body\"><p class=\"mw-kofi-wait\">Loading…</p></div><p class=\"mw-kofi-foot\"><a href=\"'+{url!r}+'\" target=\"_blank\" rel=\"noopener\">Open on Ko-fi</a></p>';"
        "document.body.appendChild(d);body=d.querySelector('.mw-kofi-body');"
        "d.querySelector('.mw-kofi-close').addEventListener('click',function(){d.close();});"
        "d.addEventListener('click',function(e){if(e.target===d)d.close();});"
        "var f=document.createElement('iframe');"
        f"f.src={embed!r};" +
        "f.title='Ko-fi: buy me a coffee';f.setAttribute('loading','lazy');f.className='mw-kofi-frame';body.appendChild(f);}"
        "function open(){if(!d)build();d.showModal();}"
        "document.addEventListener('click',function(e){"
        "if(e.defaultPrevented||e.button||e.metaKey||e.ctrlKey||e.shiftKey||e.altKey)return;"
        "var a=e.target.closest&&e.target.closest('a[href]');if(!a||a.closest('dialog.mw-kofi'))return;"
        f"var h=a.getAttribute('href')||'';if(h.indexOf({url!r})!==0)return;"
        "e.preventDefault();open();});"
        "})();</script>"
    )
    m = 0
    for f in out.rglob("*.html"):
        s = f.read_text(encoding="utf-8")
        if "mw-footer-support" in s and "mw-kofi" not in s and "</body>" in s:
            f.write_text(s.replace("</body>", script + "</body>", 1), encoding="utf-8")
            m += 1
    print(f"add_support: embedded Ko-fi dialog on {m} page(s)")
