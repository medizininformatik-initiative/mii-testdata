# Research Report: Symptom Module

## Module Metadata

- **Package**: `de.medizininformatikinitiative.kerndatensatz.symptom`
- **Version**: `2027.0.0-ballot` (eingebettet in `de.medizininformatikinitiative.kerndatensatz.complete#2027.0.0-ballot.19`)
- **Canonical**: `https://www.medizininformatik-initiative.de/fhir/modul-symptom` (Hinweis: ohne `/ext/`, und die Profil-URLs nutzen generische Namen `finding-condition` / `finding-observation` statt `mii-pr-symptom-*`)
- **FHIR Version**: 4.0.1

### Testdata Project Integration

Die Conformance-Ressourcen kommen über die BOM `de.medizininformatikinitiative.kerndatensatz.complete` (sushi-config.yaml). Testdaten liegen in `kds-testdata/input/fsh/modul-symptom/`, Bundle: `mii-exa-test-data-bundle-symptom-1`.

---

## Profile Inventory (2 Profile + 1 Logical Model)

| # | Profil | Typ | URL | Anmerkung |
|---|--------|-----|-----|-----------|
| 1 | MII_PR_Symptom_Condition | Condition | `.../modul-symptom/StructureDefinition/finding-condition` | `abstract: true` im Package |
| 2 | MII_PR_Symptom_Observation | Observation | `.../modul-symptom/StructureDefinition/finding-observation` | `abstract: true` im Package |
| - | MII_LM_Symptom | Logical Model | `.../modul-symptom/StructureDefinition/mii-lm-symptom` | kein Instanziierungs-Ziel |

**Abstract-Hinweis**: Beide Profile sind im Ballot-Package als `abstract: true` markiert (sie dienen als wiederverwendbare Basis für andere Module, z. B. Seltene Erkrankungen). SUSHI lehnt nur abstrakte *Spezialisierungen* ab; Instanzen abstrakter *Constraint*-Profile (Basis `Condition`/`Observation`) werden erzeugt, inkl. `meta.profile`. Die im Package mitgelieferten Beispiele sind schlichte `Condition`/`Observation`-Ressourcen ohne `meta.profile`.

## MS-Elemente und Abdeckung

### finding-condition (Instanzen: `mii-exa-test-data-symptom-condition-1/-2`)

| MS-Element | Abdeckung |
|------------|-----------|
| extension:assertedDate | condition-1, condition-2 |
| identifier | condition-1, condition-2 |
| clinicalStatus, verificationStatus, category, severity, code | condition-1 (Spannungskopfschmerz SCT 398057008 + ICD-10-GM G44.2), condition-2 (Herzinsuffizienz SCT 84114007 + I50.9) |
| bodySite | condition-1 (SCT 69536005 Head structure) |
| subject, encounter, recordedDate | beide |
| onset[x] / onsetPeriod | condition-1 (Unschärfe-Periode 2009–2012) |
| onsetPeriod.start.extension:lebensphase-von / end.extension:lebensphase-bis | condition-1 (SCT 263659003 Adolescence); als generische Extension mit explizitem `url` geschrieben, da die BOM `de.basisprofil.r4` nicht einbettet und SUSHI das Extension-Profil sonst nicht auflösen kann — das erzeugte JSON ist identisch |
| stage.summary / stage.assessment / stage.type | condition-2 (NYHA-Klasse II SCT 421704003, Assessment → observation-3, Typ SCT 260998006 Clinical staging) |
| evidence.code / evidence.detail | condition-1 (SCT 25064002 Headache, Detail → observation-1) |

### finding-observation (Instanzen: `mii-exa-test-data-symptom-observation-1..4`)

| MS-Element | Abdeckung |
|------------|-----------|
| identifier, status, category, code, subject, effective[x], issued | alle vier |
| value[x] | obs-1 (CC Headache), obs-2 (Integer NRS 6), obs-3 (CC Dyspnea on exertion) |
| dataAbsentReason | obs-4 (`asked-unknown`, Schwindel erfragt ohne verwertbare Angabe; `obs-6`-konform ohne value) |
| interpretation | obs-1, obs-3 (v3 #A Abnormal) |
| method | obs-1, obs-3, obs-4 (SCT 84100007 History taking) |
| device | obs-2 (→ Device Kopfschmerztagebuch-App) |
| referenceRange | obs-2 (`text`: NRS 0–10) |
| hasMember | obs-1 → obs-2 (Schmerzintensität) |
| derivedFrom | obs-2 → QuestionnaireResponse (Kopfschmerztagebuch) |
| component | obs-1 (SCT 260864003 Frequency, valueString) |
| extension:associatedSymptomOrCondition | obs-1 → condition-1, obs-3 → condition-2 |
| **specimen** | **nicht befüllt** — für anamnestisch erhobene Symptome klinisch nicht sinnvoll; probenbasierte Befunde gehören ins Modul Labor. Dokumentierte, bewusste Lücke. |

## Klinisches Szenario

Patientin Helene Symptomatika (\*1994): ambulante Abklärung 2025-03-04. Chronische Spannungskopfschmerzen seit der Jugend (>15 Schmerztage/Monat, NRS 6 aus dem ePRO-Kopfschmerztagebuch); daneben Belastungsdyspnoe bei bekannter chronischer Herzinsuffizienz NYHA II; Schwindel erfragt, keine verwertbare Angabe.

## Entscheidungen

1. **InstanceOf auf die abstrakten Profile** (statt Basisressourcen wie in den Package-Beispielen), damit die CI-Validierung gegen das Profil läuft; im Research-Doc dokumentiert, falls der Java-Validator `abstract` bemängelt.
2. **Zwei Conditions**: Kopfschmerz deckt Onset-Periode/Lebensphase/Evidence ab, Herzinsuffizienz deckt `stage` (NYHA) sinnvoll ab — Staging auf einen Kopfschmerz zu setzen wäre klinisch unsinnig.
3. **Vier Observations**, damit `value[x]` und `dataAbsentReason` (gegenseitig exklusiv, Invariante `obs-6`) beide MS-abgedeckt sind.
4. Referenzielle Integrität: Device und QuestionnaireResponse als unterstützende Ressourcen im Bundle enthalten.
