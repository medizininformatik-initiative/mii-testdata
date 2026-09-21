# Lungenfunktion Module - Research Report

Module: `de.medizininformatikinitiative.kerndatensatz.lungenfunktion`
Version: `2027.0.0-ballot.1` (via BOM `de.medizininformatikinitiative.kerndatensatz.complete` `2027.0.0-ballot.19`)
Canonical prefix: `https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition`
Status: NEW module, no prior test data in this repository. Test data added under
`kds-testdata/input/fsh/modul-lungenfunktion/` (Bundle `mii-exa-test-data-bundle-lungenfunktion-1`).

---

## 1. Profile Inventory (49 Profile)

### 1.1 Befunde (DiagnosticReport)

| Profile ID | Basis | Covered by Instance |
|---|---|---|
| mii-pr-lungenfunktion-befund | DiagnosticReport | (abstrakte Basis) via alle 4 Befund-Instanzen |
| mii-pr-lungenfunktion-spirometrie | befund | mii-exa-test-data-lungenfunktion-spirometrie-befund-1 |
| mii-pr-lungenfunktion-bodyplethysmographie | befund | mii-exa-test-data-lungenfunktion-bodyplethysmographie-befund-1 |
| mii-pr-lungenfunktion-diffusion | befund | mii-exa-test-data-lungenfunktion-diffusion-befund-1 |
| mii-pr-lungenfunktion-provokationstest | befund | mii-exa-test-data-lungenfunktion-provokationstest-befund-1 |

### 1.2 Messungen (Procedure)

| Profile ID | Covered by Instance |
|---|---|
| mii-pr-lungenfunktion-spirometrie-messung | mii-exa-test-data-lungenfunktion-spirometrie-messung-1 |
| mii-pr-lungenfunktion-bodyplethysmographie-messung | mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1 |
| mii-pr-lungenfunktion-diffusion-messung | mii-exa-test-data-lungenfunktion-diffusion-messung-1 |
| mii-pr-lungenfunktion-provokationstest-messung | mii-exa-test-data-lungenfunktion-provokationstest-messung-1 |

### 1.3 Mess-Observations (Observation)

| Profile ID | Basis | Covered by Instance |
|---|---|---|
| mii-pr-lungenfunktion-bf | observation-de-vitalsign-atemfrequenz | ...-bf-1 |
| mii-pr-lungenfunktion-fev | volumen | ...-fev-1, ...-fev-prov-1/-2 |
| mii-pr-lungenfunktion-fvc | volumen | ...-fvc-1 |
| mii-pr-lungenfunktion-fev-fvc | prozent | ...-fev-fvc-1 |
| mii-pr-lungenfunktion-ic | volumen | ...-ic-1 |
| mii-pr-lungenfunktion-irv-erv | volumen | ...-irv-erv-1 (ERV) |
| mii-pr-lungenfunktion-mef | fluss | ...-mef-1 (MEF50) |
| mii-pr-lungenfunktion-pef | fluss | ...-pef-1, ...-pef-prov-1 |
| mii-pr-lungenfunktion-vc | volumen | ...-vc-1 |
| mii-pr-lungenfunktion-frc | volumen | ...-frc-1, ...-frc-prov-1 |
| mii-pr-lungenfunktion-tlc | volumen | ...-tlc-1 |
| mii-pr-lungenfunktion-rv | volumen | ...-rv-1 |
| mii-pr-lungenfunktion-rvl-tlc (RV/TLC) | prozent | ...-rv-tlc-1 |
| mii-pr-lungenfunktion-r | widerstand | ...-r-1, ...-r-prov-1 |
| mii-pr-lungenfunktion-r-spezifisch (sR_tot) | viskositaet | ...-sr-1, ...-sr-prov-1 |
| mii-pr-lungenfunktion-r-effektiv (sR_eff) | viskositaet | ...-sr-eff-1 |
| mii-pr-lungenfunktion-sg-total (sG_tot) | 1-viskositaet | ...-sg-total-1 |
| mii-pr-lungenfunktion-va | volumen | ...-va-1 |
| mii-pr-lungenfunktion-dlco | diffusionskapazitaet | ...-dlco-1 |
| mii-pr-lungenfunktion-dlcoc | diffusionskapazitaet | ...-dlcoc-1 |
| mii-pr-lungenfunktion-kco | transferkoeffizient | ...-kco-1 |
| mii-pr-lungenfunktion-kcoc | transferkoeffizient | ...-kcoc-1 |
| mii-pr-lungenfunktion-hb | Observation | ...-hb-1 |
| mii-pr-lungenfunktion-dosis | Observation | ...-dosis-schwellwert-1, ...-dosis-kumuliert-1 |
| mii-pr-lungenfunktion-gewicht | Observation | ...-gewicht-1 |
| mii-pr-lungenfunktion-co2-konzentration | Observation | ...-co2-1 |
| mii-pr-lungenfunktion-lufttemperatur | Observation | ...-lufttemperatur-1 |
| mii-pr-lungenfunktion-luftfeuchtigkeit | Observation | ...-luftfeuchtigkeit-1 |

### 1.4 Generische Basis-Profile (Observation, nicht `abstract`, aber ohne eigenes Fach-Konzept)

| Profile ID | Fixierte Einheit | Abdeckung |
|---|---|---|
| mii-pr-lungenfunktion-volumen | L | indirekt via FEV/FVC/IC/ERV/VC/FRC/TLC/RV/VA |
| mii-pr-lungenfunktion-fluss | L/s | indirekt via MEF/PEF |
| mii-pr-lungenfunktion-prozent | % | indirekt via FEV_FVC/RV_TLC |
| mii-pr-lungenfunktion-widerstand | kPa/(L/s) | indirekt via R |
| mii-pr-lungenfunktion-viskositaet | kPa.s | indirekt via sR_tot/sR_eff |
| mii-pr-lungenfunktion-1-viskositaet | /kPA.s | indirekt via sG_tot |
| mii-pr-lungenfunktion-diffusionskapazitaet | mmol/(min.kPa) | indirekt via DLCO/DLCOc |
| mii-pr-lungenfunktion-transferkoeffizient | mmol/(min.kPa.L) | indirekt via KCO/KCOc |

**Entscheidung**: Fuer diese Eltern-Profile werden keine eigenen Instanzen angelegt. Sie sind
nicht als `abstract` markiert, tragen aber keinen eigenen Observable-Code (nur preferred-Bindings
auf die generischen Observable-ValueSets). Jede Instanz eines abgeleiteten Profils ist per
Definition konform zum Eltern-Profil; direkte Instanzen ohne fachliches Konzept haetten keinen
Testwert. Gleiches gilt fuer `mii-pr-lungenfunktion-befund` (durch alle 4 Befunde abgedeckt).

### 1.5 Sonstige Ressourcen

| Profile ID | Typ | Covered by Instance |
|---|---|---|
| mii-pr-lungenfunktion-methacholine | Medication | ...-methacholine-1 |
| mii-pr-lungenfunktion-dosis-gabe | MedicationAdministration | ...-dosis-gabe-1/-2 |
| mii-pr-lungenfunktion-umgebung | Location | ...-umgebung-1 |

Damit sind alle 49 Profile direkt oder (die 9 generischen Basis-Profile) transitiv abgedeckt.

## 2. Wesentliche MS-Elemente und ihre Belegung

Gemeinsames Muster der Mess-Observations (via RuleSet `LufuObsBase`):
`meta.source` (MS, charite.de-Style), `status`, `category` procedure (Pattern),
`subject`, `issued` (MS), `valueQuantity` mit pattern-fixierter UCUM-Einheit,
`interpretation` (MS), `method` (MS; Koerperposition bzw. Single-Breath-Technik aus
VS `mii-vs-lufu-sct-technique`), `partOf` -> profil-spezifische Messung-Procedure.

Komponenten `predicted` / `percentPredicted` / `z-score`: belegt, wo die Profile reale Codes
definieren (FEV, FVC, FEV_FVC, IC, ERV, PEF, VC, FRC, TLC, RV, RV/TLC, R, sR_tot, sR_eff,
DLCO, KCO); `z-score` exemplarisch an FEV1 (SNOMED 1078210003 mit Pattern).
`hasMember` (MS) exemplarisch an VC -> ERV; `derivedFrom` an FEV1/FVC (-> FEV1, FVC),
DLCOc (-> Hb), KCO/KCOc (-> DLCO, VA, Hb); `referenceRange` (MS) an FEV1, BF, Hb, R_tot.

Befunde (RuleSet `LufuBefundBase`): category mit allen drei Slices (loinc 58477-1,
v2-0074 PF, sct 720449003 inkl. Versions-Pattern), code sct je Befund (Pattern),
encounter, effectiveDateTime-Slice, issued, conclusion, conclusionCode (icd10-gm-Slice),
presentedForm (MS, am Spirometrie-Befund).

Provokationstest-Befund: `result` min 7 mit Pflicht-Slices Dosis_Schwellwert (1..1),
Dosis_kumuliert (1..1), FEV/PEF/R_tot/sR_tot/FRC (je 1..*) - alle belegt (8 Ergebnisse).

## 3. Szenario

Luise Atemwald (*1972, weiblich), ambulante Lungenfunktionsdiagnostik am 18.02.2025 bei
V.a. Asthma bronchiale:
- Spirometrie: leichte Obstruktion (FEV1 74 % Soll, FEV1/FVC 67.7 %, MEF50 reduziert)
- Bodyplethysmographie: erhoehter Atemwegswiderstand (R_tot 0.42), leichte Ueberblaehung
  (RV 130 % Soll, RV/TLC 44 %), TLC normwertig
- Diffusion: normwertig (DLCO 92 % Soll), Hb-Korrektur (DLCOc/KCOc) mit Hb 13.8 g/dL
- Methacholin-Provokation: positiv (FEV1-Abfall 26 %, PD20 0.30 mg); Medication Provokit
  0,33 % + 2 MedicationAdministration-Dosisstufen (0.04 mg, 0.30 mg, verkettet via partOf)
- Umgebung: Location Lungenfunktionslabor mit CO2-, Temperatur- und Feuchte-Observations
  (focus -> Location), Koerpergewicht

## 4. Bekannte Upstream-Auffaelligkeiten und getroffene Workarounds

1. **Ambiges result-Slicing BF vs. FEV_FVC (KNOWN BUG)**: In
   `mii-pr-lungenfunktion-bodyplethysmographie` (und strukturell identisch in `-spirometrie`)
   diskriminiert `DiagnosticReport.result` per `type:$this`; eine Referenz kann sowohl dem
   Slice `BF` (max 1) als auch `FEV_FVC` zugeordnet werden. **Workaround in den Testdaten**:
   BF- und FEV_FVC-Ergebnisse stehen nie im selben Befund - der Spirometrie-Befund enthaelt
   FEV_FVC (ohne BF), der Bodyplethysmographie-Befund BF (ohne FEV_FVC). Beide Slices sind
   damit modulweit belegt, ohne den Bug zu triggern.
2. **Zwei Dosis-Slices mit identischem Zielprofil**: `result:Dosis_Schwellwert` und
   `result:Dosis_kumuliert` (je 1..1, Pflicht) referenzieren beide
   `mii-pr-lungenfunktion-dosis` und sind per `type:$this` prinzipiell nicht unterscheidbar.
   Da beide Slices min 1 sind, ist das nicht umgehbar; die Instanzen folgen den
   Modul-Beispielen (2 Dosis-Observations). Eventuelle Slicing-Meldungen des Java-Validators
   hierzu sind upstream zu beheben.
3. **`TODO`-Platzhalter-Codes in Patterns**: Viele `predicted`/`percentPredicted`-Slices
   (u.a. MEF, VA, sG_tot, DLCOc, KCOc, R/sR predicted, IRV_ERV percentPredicted) fixieren
   `code` = "TODO" (SNOMED und/oder LOINC). Diese Komponenten bzw. Codings wurden in den
   Instanzen weggelassen (Slices sind 0..1); belegt sind nur Komponenten mit realen Codes.
4. **Gewicht mit UCUM `ug`**: `mii-pr-lungenfunktion-gewicht` fixiert
   `valueQuantity.unit/code` per Pattern auf `ug` (Mikrogramm) - fachlich waere `kg` korrekt.
   Die Instanz folgt dem Pattern (68 `ug`) und ist entsprechend kommentiert.
5. **Provokationstest-Messung mit Tippfehler-Code**: `category.coding:sct` fixiert
   `323426006` (statt `23426006` "Measurement of respiratory function") - Pattern exakt
   uebernommen.
6. **`/kPA.s` (1-Viskositaet)**: UCUM-Code mit Grossschreibungs-Tippfehler (`kPA` statt
   `kPa`), per Pattern fixiert - exakt uebernommen (sG_tot).
7. **partOf-Target der Stufen-Observations**: FEV/PEF/R/sR/FRC beschraenken `partOf` auf die
   jeweilige "eigene" Messung (z.B. FEV -> spirometrie-messung). Fuer die
   Provokations-Observations wurde `partOf` daher weggelassen (die Modul-Beispiele
   referenzieren dort abweichend die provokationstest-messung und verletzen damit das
   targetProfile).
8. **FEV_FVC percentPredicted**: Der sct-Slice der Komponente bindet faelschlich an das
   LOINC-VS `mii-vs-lufu-lnc-fev-fvc`; das VS enthaelt zudem kein measured/predicted-Konzept.
   Komponente weggelassen, nur `predicted` belegt.
9. **Fehlender LOINC-Report-Code**: Die Befund-Profile Bodyplethysmographie/Diffusion/
   Provokationstest fixieren `code.coding:loinc` auf "TODO" - loinc-Coding nur beim
   Spirometrie-Befund (18759-1) gesetzt.
10. **conclusionCode.coding:sct**: Das Pattern fixiert `system` auf den String
    `http://snomed.info/sct|http://...` (Pipe im system-Feld, invalide URI). Der Slice ist
    daher nicht sinnvoll belegbar; conclusionCode nutzt den icd10-gm-Slice (J45.0/J45.9).
11. **BF-Komponenten**: `component:predicted` der Atemfrequenz fixiert Einheit `L`
    (Volumen-Copy-Paste) - Komponenten bei BF weggelassen.

## 5. Aliases / RuleSets

- `$sct20260701` (aliases.fsh): SNOMED CT mit dem Versions-Pin
  `http://snomed.info/sct/900000000000207008/version/20260701`, den die Ballot-Profile in
  ihren Pattern-Codings fixieren (Zuweisung ohne Version kollidiert in SUSHI mit dem
  bereits pattern-befuellten Coding).
- RuleSets in `modul-lungenfunktion/RuleSet.fsh`: `SCT20260701` (Version auf beliebigem
  Coding-Pfad), `LufuObsBase` (gemeinsame Observation-Basis), `LufuBefundBase`
  (in `DiagnosticReport.fsh`).

## 6. Build-Status

`sushi build .`: 0 Fehler / 0 Warnungen aus `modul-lungenfunktion`-Dateien
(Gesamtprojekt: 324 vorbestehende Fehler / 41 vorbestehende Warnungen in anderen Modulen,
unveraendert gegenueber Baseline ohne die neuen Module).
Referentielle Integritaet innerhalb `mii-exa-test-data-bundle-lungenfunktion-1` geprueft:
alle 49 Eintraege, alle Referenzen aufloesbar.
