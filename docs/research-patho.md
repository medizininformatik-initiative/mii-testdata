# Pathologie Module - Research Report

Module: `de.medizininformatikinitiative.kerndatensatz.patho`
Version: `2027.0.0-ballot` (via BOM `de.medizininformatikinitiative.kerndatensatz.complete` `2027.0.0-ballot.19`)
Canonical prefix: `https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition`
Status: RESTAURIERT und vervollstaendigt. Historische Testdaten (2025er-Package) wurden mit
Commit `00b7374c` ("Removed MiBi, Patho, Studien") entfernt; vor dieser Arbeit deckte
`kds-testdata/input/fsh/modul-patho/` nur 3 von 17 Profilen ab (active-problems-list,
history-of-present-illness, problem-list-item).

---

## 1. Profile Inventory (17/17 abgedeckt)

| # | Profile ID | Base | Abstrakt | Abgedeckt durch Instanz |
|---|---|---|---|---|
| 1 | mii-pr-patho-bundle | Bundle (ISiKBerichtBundle) | nein | mii-exa-test-data-patho-befund-bundle-1 |
| 2 | mii-pr-patho-composition | Composition (ISiKBerichtSubSysteme) | nein | mii-exa-test-data-patho-composition-1 |
| 3 | mii-pr-patho-report | DiagnosticReport | nein | mii-exa-test-data-patho-report-1 |
| 4 | mii-pr-patho-service-request | ServiceRequest | nein | mii-exa-test-data-patho-request-1 |
| 5 | mii-pr-patho-specimen | Specimen (SpecimenCore, modul-biobank) | nein | 36 Instanzen `mii-exa-test-data-patho-specimen-01..12-{part,block,slide}` |
| 6 | mii-pr-patho-base-observation | Observation | **ja** | indirekt ueber alle abgeleiteten Profile (7-12); zusaetzlich technisches Ziel des `Observations`-Entry-Slice im Bundle |
| 7 | mii-pr-patho-finding | mii-pr-patho-base-observation | nein | 190 Finding-Instanzen (Makro-/Mikro-/Konklusions-/Intraop-/Zusatz-Befunde) |
| 8 | mii-pr-patho-section-grouper | mii-pr-patho-base-observation | **ja** | indirekt ueber alle 5 abgeleiteten Grouper (9-13) |
| 9 | mii-pr-patho-macroscopic-grouper | mii-pr-patho-section-grouper | nein | mii-exa-test-data-patho-macro-grouper-1 |
| 10 | mii-pr-patho-microscopic-grouper | mii-pr-patho-section-grouper | nein | mii-exa-test-data-patho-micro-grouper-1 |
| 11 | mii-pr-patho-intraoperative-grouper | mii-pr-patho-section-grouper | nein | mii-exa-test-data-patho-intraop-grouper-1 |
| 12 | mii-pr-patho-diagnostic-conclusion-grouper | mii-pr-patho-section-grouper | nein | mii-exa-test-data-patho-conclusion-grouper-1 |
| 13 | mii-pr-patho-additional-specified-grouper | mii-pr-patho-section-grouper | nein | mii-exa-test-data-patho-zusatz-grouper-1 |
| 14 | mii-pr-patho-attached-image | Media | nein | mii-exa-test-data-patho-image-1 |
| 15 | mii-pr-patho-active-problems-list | List | nein | mii-exa-test-data-patient-1-patho-active-problems-1 (bestand) |
| 16 | mii-pr-patho-history-of-present-illness | List | nein | mii-exa-test-data-patient-1-patho-hopi-1 (bestand) |
| 17 | mii-pr-patho-problem-list-item | Condition | nein | mii-exa-test-data-patient-1-patho-problem-list-item-1 (bestand) |

Die beiden abstrakten Profile (base-observation, section-grouper) koennen nicht direkt
instanziiert werden; ihre Abdeckung erfolgt ueber die abgeleiteten Profile. Der
`Observations`-Slice des Bundles (Typ-Discriminator, Ziel base-observation) validiert
saemtliche Observation-Entries des Dokuments gegen das abstrakte Profil.

## 2. Herkunft der Testdaten: Port aus BIH-CEI/ProstateCancerSpec

Primaerquelle ist der **CoreNeedleBiopsy-Fall** aus
[BIH-CEI/ProstateCancerSpec](https://github.com/BIH-CEI/ProstateCancerSpec)
(`input/fsh/examples/CoreNeedleBiopsy/`), der Referenzimplementierung, die das
MII-Patho-Modul 2027 offiziell referenziert. Der historische Prostata-Fall dieses Repos
(2025er-Testdaten, wiederherstellbar via `git show 00b7374c^:...`) lebt dort
weiterentwickelt: 12-Stanzen-Prostatabiopsie mit Part/Block/Slide-Specimen-Hierarchie,
Makroskopie-Messungen, 16 Mikroskopie-Parametern je positiver Stanze und synoptischer
diagnostischer Schlussfolgerung.

**Arbeitsteilung**: mii-testdata ist die *technische* Schicht (Profil-Coverage,
CI-validierbare Bundles); ProstateCancerSpec bleibt die *klinische*
Referenzimplementierung. Auf Wunsch des Users wurde der vollstaendige Fall (alle 12
Stanzen) uebernommen, nicht nur ein schlankes Extrakt.

### 2.1 Portiert (mit Migration 2026 -> 2027)

| Quelle (PCS) | Ziel (modul-patho) | Anpassungen |
|---|---|---|
| serviceRequest.fsh | PathoRequest.fsh | + Filler-ID-Slice, supportingInfo auf benannte Slices (observations/codedCondition/anamnesis/activeProblems) inkl. Verkettung mit Bestands-Listen |
| specimens.fsh (36 Specimens) | Specimen.fsh | Doppel-Profilierung specimen + SpecimenCore beibehalten (deckt biobank-SpecimenCore mit ab), Versionssuffixe |2026.0.0 entfernt |
| macroscopy.fsh (Grouper + 36 Findings) | PathoMacroscopy.fsh | Grouper-Mitglieder von `derivedFrom` auf `hasMember` migriert (2027-Slice `pathology-finding`) |
| microscopy-findings-01-03/04-06/07-09/10-12.fsh (154 Findings) | PathoMicroscopy0103/0406/0709/1012.fsh | QuestionnaireResponse-derivedFrom-Referenzen entfernt (QRs nicht portiert, s.u.) |
| microscopy-grouper.fsh | PathoMicroscopyGrouper.fsh | derivedFrom -> hasMember |
| diagnostic-conclusion.fsh (Grouper + 23 Findings) | PathoConclusion.fsh | doppelte identische code.coding-Zeile (ISUP-Grading) dedupliziert; onko-meta.profile-Doppeltags entfernt (s. 4.4) |
| diagnostic-report.fsh | PathoReport.fsh | + encounter, + result-Slices intraoperative-/additional-observations, + media.link, + conclusionCode, + Extension `composition` (R5-Backport-Verweis auf die Composition) |
| composition.fsh | PathoComposition.fsh | komplett auf mii-pr-patho-composition migriert: statt einer Sammel-Sektion die 2027-Sektions-Slices (patho-diagnostic-report, makroskopie, mikroskopie, intraoperativ, diagnostische-schlussfolgerung, zusaetzliche-beobachtung), text.status auf fixiertes `#extensions`, identifier/attester/custodian/event ergaenzt |
| bundle-document.fsh | PathoBundleDocument.fsh | PCS nutzt plain `Bundle` mit 9 Entries; hier vollstaendige Instanz von mii-pr-patho-bundle mit 245 Entries, benannten Entry-Slices, identifier, timestamp und der vom Profil geforderten signature |
| diagnosis.fsh (2x onko-diagnose-primaertumor) | PathoDiagnose.fsh | Pflicht-Slice `category[onkologie]` (SNOMED 55342001) ergaenzt (2027-Anforderung) |
| supportingInfo-psa-level.fsh | PathoPsa.fsh | + `category` laboratory (noetig, damit die PSA-Observation den `Observations`-Bundle-Slice gegen base-observation besteht) |
| tnm-staging.fsh (cT2a/cN0/cM0) | PathoTnm.fsh | unveraendert portiert (onko-TNM-Profile existieren in 2027) |

Alle Instanzen: umbenannt auf `mii-exa-test-data-patho-<kebab>` (99-Zeichen-Limit der
generierten Dateinamen geprueft, Maximum 90), `insert TestDataLabel` +
`meta.source = https://www.charite.de/fhir/kds-testdata`, example-hospital-Identifier-Systeme
auf charite.de-SIDs umgestellt, Patient/Encounter auf die bestehenden
`mii-exa-test-data-patho-patient-1`/`-encounter-1` gemappt (Encounter-Periode auf
2024-01-10 vorgezogen, damit die Falldaten hineinfallen).

### 2.2 Nicht portiert

- **QuestionnaireResponses** (`questionnaire-response-single.fsh`, `-case.fsh`): instanziieren
  ProstateCancerSpec-eigene Questionnaire-Definitionen, die nicht Teil des Patho-Moduls sind.
  Die `derivedFrom`-Verweise der Findings darauf wurden entfernt.
- **Tasks** (`task.fsh`, 4 Workflow-Snapshots V1-V4): folgen dem COW-IG-Auftragsworkflow
  (plain FHIR Task, kein Patho-Profil); ohne Coverage-Wert hier.
- **encounter.fsh**: durch den bestehenden Modul-Encounter ersetzt (die PCS-Instanz nutzt
  zudem die invalide class `#IMB` ohne System).

### 2.3 Ergaenzt (Luecken, die der PCS-Fall nicht abdeckt)

Im selben klinischen Fall ergaenzt, um 17/17 zu erreichen:

- `mii-exa-test-data-patho-intraop-befund-1` + `-intraop-grouper-1`
  (Schnellschnitt Stanze 01; LOINC-Sektionstyp 83321-0)
- `mii-exa-test-data-patho-p63-befund-1` + `-zusatz-grouper-1`
  (p63-Immunhistochemie, LOINC 101548-6 / LA11883-8, Sektionstyp 100969-5; angelehnt an das
  Modul-Beispiel `mii-exa-patho-p63-a`)
- `mii-exa-test-data-patho-image-1` (Media/attached-image, Fotodokumentation des HE-Schnitts
  Stanze 01; verkettet via `DiagnosticReport.media.link` und `derivedFrom[attached-image]`
  des p63-Befunds)
- `mii-exa-test-data-patho-organization-1`, `-practitioner-1` (Pathologin), `-practitioner-2`
  (Urologe/Einsender)
- Composition-Sektionen intraoperativ + zusaetzliche-beobachtung samt Grouper-Verkettung

Aus dem historischen 2025er-Material wurde inhaltlich nichts weiteres benoetigt; der
PCS-Fall ist dessen direkte Weiterentwicklung (gleiche Grundstruktur: tru-cut biopsy
Specimens, HE-Schnitte, Gleason-Befundkette).

## 3. Befundkette und Bundles

```
ServiceRequest (request-1)
  supportingInfo: PSA, Verdachtsdiagnose (onko), Anamnese-/Problemlisten
  specimen: 12x Part
Specimen-Hierarchie je Stanze: Part -> Block (Paraffin) -> Slide (HE)
Findings (mii-pr-patho-finding):
  Makro: Laenge/Zylinderzahl/Seitenangabe je Stanze  (Sektionstyp 22634-0)
  Mikro: 16 Parameter je positiver Stanze (01,02,04,06,07,09,11), HistoTyp+MorphText benigne (22635-7)
  Intraop: Schnellschnitt Stanze 01 (83321-0)
  Zusatz: p63-IHC (100969-5)
  Konklusion: 23 synoptische Parameter (22637-3)
Grouper (je Sektion) --hasMember--> Findings
DiagnosticReport (report-1) --result[Slices]--> alle 5 Grouper; media.link -> Media
Composition (composition-1): 6 Sektions-Slices -> Report bzw. Grouper
Dokument-Bundle (befund-bundle-1, mii-pr-patho-bundle): Composition first, 245 Entries, Signature
```

Zwei Bundles:
- **`mii-exa-test-data-patho-befund-bundle-1`** - Instanz des Profils `mii-pr-patho-bundle`
  (type `document`, ISiKBerichtBundle-Basis). Benannte Entry-Slices (Composition/Patient/
  Encounter/ServiceRequest/Specimen/DiagnosticReport/Observations); TNM-Observations und die
  gesicherte Diagnose sind bewusst NICHT enthalten (im Dokument unreferenziert, wuerden
  Dokument-Erreichbarkeits-Warnungen ausloesen).
- **`mii-exa-test-data-bundle-patho-1`** - Transaction-Bundle (CI-NDJSON-Glob, Name
  unveraendert), erweitert um alle 250 Ressourcen inklusive des Dokument-Bundles selbst.

## 4. Entscheidungen

1. **Grouper-Verkettung `derivedFrom` -> `hasMember`**: Die PCS-Beispiele (2026er-Stand)
   referenzieren Finding-Mitglieder der Makro-/Mikro-Grouper via `derivedFrom`. Die
   2027-Profile definieren dafuer den `hasMember`-Slice `pathology-finding`
   (`derivedFrom` ist fuer attached-image/dicom-image bzw. beim Konklusions-Grouper fuer
   grouper-observation/questionnaire-response gesliced). Migriert.
2. **PSA mit laboratory-Kategorie**: Der `Observations`-Entry-Slice des Dokument-Bundles ist
   typ-diskriminiert - JEDE Observation im Dokument muss base-observation erfuellen
   (category-Slice laboratory 1..1). Der PSA-Instanz wurde daher zusaetzlich
   `observation-category#laboratory` gegeben (fachlich korrekt, Laborwert).
3. **Signature**: `mii-pr-patho-bundle` erbt/verlangt `Bundle.signature 1..1`. Belegt mit
   ASTM E1762 "Author's Signature" der Organisation. (Auch die Referenzimplementierung
   liefert keine Signature - s. Upstream 4.2.)
4. **onko-Doppel-Profilierungen der Findings entfernt**: PCS taggt einzelne Findings
   zusaetzlich mit onko-Profilen (`mii-pr-onko-prostate-gleason-score`,
   `-gleason-grade-group`); `mii-pr-onko-prostate-gleason-score` existiert in 2027 nicht
   (heisst dort `-gleason-score-gesamt`), und die Instanzen erfuellen die onko-Profile
   (eigene category-/code-Pattern) nicht. Die specimen+SpecimenCore-Doppel-Profilierung
   wurde dagegen beibehalten (patho-specimen basiert auf SpecimenCore - trivial gueltig,
   deckt das biobank-Profil mit ab).
5. **Onko-Ressourcen im Patho-Modulordner**: Verdachts-/gesicherte Diagnose
   (onko-diagnose-primaertumor), PSA und cTNM gehoeren zum portierten Fall und liegen unter
   modul-patho (Instanzen, keine Conformance-Ressourcen); das Onkologie-Modul hat eigene,
   davon unabhaengige Testdaten.
6. **Bestandsdaten unangetastet**: Die drei List-/Condition-Instanzen (alte IDs
   `mii-exa-test-data-patient-1-patho-*`) bleiben bestehen und sind jetzt zusaetzlich ueber
   `ServiceRequest.supportingInfo[anamnesis|activeProblems]` in die Kette eingebunden.

## 5. Bekannte Upstream-Auffaelligkeiten

1. **Kein Bundle-Beispiel im Modul**: Das Patho-Package 2027.0.0-ballot liefert 46 Beispiele,
   aber keine Instanz von `mii-pr-patho-bundle` (und keine vollstaendig verkettete
   Composition mit den Sektions-Slices). `mii-exa-test-data-patho-befund-bundle-1` ist damit
   die erste durchvalidierte Bundle-Instanz - issue-wuerdig als Feedback ans Modul.
2. **`Bundle.signature 1..1`**: Ungewoehnlich streng fuer Testdaten/Interop (auch ISiK
   verlangt das nicht durchgaengig); die Referenzimplementierung ProstateCancerSpec liefert
   selbst keine Signature und wuerde gegen das 2027-Profil scheitern.
3. **ProstateCancerSpec pinnt |2026.0.0**: Alle meta.profile-Pins der PCS-Beispiele zeigen
   auf 2026.0.0; gegen 2027.0.0-ballot validieren sie u.a. wegen der
   `category[onkologie]`-Pflicht (Diagnose) und der hasMember-Slices nicht unveraendert.
4. **Beispiel-Bugs in PCS**: doppelte identische `code.coding`-Zeile im ISUP-Grading,
   nicht existentes Profil `mii-pr-onko-prostate-gleason-score` referenziert, Encounter-class
   `#IMB` ohne System, Tippfehler `GranulomatousProstatiti`.
5. **Modul-Beispiel `mii-exa-patho-p63-a`** nutzt Sektionstyp 22635-7 (Mikroskopie) statt
   100969-5, obwohl p63-IHC die kanonische Zusatzuntersuchung des
   additional-specified-Groupers waere.
6. **`Composition.extension:diagnosticReport`** verweist auf das hl7.eu-Extension-Profil
   `composition-diagnosticReportReference`; das Package `hl7.fhir.eu.extensions.r4` ist im
   BOM-Abhaengigkeitsgraphen nicht aufloesbar (SUSHI: "could not find it ... will try to use
   Extension"). Der MS-Slice ist daher in den Testdaten bewusst unbelegt; die Verknuepfung
   laeuft ueber `DiagnosticReport.extension[composition]` (R5-Backport, xver - aufloesbar).
7. **`category:section-type` des Finding-Profils** ist pattern-diskriminiert, hat aber kein
   pattern (nur required binding) - offline (-tx n/a) nicht validierbar; s. Abschnitt 6.

## 6. Validierung

- `sushi build .`: **0 Errors, 0 Warnings aus modul-patho** (14 Warnings bestehen
  unveraendert in anderen Modulen: genomics-reporting-Extensions, bbmri, address-de-basis,
  seltene).
- Java-Validator (validator_cli, `-version 4.0.1`, complete-2027.0.0-ballot.19 + basisprofil
  1.6.0, `-tx n/a`) ueber alle 254 generierten Patho-Ressourcen (einzeln + Dokument-Bundle):
  616 Errors, die sich vollstaendig auf vier tx-/Umgebungs-Cluster zurueckfuehren lassen -
  KEIN Fehler bleibt nach Abzug der Cluster uebrig:
  1. **`category:section-type`-Slice "required but not found"** (380x, jede Finding-Instanz
     einzeln + im Bundle): Der Slice ist im Profil pattern-diskriminiert, traegt aber KEIN
     pattern, sondern nur ein required binding auf `mii-vs-patho-section-types-loinc`; ohne
     Terminologiedienst kann der Validator die binding-basierte Diskriminierung nicht
     auswerten. **Beweis, dass es nicht an unseren Daten liegt**: Das packaged Modul-Beispiel
     `mii-exa-patho-tissue-length-a` (identische category-Struktur) schlaegt unter demselben
     Setup mit exakt demselben Error fehl. Upstream-issue-wuerdig: ein `patternCodeableConcept`
     je Sektionstyp (wie beim laboratory-Slice) wuerde die Profile offline-validierbar machen.
  2. **Kaskade daraus**: "kein passendes Profil fuer Observation/..." an Grouper-hasMember-,
     Report-result- und Composition-section-Referenzzielen (die Ziel-Findings gelten wegen
     Cluster 1 als nicht konform).
  3. **mimetypes-ValueSet** (`image/png`, Media.content.contentType): BCP-13-System ist ohne
     tx nicht aufloesbar - klassisches tx-Artefakt.
  4. **`Composition.category.coding:sct`-Diskriminator**: binding mit SNOMED-is-a-Filter,
     ohne tx nicht auswertbar; Standalone-Validierung des DiagnosticReport zusaetzlich:
     result-Slicing diskriminiert per `resolve().code` und kann ausserhalb des Bundles nicht
     aufgeloest werden (im Bundle-Kontext auswertbar).
  Die CI (JAVA_FHIR_VALIDATION) laeuft mit SU-TermServ, sofern das Zertifikat konfiguriert
  ist; dort entfallen Cluster 1, 3 und 4. Bewertung ohnehin per Delta
  (s. Memory: Validator-Package-Mismatch).
