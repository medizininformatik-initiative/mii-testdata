#!/usr/bin/env python3
"""check-catalogue-versions.py — Katalogjahrgang gegen das Erfassungsdatum.

Die BfArM-Kataloge (ICD-10-GM, OPS, ATC, Alpha-ID) erscheinen jaehrlich. Kodiert
wird mit dem Jahrgang, der zum Zeitpunkt der ERFASSUNG gilt — nicht zu dem des
Geschehens. Daraus folgt eine Plausibilitaetsregel, die kein Validator prueft,
weil sie zwei Elemente in Beziehung setzt statt einen Code zu bewerten:

    Coding.version soll nicht juenger sein als das ERFASSUNGSDATUM der Ressource.

Der Anker ist absichtlich das Erfassungsdatum und nicht das klinische, und diese
Unterscheidung ist der Kern der Regel. Eine Diagnose mit `onsetDateTime`
2023-08-02 und `recordedDate` 2025-03-10 ist 2025 erfasst worden; ICD-10-GM 2025
ist dafuer richtig, obwohl das Geschehen aelter ist. Retrospektive Erschliessung
ist in der Forschung der Normalfall: Ein Register kodiert Altfaelle mit dem
heutigen Katalog, ein molekulares Tumorboard leitet aus einer Therapie von 2022
heute eine Implikation ab, NLP erschliesst alte Befunde. Ein Katalog, der JUENGER
als das Geschehen ist, ist deshalb kein Fehler — nur einer, der juenger als die
Erfassung ist, verdient einen Blick.

Eine FRUEHERE Erstfassung dieser Pruefung nahm das erste gefundene Datumsfeld und
bevorzugte damit `onsetDateTime`. Sie hat dadurch korrekt nachtraeglich erschlossene
Ressourcen als fehlerhaft gemeldet, und die daraufhin "korrigierten" Jahrgaenge
waren falscher als die urspruenglichen. Daher der Maximalwert.

Wo die Ressource kein Erfassungsdatum nennt, wird NICHT geurteilt. Eine zweite
Fassung dieser Pruefung nahm dort das spaeteste vorhandene Datum und meldete
daraufhin 28 Faelle, von denen alle harmlos waren: Testdaten, die 2026
geschrieben wurden und klinische Daten von 2022 bis 2025 tragen. Eine Liste, in
der jeder Eintrag harmlos ist, verdeckt die Eintraege, die es nicht sind.

Gemeldet wird trotzdem als HINWEIS mit Exit 0, nicht als Fehler: Auch ein
nachlaufendes Erfassungsdatum ist denkbar, und ein Gate, das bei legitimer
retrospektiver Erschliessung rot wird, erzieht dazu, richtige Daten falsch zu
machen.

Dass die alten Jahrgaenge Absicht sind, ist nachgerechnet: Von 53
ICD-10-GM-Codierungen im Bestand tragen 30 genau den Jahrgang ihres eigenen
Datums — eine Diagnose von 2010 fuehrt ICD-10-GM 2010. Das ist der Grund, warum
diese Testdaten einen Terminologieserver mit historischen Katalogen brauchen und
nicht nur mit dem aktuellen.

Usage: check-catalogue-versions.py [resources-dir]
Exit immer 0 — das Ergebnis ist der Hinweis, nicht ein Urteil.
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

# NUR Felder, die sagen, wann die Ressource ERFASST wurde. Klinische Daten
# (onsetDateTime, effectiveDateTime, performedDateTime, Perioden) stehen
# absichtlich NICHT hier: Sie sagen, wann etwas geschah, und der Katalog richtet
# sich nicht danach. Genau diese Verwechslung war der Fehler der Erstfassung.
ERFASSUNGSFELDER = ("recordedDate", "issued", "authoredOn", "created")


def erfassungsjahr(doc):
    """Das spaeteste Jahr, in dem die Ressource nach eigener Angabe erfasst wurde.

    None, wenn sie dazu nichts sagt — dann ist die Regel nicht anwendbar, und
    Schweigen ist besser als Raten.
    """
    jahre = [int(doc[k][:4]) for k in ERFASSUNGSFELDER
             if isinstance(doc.get(k), str) and re.match(r"^\d{4}", doc[k])]
    return max(jahre) if jahre else None


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
        jahr = erfassungsjahr(doc)
        for c in codings(doc):
            system = c.get("system") or ""
            version = c.get("version")
            if not any(k in system for k in JAEHRLICH):
                continue
            if not (isinstance(version, str) and re.fullmatch(r"\d{4}", version)):
                continue
            if jahr is None:
                # Kein Erfassungsdatum — nicht beurteilbar. Der haeufigste Fall,
                # und kein Mangel: Viele Ressourcen tragen nur klinische Daten.
                ohne_datum += 1
                continue
            geprueft += 1
            if int(version) > jahr:
                befunde.append((doc.get("id", os.path.basename(f)),
                                system.rsplit("/", 1)[-1], version, jahr,
                                c.get("code")))

    print(f"# Katalogjahrgaenge ({geprueft} Codierungen mit Erfassungsdatum "
          f"geprueft, {ohne_datum} ohne Erfassungsdatum uebersprungen)\n")
    if not befunde:
        print("Kein Jahrgang liegt nach dem Erfassungsdatum seiner Ressource.")
        sys.exit(0)

    print(f"**{len(befunde)} Codierungen mit einem Katalog, der NACH dem "
          f"selbst angegebenen Erfassungsdatum erschienen ist.** Hier widerspricht "
          f"die Ressource sich selbst — mit einem Katalog kodiert, den es zum "
          f"Erfassungszeitpunkt noch nicht gab.\n")
    print("| Ressource | Katalog | Jahrgang | Datum | Code |")
    print("|---|---|---:|---:|---|")
    for rid, system, version, jahr, code in sorted(befunde, key=lambda x: (-int(x[2]), x[0])):
        print(f"| `{rid}` | {system} | {version} | {jahr} | `{code}` |")
    n = collections.Counter(s for _, s, _, _, _ in befunde)
    print(f"\nNach Katalog: " + ", ".join(f"{k} {v}" for k, v in n.most_common()))
    print("\nZwei Wege zur Korrektur, und die Wahl ist eine fachliche: entweder "
          "traegt die Ressource den falschen Jahrgang, oder das falsche "
          "Erfassungsdatum. Vor dem Aendern des Jahrgangs pruefen, ob der Code im "
          "aelteren Katalog ueberhaupt existiert — sonst entsteht aus einem "
          "Zeitfehler ein Terminologiefehler.")
    # Bewusst 0: Die Regel ist eine Plausibilitaetsheuristik, kein Invariant.
    # Ein Gate, das bei legitimer retrospektiver Erschliessung rot wird, wuerde
    # dazu erziehen, richtige Daten falsch zu machen.
    sys.exit(0)


if __name__ == "__main__":
    main()
