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
    synonyms = []
    antonyms = []
    for syn in syns:
        for l in syn.lemmas():
            synonyms.append(l.name())
            if l.antonyms():
                antonyms.append(l.antonyms()[0].name())
    return {
        "title": word,
        "definition": syns[0].definition(),
        # "synonyms": '"["' + '","'.join(synonyms) + '"]"',  # '["s","a","d"]'
        "synonyms": json.dumps(synonyms) if synonyms else "",
        # "antonyms": '"["' + '","'.join(antonyms) + '"]"',
        "antonyms": json.dumps(antonyms) if antonyms else "",
    }
