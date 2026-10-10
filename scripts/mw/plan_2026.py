import json,re
s=json.load(open("screened.json"))
Aj=["Journal of Marketing","Journal of Marketing Research","Journal of Consumer Research","Marketing Science","Journal of the Academy of Marketing Science","Journal of Consumer Psychology","International Journal of Research in Marketing","Journal of Retailing","Journal of Service Research","Journal of International Marketing","Journal of Public Policy & Marketing","Journal of Interactive Marketing","Journal of Advertising","Journal of Advertising Research","International Journal of Advertising"]
A=sorted([x for x in s if x["journal"] in Aj],key=lambda x:(Aj.index(x["journal"]),x["online"] or x["issued"] or ""))
Bj={"European Journal of Marketing":"EJM","Psychology & Marketing":"PM","Journal of Research in Interactive Marketing":"JRIM"}
B=sorted([x for x in s if x["journal"] in Bj],key=lambda x:(x["journal"],x["online"] or x["issued"] or ""))
def P(k):
    x=A[int(k[1:])] if k[0]=="A" else B[int(k[1:])]
    return x
# (date, theme, lead, also1, also2)
I=[
("2026-01-12","Generative AI images that actually engage","A0","A245","B94"),
("2026-01-19","How to answer customers who praise you online","A1","A247","A217"),
("2026-01-26","Meme marketing: from owning to connecting","A3","B3","B96"),
("2026-02-02","How often should influencers endorse?","A5","A246","B5"),
("2026-02-09","The liveness lift: why live streams connect","A4","A220","B2"),
("2026-02-16","What is in the cart predicts who abandons it","A41","A219","A218"),
("2026-02-23","The weekend effect in online reviews","A24","A222","B1"),
("2026-03-02","AI negotiators: building bots that bargain with people","A23","B39","A186"),
("2026-03-09","Testing social content where it lives: in-feed experiments","A6","A221","A224"),
("2026-03-16","Shopping by voice: efficiency versus autonomy","A225","B40","B42"),
("2026-03-23","Review platforms are ending the tourist trap","A53","A54","A158"),
("2026-03-30","AI search engines and the future of search ads","A266","A47","B97"),
("2026-04-06","Contextual advertising, rebuilt with machine learning","A8","A267","A296"),
("2026-04-13","When personalization feels creepy","A226","A157","A120"),
("2026-04-20","Human or AI? Who customers want to be served by","A10","A228","A90"),
("2026-04-27","Autonomous stores and the loss of the human touch","A11","A161","A188"),
("2026-05-04","Downvotes, boycotts and what drives creators","A27","A26","A300"),
("2026-05-11","Thumbnails, narration and sensory cues in video","A92","A93","A91"),
("2026-05-18","Customer photos: how review valence shapes visual UGC","A28","B58","A126"),
("2026-05-25","Prospecting versus retargeting: a field experiment","A231","A62","A277"),
("2026-06-01","\"Made with AI\": what disclosure labels do to engagement","A43","A250","B124"),
("2026-06-08","When influencers misbehave","A97","A96","A89"),
("2026-06-15","Haunted by a bad review","A32","A128","B68"),
("2026-06-22","Personalization that pays: a meta-analysis","A14","A253","A30"),
("2026-06-29","Emotional swings in livestream selling","A99","A235","B64"),
("2026-07-06","Seeding influencers and followers to spread word of mouth","A15","A230","A273"),
("2026-07-13","Preference filtering: what customers tell algorithms","A16","A191","B131"),
("2026-07-20","Generative AI is changing consumer reviews","A130","A236","A138"),
("2026-07-27","ChatGPT as a traffic source for e-commerce","A69","A213","B118"),
("2026-08-03","How closely should a brand follow a trend?","A17","A135","A67"),
("2026-08-10","Large language models in market research","A68","A42","A122"),
("2026-08-17","Virtual influencers: what the evidence says","A107","A111","A271"),
("2026-08-24","Augmented reality previews and product returns","A140","A125","A179"),
("2026-08-31","Agentic AI and the new marketing relationship","A20","A255","A189"),
("2026-09-07","AI at the frontline: lessons from mortgage advice","A39","A197","B114"),
("2026-09-14","Visual consistency in influencer campaigns","A110","A105","A101"),
("2026-09-21","Working with generative AI in creative teams","A283","A285","A279"),
("2026-09-28","Returns, refunds and pickup points in e-commerce","A86","A22","A174"),
("2026-10-05","Generative AI ad visuals, and how to disclose them","A75","A259","A323"),
]
RES=["A223","A7","A144","A133","A243","A87","A145","A152","A154","A263","A286","A262","A82","A46","A185","A199","A196","A113","A60","A310","A78","A95","A112","A280","A287","A178","A238","A240","A2","A237","A289","A288","A71","A134","A314","A100","B155","B127","B122","B153","B157","B163","B85","B92","A239","A233","A270","A104","A317"]
used=set()
def d(x): return (x["online"] or x["issued"] or "")[:10]
def cite(k):
    x=P(k); t=re.sub(r"^(EXPRESS|Frontiers|Practice Paper—?):\s*","",re.sub(r"\s+"," ",x["title"]).strip())
    au=x["authors"]; a=(au[0].split()[-1]+(" et al." if len(au)>2 else (" & "+au[1].split()[-1] if len(au)==2 else ""))) if au else "—"
    return f"{t} — {a}, *{x['journal']}* ({d(x)}) · [doi](https://doi.org/{x['doi']})"
L=["# Marketing Watch: 2026 issue map","",
"Weekly issues from 12 January to 5 October 2026 (39 issues). Each issue has one **lead paper** (the practitioner brief: what the study found, how to apply it, what to expect) and two shorter **also new** items.",
"Papers come from 15 top marketing and advertising journals (plus EJM, Psychology & Marketing and JRIM for some supporting items), screened for digital marketing, UGC and AI.",
"No paper is placed in an issue dated before it appeared online.","",
"Source: Crossref metadata for every 2026 article in 19 journals (1,712 articles; 681 on digital, UGC or AI by title), pulled 10 October 2026.",""]
L+=["| # | Issue date | Theme | Lead (journal) |","|---|---|---|---|"]
for n,(dt,th,l,a1,a2) in enumerate(I,1):
    L.append(f"| {n} | {dt} | {th} | {re.sub(r'^(EXPRESS|Frontiers):\s*','',re.sub(r'\s+',' ',P(l)['title']))[:70]} ({P(l)['journal']}) |")
L+=["","## Issues in detail",""]
bad=[]
for n,(dt,th,l,a1,a2) in enumerate(I,1):
    L+=[f"### {n}. {th} · {dt}","",f"- **Lead:** {cite(l)}",f"- Also new: {cite(a1)}",f"- Also new: {cite(a2)}",""]
    for k in (l,a1,a2):
        assert k not in used,k; used.add(k)
        if d(P(k))>dt: bad.append((n,k,d(P(k)),dt))
L+=["## Reserve (for October onwards, or to swap in)",""]+[f"- {cite(k)}" for k in RES if k not in used]
from collections import Counter
c=Counter(P(k)["journal"] for k in used)
L+=["","## Coverage","","| Journal | Papers |","|---|---|"]+[f"| {j} | {v} |" for j,v in c.most_common()]
open("MW_2026_PLAN.md","w").write("\n".join(L)+"\n")
print("date violations:",bad)
print(len(used),"papers;",c.most_common())
lead_abs=sum(1 for i in I if P(i[2])["abstract"])
print("leads with Crossref abstract:",lead_abs,"/",len(I))
json.dump({k:P(k) for k in used|set(RES)},open("selected.json","w"),ensure_ascii=False,indent=0)
