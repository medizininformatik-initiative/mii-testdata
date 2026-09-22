# Kardiologie Module - Research Report

Module: `de.medizininformatikinitiative.kerndatensatz.kardiologie`
Version: `2027.0.0-ballot` (via BOM `de.medizininformatikinitiative.kerndatensatz.complete` `2027.0.0-ballot.19`)
Canonical prefix: `https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition`
Status: NEW module, no prior test data in this repository. Test data added under
`kds-testdata/input/fsh/modul-kardiologie/` (Bundle `mii-exa-test-data-bundle-kardiologie-1`).

---

## 1. Profile Inventory

| # | Profile Name | Profile ID | Base Type | Covered by Instance |
|---|---|---|---|---|
| 1 | MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF | mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf | Observation | mii-exa-test-data-kardiologie-kh-aufenthalte-1 |
| 2 | MII_PR_Kardio_Atherosklerotisches_Erstereignis | mii-pr-kardio-atherosklerotisches-erstereignis | Observation | mii-exa-test-data-kardiologie-erstereignis-1 |
| 3 | MII_PR_Kardio_Device | mii-pr-kardio-device | Device | mii-exa-test-data-kardiologie-device-1 |
| 4 | MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt | mii-pr-kardio-diagnose-prozedur-nein-unbekannt | Observation | mii-exa-test-data-kardiologie-htx-nein-1 |
| 5 | MII_PR_Kardio_Diagnose | mii-pr-kardio-diagnose | Condition (Basis: MII Diagnose) | mii-exa-test-data-kardiologie-diagnose-1 / -2 |
| 6 | MII_PR_Kardio_Geraeteprogrammierung | mii-pr-kardio-geraeteprogrammierung | Observation | mii-exa-test-data-kardiologie-geraeteprogrammierung-1 |
| 7 | MII_PR_Kardio_Kardiale_Deviceimplantation | mii-pr-kardio-kardiale-deviceimplantation | Procedure (Basis: MII Prozedur) | mii-exa-test-data-kardiologie-deviceimplantation-1 |
| 8 | MII_PR_Kardio_Klappenvitium | mii-pr-kardio-klappenvitium | Condition (Basis: mii-pr-kardio-diagnose) | mii-exa-test-data-kardiologie-klappenvitium-1 |
| 9 | MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion | mii-pr-kardio-linksventrikulaere-ejektionsfraktion | Observation | mii-exa-test-data-kardiologie-lvef-1 |
| 10 | MII_PR_Kardio_NBG_Schrittmachermodus | mii-pr-kardio-nbg-schrittmachermodus | DeviceMetric | mii-exa-test-data-kardiologie-devicemetric-1 |
| 11 | MII_PR_Kardio_Observation_Rauchen | mii-pr-kardio-observation-rauchen | Observation (Basis: ISiKRaucherStatus) | mii-exa-test-data-kardiologie-rauchen-1 |
| 12 | MII_PR_Kardio_Score_Modifizierte_Rankin_Skala | mii-pr-kardio-score-modifizierte-rankin-skala | Observation | mii-exa-test-data-kardiologie-mrs-1 |
| 13 | MII_PR_Kardio_Score_NYHA | mii-pr-kardio-score-nyha | Observation | mii-exa-test-data-kardiologie-nyha-1 |

Alle 13 Profile sind durch mindestens eine Instanz abgedeckt.

Module-eigene Terminologie:
- CodeSystem `mii-cs-kardio-atherosklerotisches-ereignis` (Codes `ae`, `eg-cv`)
- CodeSystem `mii-cs-kardio-modifizierte-rankin-skala` (mRS0-mRS6, mRSbigger3, mRSsmallerequal3, mRSunknown)
- CodeSystem `mii-cs-kardio-supplement-snomedct`, `mii-cs-kardio-acribis-questionnaire-answer` (nur fuer den ACRIBIS-Questionnaire, kein Profil)

## 2. Wesentliche MS-/Pflicht-Elemente und ihre Belegung

Auffaelligkeit der 2027er-Kardio-Profile: `code.coding.version` ist durchgaengig 1..1 (MS).
Daher tragen alle Codings eine Version:
- SNOMED CT: `http://snomed.info/sct/900000000000207008/version/20260701` (via Alias `$sct20260701`)
- LOINC: `2.83`, ICD-10-GM: `2026`, OPS: `2026`, MDC (`urn:iso:std:iso:11073:10101`): `2024-12-05`,
  modul-eigene CodeSysteme: `2027.0.0-ballot`

| Profil | Kernelemente in der Instanz |
|---|---|
| Anzahl KH-Aufenthalte | code sct 298060002 (Pattern), effectivePeriod (Typ auf Period beschraenkt), valueInteger, component:Grund (Pattern 406524005 / 84114007 Heart failure) |
| Atherosklerotisches Erstereignis | code Pattern `ae`, value verboten (0..0), component:erkrankung (439401001 -> 53741008 KHK aus VS atherosklerotisches-ereignis), component:datum (432213005 -> valueDateTime) |
| Device | status, expirationDate (MS), type aus VS geraetetyp-snomedct (72506001 ICD), patient |
| Nein/Unbekannt | closed slicing auf code.coding (icd10-gm/diagnoseSnomed/prozedurSnomed/alpha-id/orphanet/kardio); belegt mit prozedurSnomed 32413006 (Herztransplantation), value v2-0532#N, method 129431000 (History taking) |
| Diagnose | Basis MII Diagnose (clinical-/verificationStatus, recordedDate 1..1); severity (VS extended-condition-severity), recorder/asserter (MS, als display), Slice code.coding:kardio Pattern `eg-cv` (belegt in diagnose-2) |
| Geraeteprogrammierung | subject = Reference(Device)!, focus = Reference(DeviceMetric), code mdc 730752 (Pattern), value aus VS geraeteprogrammierung-mdc (754773 VVI) |
| Kardiale Deviceimplantation | Basis MII Prozedur (Dokumentationsdatum- und Durchfuehrungsabsicht-Extension, performedDateTime, bodySite 1.. mit snomed-ct-Slice inkl. Version); code ops (VS 5-376*/5-377*, hier 5-377.5) + sct (VS deviceimplantation-snomedct, 395218007); focalDevice 1.. mit manipulated -> Device |
| Klappenvitium | severity required aus VS klappenvitium-grad (423343006 Grade 3/3); code icd10-gm aus VS klappenvitium-icd (I35.0) + sct aus VS klappenvitium-snomedct (60573004 Aortic valve stenosis); orphanet-/kardio-Slices verboten (0..0) |
| LVEF | category:vs-cat imaging, code sct 250908004 + loinc 10230-1 (Pattern), value % Quantity, method (TTE 433236007), referenceRange closed slicing nach text (Slice `reduced` belegt: high 40 %, text "Reduced") |
| NBG Schrittmachermodus | type mdc 730752 (Pattern), source -> Device (1..1), category Pattern `setting` |
| Rauchen | Basis ISiKRaucherStatus: category 1..1 social-history, code loinc 72166-2, effective 1..1, value 1..1 aus IPS-Smoking-Status-VS (8517006 Ex-smoker); Komponenten packungsjahre/zigarettenProTag/rauchbeginn/rauchdauer alle belegt; valueDateTime-Slice des value[x] ist verboten (0..0) |
| mRS | category survey (Pattern), code sct 1255866005 + loinc 75859-9, encounter/performer/issued MS, value aus modul-eigenem mRS-VS (mRS1) |
| NYHA | category survey (Pattern), code sct 762994006 + loinc 93124-6, value aus VS nyha-klassen (421704003 Class II) |

## 3. Szenario

Karl Herzmann (*1949, maennlich), stationaere Aufnahme 03/2025 wegen dekompensierter
Herzinsuffizienz:
- KHK mit Z.n. Vorderwandinfarkt 03/2020 (Diagnose-1, atherosklerotisches Erstereignis)
- hochgradige Aortenklappenstenose (Klappenvitium)
- HFrEF: LVEF 38 %, NYHA II, 2 KH-Aufenthalte wegen HF in 12 Monaten
- Z.n. embolischem Mediainfarkt 08/2023 (Diagnose-2 mit Slice `kardio` = `eg-cv`), mRS 1
- ICD-Implantation (Prozedur + Device + DeviceMetric + Geraeteprogrammierung VVI)
- Ex-Raucher (30 py), Herztransplantation verneint (Nein/Unbekannt-Observation)

Der Bundle ist self-contained (eigener Patient + Encounter); recorder/asserter/performer sind
bewusst nur als `display` belegt (wie in den Modul-Beispielen), um keine zusaetzlichen
PractitionerRole-Ressourcen ohne Profilbezug einzufuehren.

## 4. Bekannte Upstream-Auffaelligkeiten

1. **ISiKLoincCoding nicht im BOM enthalten**: `mii-pr-kardio-observation-rauchen` basiert auf
   `ISiKRaucherStatus` (gematik). Das Profil `https://gematik.de/fhir/isik/StructureDefinition/ISiKLoincCoding`
   ist im `kerndatensatz.complete`-Paket nicht enthalten; SUSHI meldet dazu genau eine Warnung
   ("could not find it and instead will try to use Coding") und faellt auf `Coding` zurueck.
   Auf die generierte Instanz hat das keinen Einfluss; behebbar nur upstream (Paket-Embedding).
2. **Anzeigetexte der Erstereignis-Komponenten**: Die Patterns fixieren die Displays
   "Diagnosis" bzw. "Date of diagnosis" (ohne SNOMED-Suffix "(observable entity)") - die
   Instanzen uebernehmen die Patterns exakt.
3. **`code.coding.version` 1..1 auf fast allen Codings** ist ungewoehnlich streng; fuer
   ICD-10-GM/OPS/LOINC/MDC wurden plausible Versionsangaben gesetzt (s.o.).

## 5. Aliases

Neu in `aliases.fsh` ergaenzt:
- `$v2-0532` (HL7 v2 Table 0532 Ja/Nein/Unbekannt)
- `$kardio-cs-atherosklerotisches-ereignis`, `$kardio-cs-modifizierte-rankin-skala`
- `$sct20260701` (SNOMED CT mit Versions-Pin der Ballot-Profile; auch von modul-lungenfunktion genutzt)

RuleSet `SCT20260701` (setzt `version` auf einem Coding) liegt in
`input/fsh/modul-lungenfunktion/RuleSet.fsh` und wird von beiden Modulen genutzt.

## 6. Build-Status

`sushi build .`: 0 Fehler / 0 Warnungen aus `modul-kardiologie`-Dateien
(1 dateilose Warnung zum fehlenden ISiKLoincCoding-Profil, s. Abschnitt 4.1).
Referentielle Integritaet innerhalb `mii-exa-test-data-bundle-kardiologie-1` geprueft:
alle Referenzen zeigen auf Bundle-Eintraege.
