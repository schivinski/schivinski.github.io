<?xml version="1.0" encoding="UTF-8"?>
<!-- Makes the Marketing in 3 RSS feed readable when someone opens it in a browser.
     Feed readers ignore this file. Linked from watch/index.xml by scripts/style_feed.py. -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:media="http://search.yahoo.com/mrss/">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="robots" content="noindex"/>
        <title>Marketing in 3 RSS feed</title>
        <style>
          *{box-sizing:border-box}
          body{margin:0;background:#f6f7f9;color:#15203b;font-family:"Hanken Grotesk",Arial,Helvetica,sans-serif;line-height:1.55}
          header{background:#15203b;color:#fff;padding:2.2rem 1rem}
          .w{max-width:46rem;margin:0 auto;padding:0 1rem}
          h1{font-family:Newsreader,Georgia,serif;font-weight:600;font-size:2rem;margin:0 0 .4rem}
          header p{margin:0;color:#d7dbe4}
          .note{background:#fff;border:1px solid #dde1e8;border-left:4px solid #e0a12a;border-radius:0 8px 8px 0;padding:1rem 1.2rem;margin:1.6rem 0}
          .note strong{display:block;margin-bottom:.2rem}
          a{color:#15203b}
          .btn{display:inline-block;margin-top:.7rem;background:#15203b;color:#fff !important;text-decoration:none;font-weight:600;padding:.55rem 1.1rem;border-radius:999px}
          .item{display:flex;gap:1rem;background:#fff;border:1px solid #dde1e8;border-radius:8px;padding:1rem;margin:0 0 1rem}
          .item img{width:9rem;aspect-ratio:16/9;height:auto;border-radius:6px;object-fit:cover;flex:none}
          .item h2{font-family:Newsreader,Georgia,serif;font-size:1.2rem;line-height:1.3;margin:0 0 .3rem}
          .meta{color:#5b6476;font-size:.85rem;margin:0}
          @media (max-width:560px){.item{flex-direction:column}.item img{width:100%}}
        </style>
      </head>
      <body>
        <header><div class="w">
          <h1>Marketing in 3</h1>
          <p>New marketing research, translated for practitioners. By Bruno Schivinski.</p>
        </div></header>
        <main class="w">
          <div class="note">
            <strong>This is an RSS feed.</strong>
            Copy this page's address into a feed reader such as Feedly or Inoreader to get new issues automatically.
            <br/><a class="btn" href="subscribe.html">How to subscribe</a>
          </div>
          <xsl:for-each select="rss/channel/item">
            <article class="item">
              <xsl:if test="media:content/@url">
                <img src="{media:content/@url}" alt="" loading="lazy"/>
              </xsl:if>
              <div>
                <h2><a href="{link}"><xsl:value-of select="title"/></a></h2>
                <p class="meta"><xsl:value-of select="substring(pubDate, 6, 11)"/>
                  <xsl:for-each select="category"> · <xsl:value-of select="."/></xsl:for-each></p>
              </div>
            </article>
          </xsl:for-each>
          <p class="meta"><a href="index.html">All Marketing in 3 issues on the website</a></p>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
