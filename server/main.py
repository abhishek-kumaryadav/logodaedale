from fastapi import FastAPI
from nltk.corpus import wordnet

app = FastAPI()
import json


@app.get("/")
async def root():
    return {"message": "Heloo World"}


@app.get("/{word}")
async def getAll(word: str):
    syns = wordnet.synsets(word)
    synonyms = set()
    antonyms = set()
    for syn in syns:
        for l in syn.lemmas():
            synonyms.add(str(l.name()))
            if l.antonyms():
                antonyms.add(str(l.antonyms()[0].name()))
    defi = syns[0].definition()
    # print(syns[0])
    # defi = "HEEEELO"
    return {
        "title": word,
        "definition": defi,
        # "synonyms": '"["' + '","'.join(synonyms) + '"]"',  # '["s","a","d"]'
        # "synonyms": json.dumps(list(synonyms)) if synonyms else "",
        "synonyms": list(synonyms),
        # "antonyms": '"["' + '","'.join(antonyms) + '"]"',
        # "antonyms": json.dumps(list(antonyms)) if antonyms else "",
        "antonyms": list(antonyms),
    }
