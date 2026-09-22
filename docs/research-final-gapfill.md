# Research: Letzte Profilluecken (pro-Scores, mikrobio, consent, bildgebung, mtb-Devices, person)

Stand: 2026-09-22. Schliesst die letzten verstreuten Profilluecken ueber 6 Module.
Alle Instanzen: TestDataLabel + `meta.source`, Profil-Canonicals ohne Versionssuffix,
Registrierung im jeweiligen Modul-/Patient-Bundle via `AddBundleEntry`.

## Abdeckung (Gap -> Instanz)

### modul-pro (de.medizininformatikinitiative.kerndatensatz.pros 2027.0.0-ballot.1)

| Profil | Instanz | Anmerkung |
|---|---|---|
| mii-pr-pro-observation-phq-9 | `mii-exa-test-data-patient-1-pro-phq9-obs-1` | Gleicher Score (8) wie die vorhandene Score-Instance-Instanz `...-pro-phq9-score`, aber als Instanz des spezifischen PHQ-9-Profils; `derivedFrom` -> vorhandene PHQ-9-QuestionnaireResponse |
| mii-pr-pro-observation-phq-15 | `mii-exa-test-data-patient-1-pro-phq15-score` | `derivedFrom` -> NEUE PHQ-15-Response (s.u.); Score 12 (medium somatic symptom severity) |
| mii-pr-pro-observation-whodas12 | `mii-exa-test-data-patient-1-pro-whodas12-score` | `derivedFrom` -> NEUE WHODAS-12-Response; Simple Sum 12/48; Code SNOMED 715823002 + Score-Katalog `whodas12-simple-sum` |
| (mii-pr-pro-questionnaire-response, zusaetzlich) | `mii-exa-test-data-patient-1-pro-phq15-response`, `mii-exa-test-data-patient-1-pro-whodas12-response` | Der Auftrag ging von vorhandenen PHQ-15-/WHODAS-Responses aus — die gab es im Repo NICHT (nur PHQ-9 und PROMIS-Dep-SF4a). Beide neu angelegt (adaptiert aus den Paket-Beispielen `mii-exa-pro-phq-15-response` / `mii-exa-pro-whodas12-response-01`), Antworten konsistent zum PHQ-9-Szenario von Patient 1 (Schlaf 2, Muedigkeit 1) |

Wichtig: Die Profile fixieren `method.text` per Pattern (`Patient Health Questionnaire-9 (PHQ-9)`,
`Patient Health Questionnaire-15 (PHQ-15)`, `WHODAS 2.0 12-item simple sum scoring (0-48)`) —
abweichende Texte sind SUSHI-Errors.

**Skip-Entscheidungen (modul-pro):**

- **mii-pr-pro-questionnaire** (Profil auf `Questionnaire`): NICHT instanziiert. Das
  pros-Paket liefert selbst >30 konforme Questionnaire-Conformance-Ressourcen
  (`mii-qst-pro-*`, inkl. PHQ-9/PHQ-15/WHODAS-12), die unsere QuestionnaireResponses
  per Canonical referenzieren. Eine eigene Questionnaire-Testinstanz wuerde die
  Katalog-Artefakte des Moduls duplizieren (Canonical-Kollision bzw. sinnfreies
  Parallel-Questionnaire) und ist keine Patienten-Testdatenebene.
  `input/predefined-resources/` enthaelt keine Questionnaires (nur 1 Lab-Observation) —
  es gibt also auch nichts Vorhandenes zu registrieren.
- **mii-pr-pro-score-blueprint** (Profil auf `ObservationDefinition`): NICHT instanziiert.
  Definitions-Artefakt (Score-Katalog); das Paket liefert die zugehoerigen
  `mii-obsdef-pro-*`-Instanzen selbst. Unsere Score-Observations verweisen per
  `workflow-instantiatesCanonical` auf diese ObservationDefinitions — mehr
  Testdaten-Bezug ist nicht sinnvoll herstellbar. (Nicht `abstract=true`, aber
  Conformance-/Katalogebene, keine Patientendaten.)

### modul-mikrobio (…mikrobiologie 2027.0.0-ballot2)

| Profil | Instanz | Anmerkung |
|---|---|---|
| mii-pr-mikrobio-probe | `mii-exa-test-data-mikrobio-probe-1` | Sputum (SNOMED 119334006), `type.coding[sct]`-Slice (Basis Biobank SpecimenCore); Patient/Kontext des Mikrobio-Bundles |
| mii-pr-mikrobio-spezifische-mikroskopie | `mii-exa-test-data-mikrobio-spezifische-mikroskopie-1` | Saeurefeste Staebchen im Sputum, Kinyoun (Faerbung-Extension SNOMED 36878004), LOINC 72357-7, Ergebnis Detected 260373001, `component[menge]` 2+ (441517005); `specimen` (1..1) -> probe-1 |

**Snapshot-Frage:** Der Hinweis "mii-pr-mikrobio-probe hat keinen Snapshot" trifft auf den
aktuellen Cache-Stand NICHT mehr zu — sowohl das Einzelpaket
`…mikrobiologie#2027.0.0-ballot2` als auch die complete-BOM `2027.0.0-ballot.19` enthalten
die SD MIT Snapshot. SUSHI baut fehlerfrei; kein Workaround noetig.

Nicht in den vorhandenen Blutkultur-DiagnosticReport aufgenommen (fachlich anderes
Material/Fragestellung); beide Instanzen sind im Mikrobio-Bundle registriert.

### modul-consent (…consent 2027.0.0-ballot)

| Profil | Instanz | Anmerkung |
|---|---|---|
| mii-pr-consent-documentreference | `mii-exa-test-data-patient-1-consent-docref-1` | Gescannter Einwilligungsbogen (PDF, base64-Platzhalter, contentType-Pattern `application/pdf`); subject Patient-1 |
| mii-pr-consent-provenance | `mii-exa-test-data-patient-1-consent-provenance-1` | `target` -> vorhandener `...-patient-1-consent-1`, `entity(source)` -> DocumentReference, 2 Signaturen (Consent Signature 1.2.840.10065.1.12.1.7 + Witness 1.2.840.10065.1.12.1.11) analog Paketbeispiel |

Beide im Pat-1-Bundle (`input/fsh/Bundle.fsh`) direkt hinter dem Consent registriert.

### modul-bildgebung (…bildgebung 2027.0.0-ballot.1)

| Profil | Instanz | Anmerkung |
|---|---|---|
| mii-pr-bildgebung-radiologische-messung | `mii-exa-test-data-radiologische-messung-1` | Durchmesser des Herdbefunds 4.2 mm (SNOMED 439984002), category Measurement procedure 122869004, method 272391002, `partOf` Befundungsprozedur, `derivedFrom` ImagingStudy, `hasMember` radiologische Beobachtung, bodySite + BodyStructure-Extension; zusaetzlich als `result` in den Befundbericht aufgenommen |

### modul-mtb (…mtb 2027.0.0-ballot.1)

| Profil | Instanz | Anmerkung |
|---|---|---|
| genomic-study-device (Device) | `mii-exa-test-data-mtb-device-sequencer-1` | Illumina NovaSeq 6000, `deviceName.type = user-friendly-name` (Pattern); aus der Genomic-Study-Analysis via `genomic-study-analysis-device`-Extension referenziert (function `sequencing-device`); `definition` -> Panel-DeviceDefinition |
| mii-pr-mtb-panel-devicedefinition | `mii-exa-test-data-mtb-panel-devicedef-1` | TruSight Oncology 500, `type = gene-panel` (Pattern, CS mii-cs-mtb-genomicanalysis-devicefunction) |

Wiring: `mii-exa-test-data-mtb-genomic-study-analysis-1` (NgsBericht.fsh) hat jetzt die
`genomic-study-analysis-device`-Extension (device + function) — analog Paketbeispiel
`Procedure-MII-EXA-MTB-GenomicStudyAnalysis-1`.

### modul-person (Profile in der complete-BOM)

| Profil | Instanz | Anmerkung |
|---|---|---|
| AllergieUnvertraeglichkeit (`modul-person/StructureDefinition/AllergieUnvertraeglichkeit`, Basis AllergyIntolerance) | `mii-exa-test-data-patient-1-allergie-1` | Penicillin-Allergie (SNOMED 91936005, IPS-VS-Binding), Reaktion Urtikaria 126485001, moderate, oral; patient/encounter -> Patient-1-Kontext; im Pat-1-Bundle |
| PatientPseudonymisiert (`core/modul-person/StructureDefinition/PatientPseudonymisiert`) | `mii-exa-test-data-patient-pseudonym-1` | EIGENSTAENDIGER pseudonymisierter Patient (nur PSEUDED-Identifier, gender, birthDate mit Jahresgenauigkeit — keine Namen/Adressen) |

**Entscheidung PatientPseudonymisiert:** Keine pseudonymisierte Kopie eines vorhandenen
identifizierenden Testpatienten (konzeptioneller Widerspruch: dieselbe Person einmal mit
Klarnamen, einmal "pseudonymisiert" im selben Datensatz). Stattdessen ein eigenstaendiger
Patient ohne klinische Referenzen; die Registrierung erfolgt im Pat-1-Bundle
(`Bundle.fsh`) rein zum Transport/zur CI-Abdeckung (technischer Layer) — dokumentiert
per Kommentar im Bundle.

**SUSHI-Stolperfalle:** Beim `PseudonymisierterIdentifier`-Slice fuellt SUSHI
`type.coding[pseuded]` (PSEUDED) aus dem Slice-Pattern selbst auf; eine zusaetzliche
explizite Zuweisung erzeugt ein Duplikat und verletzt `coding:pseuded max 1`
(Java-Validator-Error). Loesung: nur `system`/`value` setzen.

## Build & Validierung

- `sushi build .`: **0 Errors**, 14 Warnings — davon 13 vorbestehend; 1 neue Warnung
  derselben vorbestehenden Klasse (SUSHI kann genomics-reporting-Canonicals nicht
  aufloesen und faellt auf `Extension` zurueck — betrifft jetzt zusaetzlich
  `genomic-study-analysis-device`, wie zuvor schon method-type/change-type/genome-build).
- Java-Validator (validator_cli, `-version 4.0.1`, complete-BOM-tgz + de.basisprofil.r4#1.6.0
  + einwilligungsmanagement/sdc/genomics-reporting/miabis, `-tx n/a`) ueber die 14 neuen
  generierten Dateien + die geaenderte Genomic-Study-Analysis:
  - **1 echter Fund, gefixt:** PSEUDED-Coding-Duplikat (s.o.) -> jetzt 0 Errors auf der Instanz.
  - Restliche Error-Klassen sind `-tx n/a`-Artefakte bzw. Locale-Effekte, keine echten Funde:
    - `!!`…"nicht im options value set" (PHQ-15-/WHODAS-Antworten) und `!!`…mimetypes
      (`application/pdf`): ohne Terminologieserver nicht expandierbare ValueSets; die
      Antwort-Codes sind identisch mit den Paket-eigenen Beispiel-Responses.
    - "Displayname sollte 'Wenig beeinträchtigt' (de) sein": Validator mit deutschem
      System-Locale bevorzugt die (de)-Translation; die Instanzen tragen die primaeren
      Display-Werte der CodeSysteme (wie die Upstream-Beispiele).
  - Warnungen: bekannte Klassen (dom-6 Narrative-BP, SNOMED/LOINC offline unbekannt,
    UCUM-`{score}`-Annotation, Performer-BP, Labor-Interpretation-VS erlaubt nur
    L/LU/N/H/HU — letzteres betrifft die vorhandenen Mikrobio-Instanzen genauso).

## Upstream-Befunde

1. **pros:** Kein Paket-Snapshot-Problem (mehr); Paketbeispiele referenzieren Profile mit
   Versionssuffix (`|2027.0.0-ballot.1`) — fuer unsere Konventionen entfernt.
2. **mikrobio:** `mii-pr-mikrobio-probe` hat im publizierten ballot2-Paket und in der
   BOM ballot.19 einen Snapshot; der urspruengliche Befund ist ueberholt.
3. **mtb:** Das Paketbeispiel `Device-MII-EXA-MTB-Device-Sequencer-1` deklariert in
   `meta.profile` zusaetzlich `mii-pr-mtb-genomic-study-device|2027.0.0-ballot.1` — diese
   Canonical existiert im Paket nicht (nur `.../genomic-study-device` mit Name
   `MII_PR_MTB_Genomic_Study_Device`). Upstream-Inkonsistenz, fuer unsere Instanz nur die
   existierende Canonical verwendet.
4. **bildgebung:** Das Paketbeispiel `Observation-mii-exa-bildgebung-radiologische-messung`
   traegt ein fehlerhaftes `method.coding.system`
   (`http://snomed.info/sct|…/version/20260701` als EIN String) — bei uns korrekt
   `http://snomed.info/sct`.
5. **person/labor:** Das Labor-Interpretation-ValueSet (preferred binding, via
   ObservationLab auch fuer alle Mikrobio-Observations) enthaelt nur L/LU/N/H/HU —
   fuer qualitative Mikrobiologie-Ergebnisse (A/POS/NEG) gibt es keinen passenden Code;
   Warnungsklasse besteht repo-weit.
