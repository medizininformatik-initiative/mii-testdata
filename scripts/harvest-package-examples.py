#!/usr/bin/env python3
"""Erntet die examples/ der MII-Modul-Packages in die kds-testdata.

Die Ballot-Packages von 7 Modulen liefern kuratierte Example-Instanzen mit
(ueberwiegend) gesetztem meta.profile auf die 2027er Canonicals. Dieses Skript
kopiert sie nach kds-testdata/input/predefined-resources/ als Startpunkt der
technischen Schicht — "erstmal duplizieren, dann fixen".

    ./scripts/harvest-package-examples.py            # ernten + Report
    ./scripts/harvest-package-examples.py --dry-run  # nur Report

Regeln:
  - Modulliste und Versionen kommen aus dem complete-BOM-Package im FHIR-Cache
    (BOM_VERSION unten bei einem Bump anpassen).
  - Dateiname: <ResourceType>-pkg-<mod>-<id>.json; das pkg-Praefix markiert die
    Herkunft aus dem Package.
  - ID-Kollisionen mit vorhandenen Testdaten (fsh-generated + predefined) werden
    aufgeloest, indem die Instanz die ID pkg-<mod>-<id> erhaelt; Referenzen
    innerhalb der Ernte werden mitgezogen. Kollisionen zwischen Ernte-Instanzen
    desselben Typs aus verschiedenen Modulen ebenso.
  - Nicht aufloesbare Referenzen (Ziel weder in der Ernte noch in den
    bestehenden Testdaten) werden je Modul gemeldet — das ist die Fix-Liste.
"""

import argparse
import json
import os
import re
import sys

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "kds-testdata")
FHIR = os.path.expanduser("~/.fhir/packages")
BOM = "de.medizininformatikinitiative.kerndatensatz.complete"
BOM_VERSION = "2027.0.0-ballot.19"
MII_PREFIX = "de.medizininformatikinitiative.kerndatensatz."
DEST = os.path.join(ROOT, "input", "predefined-resources")


def module_pins():
    man = json.load(open(os.path.join(FHIR, f"{BOM}#{BOM_VERSION}", "package", "package.json")))
    return {k[len(MII_PREFIX):]: (k, v) for k, v in man["dependencies"].items()
            if k.startswith(MII_PREFIX)}


def existing_ids():
    """(resourceType, id) aller schon vorhandenen Testdaten-Instanzen."""
    ids = set()
    for sub in ("fsh-generated/resources", "input/predefined-resources"):
        d = os.path.join(ROOT, sub)
        if not os.path.isdir(d):
            continue
        for f in os.listdir(d):
            if not f.endswith(".json"):
                continue
            try:
                r = json.load(open(os.path.join(d, f), encoding="utf-8"))
            except (json.JSONDecodeError, UnicodeDecodeError):
                continue
            if isinstance(r, dict) and "resourceType" in r and "id" in r:
                ids.add((r["resourceType"], r["id"]))
    return ids


def walk_references(obj, fn):
    """Ruft fn(container) fuer jedes Objekt mit 'reference'-Key auf."""
    if isinstance(obj, dict):
        if isinstance(obj.get("reference"), str):
            fn(obj)
        for v in obj.values():
            walk_references(v, fn)
    elif isinstance(obj, list):
        for v in obj:
            walk_references(v, fn)


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--dry-run", action="store_true", help="nichts schreiben, nur Report")
    ap.add_argument("--out", default=DEST, help="Zielverzeichnis (Default: predefined-resources); je Modul ein Unterordner")
    a = ap.parse_args()

    taken = existing_ids()
    harvest, renames = [], {}   # renames: "Type/oldid" -> "Type/newid"

    for mod, (pkg, ver) in sorted(module_pins().items()):
        exdir = os.path.join(FHIR, f"{pkg}#{ver}", "package", "examples")
        if not os.path.isdir(exdir):
            continue
        count = 0
        for f in sorted(os.listdir(exdir)):
            if not f.endswith(".json"):
                continue
            try:
                r = json.load(open(os.path.join(exdir, f), encoding="utf-8"))
            except (json.JSONDecodeError, UnicodeDecodeError):
                continue
            if not isinstance(r, dict) or "resourceType" not in r:
                continue
            rt, rid = r["resourceType"], r.get("id") or re.sub(r"\.json$", "", f)
            if (rt, rid) in taken:
                new = f"pkg-{mod}-{rid}"
                renames[f"{rt}/{rid}"] = f"{rt}/{new}"
                rid = new
            r["id"] = rid
            taken.add((rt, rid))
            harvest.append({"mod": mod, "resource": r,
                            "file": f"{rt}-pkg-{mod}-{rid}.json"})
            count += 1
        print(f"{mod:<18} {count:>3} Examples aus {pkg}#{ver}")

    # Referenzen innerhalb der Ernte an Umbenennungen anpassen, dann aufloesen
    all_ids = {f"{t}/{i}" for t, i in taken}
    unresolved = {}
    for h in harvest:
        def fix(container, mod=h["mod"]):
            ref = container["reference"]
            if ref in renames:
                container["reference"] = renames[ref]
                ref = container["reference"]
            if re.match(r"^[A-Za-z]+/[A-Za-z0-9\-.]+$", ref) and ref not in all_ids:
                unresolved.setdefault(mod, set()).add(ref)
        walk_references(h["resource"], fix)

    ohne_profil = [h for h in harvest if not (h["resource"].get("meta") or {}).get("profile")]
    print(f"\n{len(harvest)} Instanzen geerntet, {len(renames)} IDs wegen Kollision umbenannt, "
          f"{len(ohne_profil)} ohne meta.profile")
    for mod, refs in sorted(unresolved.items()):
        print(f"\n  {mod}: {len(refs)} nicht aufloesbare Referenzen (Fix-Liste):")
        for ref in sorted(refs):
            print(f"    {ref}")
    if ohne_profil:
        print("\n  ohne meta.profile:")
        for h in ohne_profil:
            print(f"    {h['mod']}: {h['resource']['resourceType']}/{h['resource']['id']}")

    if a.dry_run:
        return 0
    for h in harvest:
        d = os.path.join(a.out, h["mod"])
        os.makedirs(d, exist_ok=True)
        json.dump(h["resource"], open(os.path.join(d, h["file"]), "w", encoding="utf-8"),
                  indent=2, ensure_ascii=False)
    print(f"\n{len(harvest)} Dateien nach {os.path.relpath(a.out)} geschrieben (je Modul ein Ordner).")
    return 0


if __name__ == "__main__":
    sys.exit(main())
