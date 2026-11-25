"""Assemble index.html and img/ from index.src.html, deck.json and the chosen photos."""
import json, re, os, shutil, sys, html
from PIL import Image
SRC = sys.argv[1]  # folder holding full/*.jpg and meta.json
PICKS = {1:["01","06","08","04","00"], 2:["23","02","17","06","21"], 3:["53","41","43","42","46"],
         4:["40","49","60","51","01"], 5:["17","40","41","19","21"], 6:["10","20","19","25","11"],
         7:["07","05","18","19","04"], 8:["09","47","19","53","17"], 9:["08","13","18","19","14"],
         10:["41","43","46","44","61"]}
meta = json.load(open(f"{SRC}/meta.json")); deck = json.load(open("deck.json"))
shutil.rmtree("img", ignore_errors=True); os.makedirs("img/t")
LIC = {"cc0":"CC0","pdm":"Public domain"}
for s, picks in PICKS.items():
    imgs = []
    for k, n in enumerate(picks):
        key = f"s{s:02d}_{n}"; m = meta[key]; f = f"s{s:02d}{'abcde'[k]}"
        im = Image.open(f"{SRC}/full/{key}.jpg"); im.save(f"img/{f}.jpg", quality=84, optimize=True, progressive=True)
        im.resize((480,270), Image.LANCZOS).save(f"img/t/{f}.jpg", quality=72, optimize=True)
        title = html.unescape(re.sub(r"<[^>]+>|^File:|\.(jpe?g|png|tif+)$", "", (m.get("title") or "Untitled").strip(), flags=re.I)).strip()
        if title.startswith("Identifier:"): title = "Old book illustration"
        title = (title[:57] + "…") if len(title) > 58 else title
        lic = LIC.get(m["license"], "CC " + m["license"].upper() + (" " + m["license_version"] if m.get("license_version") else ""))
        imgs.append({"f": f, "title": title or "Untitled", "by": (m.get("creator") or "")[:40], "lic": lic, "page": m["foreign_landing_url"]})
    deck[s-1]["images"] = imgs
out = open("index.src.html").read().replace("__DECK__", json.dumps(deck, ensure_ascii=False).replace("<", "\\u003c"))
open("index.html", "w").write(out)
print("ok", sum(os.path.getsize(f"img/{f}") for f in os.listdir("img") if f.endswith(".jpg"))//1024, "KB full;", len(os.listdir("img/t")), "thumbs")
for d in deck: print([ (i["lic"], i["title"][:28]) for i in d["images"]][:2])
