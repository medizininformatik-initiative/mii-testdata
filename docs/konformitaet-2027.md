# Konformität der Testdaten — Stand 2026-09-24

Gegenstück zur [Testabdeckung](ms-coverage-2027.md). **Abdeckung** misst die Reichweite
des Testguts (wird ein Profil/MS-Element überhaupt ausgeübt?), **Konformität** misst
seine Gültigkeit (erfüllen die Instanzen die Profilregeln?). Die beiden Zahlen sind
orthogonal und können gegeneinander arbeiten: Die am 2026-09-23 entfernten 14 Instanzen
mit unzulässigem `value[x]`-Typ haben die Abdeckung *erhöht* und waren dabei ungültig.

## Messbedingungen

| | |
|---|---|
| Validator | HL7 `validator_cli`, lokal |
| Stand | main `e835115e`, 1.100 Dateien (1.071 Einzelressourcen + 29 Bundles) |
| Packages | complete-BOM 2027.0.0-ballot.19 (tgz), basisprofil 1.6.0, einwilligungsmanagement 2.0.4, sdc 4.0.0, genomics-reporting 3.0.0, miabis 1.3.0, isik 6.0.0 |
| Terminologie | **`-tx n/a`** — kein Terminologieserver |
| Filter | **keiner** (ohne `advisor.json`) |

Die Terminologie-Bedingung ist Teil des Messergebnisses: Ohne Terminologieserver
scheitern auch völlig korrekte Codes an Required-Bindings (siehe Klasse A).

## Ergebnis

| Grundgesamtheit | fehlerfrei | Quote |
|---|---|---|
| Einzelressourcen | 824 / 1071 | **76,9 %** |
| Bundles | 1 / 29 | 3,4 % |

Die Bundle-Quote ist kein eigenständiges Signal: Bundles enthalten dieselben Ressourcen
noch einmal, ein einziger Fehler darin färbt das ganze Bundle rot. Aussagekräftig ist
die Quote über Einzelressourcen.

## Die 1.175 Fehler zerfallen in drei Klassen

| Klasse | Fehler | betroffene Ressourcen | Handlungsträger |
|---|---:|---:|---|
| **A** Terminologie-Artefakte (`-tx n/a`) | 193 | 135 | keiner — Messartefakt |
| **B** Profil-Slicing (upstream) | 793 | 57 | Modul-Maintainer |
| **C** Testdaten | 189 | 114 | wir |

**Ohne A und B wären 957/1071 = 89,4 % fehlerfrei.**

### Klasse A — Artefakte der terminologiefreien Messung

Beispiel: *„Der angegebene Wert ('finished') ist nicht im ValueSet 'EncounterStatus'"* —
`finished` ist selbstverständlich gültig; ohne Terminologieserver kann der Validator
Required-Bindings schlicht nicht prüfen und meldet sie als Fehler. Verschwindet mit
einem funktionierenden Terminologieserver, sagt nichts über die Datenqualität.

### Klasse B — Slicing-Defekte in den Profilen

Zwei Muster, zusammen 793 Fehler auf nur 57 Ressourcen (sie schlagen pro Element zu):

- `Validation_VAL_Profile_MatchMultiple` (484×) — *„Element stimmt mit mehr als einem
  Slice überein"*, z.B. `sct` und `loinc` in `mii-pr-icu-vent-maximaler-beatmungsdruck`
  oder `Wirkstoff`/`Loesung` in `mii-pr-lungenfunktion-methacholine`. Die Slices sind
  nicht disjunkt, der Diskriminator kann sie nicht trennen.
- `SLICING_CANNOT_BE_EVALUATED` (310×) — der Diskriminator lässt sich gar nicht
  auflösen, z.B. `$this` auf `Observation.component:percentPredicted` (Lungenfunktion)
  oder `code` in `mii-pr-mtb-immunohistochemistry-*`.

Das ist dieselbe Defektklasse wie
[kerndatensatz-lungenfunktion#45](https://github.com/medizininformatik-initiative/kerndatensatz-lungenfunktion/issues/45),
betrifft aber auch ICU und MTB. Keine Instanz kann diese Profile fehlerfrei erfüllen.

### Klasse C — unsere Baustelle, nach Größe

| Fehler | Ursache | Fix |
|---:|---|---|
| 70 | `Observation.category:section-type` fehlt in Patho-Befunden | ein systematischer Nachtrag im RuleSet |
| 45 | Display-/Code-Details: `Ausrufezeichen` statt `!`, unbekanntes `T` in KBV-Seitenlokalisation | Displays und Codes korrigieren |
| 16 | Kardinalität überschritten (`Medication.ingredient:Wirkstoff` 2 statt 1) | Instanz korrigieren |
| 16 | `lebensphase`-Extension am falschen Ort (Kardiologie-Diagnose) | Extension umhängen |
| 15 | ICU-Pupillen: Element passt zu keinem bekannten Slice | Slice-Zuordnung prüfen |
| 11 | ISiK-Blutdruck: LOINC `85354-9` fehlt (Pflicht aus `bp`-Profil) | Code ergänzen |
| 8 | `DosageStructuredRequiresBoth` (MTB/Onko): `timing` **und** `doseAndRate` nötig | Dosierung vervollständigen |
| 2 | Pflichtelemente fehlen (`effective[x]`, `component` min 2) | ergänzen |
| 1 | **SOFA-Score außerhalb 0–24** (`sofa-score-range`) | Wert korrigieren |
| 1 | `example.org`-URL in DocumentReference | ersetzen |

Die Liste ist die Arbeitsvorlage: Die ersten beiden Zeilen sind über 60 % der Klasse C
und beide systematisch, nicht einzelfallweise zu beheben.

## Offene Abdeckungslücken (Ergänzung zur Coverage-Seite)

12 Profile ohne Instanz, davon neun aus der Lungenfunktion (`Fluss`, `Volumen`,
`Widerstand`, `Viskositaet`, `1_Viskositaet`, `Prozent`, `Transferkoeffizient`,
`Diffusionskapzitaet`, `Befund`). Sie haben je ein bis neun abgeleitete Kindprofile.

**Das sind keine quasi-abstrakten Templates, sondern Größenart-Profile mit
Auffangfunktion** — und damit unser Arbeitsvorrat, nicht ein Upstream-Problem:
Jedes fixiert eine physikalische Einheit (`Volumen` → `L`, `Fluss` → `L/s`,
`Widerstand` → `kPa/(L/s)`, `Prozent` → `%`, `Transferkoeffizient` →
`mmol/(min.kPa.L)`, `Diffusionskapzitaet` → `mmol/(min.kPa)`, `Viskositaet` → `kPa.s`)
und bindet `code.coding:loinc` an `mii-vs-lufu-lnc-observable` — ein **filterbasiertes**
ValueSet über alle quantitativen LOINC-Codes der Klasse `LP7840-4` (Pulmonologie).
Die Kinder erben die gesamte Struktur und verengen ausschließlich den Code
(`mii-vs-lufu-lnc-fev`, `-tlc`, …).

Eine Instanz des Elternprofils ist also semantisch vollständig: „eine
Lungenfunktions-Volumenmessung in Litern mit quantitativem pulmonalem LOINC-Code, die
keiner der neun benannten Parameter ist". Genau dafür sind sie gedacht — als
Erweiterungspunkt für Geräteparameter, die der KDS nicht einzeln benannt hat.
Testdaten dafür sind machbar: je eine Instanz mit einem Code aus dem breiten
ValueSet, der nicht in den Kinder-ValueSets liegt.

Ausnahme `Befund` (DiagnosticReport): ohne Einheit und ohne Code-Bindung, vier Kinder
(Spirometrie-, Bodyplethysmographie-, Diffusions-, Provokationsbefund). Hier ist die
Auffangfunktion weniger eindeutig.

Lokal schließbar sind vier Lücken: ein **Questionnaire** (bisher existiert keine einzige
Questionnaire-Instanz, nur QuestionnaireResponses), ein **SearchParameter** fürs
Meta-Modul, der **PRO-Score-Blueprint** und eine **Blutgruppen-Observation** (Seltene).

## Reproduktion

```bash
java -Xmx8g -jar validator_cli.jar kds-testdata/fsh-generated/resources -version 4.0.1 \
  -ig <pfad>/de.medizininformatikinitiative.kerndatensatz.complete-2027.0.0-ballot.19.tgz \
  -ig de.basisprofil.r4#1.6.0 -ig de.einwilligungsmanagement#2.0.4 -ig hl7.fhir.uv.sdc#4.0.0 \
  -ig hl7.fhir.uv.genomics-reporting#3.0.0 -ig eu.miabis.r4#1.3.0 -ig de.gematik.isik#6.0.0 \
  -tx n/a -output validation-unfiltered.json
```

Achtung: Der Validator entfernt das per `-ig <tgz>` geladene complete-Paket anschließend
aus `~/.fhir/packages` — danach aus dem tgz wiederherstellen.
