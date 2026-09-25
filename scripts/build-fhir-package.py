#!/usr/bin/env python3
"""build-fhir-package.py — FHIR-NPM-Paket aus dem erzeugten Testdatenstand bauen.

Warum nicht einfach das `package.tgz` des IG Publishers nehmen? Weil das in einem
anderen Workflow entsteht (ig-publish) und nur auf gh-pages landet, wo es bei
jedem Build ueberschrieben wird. Fuer ein Release-Asset braucht es ein Artefakt,
das deterministisch aus dem GETAGGTEN Stand faellt — genau das tut dieses Skript.

Layout nach FHIR-NPM-Konvention:
    package/package.json          Manifest (aus kds-testdata/package.json)
    package/example/<Datei>.json  alle Instanzen
    package/<IG>.json             das ImplementationGuide-Manifest

    ./scripts/build-fhir-package.py                       # -> dist/<name>-<version>.tgz
    ./scripts/build-fhir-package.py --version 2027.0.0-ballot.1
"""
import argparse
import json
import os
import shutil
import sys
import tarfile
import tempfile

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..")
SRC = os.path.join(ROOT, "kds-testdata", "fsh-generated", "resources")
MANIFEST = os.path.join(ROOT, "kds-testdata", "package.json")

# Der npm-Tar-Header begrenzt Dateinamen auf 100 Zeichen. `package/example/`
# verbraucht davon 16 — laengere Namen sprengen das Paket erst beim Entpacken.
NAME_LIMIT = 100


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--version", help="Paketversion (Default: aus package.json)")
    ap.add_argument("--out", default=os.path.join(ROOT, "dist"), help="Zielverzeichnis")
    a = ap.parse_args()

    manifest = json.load(open(MANIFEST, encoding="utf-8"))
    if a.version:
        manifest["version"] = a.version.lstrip("v")
    name, version = manifest["name"], manifest["version"]

    os.makedirs(a.out, exist_ok=True)
    tgz = os.path.join(a.out, f"{name}-{version}.tgz")

    with tempfile.TemporaryDirectory() as tmp:
        pkg = os.path.join(tmp, "package")
        ex = os.path.join(pkg, "example")
        os.makedirs(ex)
        json.dump(manifest, open(os.path.join(pkg, "package.json"), "w", encoding="utf-8"),
                  indent=2, ensure_ascii=False)

        too_long, n = [], 0
        for f in sorted(os.listdir(SRC)):
            if not f.endswith(".json"):
                continue
            # Das IG-Manifest gehoert auf die Paketwurzel, nicht zu den Beispielen
            target = pkg if f.startswith("ImplementationGuide-") else ex
            arc = os.path.relpath(os.path.join(target, f), tmp)
            if len(arc) > NAME_LIMIT:
                too_long.append((len(arc), f))
                continue
            shutil.copy2(os.path.join(SRC, f), os.path.join(target, f))
            n += 1

        if too_long:
            print(f"FEHLER: {len(too_long)} Dateinamen ueberschreiten {NAME_LIMIT} Zeichen "
                  "und wuerden das Paket beim Entpacken zerreissen:", file=sys.stderr)
            for ln, f in sorted(too_long, reverse=True)[:10]:
                print(f"   {ln}  {f}", file=sys.stderr)
            print("Instanz-Id kuerzen und neu bauen.", file=sys.stderr)
            sys.exit(1)

        with tarfile.open(tgz, "w:gz") as t:
            t.add(pkg, arcname="package")

    size = os.path.getsize(tgz) / 1048576
    print(f"{tgz}\n   {n} Ressourcen, {size:.1f} MB, Paket {name}#{version}")


if __name__ == "__main__":
    main()
