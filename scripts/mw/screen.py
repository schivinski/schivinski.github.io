import json,re
d=json.load(open("crossref_2026.json"))
T={
 "AI": r"\bAI\b|artificial intelligence|generative|genAI|gen ai|chatgpt|\bGPT|large language model|\bLLMs?\b|chatbot|conversational agent|machine learning|algorithm|virtual assistant|voice assistant|\brobot|deepfake|synthetic|AI-generated|agentic|\bagents?\b",
 "UGC": r"user[- ]generated|\bUGC\b|online review|ratings? and reviews|\breviews?\b|word[- ]of[- ]mouth|eWOM|influencer|creator|livestream|live[- ]stream|brand community|social media|tiktok|instagram|youtube|twitter|\bX\b|reddit|facebook|viral|sharing|posts?\b|comments?\b|memes?",
 "DIGITAL": r"digital|online|e-?commerce|mobile|\bapps?\b|platform|search engine|programmatic|personali[sz]|recommend|retargeting|targeted ad|display ad|video ad|metaverse|virtual reality|augmented reality|\bVR\b|\bAR\b|omnichannel|streaming|website|privacy|data|attribution|A/B|field experiment",
}
rows=[]
for doi,x in d.items():
    txt=x["title"]+" "+x["abstract"]
    tags=[k for k,v in T.items() if re.search(v,txt,re.I if k!="UGC" else re.I)]
    # stronger: title hit
    th=[k for k,v in T.items() if re.search(v,x["title"],re.I)]
    if not tags: continue
    score=2*len(th)+len(tags)
    rows.append((score,doi,x,tags,th))
rows.sort(key=lambda r:-r[0])
print(len(rows),"tagged of",len(d))
import collections
print(collections.Counter(r[2]["journal"] for r in rows if r[4]))
json.dump([{"doi":r[1],"tags":r[3],"title_tags":r[4],**r[2]} for r in rows if r[4]],open("screened.json","w"),indent=0,ensure_ascii=False)
print(sum(1 for r in rows if r[4]),"with topic in title")
