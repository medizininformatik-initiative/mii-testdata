#!/usr/bin/env python3
"""tx-matrix.py — Arbeitspakete fuer die terminologiegestuetzte Validierung.

Warum nicht einfach alles in einem Lauf: Gegen den SU-TermServ schaffte ein
Vollauf in 120 Minuten elf von 1369 Ressourcen (GitHub-Lauf 36258544207),
einzelne brauchten bis zu 8:48. GitHub deckelt einen Job bei sechs Stunden — die
Grenze gilt aber PRO JOB. Ein Bundle je Job umgeht sie also, und mit
`max-parallel: 1` sieht der Terminologieserver dabei trotzdem immer nur einen
Client.

Warum die Bundles und nicht die Einzeldateien: Der Validator prueft die
Eintraege eines Bundles mit. Gemessen am aktuellen Bestand stecken **1327 von
1336** Einzelressourcen auch in einem Bundle — der uebliche Lauf ueber beides
validiert praktisch jede Ressource zweimal. Die Bundles allein decken denselben
Bestand bei halber Arbeit ab; die wenigen Ressourcen, die in keinem Bundle
liegen, kommen als eigenes Paket dazu, damit nichts verloren geht.

Mit `--changed LISTE` nur die Pakete, die sich geaendert haben. Das ist zulaessig,
weil ein Bundle seine Ressourcen vollstaendig einbettet: Wer eine Ressource
aendert, aendert auch jedes Bundle, das sie enthaelt — nachgeprueft an Commit
716fdee4, der die Observation UND `Bundle-…-seltene-1.json` anfasste. Der
Bundle-Diff genuegt also, um betroffene Pakete zu finden.

Fuer einige Aenderungen gilt das nicht, weil sie ALLE Pakete betreffen: die
-ig-Liste und damit jede Profil- und Terminologieversion (`package.json`), die
Projektkonfiguration (`sushi-config.yaml`), die Unterdrueckungen
(`advisor.json`), die Paketbildung selbst und der Workflow. Bei denen laeuft
alles. Sie stehen unten in GLOBAL — wer eine weitere Datei mit dieser Wirkung
einfuehrt, gehoert dort hinein.

Ausgabe ist eine JSON-Liste fuer `strategy.matrix.paket`, jedes Element mit:
    name    Bezeichner fuer die Job-Anzeige
    files   die zu validierenden Dateien, durch Leerzeichen getrennt

Usage: tx-matrix.py [resources-dir] [--changed LISTE]
       LISTE ist eine Datei mit je einem geaenderten Pfad pro Zeile
       (repo-relativ, etwa aus `git diff --name-only`).
"""
import json
import os
import sys

# Aenderungen, die jedes Paket betreffen — dann wird nicht inkrementell geprueft.
GLOBAL = (
    "kds-testdata/package.json",          # die -ig-Liste: alle Profil- und
                                          # Terminologieversionen haengen daran
    "kds-testdata/sushi-config.yaml",     # Kanonikal, Version, Dependencies
    "kds-testdata/fhirpkg.lock.json",     # aufgeloeste Pins
    "kds-testdata/advisor.json",          # was unterdrueckt wird
    "scripts/tx-matrix.py",               # die Paketbildung selbst
    ".github/workflows/validation-terminology.yml",  # der Job selbst
)


def bundle_ids(doc):
    """Alle Ressourcen-Ids, die (auch verschachtelt) in einem Bundle stecken."""
    out = set()
    for entry in doc.get("entry", []):
        res = entry.get("resource") or {}
        if res.get("resourceType") == "Bundle":
            out |= bundle_ids(res)
        elif res.get("id"):
            out.add(f"{res['resourceType']}/{res['id']}")
    return out


def main():
    args = [a for a in sys.argv[1:]]
    changed_file = None
    if "--changed" in args:
        i = args.index("--changed")
        changed_file = args[i + 1] if i + 1 < len(args) else None
        del args[i:i + 2]
    res_dir = args[0] if args else "kds-testdata/fsh-generated/resources"
    bundles, einzeln, in_bundles = [], {}, set()

    for name in sorted(os.listdir(res_dir)):
        if not name.endswith(".json"):
            continue
        try:
            with open(os.path.join(res_dir, name), encoding="utf-8") as fh:
                doc = json.load(fh)
        except (OSError, json.JSONDecodeError, UnicodeDecodeError):
            continue
        rt = doc.get("resourceType")
        if rt == "Bundle":
            bundles.append(name)
            in_bundles |= bundle_ids(doc)
        elif rt == "ImplementationGuide":
            continue            # keine Testdaten, wird separat gebaut
        elif doc.get("id"):
            einzeln[f"{rt}/{doc['id']}"] = name

    matrix = [{"name": n.removeprefix("Bundle-mii-exa-test-data-").removesuffix(".json"),
               "files": n} for n in bundles]

    rest = sorted(f for key, f in einzeln.items() if key not in in_bundles)
    if rest:
        # Ein Paket fuer alles, was in keinem Bundle vorkommt. Klein genug, um
        # es in einem Job mitzunehmen.
        matrix.append({"name": f"ohne-bundle ({len(rest)})", "files": " ".join(rest)})

    if changed_file:
        try:
            with open(changed_file, encoding="utf-8") as fh:
                changed = {ln.strip() for ln in fh if ln.strip()}
        except OSError:
            changed = None
        if changed is None:
            print("Keine Aenderungsliste lesbar — alle Pakete.", file=sys.stderr)
        elif any(g in changed for g in GLOBAL):
            warum = sorted(g for g in GLOBAL if g in changed)
            print(f"Alle Pakete: {', '.join(warum)} geaendert.", file=sys.stderr)
        else:
            praefix = res_dir.rstrip("/") + "/"
            betroffen = {c[len(praefix):] for c in changed if c.startswith(praefix)}
            vorher = len(matrix)
            matrix = [m for m in matrix
                      if any(f in betroffen for f in m["files"].split())]
            print(f"{len(matrix)} von {vorher} Paketen geaendert.", file=sys.stderr)

    print(json.dumps(matrix, ensure_ascii=False))
    print(f"{len(bundles)} Bundles + {len(rest)} Einzelressourcen ohne Bundle "
          f"= {len(matrix)} Arbeitspakete", file=sys.stderr)


if __name__ == "__main__":
    main()
