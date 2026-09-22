#!/usr/bin/env python3
"""ms-coverage.py — Must-Support-Abdeckung der Testdaten, in beide Richtungen.

Richtung A: Welche MS-Elemente der genutzten Profile sind in KEINER Instanz
            befüllt? (Testdaten-Anforderung: alle MS-Elemente befüllt.)
Richtung B: Welche Pfade befüllen die Instanzen, die im Profil NICHT MS sind?
            (Kandidaten für Ballot-Feedback: "brauchen wir, ist aber nicht MS".)

Heuristik, bewusst pragmatisch:
- Slice-Namen werden auf den Basis-Pfad reduziert (component:predicted -> component);
  Extension-Slices werden über ihre fixedUri-URL instanzweit gesucht.
- choice types: value[x] matcht jeden value*-Key.
- Richtung B betrachtet Pfade bis Tiefe 2 und unterdrückt Kinder von MS-Eltern.
- "Befüllt" heißt: in mindestens EINER Instanz des Profils vorhanden.

Aufruf aus kds-testdata/:  python3 ../scripts/ms-coverage.py > ../docs/ms-coverage-2027.md
Mit --ig-include <pfad> wird zusätzlich ein kompakter Status als Markdown-
Include für die IG-Seite testabdeckung.md geschrieben (input/includes/).
Benötigt das complete-Package im FHIR-Cache (Version unten anpassen bei Bump).
"""
import json, glob, os, re, sys, collections

def _bom_version():
    """BOM-Pin aus sushi-config.yaml lesen — der Report referenziert damit
    immer exakt den Stand des KDS complete, gegen den gebaut wird."""
    s = open("sushi-config.yaml", encoding="utf-8").read()
    m = re.search(r"kerndatensatz\.complete:\s*\n\s*version:\s*(\S+)", s)
    if not m:
        sys.exit("BOM-Version nicht in sushi-config.yaml gefunden")
    return m.group(1)

BOM_VERSION = None  # wird in main() gesetzt (braucht cwd=kds-testdata)
PKG = None
P = None
INFRA = {"resourceType","id","meta","text","implicitRules","language","contained","fullUrl"}
CHOICE = re.compile(r"\[x\]$")

def mod_of(u):
    m = re.search(r"fhir/(?:ext/|core/)?(modul-[a-z]+)/", u)
    return m.group(1) if m else "extern"

def base_parts(elem_id):
    return tuple(s.split(":")[0] for s in elem_id.split(".")[1:])

def get_values(obj, parts):
    cur = [obj]
    for part in parts:
        nxt = []
        for o in cur:
            if not isinstance(o, dict):
                continue
            if part.endswith("[x]"):
                stem = part[:-3]
                nxt += [v for k, v in o.items() if k.startswith(stem)]
            elif part in o:
                nxt.append(o[part])
        cur = [x for v in nxt for x in (v if isinstance(v, list) else [v])]
        if not cur:
            return []
    return cur

def any_extension_with_url(obj, url):
    if isinstance(obj, dict):
        for k, v in obj.items():
            if k in ("extension", "modifierExtension") and isinstance(v, list):
                if any(isinstance(e, dict) and e.get("url") == url for e in v):
                    return True
            if any_extension_with_url(v, url):
                return True
    elif isinstance(obj, list):
        return any(any_extension_with_url(x, url) for x in obj)
    return False

def paths_of(obj, prefix=(), depth=2):
    out = set()
    if isinstance(obj, dict):
        for k, v in obj.items():
            if not prefix and k in INFRA:
                continue
            if k.startswith("_"):
                k = k[1:]
            p = prefix + (k,)
            out.add(p)
            if len(p) < depth:
                out |= paths_of(v, p, depth)
    elif isinstance(obj, list):
        for x in obj:
            out |= paths_of(x, prefix, depth)
    return out

def collapse(ids):
    return [m for m in sorted(ids) if not any(m != o and m.startswith(o + ".") for o in ids)]

def main():
    global BOM_VERSION, PKG, P
    BOM_VERSION = _bom_version()
    PKG = f"de.medizininformatikinitiative.kerndatensatz.complete#{BOM_VERSION}"
    P = os.path.expanduser(f"~/.fhir/packages/{PKG}/package/")
    idx = json.load(open(P + ".index.json"))
    sd_file = {f["url"]: f["filename"] for f in idx["files"]
               if f.get("resourceType") == "StructureDefinition"}
    by_prof = collections.defaultdict(list)
    for fp in glob.glob("fsh-generated/resources/*.json"):
        r = json.load(open(fp))
        if r.get("resourceType") == "Bundle":
            continue
        for p in r.get("meta", {}).get("profile", []):
            by_prof[p.split("|")[0]].append(r)

    gaps = collections.defaultdict(list)          # mod -> (profname, ninst, [top-missing])
    gap_elems = collections.defaultdict(collections.Counter)
    notms = collections.defaultdict(collections.Counter)
    tot_ms = tot_top = 0

    for prof, instances in sorted(by_prof.items()):
        fn = sd_file.get(prof)
        if not fn:
            continue
        sd = json.load(open(P + fn))
        if sd.get("kind") != "resource":
            continue
        els = sd.get("snapshot", {}).get("element", [])
        ext_url = {el["id"][: -len(".url")]: el.get("fixedUri")
                   for el in els if el["id"].endswith(".url") and el.get("fixedUri")}
        ms_ids, ms_paths = [], set()
        for el in els:
            if el.get("mustSupport") and el["id"].count(".") >= 1:
                if el["id"].endswith(".id") or ".id." in el["id"]:
                    continue
                ms_ids.append(el["id"])
                ms_paths.add(base_parts(el["id"]))
        tot_ms += len(ms_ids)
        missing = []
        for eid in ms_ids:
            parts = base_parts(eid)
            if "extension" in parts and ":" in eid and eid in ext_url:
                if any(any_extension_with_url(i, ext_url[eid]) for i in instances):
                    continue
                missing.append(eid)
                continue
            if any(get_values(i, parts) for i in instances):
                continue
            missing.append(eid)
        top = collapse(missing)
        tot_top += len(top)
        mod = mod_of(prof)
        if top:
            gaps[mod].append((prof.rsplit("/", 1)[-1], len(instances), top))
            for t in top:
                gap_elems[mod][re.sub(r"^[A-Za-z]+\.", "", t)] += 1

        def is_ms(p):
            if p in ms_paths:
                return True
            return any(len(msp) == len(p) and all(
                a == b or (CHOICE.search(b or "") and a.startswith(b[:-3]))
                for a, b in zip(p, msp)) for msp in ms_paths)

        used = set()
        for i in instances:
            used |= paths_of(i)
        for p in used:
            if not is_ms(p) and not any(is_ms(p[:k]) for k in range(1, len(p))):
                notms[mod][".".join(p)] += 1

    print("# Must-Support-Abdeckung der Testdaten (2027-Ballot)\n")
    print(f"Generiert von `scripts/ms-coverage.py` gegen `{PKG}`. Heuristik siehe Skript-Docstring.\n")
    print(f"MS-Elemente über alle genutzten Profile: **{tot_ms}** · oberste unbefüllte Knoten: **{tot_top}**\n")
    print("## Richtung A: unbefüllte MS-Elemente je Modul\n")
    print("| Modul | Lücken | häufigste fehlende Elemente |")
    print("|---|---|---|")
    for mod in sorted(gap_elems):
        c = gap_elems[mod]
        top = ", ".join(f"`{k}`×{v}" if v > 1 else f"`{k}`" for k, v in c.most_common(6))
        print(f"| {mod} | {sum(c.values())} | {top} |")
    print("\n### Details je Profil\n")
    for mod in sorted(gaps):
        print(f"<details><summary>{mod}</summary>\n")
        for prof, ninst, top in sorted(gaps[mod]):
            print(f"- **{prof}** ({ninst} Inst.): " + ", ".join(f"`{t}`" for t in top))
        print("\n</details>\n")
    print("## Richtung B: befüllte Nicht-MS-Pfade (Ballot-Feedback-Kandidaten)\n")
    print("| Modul | Pfade | Top (Anzahl Profile, die den Pfad befüllen) |")
    print("|---|---|---|")
    for mod in sorted(notms):
        c = notms[mod]
        top = ", ".join(f"`{k}`×{v}" if v > 1 else f"`{k}`" for k, v in c.most_common(6))
        print(f"| {mod} | {sum(c.values())} | {top} |")

    if IG_INCLUDE:
        L = []
        L.append(
            f"**Bezugsstand: MII Kerndatensatz complete "
            f"[`{BOM_VERSION}`](https://github.com/medizininformatik-initiative/kerndatensatz-complete/releases/tag/v{BOM_VERSION})** "
            f"— alle Zahlen dieser Seite beziehen sich auf die Profil-Snapshots dieses BOM-Stands.\n")
        L.append(f"{tot_ms} MS-Elemente über die genutzten Profile · "
                 f"**{tot_top} oberste unbefüllte Knoten**\n")
        L.append("| Modul | offene MS-Lücken | häufigste fehlende Elemente |")
        L.append("|---|---|---|")
        for mod in sorted(gap_elems):
            c = gap_elems[mod]
            top = ", ".join(f"`{k}`" for k, _ in c.most_common(4))
            L.append(f"| {mod.replace('modul-','')} | {sum(c.values())} | {top} |")
        L.append("")
        L.append("Vollständiger Report (je Profil, plus befüllte Nicht-MS-Pfade als "
                 "Ballot-Feedback-Kandidaten): "
                 "[docs/ms-coverage-2027.md](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ms-coverage-2027.md)")
        with open(IG_INCLUDE, "w", encoding="utf-8") as f:
            f.write("\n".join(L) + "\n")

IG_INCLUDE = None
if __name__ == "__main__":
    if "--ig-include" in sys.argv:
        IG_INCLUDE = sys.argv[sys.argv.index("--ig-include") + 1]
    main()
