# Research Report: Seltene Erkrankungen (Rare Diseases) Module

## Module Metadata

- **Package**: `de.medizininformatikinitiative.kerndatensatz.seltene`
- **Version**: `2026.0.1`
- **Canonical**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene`
- **FHIR Version**: 4.0.1
- **Status**: active
- **Title**: MII IG Seltene Erkrankungen (DE)
- **Source Repository**: `/Users/thome/code/fhir-profiling/kerndatensatzmodul-seltene-erkrankungen/`

### Dependencies
- `de.basisprofil.r4: 1.5.x`
- `de.medizininformatikinitiative.kerndatensatz.meta: 2026.0.x`
- `de.medizininformatikinitiative.kerndatensatz.molgen: 2026.0.x`
- `de.medizininformatikinitiative.kerndatensatz.icu: 2025.0.x`
- `de.medizininformatikinitiative.kerndatensatz.studie: 2026.0.2`
- `de.medizininformatikinitiative.kerndatensatz.base: 2026.0.x`
- `de.medizininformatikinitiative.kerndatensatz.medikation: 2026.0.x`

### Testdata Project Integration
The dependency `de.medizininformatikinitiative.kerndatensatz.seltene: 2026.0.x` is **already configured** in:
- `/Users/thome/code/fhir-profiling/mii-testdata/kds-testdata/sushi-config.yaml` (line 43)
- `/Users/thome/code/fhir-profiling/mii-testdata/kds-testdata/package.json` (line 46)

No existing test data for Seltene module exists in mii-testdata yet.

---

## Profile Inventory (17 Profiles)

### 1. MII_PR_Seltene_HPO_Assessment (Observation)
- **URL**: `.../StructureDefinition/mii-pr-seltene-hpo-assessment`
- **Base**: `Observation`
- **Description**: HPO-based phenotypic observations for rare diseases
- **MS Elements**: 17

### 2. MII_PR_Seltene_ClinicalDiagnosis (Condition)
- **URL**: `.../StructureDefinition/mii-pr-seltene-clinical-diagnosis`
- **Base**: `Diagnose` (MII KDS Diagnose profile)
- **Description**: Clinical diagnosis of rare diseases with HPO phenotype codes
- **MS Elements**: 15

### 3. MII_PR_Seltene_GeneticDiagnosis (Condition)
- **URL**: `.../StructureDefinition/mii-pr-seltene-genetic-diagnosis`
- **Base**: `Diagnose` (MII KDS Diagnose profile)
- **Description**: Genetically confirmed diagnosis with OMIM codes and MolGen links
- **MS Elements**: 14
- **Constraint**: `se-genetic-evidence` - must have evidence.detail referencing MolGen resource

### 4. MII_PR_Seltene_Symptom_Condition (Condition)
- **URL**: `.../StructureDefinition/mii-pr-seltene-symptom-condition`
- **Base**: `Condition`
- **Description**: Symptom-based conditions with HPO, SNOMED, ICD-10-GM, MONDO coding
- **MS Elements**: 25

### 5. MII_PR_Seltene_ClinicalImpression (ClinicalImpression)
- **URL**: `.../StructureDefinition/mii-pr-seltene-clinical-impression`
- **Base**: `ClinicalImpression`
- **Description**: Clinical assessments and suspected diagnoses
- **MS Elements**: 18

### 6. MII_PR_Seltene_Familienanamnese (FamilyMemberHistory)
- **URL**: `.../StructureDefinition/mii-pr-seltene-familienanamnese`
- **Base**: MolGen Familienanamnese profile
- **Description**: Family history with vonSEBetroffen extension (required, min=1)
- **MS Elements**: 10

### 7. MII_PR_Seltene_Therapieempfehlung (MedicationRequest)
- **URL**: `.../StructureDefinition/mii-pr-seltene-therapieempfehlung`
- **Base**: MII MedicationRequest profile
- **Description**: Medication therapy recommendation for rare diseases
- **MS Elements**: 8

### 8. MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes (ServiceRequest)
- **URL**: `.../StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes`
- **Base**: `ServiceRequest`
- **Description**: Non-medication therapy recommendations (nutrition, prophylaxis, early detection)
- **MS Elements**: 18

### 9. MII_PR_Seltene_Therapieempfehlung_Kombination (RequestGroup)
- **URL**: `.../StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination`
- **Base**: `RequestGroup`
- **Description**: Combination therapy recommendation grouping multiple MedicationRequests
- **MS Elements**: 8

### 10. MII_PR_Seltene_Studieneinschluss_Anfrage (ServiceRequest)
- **URL**: `.../StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage`
- **Base**: `ServiceRequest`
- **Description**: Clinical trial enrollment request
- **MS Elements**: 8
- **Fixed values**: intent=proposal, category=SNOMED 110465008 "Clinical trial", code=SNOMED 702475000 "Referral to clinical trial"

### 11. MII_PR_Seltene_Therapieplan (CarePlan)
- **URL**: `.../StructureDefinition/mii-pr-seltene-therapieplan`
- **Base**: `CarePlan`
- **Description**: Overall therapy plan with sliced activities
- **MS Elements**: 12

### 12. MII_PR_Seltene_TherapieDurchgefuehrt (Procedure)
- **URL**: `.../StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt`
- **Base**: `Procedure`
- **Description**: Performed therapy documentation per NARSE classification
- **MS Elements**: 7

### 13. MII_PR_Seltene_Blutgruppe (Observation)
- **URL**: `.../StructureDefinition/mii-pr-seltene-blutgruppe`
- **Base**: `Observation`
- **Description**: Blood group (ABO + Rh) observation
- **MS Elements**: 15

### 14. MII_PR_Seltene_Bodymassindex (Observation)
- **URL**: `.../StructureDefinition/mii-pr-seltene-bodymassindex`
- **Base**: `Observation`
- **Description**: BMI measurement
- **MS Elements**: 5
- **Fixed values**: code=LOINC 39156-5, unit=kg/m2

### 15. MII_PR_Seltene_Kopfumfang (Observation)
- **URL**: `.../StructureDefinition/mii-pr-seltene-kopfumfang`
- **Base**: `Observation`
- **Description**: Head circumference (occipital-frontal)
- **MS Elements**: 6
- **Fixed values**: code=LOINC 9843-4, unit=cm

### 16. MII_PR_Seltene_Hueftumfang (Observation)
- **URL**: `.../StructureDefinition/mii-pr-seltene-hueftumfang`
- **Base**: `Observation`
- **Description**: Hip circumference at maximal gluteal protrusion
- **MS Elements**: 6
- **Fixed values**: code=LOINC 56063-1, unit=cm

### 17. MII_PR_Seltene_Taillenumfang (Observation)
- **URL**: `.../StructureDefinition/mii-pr-seltene-taillenumfang`
- **Base**: `Observation`
- **Description**: Waist circumference at umbilicus
- **MS Elements**: 6
- **Fixed values**: code=LOINC 8280-0, unit=cm

---

## Detailed MS Elements per Profile

### Profile 1: HPO Assessment (Observation)

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `status` | code | 1..1 | required | |
| `code` | CodeableConcept | 1..1 | extensible: mii-vs-seltene-hpo-phenotypic-observation-codes | HPO code |
| `subject` | Reference(Patient) | 1..1 | | |
| `encounter` | Reference(Encounter) | 0..1 | | |
| `effective[x]` | dateTime, Period | 0..1 | | sliced: effectiveDateTime, effectivePeriod |
| `note` | Annotation | 0..* | | |
| `bodySite` | CodeableConcept | 0..1 | extensible: body-site | |
| `method` | CodeableConcept | 0..1 | extensible: observation-methods | |
| `derivedFrom` | Reference | 0..* | | |
| `component` | BackboneElement | 0..* | | sliced by code pattern |
| `component:status` | BackboneElement | 0..1 | | |
| `component:status.code` | CodeableConcept | 1..1 | pattern: SNOMED 260411009 "Presence findings" | |
| `component:status.value[x]` | CodeableConcept | 0..1 | required: mii-vs-seltene-hpo-presence-status | LA9633-4 Present / LA9634-2 Absent |
| `component:status.interpretation` | CodeableConcept | 0..* | required: mii-vs-seltene-symptom-change-status-combined | Change status over time |
| `component:severity` | BackboneElement | 0..1 | | |
| `component:severity.code` | CodeableConcept | 1..1 | pattern: HPO HP:0012824 "Severity" | |
| `component:severity.value[x]` | CodeableConcept | 0..1 | extensible: mii-vs-seltene-hpo-severity | Mild/Moderate/Severe/Profound/Borderline |

**IMPORTANT**: `value[x]` is max=0 on this profile. Status and severity are in components.

### Profile 2: Clinical Diagnosis (Condition)

Inherits from MII Diagnose profile (which has clinicalStatus, verificationStatus, code with icd10-gm/sct/orphanet/alpha-id slices, onset, subject, encounter, recordedDate, bodySite, note as MS).

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `category` | CodeableConcept | 1..* | | min=1, MS |
| `severity` | CodeableConcept | 0..1 | | MS |
| `code.coding:hpo` | Coding | 0..* | required: mii-vs-seltene-hpo-phenotypic-observation-codes | patternCoding system=HPO |
| `code.coding:hpo.system` | uri | 1..1 | | MS |
| `code.coding:hpo.code` | code | 1..1 | | MS |
| `code.coding:hpo.display` | string | 0..1 | | MS |
| `abatement[x]` | * | 0..1 | | MS |
| `recorder` | Reference | 0..1 | | MS |
| `asserter` | Reference | 0..1 | | MS |
| `stage` | BackboneElement | 0..* | | MS |
| `stage.assessment` | Reference | 0..* | | MS |
| `stage.type` | CodeableConcept | 0..1 | | MS |
| `evidence` | BackboneElement | 0..* | | MS |
| `evidence.code` | CodeableConcept | 0..* | | MS |
| `evidence.detail` | Reference(Observation) | 0..* | | MS, links to HPO Observations |

### Profile 3: Genetic Diagnosis (Condition)

Inherits from MII Diagnose profile.

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `extension:penetrance` | Extension | 0..1 | mii-ex-seltene-penetrance | MS, CodeableConcept or Quantity |
| `category` | CodeableConcept | 1..* | pattern: SNOMED 782964007 "Genetic disease" | MS, min=1 |
| `severity` | CodeableConcept | 0..1 | | MS |
| `code.coding:omim` | Coding | 0..* | patternCoding system=http://omim.org | MS |
| `code.coding:omim.system` | uri | 1..1 | | MS |
| `code.coding:omim.code` | code | 1..1 | | MS |
| `code.coding:omim.display` | string | 0..1 | | MS |
| `abatement[x]` | * | 0..1 | | MS |
| `recorder` | Reference | 0..1 | | MS |
| `asserter` | Reference | 0..1 | | MS |
| `stage` | BackboneElement | 0..* | | MS |
| `evidence` | BackboneElement | 1..* | | MS, min=1 |
| `evidence.code` | CodeableConcept | 0..* | | MS |
| `evidence.code.coding:geneticEvidence` | Coding | 0..1 | pattern: SNOMED 106221001 "Genetic finding" | MS |
| `evidence.detail` | Reference(Observation, DiagnosticReport) | 1..* | | MS, min=1, must link to MolGen |

**Constraint**: `se-genetic-evidence` - evidence.exists() and evidence.detail.exists()

### Profile 4: Symptom Condition (Condition)

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `id` | id | 0..1 | | MS |
| `meta` | Meta | 0..1 | | MS |
| `identifier` | Identifier | 0..* | | MS |
| `clinicalStatus` | CodeableConcept | 0..1 | required: condition-clinical | MS |
| `verificationStatus` | CodeableConcept | 0..1 | required: condition-ver-status | MS |
| `category` | CodeableConcept | 1..* | | MS, min=1 |
| `severity` | CodeableConcept | 0..1 | extensible: mii-vs-seltene-hpo-severity | MS |
| `code` | CodeableConcept | 1..1 | extensible: mii-vs-seltene-hpo-phenotypic-observation-codes | MS, min=1 |
| `code.coding` | Coding | 0..* | | MS, sliced |
| `code.coding:hpoCoding` | Coding | 0..1 | pattern system=http://purl.obolibrary.org/obo/hp.owl | MS |
| `code.coding:hpoCoding.display` | string | 0..1 | | MS |
| `code.coding:snomedCoding` | Coding | 0..1 | pattern system=http://snomed.info/sct | MS |
| `code.coding:snomedCoding.display` | string | 0..1 | | MS |
| `code.coding:icd10GMCoding` | Coding | 0..1 | pattern system=http://fhir.de/CodeSystem/bfarm/icd-10-gm | MS |
| `code.coding:icd10GMCoding.display` | string | 0..1 | | MS |
| `code.coding:mondoCoding` | Coding | 0..1 | pattern system=http://purl.obolibrary.org/obo/mondo.owl | MS |
| `code.coding:mondoCoding.display` | string | 0..1 | | MS |
| `bodySite` | CodeableConcept | 0..* | | MS |
| `subject` | Reference(Patient) | 1..1 | | MS |
| `encounter` | Reference(Encounter) | 0..1 | | MS |
| `onset[x]` | dateTime, Period, Age, string | 0..1 | | MS, sliced |
| `abatement[x]` | dateTime | 0..1 | | MS, sliced |
| `recordedDate` | dateTime | 0..1 | | MS |
| `stage` | BackboneElement | 0..* | | MS, stage.summary bound to hpo-severity |
| `evidence` | BackboneElement | 0..* | | MS |
| `note` | Annotation | 0..* | | MS |

**NOTE**: HPO system in SymptomCondition uses `http://purl.obolibrary.org/obo/hp.owl` (OBO format), NOT `http://human-phenotype-ontology.org`. This is different from HPO Assessment!

### Profile 5: Clinical Impression (ClinicalImpression)

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `id` | id | 0..1 | | MS |
| `meta` | Meta | 0..1 | | MS |
| `identifier` | Identifier | 0..* | | MS |
| `status` | code | 1..1 | required: clinicalimpression-status | MS |
| `code` | CodeableConcept | 0..1 | | MS |
| `description` | string | 0..1 | | MS |
| `subject` | Reference(Patient) | 1..1 | | MS |
| `encounter` | Reference(Encounter) | 0..1 | | MS |
| `effective[x]` | dateTime, Period | 0..1 | | MS, sliced |
| `date` | dateTime | 0..1 | | MS |
| `problem` | Reference | 0..* | | MS |
| `investigation` | BackboneElement | 0..* | | MS |
| `investigation.code` | CodeableConcept | 1..1 | | MS |
| `summary` | string | 0..1 | | MS |
| `finding` | BackboneElement | 0..* | | MS |
| `finding.itemCodeableConcept` | CodeableConcept | 0..1 | extensible: hpo-phenotypic-observation-codes | |
| `supportingInfo` | Reference(Obs, Cond, DR, DocRef) | 0..* | | MS |
| `note` | Annotation | 0..* | | MS |

### Profile 6: Familienanamnese (FamilyMemberHistory)

Inherits from MolGen Familienanamnese (which has status, patient, relationship, sex, condition with icd10-gm/sct/orphanet slices as MS).

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `extension:vonSEBetroffen` | Extension | 1..1 | required: von-seltene-betroffen-vs | MS, min=1, SNOMED yes/no/unknown |
| `born[x]` | * | 0..1 | | MS |
| `age[x]` | * | 0..1 | | MS |
| `deceased[x]` | boolean, date, Age | 0..1 | | MS, sliced |
| `condition.extension:penetrance` | Extension | 0..1 | mii-ex-seltene-penetrance | MS |
| `condition.code.coding:mondo` | Coding | 0..1 | pattern system=http://purl.obolibrary.org/obo/mondo.owl | MS |
| `condition.code.coding:mondo.display` | string | 0..1 | | MS |
| `condition.contributedToDeath` | boolean | 0..1 | | MS |
| `condition.onset[x]` | Age | 0..1 | | MS, sliced |

### Profile 7: Therapieempfehlung (MedicationRequest)

Inherits from MII MedicationRequest profile.

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `extension:Prioritaet` | Extension | 0..1 | mii-ex-seltene-empfehlung-prioritaet | MS |
| `extension:Evidenzgraduierung` | Extension | 0..1 | mii-ex-seltene-empfehlung-evidenzgraduierung | MS |
| `extension:Publikation` | Extension | 0..* | mii-ex-seltene-empfehlung-publikation | MS |
| `category` | CodeableConcept | 0..* | | MS, sliced |
| `category:MVGenomSeqTherapieStrategie` | CodeableConcept | 0..1 | required: mii-vs-seltene-therapieempfehlung-strategie-medikamentoes | MS |
| `category:MVGenomSeqTherapieTyp` | CodeableConcept | 0..1 | required: mii-vs-seltene-therapieempfehlung-typ | MS (causal/symptomatic) |

### Profile 8: Therapieempfehlung Nicht-Medikamentoes (ServiceRequest)

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `extension:Prioritaet` | Extension | 0..1 | | MS |
| `extension:Evidenzgraduierung` | Extension | 0..1 | | MS |
| `extension:Publikation` | Extension | 0..* | | MS |
| `status` | code | 1..1 | | MS |
| `intent` | code | 1..1 | pattern: proposal | MS |
| `category` | CodeableConcept | 1..* | | MS, min=1 |
| `category:MVGenomSeqTherapieStrategie` | CodeableConcept | 0..1 | required: mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes | MS |
| `category:MVGenomSeqTherapieTyp` | CodeableConcept | 0..1 | required: mii-vs-seltene-therapieempfehlung-typ | MS |
| `priority` | code | 0..1 | | MS |
| `code` | CodeableConcept | 1..1 | | MS, min=1 |
| `code.coding:snomed` | Coding | 0..1 | pattern system=http://snomed.info/sct | MS |
| `code.coding:ops` | Coding | 0..1 | pattern system=http://fhir.de/CodeSystem/bfarm/ops | MS |
| `code.coding:loinc` | Coding | 0..1 | pattern system=http://loinc.org | MS |
| `code.text` | string | 1..1 | | MS, min=1 |
| `subject` | Reference(Patient) | 1..1 | | MS |
| `encounter` | Reference(Encounter) | 0..1 | | MS |
| `occurrence[x]` | * | 0..1 | | MS |
| `requester` | Reference(Practitioner, PractitionerRole, Organization) | 0..1 | | MS |
| `performer` | Reference | 0..* | | MS |
| `reasonCode` | CodeableConcept | 0..* | | MS |
| `reasonReference` | Reference(Condition, Observation, DiagnosticReport) | 0..* | | MS |
| `supportingInfo` | Reference(DocumentReference, Observation, DiagnosticReport) | 0..* | | MS |
| `note` | Annotation | 0..* | | MS |

### Profile 9: Therapieempfehlung Kombination (RequestGroup)

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `extension:Prioritaet` | Extension | 0..1 | | MS |
| `extension:Evidenzgraduierung` | Extension | 0..1 | | MS |
| `extension:Publikation` | Extension | 0..* | | MS |
| `identifier` | Identifier | 0..* | | MS |
| `intent` | code | 1..1 | | MS |
| `subject` | Reference(Patient) | 0..1 | | MS |
| `action` | BackboneElement | 1..* | | MS, min=1 |
| `action.resource` | Reference(Therapieempfehlung, MedicationRequest) | 1..1 | | MS, min=1 |

### Profile 10: Studieneinschluss Anfrage (ServiceRequest)

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `extension:statusReason` | Extension | 0..1 | request-statusReason | MS |
| `extension:Prioritaet` | Extension | 0..1 | | MS |
| `extension:Publikation` | Extension | 0..* | | MS |
| `status` | code | 1..1 | | MS |
| `intent` | code | 1..1 | fixed: proposal | |
| `category` | CodeableConcept | 1..1 | fixed: SNOMED 110465008 "Clinical trial" | MS |
| `code` | CodeableConcept | 1..1 | fixed: SNOMED 702475000 "Referral to clinical trial" | MS |
| `reasonReference` | Reference | 0..* | | MS |
| `supportingInfo` | Reference | 0..* | | MS, sliced |
| `supportingInfo:Studie` | Reference(ResearchStudy) | 0..* | | MS |

### Profile 11: Therapieplan (CarePlan)

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `description` | string | 0..1 | | MS |
| `created` | dateTime | 1..1 | | MS, min=1 |
| `supportingInfo` | Reference | 0..* | | MS, sliced |
| `activity` | BackboneElement | 0..* | | MS, sliced |
| `activity:MedikamentoesTherapie` | BackboneElement | 0..* | | MS |
| `activity:MedikamentoesTherapie.reference` | Reference(Therapieempfehlung, Kombination, MedicationRequest, RequestGroup) | 0..1 | | MS |
| `activity:MedikamentoesTherapie.detail` | BackboneElement | 0..1 | | MS, statusReason bound |
| `activity:NichtMedikamentoesTherapie` | BackboneElement | 0..* | | MS |
| `activity:NichtMedikamentoesTherapie.reference` | Reference(TherapieempfehlungNichtMed, ServiceRequest) | 0..1 | | MS |
| `activity:NichtMedikamentoesTherapie.detail` | BackboneElement | 0..1 | | MS, statusReason bound |
| `activity:Studieneinschlussempfehlung` | BackboneElement | 0..* | | MS |
| `activity:Studieneinschlussempfehlung.reference` | Reference(Studieneinschluss) | 1..1 | | MS, min=1 |

### Profile 12: Therapie Durchgefuehrt (Procedure)

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `status` | code | 1..1 | | MS |
| `code` | CodeableConcept | 1..1 | required: mii-vs-seltene-narse-therapietyp | MS, min=1 |
| `code.coding` | Coding | 1..1 | | MS, pattern system=mii-cs-seltene-narse-therapietyp |
| `code.coding.display` | string | 0..1 | | MS |
| `subject` | Reference(Patient) | 1..1 | | MS |
| `performed[x]` | dateTime, Period | 0..1 | | MS, sliced |

### Profile 13: Blutgruppe (Observation)

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `id` | id | 0..1 | | MS |
| `meta` | Meta | 0..1 | | MS |
| `meta.profile` | canonical | 0..* | | MS |
| `status` | code | 1..1 | | MS |
| `category` | CodeableConcept | 1..* | | MS, min=1 |
| `category:laboratory` | CodeableConcept | 1..1 | pattern: observation-category#laboratory | MS |
| `code` | CodeableConcept | 1..1 | | MS |
| `code.coding` | Coding | 0..* | | MS, sliced |
| `code.coding:loinc-abo-rh` | Coding | 0..1 | pattern: LOINC 882-1 | MS |
| `code.coding:loinc-abo` | Coding | 0..1 | pattern: LOINC 883-9 | MS |
| `subject` | Reference(Patient) | 1..1 | | MS |
| `effective[x]` | dateTime, Period | 0..1 | | MS, sliced |
| `value[x]` | CodeableConcept | 1..1 | | MS, min=1 |
| `value[x].coding` | Coding | 0..* | required: mii-vs-seltene-blutgruppe | MS, sliced (loinc, snomed) |
| `value[x].text` | string | 0..1 | | MS |

### Profiles 14-17: Body Measurements (BMI, Kopfumfang, Hueftumfang, Taillenumfang)

All follow identical pattern:

| Element Path | Type(s) | Cardinality | Binding/Fixed | Notes |
|---|---|---|---|---|
| `status` | code | 1..1 | | MS |
| `category` | CodeableConcept | 0..* | fixed system=observation-category, code=vital-signs | MS |
| `code` | CodeableConcept | 1..1 | pattern: specific LOINC | MS (varies by profile) |
| `subject` | Reference(Patient) | 1..1 | | MS |
| `effective[x]` | dateTime | 0..1 | | MS |
| `value[x]` | Quantity | 0..1 | | MS, fixed unit varies |

Fixed codes per profile:
- **BMI**: LOINC 39156-5, unit=kg/m2
- **Kopfumfang**: LOINC 9843-4, unit=cm
- **Hueftumfang**: LOINC 56063-1, unit=cm
- **Taillenumfang**: LOINC 8280-0, unit=cm

---

## Extensions

### 1. von-seltene-betroffen
- **URL**: `.../StructureDefinition/von-seltene-betroffen`
- **Context**: Element (used on FamilyMemberHistory)
- **Value**: CodeableConcept
- **Binding**: required, von-seltene-betroffen-vs (SNOMED 373066001 Yes / 373067005 No / 261665006 Unknown)

### 2. mii-ex-seltene-penetrance
- **URL**: `.../StructureDefinition/mii-ex-seltene-penetrance`
- **Context**: Condition
- **Value**: CodeableConcept (HPO terms) OR Quantity (percentage)
- **Binding**: extensible, mii-vs-seltene-penetrance (HP:0003829 Incomplete / HP:0003828 Variable / HP:0025169 Complete / HP:0003831 Age-dependent)

### 3. mii-ex-seltene-empfehlung-prioritaet
- **URL**: `.../StructureDefinition/mii-ex-seltene-empfehlung-prioritaet`
- **Context**: MedicationRequest, ServiceRequest, RequestGroup

### 4. mii-ex-seltene-empfehlung-evidenzgraduierung
- **URL**: `.../StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung`
- **Context**: MedicationRequest, ServiceRequest, RequestGroup

### 5. mii-ex-seltene-empfehlung-publikation
- **URL**: `.../StructureDefinition/mii-ex-seltene-empfehlung-publikation`
- **Context**: MedicationRequest, ServiceRequest, RequestGroup

### 6-8. Additional extensions (onset-age, phenotypic-pattern, syndrome-category)
Found in `input/fsh/extensions/` but used on specific profiles.

---

## CodeSystems

### 1. mii-cs-seltene-narse-therapietyp
- **URL**: `.../CodeSystem/mii-cs-seltene-narse-therapietyp`
- **Codes**: keine, pharmakotherapie, gentherapie, mrna-therapie, antikoerpertherapie, cart-zelltherapie, stammzelltransplantation, stoffwechseltherapie, sonstiges, unbekannt

### 2. mii-cs-seltene-therapieempfehlung-strategie
- **URL**: `.../CodeSystem/mii-cs-seltene-therapieempfehlung-strategie`
- **Codes**: systemic-medication, targeted-medication, prevention-medication, gene-therapy, prophylactic, early-detection, combination, nutrition, other

### 3. mii-cs-seltene-therapieempfehlung-typ
- **URL**: `.../CodeSystem/mii-cs-seltene-therapieempfehlung-typ`
- **Codes**: causal, symptomatic

### 4. mii-cs-seltene-empfehlung-status-begruendung
- **URL**: `.../CodeSystem/mii-cs-seltene-empfehlung-status-begruendung`
- **Codes**: no-target

### 5. mii-cs-seltene-hpo-change-status
- **URL**: `.../CodeSystem/mii-cs-seltene-hpo-change-status`
- **Codes**: newly-added, improved, degraded, no-longer-observed, unchanged

---

## Key ValueSets

| ValueSet | Binding | Source |
|---|---|---|
| mii-vs-seltene-hpo-phenotypic-observation-codes | extensible | HPO codes for phenotypes |
| mii-vs-seltene-hpo-presence-status | required | LOINC LA9633-4 Present, LA9634-2 Absent |
| mii-vs-seltene-hpo-severity | extensible | HPO severity codes (Mild/Moderate/Severe/Profound/Borderline) |
| mii-vs-seltene-blutgruppe | required | Blood group LOINC+SNOMED codes |
| mii-vs-seltene-therapieempfehlung-strategie-medikamentoes | required | Medication strategy subset |
| mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes | required | Non-medication strategy subset |
| mii-vs-seltene-therapieempfehlung-typ | required | causal/symptomatic |
| mii-vs-seltene-empfehlung-status-begruendung | required | Status reason |
| mii-vs-seltene-penetrance | extensible | HPO penetrance codes |
| von-seltene-betroffen-vs | required | SNOMED yes/no/unknown + HL7 v2-0532 |
| mii-vs-seltene-hpo-change-status | required | Change status codes |
| mii-vs-seltene-symptom-change-status-combined | required | Combined change status (HPO + SNOMED) |
| mii-vs-seltene-narse-therapietyp | required | NARSE therapy types |

---

## Example Instances from Module Repo

The module repo contains extensive examples organized by disease case:

### HPO Assessment Examples
- `mii-exa-seltene-hpo-assessment` - Intellectual disability (HP:0001249), Present
- `mii-exa-seltene-hpo-assessment-excluded` - Absent example
- `mii-exa-seltene-hpo-assessment-severity` - With severity component

### Body Measurement Examples
- `mii-exa-seltene-bodymassindex` - BMI observation
- `mii-exa-seltene-hueftumfang` - Hip circumference
- `mii-exa-seltene-kopfumfang` - Head circumference
- `mii-exa-seltene-taillenumfang` - Waist circumference

### Clinical Diagnosis Examples (Marfan, Noonan, CF)
- `example-marfan-clinical-diagnosis` - Marfan syndrome with OMIM, SNOMED, Orphanet codes + HPO evidence
- `example-noonan-clinical-diagnosis` - Noonan syndrome
- `example-cf-clinical` - Cystic fibrosis clinical diagnosis

### Genetic Diagnosis Examples (SMA, DMD, BRCA1, CF)
- `example-sma-genetic-diagnosis` - SMA with MolGen references
- `example-dmd-genetic-diagnosis` - Duchenne muscular dystrophy
- `example-brca1-genetic-diagnosis` - BRCA1
- `example-cf-genetic` - CF genetic diagnosis

### Excluded Diagnosis Examples
- `example-marfan-excluded-clinical` - Excluded Marfan
- `example-eds-excluded-clinical` - Excluded EDS
- `example-sma-excluded-genetic` - Excluded SMA genetic
- `example-dmd-excluded-bmd-confirmed` - Excluded DMD, BMD confirmed
- `example-cf-excluded-after-screening` - CF excluded after screening
- `example-metabolic-myopathy-excluded` - Metabolic myopathy excluded

### Other Examples
- `mii-exa-seltene-familienanamnese` - Family history with vonSEBetroffen=Yes, mother
- `mii-exa-seltene-symptom-condition` - Muscle weakness (HP:0001324), severity Mild
- `mii-exa-seltene-therapieplan` - CarePlan with medication + non-med + study activities
- `example-early-detection-recommendation` - Non-med therapy: early detection
- `example-nutrition-therapy-recommendation` - Non-med therapy: nutrition
- `condition-pku-diagnosis` - PKU diagnosis condition

### Marfan-specific HPO Observations
- `aortic-root-dilatation`, `aortic-root-normal` - Aortic root findings
- `lens-dislocation` - Ectopia lentis
- `tall-stature` - Height
- `arachnodactyly` - Long fingers

### Noonan-specific HPO Observations
- `hypertelorism`, `anteverted-nares`, `vsd`, `lymphedema`

### CF-specific HPO Observations
- `recurrent-respiratory-infections`, `chronic-diarrhea`, `failure-to-thrive`

---

## Recommendations for Test Data Creation

### File Structure
Create directory: `kds-testdata/input/fsh/modul-seltene/`

Suggested files:
1. **`HPOAssessment.fsh`** - HPO phenotype observations (present, absent, with severity)
2. **`ClinicalDiagnosis.fsh`** - Clinical diagnosis with HPO coding
3. **`GeneticDiagnosis.fsh`** - Genetic diagnosis with OMIM and MolGen links
4. **`SymptomCondition.fsh`** - Symptom conditions
5. **`ClinicalImpression.fsh`** - Clinical impression
6. **`Familienanamnese.fsh`** - Family history with vonSEBetroffen
7. **`Therapieplan.fsh`** - CarePlan with therapy recommendations
8. **`Therapieempfehlung.fsh`** - MedicationRequest + ServiceRequest recommendations
9. **`TherapieDurchgefuehrt.fsh`** - Performed therapy
10. **`BodyMeasurements.fsh`** - BMI, head/hip/waist circumference, blood group

### Naming Convention
Follow existing pattern: `mii-exa-test-data-patient-{N}-seltene-{resource-type}-{num}`

Examples:
- `mii-exa-test-data-patient-3-seltene-hpo-assessment-1`
- `mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1`
- `mii-exa-test-data-patient-3-seltene-genetic-diagnosis-1`
- `mii-exa-test-data-patient-3-seltene-familienanamnese-1`
- `mii-exa-test-data-patient-3-seltene-therapieplan-1`

### Which Patient to Use
Patient-3 already has MolGen data (molgen-variante-1, molgen-diagnostische-implikation-1, molgen-befundbericht-1) which is needed for GeneticDiagnosis.evidence.detail references. Adding Seltene data to Patient-3 creates a complete rare disease case with integrated genetics.

### Instances to Create (Minimum Viable Set)

For Patient-3 (who already has MolGen data for BRCA2):

1. **HPO Assessment - Present** (Observation) - e.g., HP:0000729 Autistic behavior or relevant phenotype
2. **HPO Assessment - Absent** (Observation) - explicitly excluded phenotype
3. **HPO Assessment with Severity** (Observation) - with severity component
4. **Clinical Diagnosis** (Condition) - clinical rare disease diagnosis with ICD-10-GM + Orphanet + HPO
5. **Genetic Diagnosis** (Condition) - with OMIM code, evidence linking to existing MolGen variante/implikation
6. **Symptom Condition** (Condition) - symptom with HPO + SNOMED + onset
7. **Clinical Impression** (ClinicalImpression) - assessment linking findings to diagnosis
8. **Family History** (FamilyMemberHistory) - with vonSEBetroffen extension
9. **CarePlan/Therapieplan** (CarePlan) - with med + non-med activities
10. **Therapieempfehlung Med** (MedicationRequest) - medication recommendation
11. **Therapieempfehlung Nicht-Med** (ServiceRequest) - non-med recommendation (early detection)
12. **Therapie Durchgefuehrt** (Procedure) - performed therapy (pharmakotherapie)
13. **BMI** (Observation) - body mass index
14. **Kopfumfang** (Observation) - head circumference
15. **Blutgruppe** (Observation) - blood group

### Required Aliases to Add
Add to `aliases.fsh`:
```
Alias: $HPO = http://human-phenotype-ontology.org
Alias: $HPO-OBO = http://purl.obolibrary.org/obo/hp.owl
Alias: $MONDO = http://purl.obolibrary.org/obo/mondo.owl
Alias: $OMIM = http://omim.org
Alias: $seltene-cs-narse = https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp
Alias: $seltene-cs-strategie = https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie
Alias: $seltene-cs-typ = https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ
```

Note: `$HPO` is already defined in aliases.fsh (line 75, 77). `$orpha` is also already defined (line 10).

### Key Implementation Notes

1. **HPO Assessment value[x] is max=0** - Use `component:status` and `component:severity` instead
2. **Genetic Diagnosis requires evidence** - Constraint `se-genetic-evidence` enforces evidence.detail must exist
3. **Genetic Diagnosis category is fixed** - Must include SNOMED 782964007 "Genetic disease"
4. **SymptomCondition HPO system differs** - Uses `http://purl.obolibrary.org/obo/hp.owl`, not `http://human-phenotype-ontology.org`
5. **Familienanamnese extension is required** - vonSEBetroffen min=1
6. **Therapieempfehlung Nicht-Med code.text is required** - min=1
7. **Studieneinschluss has fixed category and code** - Both are fixedCodeableConcept
8. **Therapieplan created is required** - min=1
9. **Clinical Diagnosis and Genetic Diagnosis extend MII Diagnose** - They inherit all its MS elements (clinicalStatus, verificationStatus, code with icd10-gm/sct/orphanet slices, subject, encounter, onset, recordedDate, bodySite, note)

### Bundle Integration
Add Seltene instances to Patient-3's bundle in `Bundle.fsh`:
```fsh
// Seltene Erkrankungen Module
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-hpo-assessment-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-hpo-assessment-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1, Condition)
// ... etc
```
