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

Ausgabe ist eine JSON-Liste fuer `strategy.matrix.paket`, jedes Element mit:
    name    Bezeichner fuer die Job-Anzeige
    files   die zu validierenden Dateien, durch Leerzeichen getrennt

Usage: tx-matrix.py [resources-dir]
"""
import json
import os
import sys


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
    res_dir = sys.argv[1] if len(sys.argv) > 1 else "kds-testdata/fsh-generated/resources"
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

    print(json.dumps(matrix, ensure_ascii=False))
    print(f"{len(bundles)} Bundles + {len(rest)} Einzelressourcen ohne Bundle "
          f"= {len(matrix)} Arbeitspakete", file=sys.stderr)


if __name__ == "__main__":
    main()
