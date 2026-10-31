#!/usr/bin/env python3
"""Post-render: add social share buttons to every Marketing in 3 issue and every paper page.

Pages that get the buttons: watch/posts/<issue>/index.html and papers/<slug>.html (papers are only built once locked).
One block per page, at the end of the article: a "Know someone who should read this?" card with small round logo
buttons. Networks: LinkedIn, Bluesky, X, Threads, Facebook, WhatsApp, Reddit, Telegram, email, copy link (also the way
to reach Discord, Slack and Mastodon, which have no share URL), plus the phone's own share sheet where offered.

The buttons are plain links to each network's public share URL, so they work without JavaScript and without any
tracking script from the networks. Logos are the networks' own marks (X, Facebook, WhatsApp, Bluesky, Threads, Reddit, Telegram: Simple Icons, CC0;
LinkedIn: drawn here) in their brand colours, on purpose unlike the navy and amber of the rest of the site.
Clicks are counted by add_analytics.py as outbound/<host>; copy link and the share sheet send `share/copy` and `share/native`.
All CSS is inlined once per page, so styles.scss does not change. Run it before external_links.py."""
import html
import os
import re
from pathlib import Path
from urllib.parse import quote

ROOT = Path(__file__).resolve().parent.parent
OUT = Path(os.environ.get("QUARTO_PROJECT_OUTPUT_DIR", ROOT / "_site"))
SITE = "https://schivinski.com"
MARK = "mw-share"

ICONS = {"x": {"hex": "000000", "path": "M14.234 10.162 22.977 0h-2.072l-7.591 8.824L7.251 0H.258l9.168 13.343L.258 24H2.33l8.016-9.318L16.749 24h6.993zm-2.837 3.299-.929-1.329L3.076 1.56h3.182l5.965 8.532.929 1.329 7.754 11.09h-3.182z"}, "facebook": {"hex": "0866FF", "path": "M9.101 23.691v-7.98H6.627v-3.667h2.474v-1.58c0-4.085 1.848-5.978 5.858-5.978.401 0 .955.042 1.468.103a8.68 8.68 0 0 1 1.141.195v3.325a8.623 8.623 0 0 0-.653-.036 26.805 26.805 0 0 0-.733-.009c-.707 0-1.259.096-1.675.309a1.686 1.686 0 0 0-.679.622c-.258.42-.374.995-.374 1.752v1.297h3.919l-.386 2.103-.287 1.564h-3.246v8.245C19.396 23.238 24 18.179 24 12.044c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.628 3.874 10.35 9.101 11.647Z"}, "whatsapp": {"hex": "25D366", "path": "M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"}, "bluesky": {"hex": "1185FE", "path": "M5.202 2.857C7.954 4.922 10.913 9.11 12 11.358c1.087-2.247 4.046-6.436 6.798-8.501C20.783 1.366 24 .213 24 3.883c0 .732-.42 6.156-.667 7.037-.856 3.061-3.978 3.842-6.755 3.37 4.854.826 6.089 3.562 3.422 6.299-5.065 5.196-7.28-1.304-7.847-2.97-.104-.305-.152-.448-.153-.327 0-.121-.05.022-.153.327-.568 1.666-2.782 8.166-7.847 2.97-2.667-2.737-1.432-5.473 3.422-6.3-2.777.473-5.899-.308-6.755-3.369C.42 10.04 0 4.615 0 3.883c0-3.67 3.217-2.517 5.202-1.026"}, "reddit": {"hex": "FF4500", "path": "M12 0C5.373 0 0 5.373 0 12c0 3.314 1.343 6.314 3.515 8.485l-2.286 2.286C.775 23.225 1.097 24 1.738 24H12c6.627 0 12-5.373 12-12S18.627 0 12 0Zm4.388 3.199c1.104 0 1.999.895 1.999 1.999 0 1.105-.895 2-1.999 2-.946 0-1.739-.657-1.947-1.539v.002c-1.147.162-2.032 1.15-2.032 2.341v.007c1.776.067 3.4.567 4.686 1.363.473-.363 1.064-.58 1.707-.58 1.547 0 2.802 1.254 2.802 2.802 0 1.117-.655 2.081-1.601 2.531-.088 3.256-3.637 5.876-7.997 5.876-4.361 0-7.905-2.617-7.998-5.87-.954-.447-1.614-1.415-1.614-2.538 0-1.548 1.255-2.802 2.803-2.802.645 0 1.239.218 1.712.585 1.275-.79 2.881-1.291 4.64-1.365v-.01c0-1.663 1.263-3.034 2.88-3.207.188-.911.993-1.595 1.959-1.595Zm-8.085 8.376c-.784 0-1.459.78-1.506 1.797-.047 1.016.64 1.429 1.426 1.429.786 0 1.371-.369 1.418-1.385.047-1.017-.553-1.841-1.338-1.841Zm7.406 0c-.786 0-1.385.824-1.338 1.841.047 1.017.634 1.385 1.418 1.385.785 0 1.473-.413 1.426-1.429-.046-1.017-.721-1.797-1.506-1.797Zm-3.703 4.013c-.974 0-1.907.048-2.77.135-.147.015-.241.168-.183.305.483 1.154 1.622 1.964 2.953 1.964 1.33 0 2.47-.81 2.953-1.964.057-.137-.037-.29-.184-.305-.863-.087-1.795-.135-2.769-.135Z"}, "threads": {"hex": "000000", "path": "M18.263 11.097c-.03-3.486-1.92-5.586-5.111-5.586-2.13 0-3.922.963-4.863 2.499l2.062 1.438c.535-.843 1.272-1.543 2.628-1.543 1.528 0 2.318.85 2.544 2.431a15 15 0 0 0-2.236-.173c-4.125 0-6.068 1.867-6.068 4.336s1.943 3.99 4.804 3.99c3.139 0 5.013-2.115 5.781-4.735.798.361 1.348 1.204 1.348 2.47 0 3.387-3.907 5.232-7.22 5.232-4.885 0-8.077-3.207-8.077-8.424 0-6.392 4.223-10.487 9.9-10.487 3.808 0 5.69 1.671 6.97 3.914l2.108-1.475C21.44 2.078 18.331 0 13.663 0 6.227 0 1.168 5.277 1.168 12.934c0 7 4.953 11.066 10.856 11.066 4.878 0 9.809-2.846 9.809-7.716 0-2.545-1.46-4.231-3.569-5.187m-6.33 4.855c-1.077 0-2.026-.512-2.026-1.453 0-1.483 1.822-1.934 3.606-1.934.678 0 1.34.045 1.927.173-.422 1.927-1.671 3.215-3.508 3.214Z"}, "telegram": {"hex": "26A5E4", "path": "M11.944 0A12 12 0 0 0 0 12a12 12 0 0 0 12 12 12 12 0 0 0 12-12A12 12 0 0 0 12 0a12 12 0 0 0-.056 0zm4.962 7.224c.1-.002.321.023.465.14a.506.506 0 0 1 .171.325c.016.093.036.306.02.472-.18 1.898-.962 6.502-1.36 8.627-.168.9-.499 1.201-.82 1.23-.696.065-1.225-.46-1.9-.902-1.056-.693-1.653-1.124-2.678-1.8-1.185-.78-.417-1.21.258-1.91.177-.184 3.247-2.977 3.307-3.23.007-.032.014-.15-.056-.212s-.174-.041-.249-.024c-.106.024-1.793 1.14-5.061 3.345-.48.33-.913.49-1.302.48-.428-.008-1.252-.241-1.865-.44-.752-.245-1.349-.374-1.297-.789.027-.216.325-.437.893-.663 3.498-1.524 5.83-2.529 6.998-3.014 3.332-1.386 4.025-1.627 4.476-1.635z"}}

NETWORKS = [  # key, label, brand colour, share URL template ({u} = page URL, {t} = title, both percent-encoded)
    ("linkedin", "LinkedIn", "#0A66C2", "https://www.linkedin.com/sharing/share-offsite/?url={u}"),
    ("bluesky", "Bluesky", "#1185FE", "https://bsky.app/intent/compose?text={t}%20{u}"),
    ("x", "X", "#000000", "https://twitter.com/intent/post?text={t}&url={u}"),
    ("threads", "Threads", "#000000", "https://www.threads.com/intent/post?text={t}&url={u}"),
    ("facebook", "Facebook", "#0866FF", "https://www.facebook.com/sharer/sharer.php?u={u}"),
    ("whatsapp", "WhatsApp", "#1FA855", "https://wa.me/?text={t}%20{u}"),
    ("reddit", "Reddit", "#FF4500", "https://www.reddit.com/submit?url={u}&title={t}"),
    ("telegram", "Telegram", "#26A5E4", "https://t.me/share/url?url={u}&text={t}"),
    ("email", "Email", "#5A6478", "mailto:?subject={t}&body={t}%0A%0A{u}"),
]


def glyph(key: str) -> str:
    if key == "linkedin":  # the "in" mark: dot, stem and arch
        d = ('<circle cx="6.9" cy="6.5" r="1.9"/><rect x="5.2" y="9.6" width="3.4" height="9.4"/>'
             '<path d="M10.7 9.6h3.2v1.4c.6-1 1.8-1.7 3.4-1.7 3 0 3.7 2 3.7 4.5V19h-3.4v-4.6c0-1.1-.1-2.1-1.4-2.1-1.4 0-1.9 1-1.9 2.1V19h-3.6z"/>')
        return f'<svg viewBox="0 0 24 24" aria-hidden="true" focusable="false" fill="currentColor">{d}</svg>'
    if key == "email":
        return ('<svg viewBox="0 0 24 24" aria-hidden="true" focusable="false" fill="none" stroke="currentColor" '
                'stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="5" width="18" height="14" rx="2"/>'
                '<path d="m3 7 9 6 9-6"/></svg>')
    if key == "copy":
        return ('<svg viewBox="0 0 24 24" aria-hidden="true" focusable="false" fill="none" stroke="currentColor" '
                'stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10 14a4 4 0 0 0 5.7 0l3-3a4 4 0 0 0-5.7-5.7l-1 1"/>'
                '<path d="M14 10a4 4 0 0 0-5.7 0l-3 3A4 4 0 0 0 11 18.7l1-1"/></svg>')
    if key == "native":
        return ('<svg viewBox="0 0 24 24" aria-hidden="true" focusable="false" fill="none" stroke="currentColor" '
                'stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 15V3m0 0L8 7m4-4 4 4"/>'
                '<path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2v-7"/></svg>')
    return f'<svg viewBox="0 0 24 24" aria-hidden="true" focusable="false" fill="currentColor"><path d="{ICONS[key]["path"]}"/></svg>'


CSS = """<style id="mw-share-css">
.mw-share{margin:2.6rem 0 1.2rem;padding:1.4rem 1.6rem;border-radius:14px;background:linear-gradient(135deg,#f3f6ff 0%,#fff6e6 100%);border:1px solid #dfe5f3}
.mw-share h2{color:#15203b;margin:0 0 .25rem;font-size:1.35rem;border:0;padding:0}
.mw-share-lead{margin:0 0 1rem;color:#46506a;font-size:1rem}
.mw-share-row{display:flex;flex-wrap:wrap;gap:.55rem;list-style:none;margin:0;padding:0}
.mw-share-row li{margin:0;padding:0}
.mw-share-btn{box-sizing:border-box;display:inline-flex;align-items:center;justify-content:center;width:2.15rem;height:2.15rem;padding:0;border:0;border-radius:50%;background:var(--c);color:#fff!important;text-decoration:none!important;cursor:pointer;box-shadow:0 1px 2px rgba(21,32,59,.18);transition:transform .15s ease,box-shadow .15s ease,filter .15s ease}
.mw-share-btn svg{width:1rem;height:1rem;flex:none}
.mw-share-btn span{position:absolute;width:1px;height:1px;overflow:hidden;clip:rect(0 0 0 0);white-space:nowrap}
.mw-share-btn:hover,.mw-share-btn:focus-visible{transform:translateY(-2px);box-shadow:0 5px 12px rgba(21,32,59,.28);filter:brightness(1.1)}
.mw-share-btn:focus-visible{outline:3px solid #e0a12a;outline-offset:2px}
.mw-share-btn.is-done{background:#1b7a45}
.mw-share-native{display:none}
.mw-share-status{margin:.5rem 0 0;min-height:1.1rem;font-size:.85rem;color:#1b7a45}
@media (max-width:560px){.mw-share{padding:1.1rem}}
@media print{.mw-share{display:none}}
</style>"""

JS = """<script id="mw-share-js">(function(){
function count(p,t){try{if(window.mwTrack)window.mwTrack(p);}catch(e){}try{if(window.goatcounter&&window.goatcounter.count)window.goatcounter.count({path:p,title:t||p,event:true});}catch(e){}}
var page=location.pathname.replace(/index\\.html$/,'').replace(/\\.html$/,'')||'/';
document.querySelectorAll('.mw-share').forEach(function(box){
 var url=box.getAttribute('data-url'),title=box.getAttribute('data-title'),st=box.querySelector('.mw-share-status');
 function say(m){if(st){st.textContent=m;setTimeout(function(){st.textContent='';},2600);}}
 var copy=box.querySelector('[data-share-copy]');
 if(copy)copy.addEventListener('click',function(){
  var b=copy,done=function(){b.classList.add('is-done');say('Link copied');count('share/copy'+page,'Copy link ('+page+')');setTimeout(function(){b.classList.remove('is-done');},2000);};
  if(navigator.clipboard&&navigator.clipboard.writeText){navigator.clipboard.writeText(url).then(done,function(){window.prompt('Copy this link',url);});}
  else{window.prompt('Copy this link',url);}
 });
 var nat=box.querySelector('[data-share-native]');
 if(nat&&navigator.share){nat.style.display='inline-flex';nat.addEventListener('click',function(){
  navigator.share({title:title,url:url}).then(function(){count('share/native'+page,'Share sheet ('+page+')');},function(){});});}
});
})();</script>"""


def block(url: str, title: str) -> str:
    u, t = quote(url, safe=""), quote(title, safe="")
    items = []
    for key, label, colour, tpl in NETWORKS:
        href = tpl.format(u=u, t=t)
        tgt = "" if key == "email" else ' target="_blank" rel="noopener"'
        items.append(f'<li><a class="mw-share-btn" style="--c:{colour}" href="{html.escape(href, quote=True)}"{tgt} '
                     f'title="Share on {label}" aria-label="Share on {label}">{glyph(key)}<span>{label}</span></a></li>')
    items.append(f'<li><button type="button" class="mw-share-btn" style="--c:#15203b" data-share-copy title="Copy link" aria-label="Copy link">{glyph("copy")}<span>Copy link</span></button></li>')
    items.append(f'<li><button type="button" class="mw-share-btn mw-share-native" style="--c:#8a5a00" data-share-native title="More sharing options" aria-label="More sharing options">{glyph("native")}<span>More</span></button></li>')
    attrs = f'data-url="{html.escape(url, quote=True)}" data-title="{html.escape(title, quote=True)}"'
    return (f'<aside class="mw-share" {attrs} aria-labelledby="mw-share-h"><h2 id="mw-share-h">Know someone who should read this?</h2>'
            f'<p class="mw-share-lead">Send it to a colleague or post it to your network. One click opens the page ready to share.</p>'
            f'<ul class="mw-share-row" aria-label="Share this page">{"".join(items)}</ul>'
            f'<p class="mw-share-status" role="status" aria-live="polite"></p></aside>')


def targets():
    for f in sorted(OUT.rglob("*.html")):
        rel = f.relative_to(OUT).as_posix()
        if re.fullmatch(r"watch/posts/[^/]+/index\.html", rel):
            yield f, rel, "post"
        elif re.fullmatch(r"papers/[^/]+\.html", rel) and rel != "papers/index.html":
            yield f, rel, "paper"


def main() -> None:
    n = 0
    for f, rel, kind in targets():
        s = f.read_text(encoding="utf-8")
        if 'id="mw-share-css"' in s or "</main>" not in s:
            continue
        m = re.search(r'<link rel="canonical" href="([^"]+)"', s)
        url = m.group(1) if m else f"{SITE}/{rel.replace('index.html', '')}"
        m = re.search(r'<meta property="og:title" content="([^"]+)"', s) or re.search(r"<title>(.*?)</title>", s, re.S)
        title = html.unescape(m.group(1)).replace(" – Bruno Schivinski", "").strip() if m else "Marketing in 3"
        if len(title) > 200:
            title = title[:197].rstrip() + "…"
        head, _, tail = s.rpartition("</main>")
        s = head + block(url, title) + "\n</main>" + tail
        s = s.replace("</head>", CSS + "\n</head>", 1)
        s = s.replace("</body>", JS + "\n</body>", 1)
        f.write_text(s, encoding="utf-8")
        n += 1
    print(f"add_share: share buttons on {n} page(s)")


if __name__ == "__main__":
    main()
