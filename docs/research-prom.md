# PROM (Patient-Reported Outcomes) Module - Research Report

## Module Metadata

| Property | Value |
|----------|-------|
| Package | `de.medizininformatikinitiative.kerndatensatz.pros` |
| Version | `2026.0.1` |
| FHIR Version | 4.0.1 (R4) |
| Canonical | `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro` |
| Status | active |
| Key Dependencies | `de.medizininformatikinitiative.kerndatensatz.meta: 2026.0.0`, `hl7.fhir.uv.sdc: 3.0.0`, `de.gematik.isik: 5.0.0` |
| Testdata dependency | Already in sushi-config.yaml as `de.medizininformatikinitiative.kerndatensatz.pros: 2026.0.x` |
| Source repo | `/Users/thome/code/fhir-profiling/kerndatensatzmodul-proms/` |

---

## 1. Profile Inventory

### 1.1 Core Profiles (4 profiles)

#### MII_PR_PRO_Questionnaire
- **URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire`
- **Base**: `http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire` (SDC Questionnaire)
- **Type**: Questionnaire
- **MS Elements**: 10
- **Note**: Definitional resource. Questionnaire instances are `Usage: #definition`, NOT patient data. Test data QuestionnaireResponses reference these via canonical URL.

#### MII_PR_PRO_QuestionnaireResponse
- **URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response`
- **Base**: `http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse` (SDC QuestionnaireResponse)
- **Type**: QuestionnaireResponse
- **MS Elements**: 1 (language)
- **PATIENT DATA** - needs test instances

#### MII_PR_PRO_Score_Instance (BASE for all score Observations)
- **URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance`
- **Base**: `http://hl7.org/fhir/StructureDefinition/Observation`
- **Type**: Observation
- **MS Elements**: 13
- **PATIENT DATA** - needs test instances

#### MII_PR_PRO_Score_Blueprint
- **URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint`
- **Base**: `http://hl7.org/fhir/StructureDefinition/ObservationDefinition`
- **Type**: ObservationDefinition
- **MS Elements**: 20
- **Note**: Definitional resource. NOT patient data. Not needed for test instances.

### 1.2 Specific Score Observation Profiles (16 profiles)

All derive from MII_PR_PRO_Score_Instance unless noted otherwise.

#### Depression and Cross-instrument

| Profile Name | URL Suffix | Base | Code System | Code | Display |
|-------------|-----------|------|-------------|------|---------|
| MII_PR_PRO_Depression_T_Score | mii-pr-pro-depression-t-score | **base Observation** (NOT Score Instance) | LOINC | 77861-3 | PROMIS emotional distress - depression - version 1.0 Tscore |
| MII_PR_PRO_PROMIS_Depression_SF4a_Raw_Score | mii-pr-pro-promis-depression-sf4a-raw-score | **base Observation** (NOT Score Instance) | LOINC | 77821-7 | PROMIS short form - emotional distress - depression 4a - version 1.0 raw score |

#### BDI-II

| Profile Name | URL Suffix | Code System | Code | Display |
|-------------|-----------|-------------|------|---------|
| MII_PR_PRO_Observation_BDI_II | mii-pr-pro-observation-bdi-ii | LOINC | 89209-1 | Beck Depression Inventory II total score [BDI] |

#### EQ-5D-5L (3 profiles)

| Profile Name | URL Suffix | Code System | Code | Display |
|-------------|-----------|-------------|------|---------|
| MII_PR_PRO_Observation_EQ5D5L_Index | mii-pr-pro-observation-eq5d5l-index | SNOMED | 736534008 | EuroQol five dimension five level index value |
| MII_PR_PRO_Observation_EQ5D5L_VAS | mii-pr-pro-observation-eq5d5l-vas | SNOMED | 736535009 | EuroQol visual analogue score |
| MII_PR_PRO_Observation_EQ5D5L_Profile | mii-pr-pro-observation-eq5d5l-profile | MII CS | euroqol-eq5d5l-profile | EuroQol EQ-5D-5L Profile |

#### PROMIS-29 (8 profiles)

| Profile Name | URL Suffix | LOINC Code | Display |
|-------------|-----------|------------|---------|
| MII_PR_PRO_PROMIS_29_Anxiety_TScore | mii-pr-pro-promis-29-anxiety-tscore | 71967-4 | PROMIS-29 Anxiety score T-score |
| MII_PR_PRO_PROMIS_29_Depression_TScore | mii-pr-pro-promis-29-depression-tscore | 77861-3 | PROMIS emotional distress - depression Tscore |
| MII_PR_PRO_PROMIS_29_Fatigue_TScore | mii-pr-pro-promis-29-fatigue-tscore | 77864-7 | PROMIS fatigue - version 1.0 Tscore |
| MII_PR_PRO_PROMIS_29_Pain_Intensity | mii-pr-pro-promis-29-pain-intensity | 75261-8 | How intense was your average pain in the past 7 days [PROMIS] |
| MII_PR_PRO_PROMIS_29_Pain_Interference_TScore | mii-pr-pro-promis-29-pain-interference-tscore | 77865-4 | PROMIS pain interference - version 1.0 Tscore |
| MII_PR_PRO_PROMIS_29_Physical_Function_TScore | mii-pr-pro-promis-29-physical-function-tscore | 91721-1 | PROMIS physical function - version 2.0 T-score |
| MII_PR_PRO_PROMIS_29_Sleep_Disturbance_TScore | mii-pr-pro-promis-29-sleep-disturbance-tscore | 77860-5 | PROMIS sleep disturbance - version 1.0 Tscore |
| MII_PR_PRO_PROMIS_29_Social_Function_TScore | mii-pr-pro-promis-29-social-function-tscore | 77854-8 | PROMIS ability to participate in social roles and activities - version 2.0 Tscore |

#### PROMIS Cognitive Function SF4a (2 profiles)

| Profile Name | URL Suffix | LOINC Code | Display |
|-------------|-----------|------------|---------|
| MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_Raw_Score | mii-pr-pro-promis-cognitive-function-sf4a-raw-score | 81533-2 | PROMIS short form - cognitive function 4a - version 2.0 raw score |
| MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_TScore | mii-pr-pro-promis-cognitive-function-sf4a-tscore | 81538-1 | PROMIS cognitive function - version 2.0 T-score |

### 1.3 Extensions (2)

| Extension | ID | Description |
|-----------|-----|------------|
| MII_PR_PRO_Questionnaire_Capabilities | mii-ex-pro-questionnaire-capabilities | Boolean flags: displayable, collectable, populatable, extractable, calculatable, domainAligned |
| MII_EX_PRO_Score_Score_Health_Correlation | mii-ex-pro-score-score-health-correlation | Links scores to health domains via measure-improvement-notation CodeSystem |

---

## 2. MS Element Details

### 2.1 MII_PR_PRO_QuestionnaireResponse

Parent: SDC QuestionnaireResponse (`http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse`)

| Element Path | Type(s) | Card | Notes |
|-------------|---------|------|-------|
| QuestionnaireResponse.language | code | 0..1 | MS - only additional MS element beyond SDC base |

Inherited from SDC base (available but not additionally MS-flagged): questionnaire, status, subject, authored, item, etc.

### 2.2 MII_PR_PRO_Score_Instance (BASE - inherited by all child profiles)

| Element Path | Type(s) | Card | Fixed/Pattern | Notes |
|-------------|---------|------|---------------|-------|
| Observation.extension | Extension | 0..* | - | MS |
| Observation.extension:instantiatesCanonical | Extension (workflow-instantiatesCanonical) | 0..1 | - | MS, named slice |
| Observation.identifier | Identifier | 0..* | - | MS |
| Observation.status | code | 1..1 | - | MS, required |
| Observation.code | CodeableConcept | 1..1 | - | MS, required |
| Observation.subject | Reference | 1..1 | - | Required (cardinality constraint, not MS-flagged separately) |
| Observation.focus | Reference | 0..* | - | MS |
| Observation.effective[x] | dateTime | 0..1 | - | MS, constrained to dateTime only |
| Observation.performer | Reference | 0..* | - | MS |
| Observation.value[x] | Quantity, CodeableConcept, string | 0..1 | - | MS |
| Observation.interpretation | CodeableConcept | 0..* | - | MS |
| Observation.note | Annotation | 0..* | - | MS |
| Observation.method | CodeableConcept | 0..1 | - | MS |
| Observation.derivedFrom | Reference | 0..* | - | MS |

### 2.3 Child Profile Additional Constraints (Score Instance children)

All child profiles that derive from Score Instance typically add:

| Constraint | Details |
|-----------|---------|
| `Observation.code` | patternCodeableConcept with fixed LOINC or SNOMED code |
| `Observation.value[x].value` | MS, 1..* cardinality (required) |
| `Observation.value[x].unit` | fixedString, usually `{score}` or `1` |
| `Observation.value[x].system` | fixedUri = `http://unitsofmeasure.org` |
| `Observation.value[x].code` | fixedCode, usually `{score}` or `1` |

Some profiles also add:
- `Observation.method` with patternCodeableConcept (EQ-5D profiles, BDI-II)
- `Observation.note` 0..1 MS (EQ-5D Index)
- `Observation.referenceRange` MS (Cognitive Function Raw Score)

### 2.4 MII_PR_PRO_Depression_T_Score (standalone, NOT child of Score Instance)

| Element Path | Type(s) | Card | Fixed/Pattern |
|-------------|---------|------|---------------|
| Observation.extension:instantiatesCanonical | Extension | 0..1 | MS |
| Observation.status | code | 1..1 | MS |
| Observation.category | CodeableConcept | 0..* | pattern: `survey` from observation-category |
| Observation.code | CodeableConcept | 1..1 | pattern: LOINC `77861-3` |
| Observation.subject | Reference | 1..1 | MS |
| Observation.effective[x] | dateTime | 0..1 | MS |
| Observation.value[x] | Quantity | 0..1 | MS |
| Observation.value[x].value | decimal | 1..1 | MS |
| Observation.referenceRange | BackboneElement | 0..* | MS |
| Observation.derivedFrom | Reference | 0..* | MS |

### 2.5 MII_PR_PRO_PROMIS_Depression_SF4a_Raw_Score (standalone, same pattern)

Same structure as Depression_T_Score but with:
- `Observation.code` pattern: LOINC `77821-7`

### 2.6 MII_PR_PRO_Questionnaire (definitional - NOT test data target)

| Element Path | Type(s) | Card | Notes |
|-------------|---------|------|-------|
| Questionnaire.extension:capabilities | Extension | 1..1 | MS, questionnaire capabilities extension |
| Questionnaire.version | string | 1..1 | MS |
| Questionnaire.derivedFrom | canonical | 0..* | MS |
| Questionnaire.copyright | markdown | 0..1 | MS |
| Questionnaire.item | BackboneElement | 0..* | MS |
| Questionnaire.code | Coding | 1..* | MS, sliced: snomed (0..1), loinc (0..1), mii (0..1) |
| Questionnaire.code[snomed].system | uri | 1..1 | fixed: `http://snomed.info/sct` |
| Questionnaire.code[loinc].system | uri | 1..1 | fixed: `http://loinc.org` |
| Questionnaire.code[mii].system | uri | 1..1 | fixed: MII questionnaire catalogue CS |

### 2.7 MII_PR_PRO_Score_Blueprint (definitional - NOT test data target)

| Element Path | Type(s) | Card | Notes |
|-------------|---------|------|-------|
| ObservationDefinition.code | CodeableConcept | 1..1 | MS, sliced coding: snomed, loinc, mii |
| ObservationDefinition.permittedDataType | code | 0..* | MS |
| ObservationDefinition.preferredReportName | string | 0..1 | MS |
| ObservationDefinition.quantitativeDetails.unit | CodeableConcept | 0..1 | MS |
| ObservationDefinition.quantitativeDetails.customaryUnit | CodeableConcept | 0..1 | MS |
| ObservationDefinition.quantitativeDetails.decimalPrecision | integer | 0..1 | MS |
| ObservationDefinition.qualifiedInterval | BackboneElement | 0..* | MS |
| ObservationDefinition.qualifiedInterval.category | code | 0..1 | MS |
| ObservationDefinition.qualifiedInterval.range.low | Quantity | 0..1 | MS |
| ObservationDefinition.qualifiedInterval.range.high | Quantity | 0..1 | MS |
| ObservationDefinition.qualifiedInterval.range.extension:ScoreHealthCorrelation | Extension | 0..1 | MS |

---

## 3. Example Instances from Module Repo

Located in `/Users/thome/code/fhir-profiling/kerndatensatzmodul-proms/input/fsh/examples/`

### 3.1 Bundles (5)
- `mii-exa-pro-phq-9-bundle` - PHQ-9: Questionnaire + Response + Observation + Patient
- `mii-exa-pro-bdi-ii-bundle` - BDI-II complete workflow
- `mii-exa-pro-promis-29-bundle` - PROMIS-29 workflow
- `mii-exa-pro-promis-depression-sf4a-bundle` - PROMIS Depression SF4a workflow
- `mii-exa-pro-eortc-qlq-c30-bundle` - EORTC QLQ-C30 workflow

### 3.2 QuestionnaireResponses (8)
- `mii-exa-pro-phq-9-response` - PHQ-9 severe depression (score 27)
- `mii-exa-pro-bdi-bdi2` - BDI-II response (in bdi-ii definitions folder)
- `mii-exa-pro-eortc-qlq-c30-response` - EORTC QLQ-C30 response
- `mii-exa-pro-euroqol-eq5d5l-response` - EQ-5D-5L standard response
- `mii-exa-pro-euroqol-eq5d5l-coded-response` - EQ-5D-5L coded variant
- `mii-exa-pro-promis-29-response` - PROMIS-29 English
- `mii-exa-pro-promis-29-de-response` - PROMIS-29 German
- `mii-exa-pro-promis-depression-sf4a-response` - PROMIS Depression SF4a

### 3.3 Observations (19+)
- `mii-exa-pro-phq-9-observation` - PHQ-9 score (27, severe)
- `mii-exa-pro-bdi-ii-observation` - BDI-II score (19)
- `mii-exa-pro-promis-depression-sf4a-raw-score` - Raw score (12)
- `mii-exa-pro-promis-depression-sf4a-tscore` - T-score (62.2)
- `mii-exa-pro-promis-depression-tscore-from-bdi-ii-observation` - Cross-instrument mapping
- EORTC QLQ-C30: 15 subscale scores (pf, rf, ef, cf, sf, fa, nv, pa, dy, sl, ap, co, di, fi, ql)

### 3.4 Patient
- `mii-exa-pro-patient` - Max Mustermann, male, born 1980-05-15

---

## 4. Existing Test Data in mii-testdata

**NONE** - There is no existing PROM test data in the mii-testdata repository.

The dependency is already configured in `kds-testdata/sushi-config.yaml`:
```yaml
de.medizininformatikinitiative.kerndatensatz.pros: 2026.0.x
```

---

## 5. Questionnaire Definitions Reference

The PROM module defines these questionnaire resources (definitional, not patient data):

| Questionnaire | Canonical ID | Code | Items |
|--------------|-------------|------|-------|
| PHQ-9 | mii-qst-pro-phq-9 | LOINC 44249-1 | 9 + score + functional |
| BDI-II | mii-qst-pro-bdi-bdi2 | MII CS | 21 items |
| EQ-5D-5L | mii-qst-pro-euroqol-eq5d5l | SNOMED 73041000052103 | 5 + VAS |
| PROMIS-29 | mii-qst-pro-promis-29 | LOINC codes per domain | 29 items |
| PROMIS Depression SF4a | mii-qst-pro-promis-depression-sf4a | LOINC 77819-1 | 4 items |
| PROMIS Cognitive Function SF4a | mii-qst-pro-promis-cognitive-function-sf4a | LOINC | 4 items |
| EORTC QLQ-C30 | mii-qst-pro-eortc-qlq-c30 | SNOMED 273446001 | 30 items |
| HADS | mii-qst-pro-hads | SNOMED 273524006 | Metadata-only |
| EPDS | mii-qst-pro-epds | SNOMED 273441006 | Metadata-only |
| CES-D | mii-qst-pro-ces-d | - | Metadata-only |
| K6 | mii-qst-pro-k6 | - | Metadata-only |

Test data QuestionnaireResponses reference these via `questionnaire` canonical URL strings (not FHIR References).

---

## 6. Recommendations for Test Data Creation

### 6.1 Instances to Create

For comprehensive profile coverage, create these **5 instances** for **Patient-1**:

| # | Instance Name | Profile | Resource Type |
|---|--------------|---------|---------------|
| 1 | `mii-exa-test-data-patient-1-pro-phq9-response` | MII_PR_PRO_QuestionnaireResponse | QuestionnaireResponse |
| 2 | `mii-exa-test-data-patient-1-pro-phq9-score` | MII_PR_PRO_Score_Instance | Observation |
| 3 | `mii-exa-test-data-patient-1-pro-promis-dep-sf4a-response` | MII_PR_PRO_QuestionnaireResponse | QuestionnaireResponse |
| 4 | `mii-exa-test-data-patient-1-pro-promis-dep-sf4a-raw-score` | MII_PR_PRO_PROMIS_Depression_SF4a_Raw_Score | Observation |
| 5 | `mii-exa-test-data-patient-1-pro-promis-dep-sf4a-tscore` | MII_PR_PRO_Depression_T_Score | Observation |

This covers the 3 main patient-data profiles:
- QuestionnaireResponse (2 instances)
- Score Instance / generic Observation (1 instance)
- Standalone depression Observation profiles (2 instances - raw score + T-score)

**Clinical scenario**: Mild depression (PHQ-9 score ~8, PROMIS T-score ~55).

### 6.2 FSH File Structure

Create directory and file:
```
kds-testdata/input/fsh/modul-pro/
  QuestionnaireResponse.fsh   -- both QuestionnaireResponse instances
  Observation.fsh             -- all 3 Observation instances
```

### 6.3 Instance Patterns

#### QuestionnaireResponse Pattern
```fsh
Instance: mii-exa-test-data-patient-1-pro-phq9-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
Description: "PRO QuestionnaireResponse: PHQ-9 for Patient 1"
* insert TestDataLabel
* status = #completed
* language = #de
* subject = Reference(mii-exa-test-data-patient-1)
* authored = "2024-03-15T10:00:00+01:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9"
* item[+].linkId = "phq-phq9-q01"
* item[=].answer[0].valueCoding = http://loinc.org#LA6568-5 "Not at all"
// ... (9 items + score + functional impairment)
```

#### Score Instance Observation Pattern
```fsh
Instance: mii-exa-test-data-patient-1-pro-phq9-score
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance
Usage: #example
Description: "PRO Observation: PHQ-9 Score for Patient 1"
* insert TestDataLabel
* status = #final
* code = http://loinc.org#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-03-15T10:00:00+01:00"
* valueQuantity.value = 8
* valueQuantity.unit = "{score}"
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.code = #{score}
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
```

#### Depression T-Score Observation Pattern (standalone profile)
```fsh
Instance: mii-exa-test-data-patient-1-pro-promis-dep-sf4a-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-depression-t-score
Usage: #example
Description: "PRO Observation: PROMIS Depression T-Score for Patient 1"
* insert TestDataLabel
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code = http://loinc.org#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-03-15T10:00:00+01:00"
* valueQuantity.value = 55.3
* valueQuantity.unit = "{score}"
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.code = #{score}
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-promis-dep-sf4a-response)
```

### 6.4 Bundle Integration

Add to Patient-1 bundle in `Bundle.fsh`:
```fsh
// PRO-Module
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-phq9-response, QuestionnaireResponse)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-phq9-score, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis-dep-sf4a-response, QuestionnaireResponse)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis-dep-sf4a-raw-score, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis-dep-sf4a-tscore, Observation)
```

### 6.5 Aliases

No new aliases needed. Existing aliases in `aliases.fsh` already include:
- `$loinc = http://loinc.org`
- `$observation-category = http://terminology.hl7.org/CodeSystem/observation-category`
- `$ucum = http://unitsofmeasure.org`

Questionnaire canonical URLs are referenced as inline strings in `questionnaire` element.

### 6.6 PHQ-9 Response Item Reference

**LinkIds**: `phq-phq9-q01` through `phq-phq9-q09`, `phq-phq9-score-total`, `phq-phq9-q10` (functional impairment)

**LOINC answer codes** (PHQ-9 4-point scale):
| Code | Display | Score |
|------|---------|-------|
| LA6568-5 | Not at all | 0 |
| LA6569-3 | Several days | 1 |
| LA6570-1 | More than half the days | 2 |
| LA6571-9 | Nearly every day | 3 |

**Functional impairment** (q10):
| Code | Display |
|------|---------|
| LA6572-7 | Not difficult at all |
| LA6573-5 | Somewhat difficult |
| LA6575-0 | Very difficult |
| LA6574-3 | Extremely difficult |

### 6.7 PROMIS Depression SF4a Response Item Reference

**LinkIds**: `promis-eddep04`, `promis-eddep06`, `promis-eddep29`, `promis-eddep41`, `promis-depression-score-raw`, `promis-depression-score-tscore`

**LOINC answer codes** (5-point frequency scale):
| Code | Display | Score |
|------|---------|-------|
| LA6568-5 | Never | 1 |
| LA10066-1 | Rarely | 2 |
| LA10082-8 | Sometimes | 3 |
| LA10044-8 | Often | 4 |
| LA9933-8 | Always | 5 |

**Questionnaire canonical**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-depression-sf4a`

### 6.8 Clinical Scenario for Mild Depression

For Patient-1 (mild depression, PHQ-9 score 8):
- q01 (interest): LA6569-3 "Several days" (1)
- q02 (depressed): LA6569-3 "Several days" (1)
- q03 (sleep): LA6570-1 "More than half the days" (2)
- q04 (tired): LA6569-3 "Several days" (1)
- q05 (appetite): LA6568-5 "Not at all" (0)
- q06 (self-worth): LA6569-3 "Several days" (1)
- q07 (concentration): LA6568-5 "Not at all" (0)
- q08 (movement): LA6568-5 "Not at all" (0)
- q09 (death): LA6569-3 "Several days" (2) -- total correction: use LA6568-5 for score 0 here
- Total: 8 (mild depression)
- q10 (functional): LA6573-5 "Somewhat difficult"

Adjusted to sum correctly to 8:
- q01=1, q02=1, q03=2, q04=1, q05=0, q06=1, q07=1, q08=0, q09=1 = 8

For PROMIS Depression SF4a (mild, raw score 7, T-score ~52.7):
- eddep04 (worthless): LA10066-1 "Rarely" (2)
- eddep06 (helpless): LA10066-1 "Rarely" (2)
- eddep29 (depressed): LA6568-5 "Never" (1)
- eddep41 (hopeless): LA10066-1 "Rarely" (2)
- Raw score: 2+2+1+2 = 7
- T-score: ~52.7 (from PROMIS scoring table)
