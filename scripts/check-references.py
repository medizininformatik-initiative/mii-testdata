#!/usr/bin/env python3
"""check-references.py — Referenzen, die auf keinem Server aufloesen.

Hintergrund: In `bundle-pat-1` stand als Specimen-Referenz eine absolute URL
auf den MII-Kanonikalraum
(`https://www.medizininformatik-initiative.de/Specimen/...`). Das ist keine
Serveradresse — HAPI weist so etwas als externe Referenz zurueck (HAPI-0507),
Blaze winkt es durch. Der Ladetest gegen beide Server findet es, braucht aber
Docker und ein paar Minuten; diese Pruefung kostet nichts.

Gemeldet wird:
  1. Absolute Referenzen auf bekannte Kanonikal-/Profilraeume (nie Serveradressen)
  2. Absolute Referenzen auf `example.org`/`example.com`
  3. Referenzen, deren Ziel weder relativ (`Typ/id`) noch `urn:uuid:`/`urn:oid:` ist

Absolute Referenzen auf echte Server (z.B. ein DIZ-FHIR-Endpunkt) sind erlaubt
und werden nicht gemeldet — nur die, die nachweislich keine sind.

Usage: check-references.py [resources-dir]
Exit 1, sobald etwas gefunden wird.
"""
import json
import glob
import os
import re
import sys

RES = sys.argv[1] if len(sys.argv) > 1 else "kds-testdata/fsh-generated/resources"

# Raeume, die Profile/Kanonikale beherbergen und nie ein FHIR-Server-Base sind.
CANONICAL_HOSTS = (
    "medizininformatik-initiative.de",
    "fhir.de",
    "hl7.org",
    "terminology.hl7.org",
    "gematik.de",
    "ihe-d.de",
    "dvmd.de",
)
EXAMPLE_HOSTS = ("example.org", "example.com", "example.net")
RELATIVE = re.compile(r"^[A-Z][A-Za-z]+/[A-Za-z0-9._-]{1,64}(/_history/.+)?$")


def classify(ref):
    if not isinstance(ref, str) or not ref:
        return None
    if ref.startswith("#") or ref.startswith("urn:uuid:") or ref.startswith("urn:oid:"):
        return None
    if RELATIVE.match(ref):
        return None
    if ref.startswith(("http://", "https://")):
        host = ref.split("/")[2].lower()
        if any(h in host for h in EXAMPLE_HOSTS):
            return "Beispiel-Domain als Referenzziel"
        if any(h in host for h in CANONICAL_HOSTS):
            return "absolute URL auf einen Kanonikalraum (keine Serveradresse)"
        return None  # echter Server — zulaessig
    return "weder relativ noch urn: noch absolut"


def walk(node, path, out):
    if isinstance(node, dict):
        ref = node.get("reference")
        if isinstance(ref, str):
            why = classify(ref)
            if why:
                out.append((path or "(root)", ref, why))
        for k, v in node.items():
            walk(v, f"{path}.{k}" if path else k, out)
    elif isinstance(node, list):
        for v in node:
            walk(v, path, out)


def main():
    if not os.path.isdir(RES):
        print(f"Verzeichnis nicht gefunden: {RES}", file=sys.stderr)
        sys.exit(2)
    findings, n = [], 0
    for f in sorted(glob.glob(os.path.join(RES, "*.json"))):
        base = os.path.basename(f)
        if base.startswith("ImplementationGuide"):
            continue
        try:
            d = json.load(open(f, encoding="utf-8"))
        except (json.JSONDecodeError, UnicodeDecodeError):
            continue
        n += 1
        out = []
        walk(d, "", out)
        for path, ref, why in out:
            findings.append((d.get("id", base), path, ref, why))

    print(f"# Referenz-Pruefung ({n} Dateien)\n")
    if not findings:
        print("Keine nicht-aufloesbaren Referenzen.")
        sys.exit(0)
    print(f"**{len(findings)} Referenzen, die auf keinem Server aufloesen:**\n")
    for rid, path, ref, why in findings:
        print(f"- `{rid}` · `{path}`\n  `{ref}`\n  → {why}")
    sys.exit(1)


if __name__ == "__main__":
    main()
