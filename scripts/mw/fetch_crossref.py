import json, re, time, urllib.request, urllib.parse, sys
J = {
 "Journal of Marketing": ["0022-2429","1547-7185"],
 "Journal of Marketing Research": ["0022-2437","1547-7193"],
 "Journal of Consumer Research": ["0093-5301","1537-5277"],
 "Marketing Science": ["0732-2399","1526-548X"],
 "Journal of the Academy of Marketing Science": ["0092-0703","1552-7824"],
 "Journal of Consumer Psychology": ["1057-7408","1532-7663"],
 "International Journal of Research in Marketing": ["0167-8116"],
 "Journal of Retailing": ["0022-4359"],
 "Journal of Service Research": ["1094-6705","1552-7379"],
 "Journal of International Marketing": ["1069-031X","1547-7215"],
 "Journal of Public Policy & Marketing": ["0743-9156","1547-7207"],
 "European Journal of Marketing": ["0309-0566","1758-7123"],
 "Journal of Interactive Marketing": ["1094-9968","1520-6653"],
 "Journal of Advertising": ["0091-3367","1557-7805"],
 "Journal of Advertising Research": ["0021-8499","1740-1909"],
 "International Journal of Advertising": ["0265-0487","1759-3948"],
 "Psychology & Marketing": ["0742-6046","1520-6793"],
 "Journal of Research in Interactive Marketing": ["2040-7122","2040-7130"],
 "Journal of Business Research": ["0148-2963"],
}
def get(u):
    r=urllib.request.Request(u,headers={"User-Agent":"schivinski.github.io MW research (mailto:bruno.schivinski@gmail.com)"})
    for a in range(4):
        try: return json.load(urllib.request.urlopen(r,timeout=90))
        except Exception as e:
            time.sleep(5*(a+1)); err=e
    raise err
out={}
for name,issns in J.items():
    n=0
    for issn in issns:
        cursor="*"
        while cursor:
            u=(f"https://api.crossref.org/journals/{issn}/works?filter=from-pub-date:2026-01-01,until-pub-date:2026-12-31,type:journal-article"
               f"&rows=500&cursor={urllib.parse.quote(cursor)}&select=DOI,title,abstract,author,published-online,published-print,issued,container-title,subject")
            d=get(u)["message"]
            for it in d["items"]:
                doi=it["DOI"].lower()
                if doi in out: continue
                t=(it.get("title") or [""])[0]
                if not t or re.match(r"(erratum|corrigendum|correction|editorial|retraction|expression of concern|call for papers|reviewer|issue information|front matter|back matter)",t.strip(),re.I): continue
                def dp(k):
                    x=it.get(k,{}).get("date-parts",[[None]])[0]; return "-".join(f"{v:02d}" if i else str(v) for i,v in enumerate(x) if v) if x and x[0] else None
                out[doi]={"journal":name,"title":re.sub(r"<[^>]+>","",t),"abstract":re.sub(r"<[^>]+>|\s+"," ",it.get("abstract","")).strip(),
                          "authors":[f"{a.get('given','')} {a.get('family','')}".strip() for a in it.get("author",[])],
                          "online":dp("published-online"),"print":dp("published-print"),"issued":dp("issued")}
                n+=1
            cursor=d.get("next-cursor") if len(d["items"])==500 else None
            time.sleep(0.3)
    print(name,n,flush=True)
json.dump(out,open("crossref_2026.json","w"),indent=0,ensure_ascii=False)
print(len(out))
