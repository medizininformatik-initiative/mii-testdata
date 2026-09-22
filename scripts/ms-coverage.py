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
                # auch _effectiveDateTime & Co.: Primitive tragen ihre
                # Extensions im Underscore-Zwilling
                nxt += [v for k, v in o.items()
                        if k.startswith(stem) or k.startswith("_" + stem)]
            else:
                if part in o:
                    nxt.append(o[part])
                if "_" + part in o:  # Extension auf Primitivwert
                    nxt.append(o["_" + part])
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
        # Bundles zaehlen mit: Profile wie mii-pr-patho-bundle werden von
        # Dokument-Bundle-Instanzen beansprucht. Die Transaction-Container
        # (ohne meta.profile) fallen ohnehin heraus.
        for p in r.get("meta", {}).get("profile", []):
            by_prof[p.split("|")[0]].append(r)

    gaps = collections.defaultdict(list)          # mod -> (profname, ninst, [top-missing])
    gap_elems = collections.defaultdict(collections.Counter)
    notms = collections.defaultdict(collections.Counter)
    tot_ms = tot_top = 0
    # Modul-Summen: Quelle ist ausschliesslich das gepinnte Package —
    # die Snapshot-StructureDefinitions der BOM sind die Source of Truth,
    # nicht der Branch-/main-Zustand.
    modsum = collections.defaultdict(lambda: {"prof_total": 0, "prof_used": 0,
                                              "ms_total": 0, "ms_cov": 0})
    # Abstract-Regel (Team-Entscheidung): ein abstraktes Profil gilt als
    # abgedeckt, sobald mindestens ein abgeleitetes Profil abgedeckt ist.
    sd_meta = {}
    for f in idx["files"]:
        if f.get("resourceType") == "StructureDefinition" and f.get("kind") == "resource":
            modsum[mod_of(f.get("url", ""))]["prof_total"] += 1
            try:
                d = json.load(open(P + f["filename"]))
                sd_meta[f["url"]] = (d.get("abstract", False), d.get("baseDefinition"))
            except Exception:
                sd_meta[f["url"]] = (False, None)
    def ancestors(url):
        seen = set()
        cur = sd_meta.get(url, (False, None))[1]
        while cur and cur in sd_meta and cur not in seen:
            seen.add(cur)
            cur = sd_meta[cur][1]
        return seen
    abstract_covered = set()
    for u in by_prof:
        for anc in ancestors(u):
            if sd_meta.get(anc, (False,))[0]:
                abstract_covered.add(anc)

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
        # Extension-Slices ohne .url-Kind im Snapshot: Canonical steht dann
        # in type[0].profile (z.B. effective[x].extension:QuelleKlinischesBezugsdatum)
        for el in els:
            if ".extension:" in el["id"] and el["id"] not in ext_url:
                for t in el.get("type", []):
                    if t.get("code") == "Extension" and t.get("profile"):
                        ext_url[el["id"]] = t["profile"][0]
                        break
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
        modsum[mod]["prof_used"] += 1  # abstrakte via abstract_covered unten
        modsum[mod]["ms_total"] += len(ms_ids)
        modsum[mod]["ms_cov"] += len(ms_ids) - len(missing)
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

    for u in abstract_covered:
        if u not in by_prof:
            modsum[mod_of(u)]["prof_used"] += 1

    print("# Must-Support-Abdeckung der Testdaten (2027-Ballot)\n")
    print(f"Generiert von `scripts/ms-coverage.py`. **Source of Truth sind die "
          f"Snapshot-StructureDefinitions des gepinnten Packages `{PKG}`** — "
          f"nicht der Branch-Zustand. Heuristik siehe Skript-Docstring.\n")
    print(f"MS-Elemente über alle genutzten Profile: **{tot_ms}** · oberste unbefüllte Knoten: **{tot_top}**\n")
    print("## Übersicht je Modul\n")
    print("| Modul | Profile genutzt/gesamt | MS befüllt/gesamt | Coverage |")
    print("|---|---|---|---|")
    for mod in sorted(modsum):
        m = modsum[mod]
        if not m["prof_total"] and not m["prof_used"]:
            continue
        pct = f"{100*m['ms_cov']/m['ms_total']:.1f} %" if m["ms_total"] else "–"
        print(f"| {mod} | {m['prof_used']}/{m['prof_total']} | {m['ms_cov']}/{m['ms_total']} | {pct} |")
    _tp = sum(m["prof_total"] for m in modsum.values()); _tu = sum(m["prof_used"] for m in modsum.values())
    _tc = sum(m["ms_cov"] for m in modsum.values())
    print(f"| **GESAMT** | {_tu}/{_tp} | {_tc}/{tot_ms} | "
          f"{100*_tc/tot_ms:.1f} % |" if tot_ms else "")
    print()
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
        L.append("| Modul | Profile genutzt/gesamt | MS befüllt/gesamt | Coverage | häufigste Lücken |")
        L.append("|---|---|---|---|---|")
        for mod in sorted(modsum):
            m = modsum[mod]
            if not m["prof_total"] and not m["prof_used"]:
                continue
            pct = f"{100*m['ms_cov']/m['ms_total']:.0f} %" if m["ms_total"] else "–"
            top = ", ".join(f"`{k}`" for k, _ in gap_elems[mod].most_common(3)) or "—"
            L.append(f"| {mod.replace('modul-','')} | {m['prof_used']}/{m['prof_total']} | "
                     f"{m['ms_cov']}/{m['ms_total']} | {pct} | {top} |")
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
