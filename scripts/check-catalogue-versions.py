#!/usr/bin/env python3
"""check-catalogue-versions.py — Katalogjahrgang gegen das klinische Datum.

Die BfArM-Kataloge (ICD-10-GM, OPS, ATC, Alpha-ID) erscheinen jaehrlich, und
kodiert wird mit dem Jahrgang, der zum Zeitpunkt des Geschehens gilt. Daraus
folgt eine Regel, die kein Validator prueft, weil sie zwei Elemente in Beziehung
setzt statt einen Code zu bewerten:

    Coding.version darf NICHT juenger sein als das klinische Datum der Ressource.

Eine Diagnose von 2023 kann nicht mit ICD-10-GM 2026 kodiert sein — den Katalog
gab es noch nicht. Der umgekehrte Fall ist dagegen normal und wird NICHT
gemeldet: Wer 2025 nachkodiert, benutzt womoeglich noch den Katalog von 2024,
und laengsschnittliche Daten tragen ohnehin alte Jahrgaenge.

Dass die alten Jahrgaenge Absicht sind, ist nachgerechnet: Von 53
ICD-10-GM-Codierungen im Bestand tragen 30 genau den Jahrgang ihres eigenen
Datums — eine Diagnose von 2010 fuehrt ICD-10-GM 2010. Das ist der Grund, warum
diese Testdaten einen Terminologieserver mit historischen Katalogen brauchen und
nicht nur mit dem aktuellen.

Als klinisches Datum gilt das erste gefundene aus: onsetDateTime, recordedDate,
effectiveDateTime, performedDateTime, authoredOn, occurrenceDateTime, date,
issued, created — sonst der Beginn bzw. das Ende einer Period. Ressourcen ohne
Datum werden uebersprungen; ohne Bezugspunkt gibt es nichts zu vergleichen.

Usage: check-catalogue-versions.py [resources-dir]
Exit 1, sobald ein Jahrgang in der Zukunft seiner Ressource liegt.
"""
import glob
import json
import os
import re
import sys
import collections

# Jaehrlich erscheinende Kataloge mit vierstelliger Jahresversion. SNOMED und
# LOINC stehen hier NICHT: Ihre Versionen sind Datums-URIs bzw. Releases, und
# ihre Gueltigkeit folgt einer anderen Logik.
JAEHRLICH = ("bfarm/icd-10-gm", "bfarm/ops", "bfarm/atc", "bfarm/alpha-id")

DATUMSFELDER = ("onsetDateTime", "recordedDate", "effectiveDateTime",
                "performedDateTime", "authoredOn", "occurrenceDateTime",
                "date", "issued", "created")
PERIODEN = ("onsetPeriod", "performedPeriod", "effectivePeriod")


def klinisches_jahr(doc):
    for k in DATUMSFELDER:
        v = doc.get(k)
        if isinstance(v, str) and re.match(r"^\d{4}", v):
            return int(v[:4])
    for k in PERIODEN:
        p = doc.get(k) or {}
        for grenze in ("start", "end"):
            v = p.get(grenze)
            if isinstance(v, str) and re.match(r"^\d{4}", v):
                return int(v[:4])
    return None


def codings(node):
    if isinstance(node, dict):
        if isinstance(node.get("system"), str):
            yield node
        for v in node.values():
            yield from codings(v)
    elif isinstance(node, list):
        for v in node:
            yield from codings(v)


def main():
    res = sys.argv[1] if len(sys.argv) > 1 else "kds-testdata/fsh-generated/resources"
    if not os.path.isdir(res):
        print(f"Verzeichnis nicht gefunden: {res}", file=sys.stderr)
        sys.exit(2)

    befunde, geprueft, ohne_datum = [], 0, 0
    for f in sorted(glob.glob(os.path.join(res, "*.json"))):
        try:
            doc = json.load(open(f, encoding="utf-8"))
        except (json.JSONDecodeError, UnicodeDecodeError):
            continue
        # Bundles wiederholen nur, was als Einzelressource schon dasteht.
        if doc.get("resourceType") in ("Bundle", "ImplementationGuide"):
            continue
        jahr = klinisches_jahr(doc)
        for c in codings(doc):
            system = c.get("system") or ""
            version = c.get("version")
            if not any(k in system for k in JAEHRLICH):
                continue
            if not (isinstance(version, str) and re.fullmatch(r"\d{4}", version)):
                continue
            if jahr is None:
                ohne_datum += 1
                continue
            geprueft += 1
            if int(version) > jahr:
                befunde.append((doc.get("id", os.path.basename(f)),
                                system.rsplit("/", 1)[-1], version, jahr,
                                c.get("code")))

    print(f"# Katalogjahrgaenge ({geprueft} datierte Codierungen geprueft, "
          f"{ohne_datum} ohne Datum uebersprungen)\n")
    if not befunde:
        print("Kein Jahrgang liegt in der Zukunft seiner Ressource.")
        sys.exit(0)

    print(f"**{len(befunde)} Codierungen mit einem Katalog, der juenger ist als "
          f"das klinische Datum.** Den Jahrgang gab es zu diesem Zeitpunkt noch "
          f"nicht.\n")
    print("| Ressource | Katalog | Jahrgang | Datum | Code |")
    print("|---|---|---:|---:|---|")
    for rid, system, version, jahr, code in sorted(befunde, key=lambda x: (-int(x[2]), x[0])):
        print(f"| `{rid}` | {system} | {version} | {jahr} | `{code}` |")
    n = collections.Counter(s for _, s, _, _, _ in befunde)
    print(f"\nNach Katalog: " + ", ".join(f"{k} {v}" for k, v in n.most_common()))
    print("\nZwei Wege zur Korrektur, und die Wahl ist eine fachliche: entweder "
          "traegt die Ressource den falschen Jahrgang, oder sie traegt das falsche "
          "Datum. Vor dem Aendern des Jahrgangs pruefen, ob der Code im "
          "aelteren Katalog ueberhaupt existiert — sonst entsteht aus einem "
          "Zeitfehler ein Terminologiefehler.")
    sys.exit(1)


if __name__ == "__main__":
    main()
