#!/usr/bin/env python3
"""check-displays.py — Displays gegen die Sprache ihres Kontexts pruefen.

Der Validator akzeptiert ein `display` nicht einfach, weil es irgendwo im
CodeSystem steht — er akzeptiert es in der **Sprache des Kontexts**. Die ist
`Resource.language`, und wo die fehlt, die Default-Sprache des IG
(`i18n-default-lang`).

Genau daran haengt ein Befund, der ohne diese Regel wie ein Widerspruch
aussieht: Dieselbe Validierung verlangte fuer die PHQ-15-Antworten die
*deutschen* Designations und fuer den Dokument-Status die *englischen*. Grund
ist nicht der Lauf, sondern die Ressourcen — die QuestionnaireResponse traegt
`language: de`, die DocumentReference traegt gar keine und faellt damit auf das
en-Default des IG zurueck.

Die Pruefung bildet das nach:

  akzeptabel = {designation.value | designation.language == kontext}
             ∪ {concept.display}   falls CodeSystem.language == kontext
                                   oder das CodeSystem keine Sprache nennt

Gemeldet wird in zwei Klassen, weil sie verschiedene Konsequenzen haben:

  FALSCH   Ein passendes Display existiert, wir haben das andere geschrieben.
           → In den FSH-Quellen korrigieren.
  FEHLT    Fuer die Kontextsprache gibt es gar kein Display. Dann laesst sich
           der Fehler in den Daten nicht beheben, nur durch `language` an der
           Ressource oder eine Designation im CodeSystem.

Geprueft wird nur gegen CodeSystems mit `content: complete` aus dem lokalen
Paket-Cache — bei `not-present`/`fragment` weiss niemand, was gueltig waere,
und eine Vermutung waere schlechter als kein Befund.

Usage: check-displays.py [resources-dir] [--lang en] [--quiet]
Exit 1, sobald ein FALSCH-Befund existiert (FEHLT allein bricht nicht).
"""
import argparse
import glob
import json
import os
import sys

PKG_ROOT = os.path.expanduser("~/.fhir/packages")

# Displays, die ein Profil per `patternString` erzwingt, obwohl sie der
# Terminologie widersprechen. Hier ist das falsche Display die einzige baubare
# Variante — der Befund gehoert zum Profil, nicht zu den Daten.
BLOCKED = {
    ("http://terminology.hl7.org/CodeSystem/observation-category", "survey", "Assessment"):
        "mii-pr-icu-score-wong-baker-faces-schmerzskala fixiert "
        "category.coding.display per patternString (Ballot-Befund 8)",
}


def codesystem_files(pkg):
    """Nur die CodeSystem-Dateien eines Pakets, ueber dessen .index.json.

    Der Cache haelt ueber 100.000 JSON-Dateien; jede davon zu parsen kostete
    Minuten, obwohl die CodeSystems ein Bruchteil sind. Das `.index.json` jedes
    FHIR-Pakets nennt zu jeder Datei ihren resourceType — damit bleibt nur das
    uebrig, was hier ueberhaupt in Frage kommt. Fehlt der Index (aelteres oder
    von Hand entpacktes Paket), faellt die Funktion auf alle Dateien zurueck,
    damit kein CodeSystem stillschweigend verlorengeht.
    """
    idx = os.path.join(pkg, ".index.json")
    try:
        files = json.load(open(idx, encoding="utf-8"))["files"]
    except (OSError, json.JSONDecodeError, KeyError, TypeError):
        return glob.glob(os.path.join(pkg, "*.json"))
    return [os.path.join(pkg, e["filename"]) for e in files
            if e.get("resourceType") == "CodeSystem"]


def load_codesystems():
    """code -> (display, {lang: designation}) je CodeSystem-URL, nur content=complete."""
    out = {}
    for pkg in sorted(glob.glob(os.path.join(PKG_ROOT, "*", "package"))):
        for f in codesystem_files(pkg):
            try:
                d = json.load(open(f, encoding="utf-8"))
            except (json.JSONDecodeError, UnicodeDecodeError, OSError):
                continue
            if d.get("resourceType") != "CodeSystem" or d.get("content") != "complete":
                continue
            url = d.get("url")
            if not url:
                continue
            concepts = {}

            def walk(cs):
                for c in cs:
                    # Je Sprache MEHRERE Designations: EQ-5D fuehrt fuenf deutsche
                    # Bezeichnungen pro Level, eine je Dimension ('Ich habe
                    # maessige Probleme herumzugehen' neben 'Ich habe maessige
                    # Schmerzen oder Beschwerden'). Ein {Sprache: Wert}-Dict
                    # behielte nur die letzte und wuerde die anderen vier als
                    # falsch melden — genau dieser Fehler hat 12 korrekte
                    # Antworten als Fehler ausgewiesen.
                    desigs = {}
                    for g in c.get("designation", []):
                        if g.get("language"):
                            desigs.setdefault(g["language"], set()).add(g.get("value"))
                    concepts[c["code"]] = (c.get("display"), desigs)
                    walk(c.get("concept", []))

            walk(d.get("concept", []))
            # Spaeter geladene Pakete nicht ueber frueher geladene schreiben, wenn
            # sie weniger Konzepte mitbringen — die reichere Fassung gewinnt.
            if url not in out or len(concepts) > len(out[url][1]):
                out[url] = (d.get("language"), concepts)
    return out


def acceptable(cs_lang, display, desigs, ctx):
    ok = {v for lang, vals in desigs.items()
          if lang == ctx or lang.split("-")[0] == ctx
          for v in vals}
    if display and (cs_lang is None or cs_lang == ctx or cs_lang.split("-")[0] == ctx):
        ok.add(display)
    return ok


def codings(node, path=""):
    if isinstance(node, dict):
        if isinstance(node.get("system"), str) and isinstance(node.get("code"), str):
            yield path, node
        for k, v in node.items():
            yield from codings(v, f"{path}.{k}" if path else k)
    elif isinstance(node, list):
        for i, v in enumerate(node):
            yield from codings(v, f"{path}[{i}]")


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("resources", nargs="?",
                    default="kds-testdata/fsh-generated/resources")
    ap.add_argument("--lang", default="en", help="Default-Sprache des IG")
    ap.add_argument("--quiet", action="store_true", help="nur FALSCH melden")
    a = ap.parse_args()

    if not os.path.isdir(a.resources):
        print(f"Verzeichnis nicht gefunden: {a.resources}", file=sys.stderr)
        sys.exit(2)

    cs = load_codesystems()
    wrong, case_only, missing, blocked, n = [], [], [], [], 0
    for f in sorted(glob.glob(os.path.join(a.resources, "*.json"))):
        try:
            d = json.load(open(f, encoding="utf-8"))
        except (json.JSONDecodeError, UnicodeDecodeError):
            continue
        # Bundles wiederholen nur, was als Einzelressource schon dasteht. Die
        # ImplementationGuide-Ressource stand hier faelschlich mit in der
        # Ausnahme — der Validator prueft sie mit, und dort steckte ein echter
        # Fehler (jurisdiction trug 'Deutschland' statt 'Germany'), den diese
        # Pruefung deshalb nie gesehen hat.
        if d.get("resourceType") == "Bundle":
            continue
        n += 1
        ctx = d.get("language") or a.lang
        rid = d.get("id", os.path.basename(f))
        for path, c in codings(d):
            disp = c.get("display")
            if not disp:
                continue
            entry = cs.get(c["system"])
            if not entry:
                continue
            cs_lang, concepts = entry
            if c["code"] not in concepts:
                continue
            cdisp, desigs = concepts[c["code"]]
            ok = acceptable(cs_lang, cdisp, desigs, ctx)
            if disp in ok:
                continue
            if (c["system"], c["code"], disp) in BLOCKED:
                blocked.append((rid, path, c["system"].rsplit("/", 1)[-1], c["code"],
                                disp, BLOCKED[(c["system"], c["code"], disp)]))
                continue
            rec = (rid, ctx, path, c["system"].rsplit("/", 1)[-1], c["code"], disp,
                   sorted(ok))
            if not ok:
                missing.append(rec)
            elif disp.casefold() in {o.casefold() for o in ok}:
                # Der Validator vergleicht Displays ohne Ruecksicht auf Gross-
                # und Kleinschreibung — das ist kein Fehler, aber es weicht vom
                # CodeSystem ab und ist in einer Zeile behoben.
                case_only.append(rec)
            else:
                wrong.append(rec)

    print(f"# Display-Pruefung ({n} Ressourcen, IG-Default `{a.lang}`)\n")
    if wrong:
        print(f"## FALSCH — {len(wrong)} Displays, fuer die ein passendes existiert\n")
        for rid, ctx, path, sysn, code, disp, ok in wrong:
            print(f"- `{rid}` (`{ctx}`) · `{path}`\n"
                  f"  `{sysn}#{code}`: {disp!r} → {' | '.join(repr(o) for o in ok)}")
        print()
    if case_only and not a.quiet:
        print(f"## NUR GROSS-/KLEINSCHREIBUNG — {len(case_only)} Displays\n")
        for rid, ctx, path, sysn, code, disp, ok in case_only:
            print(f"- `{rid}` · `{sysn}#{code}`: {disp!r} → {ok[0]!r}")
        print()
    if blocked and not a.quiet:
        print(f"## BLOCKIERT — {len(blocked)} Displays, die das Profil erzwingt\n")
        for rid, path, sysn, code, disp, why in blocked:
            print(f"- `{rid}` · `{sysn}#{code}`: {disp!r}\n  → {why}")
        print()
    if missing and not a.quiet:
        print(f"## FEHLT — {len(missing)} Codes ohne Display in der Kontextsprache\n")
        for rid, ctx, path, sysn, code, disp, _ in missing:
            print(f"- `{rid}` (`{ctx}`) · `{path}` · `{sysn}#{code}`: {disp!r}")
        print()
    if not wrong and not case_only and not missing and not blocked:
        print("Alle Displays passen zur Sprache ihres Kontexts.")
    sys.exit(1 if wrong else 0)


if __name__ == "__main__":
    main()
