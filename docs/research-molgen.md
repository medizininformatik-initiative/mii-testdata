# MolGen (Molekulargenetik) Module - Research Report

Module: `de.medizininformatikinitiative.kerndatensatz.molgen`
Version: `2026.0.x`
Source: `molgen.json` from ms-elements (extracted 2026-01-17)

---

## 1. Profile Inventory

| # | Profile Name | Profile ID | URL | Base Type | MS Elements |
|---|---|---|---|---|---|
| 1 | MII_PR_MolGen_AnforderungGenetischerTest | mii-pr-molgen-anforderung-genetischer-test | `.../anforderung-genetischer-test` | ServiceRequest | 10 |
| 2 | MII_PR_MolGen_DiagnostischeImplikation | mii-pr-molgen-diagnostische-implikation | `.../diagnostische-implikation` | Observation | 12 |
| 3 | MII_PR_MolGen_EmpfohleneFolgemassnahme | mii-pr-molgen-empfohlene-folgemassnahme | `.../empfohlene-folgemassnahme` | Task | 7 |
| 4 | MII_PR_MolGen_Familienanamnese | mii-pr-molgen-familienanamnese | `.../mii-pr-molgen-familienanamnese` | FamilyMemberHistory | 26 |
| 5 | MII_PR_MolGen_GenomicStudyAnalysis | mii-pr-molgen-genomic-study-analysis | `.../mii-pr-molgen-genomic-study-analysis` | Procedure | 9 |
| 6 | MII_PR_MolGen_GenomicStudy | mii-pr-molgen-genomic-study | `.../mii-pr-molgen-genomic-study` | Procedure | 8 |
| 7 | MII_PR_MolGen_Genotyp | mii-pr-molgen-genotyp | `.../genotyp` | Observation | 15 |
| 8 | MII_PR_MolGen_Medikationsempfehlung | mii-pr-molgen-medikationsempfehlung | `.../medikationsempfehlung` | Task | 7 |
| 9 | MII_PR_MolGen_Mikrosatelliteninstabilitaet | mii-pr-molgen-mikrosatelliteninstabilitaet | `.../mikrosatelliteninstabilitaet` | Observation | 14 |
| 10 | MII_PR_MolGen_MolekulareKonsequenz | mii-pr-molgen-molekulare-konsequenz | `.../mii-pr-molgen-molekulare-konsequenz` | Observation | 12 |
| 11 | MII_PR_MolGen_MolekularerBiomarker | mii-pr-molgen-molekularer-biomarker | `.../mii-pr-molgen-molekularer-biomarker` | Observation | 11 |
| 12 | MII_PR_MolGen_MolekulargenetischerBefundbericht | mii-pr-molgen-molekulargenetischer-befundbericht | `.../molekulargenetischer-befundbericht` | DiagnosticReport | 22 |
| 13 | MII_PR_MolGen_Mutationslast | mii-pr-molgen-mutationslast | `.../mutationslast` | Observation | 14 |
| 14 | MII_PR_MolGen_PolygenerRisikoScore | mii-pr-molgen-polygener-risiko-score | `.../polygener-risiko-score` | RiskAssessment | 14 |
| 15 | MII_PR_MolGen_TherapeutischeImplikation | mii-pr-molgen-therapeutische-implikation | `.../therapeutische-implikation` | Observation | 14 |
| 16 | MII_PR_MolGen_Variante | mii-pr-molgen-variante | `.../variante` | Observation | 34 |

All URLs prefixed with: `https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition`

Additional StructureDefinitions in the module repo (Extensions, not profiles):
- mii-ex-molgen-verwandtschaftsgrad
- mii-ex-molgen-verwandtschaftsverhaeltnis
- mii-ex-molgen-familiare-linie
- mii-ex-molgen-empfohlene-massnahme
- mii-ex-molgen-risk-assessment-einflussfaktor

---

## 2. MS Element Details Per Profile

### 2.1 AnforderungGenetischerTest (ServiceRequest)

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| ServiceRequest.basedOn | Reference | 0..* | - | - |
| ServiceRequest.code | CodeableConcept | 0..1 | example: procedure-code | - |
| ServiceRequest.subject | Reference | 1..1 | - | - |
| ServiceRequest.encounter | Reference | 0..1 | - | - |
| ServiceRequest.authoredOn | dateTime | 0..1 | - | - |
| ServiceRequest.requester | Reference | 0..1 | - | - |
| ServiceRequest.reasonCode | CodeableConcept | 0..* | example: procedure-reason | - |
| ServiceRequest.reasonReference | Reference | 0..* | - | - |
| ServiceRequest.supportingInfo | Reference | 0..* | - | - |
| ServiceRequest.note | Annotation | 0..* | - | - |

### 2.2 DiagnostischeImplikation (Observation)

Base: `genomics-reporting/diagnostic-implication`

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| Observation.extension | Extension | 0..* | - | workflow-relatedArtifact |
| Observation.category | CodeableConcept | 2..* | preferred: observation-category | - |
| Observation.code | CodeableConcept | 1..1 | example: observation-codes | - |
| Observation.subject | Reference | 0..1 | - | - |
| Observation.encounter | Reference | 0..1 | - | - |
| Observation.effective[x] | Period, Timing, dateTime, instant | 0..1 | - | - |
| Observation.issued | instant | 0..1 | - | - |
| Observation.derivedFrom | Reference | 1..* | - | - |
| Observation.component | BackboneElement | 0..* | - | - |
| Observation.component | BackboneElement | 0..1 | - | conclusion-string |
| Observation.component | BackboneElement | 0..* | - | evidence-level |
| Observation.component | BackboneElement | 0..1 | - | clinical-significance |
| Observation.component | BackboneElement | 0..* | - | predicted-phenotype |
| Observation.component | BackboneElement | 0..1 | - | mode-of-inheritance |

**NOTE**: `functional-effect` component was REMOVED in 2026.0.x.

### 2.3 EmpfohleneFolgemassnahme (Task)

Base: `genomics-reporting/followup-recommendation`

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| Task.status | code | 1..1 | required: task-status | - |
| Task.intent | code | 1..1 | required: task-intent | - |
| Task.code | CodeableConcept | 0..1 | extensible: LL1037-2 | - |
| Task.for | Reference | 1..1 | - | - |
| Task.encounter | Reference | 0..1 | - | - |
| Task.reasonCode | CodeableConcept | 0..1 | example | - |
| Task.reasonReference | Reference | 0..1 | - | - |

### 2.4 Familienanamnese (FamilyMemberHistory)

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| FamilyMemberHistory.status | code | 1..1 | required: history-status | - |
| FamilyMemberHistory.patient | Reference | 1..1 | - | - |
| FamilyMemberHistory.date | dateTime | 0..1 | - | - |
| FamilyMemberHistory.relationship | CodeableConcept | 1..1 | example: v3-FamilyMember | - |
| FamilyMemberHistory.relationship.coding.extension | Extension | 0..1 | - | Verwandtschaftsgrad |
| FamilyMemberHistory.relationship.coding.extension | Extension | 0..1 | - | Verwandtschaftsverhaeltnis |
| FamilyMemberHistory.relationship.coding.extension | Extension | 0..1 | - | FamiliareLinie |
| FamilyMemberHistory.sex | CodeableConcept | 0..1 | extensible: administrative-gender | - |
| FamilyMemberHistory.reasonCode | CodeableConcept | 0..* | example: clinical-findings | - |
| FamilyMemberHistory.reasonCode.coding | Coding | 1..* | - | - |
| FamilyMemberHistory.reasonCode.coding | Coding | 0..1 | required: icd10gm | icd10-gm |
| FamilyMemberHistory.reasonCode.coding.system (icd10-gm) | uri | 1..1 | - | - |
| FamilyMemberHistory.reasonCode.coding.version (icd10-gm) | string | 1..1 | - | - |
| FamilyMemberHistory.reasonCode.coding.code (icd10-gm) | code | 1..1 | - | - |
| FamilyMemberHistory.reasonCode.coding | Coding | 0..1 | required: alphaid | alpha-id |
| FamilyMemberHistory.reasonCode.coding.system (alpha-id) | uri | 1..1 | - | - |
| FamilyMemberHistory.reasonCode.coding.code (alpha-id) | code | 1..1 | - | - |
| FamilyMemberHistory.reasonCode.coding | Coding | 0..1 | required: diagnoses-sct | sct |
| FamilyMemberHistory.reasonCode.coding.system (sct) | uri | 1..1 | - | - |
| FamilyMemberHistory.reasonCode.coding.code (sct) | code | 1..1 | - | - |
| FamilyMemberHistory.reasonCode.coding | Coding | 0..1 | required: orphanet | orphanet |
| FamilyMemberHistory.reasonCode.coding.system (orphanet) | uri | 1..1 | - | - |
| FamilyMemberHistory.reasonCode.coding.code (orphanet) | code | 1..1 | - | - |
| FamilyMemberHistory.reasonReference | Reference | 0..* | - | - |
| FamilyMemberHistory.condition | BackboneElement | 0..* | - | - |
| FamilyMemberHistory.condition.code | CodeableConcept | 1..1 | example: condition-code | - |
| FamilyMemberHistory.condition.code.coding | Coding | 1..* | - | - |
| FamilyMemberHistory.condition.code.coding | Coding | 0..1 | required: icd10gm | icd10-gm |
| FamilyMemberHistory.condition.code.coding.system (icd10-gm) | uri | 1..1 | - | - |
| FamilyMemberHistory.condition.code.coding.version (icd10-gm) | string | 1..1 | - | - |
| FamilyMemberHistory.condition.code.coding.code (icd10-gm) | code | 1..1 | - | - |
| FamilyMemberHistory.condition.code.coding | Coding | 0..1 | required: alphaid | alpha-id |
| FamilyMemberHistory.condition.code.coding.system (alpha-id) | uri | 1..1 | - | - |
| FamilyMemberHistory.condition.code.coding.code (alpha-id) | code | 1..1 | - | - |
| FamilyMemberHistory.condition.code.coding | Coding | 0..1 | required: diagnoses-sct | sct |
| FamilyMemberHistory.condition.code.coding.system (sct) | uri | 1..1 | - | - |
| FamilyMemberHistory.condition.code.coding.code (sct) | code | 1..1 | - | - |
| FamilyMemberHistory.condition.code.coding | Coding | 0..1 | required: orphanet | orphanet |
| FamilyMemberHistory.condition.code.coding.system (orphanet) | uri | 1..1 | - | - |
| FamilyMemberHistory.condition.code.coding.code (orphanet) | code | 1..1 | - | - |

### 2.5 GenomicStudyAnalysis (Procedure) -- NEW in 2026

Base: `genomics-reporting/genomic-study-analysis`

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| Procedure.extension | Extension | 0..* | - | method-type |
| Procedure.extension | Extension | 0..* | - | change-type |
| Procedure.extension | Extension | 0..1 | - | genome-build |
| Procedure.extension | Extension | 0..1 | - | title |
| Procedure.extension | Extension | 0..* | - | focus |
| Procedure.extension | Extension | 0..* | - | specimen |
| Procedure.extension | Extension | 0..1 | - | metrics |
| Procedure.extension | Extension | 0..1 | - | regions |
| Procedure.extension | Extension | 0..* | - | device |

### 2.6 GenomicStudy (Procedure) -- NEW in 2026

Base: `genomics-reporting/genomic-study`

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| Procedure.extension | Extension | 0..* | - | genomic-study-analysis |
| Procedure.status | code | 1..1 | required: event-status | - |
| Procedure.code | CodeableConcept | 0..1 | example: genomic-study-type-vs | - |
| Procedure.subject | Reference | 1..1 | - | - |
| Procedure.encounter | Reference | 0..1 | - | - |
| Procedure.performed[x] | dateTime | 0..1 | - | - |
| Procedure.reasonReference | Reference | 0..* | - | - |

**NOTE**: Replaces the old "untersuchte-region" (region-studied) profile.

### 2.7 Genotyp (Observation)

Base: `genomics-reporting/genotype`

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| Observation.status | code | 1..1 | required: observation-status | - |
| Observation.category | CodeableConcept | 2..* | preferred: observation-category | - |
| Observation.code | CodeableConcept | 1..1 | example: observation-codes | - |
| Observation.subject | Reference | 1..1 | - | - |
| Observation.encounter | Reference | 0..1 | - | - |
| Observation.effective[x] | Period, Timing, dateTime, instant | 0..1 | - | - |
| Observation.issued | instant | 0..1 | - | - |
| Observation.value[x] | CodeableConcept | 1..1 | example | - |
| Observation.derivedFrom | Reference | 0..* | - | - |
| Observation.component | BackboneElement | 0..* | - | - |
| Observation.component | BackboneElement | 0..1 | - | conclusion-string |
| Observation.component | BackboneElement | 0..* | - | gene-studied |
| Observation.component | BackboneElement | 0..* | - | cytogenetic-location |
| Observation.component | BackboneElement | 0..* | - | reference-sequence-assembly |

### 2.8 Medikationsempfehlung (Task)

Base: `genomics-reporting/medication-recommendation`

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| Task.status | code | 1..1 | required: task-status | - |
| Task.intent | code | 1..1 | required: task-intent | - |
| Task.code | CodeableConcept | 1..1 | required: LL4049-4 | - |
| Task.for | Reference | 1..1 | - | - |
| Task.encounter | Reference | 0..1 | - | - |
| Task.reasonCode | CodeableConcept | 0..1 | example | - |
| Task.reasonReference | Reference | 0..1 | - | - |

### 2.9 Mikrosatelliteninstabilitaet (Observation)

Base: `mii-pr-molgen-molekularer-biomarker` (child of molecular-biomarker)

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| Observation.status | code | 1..1 | required: observation-status | - |
| Observation.category | CodeableConcept | 2..* | preferred: observation-category | - |
| Observation.code | CodeableConcept | 1..1 | example: molecular-biomarker-code-vs | - |
| Observation.subject | Reference | 1..1 | - | - |
| Observation.encounter | Reference | 0..1 | - | - |
| Observation.effective[x] | Period, Timing, dateTime, instant | 0..1 | - | - |
| Observation.issued | instant | 0..1 | - | - |
| Observation.value[x] | CodeableConcept, Period, Quantity, Range, Ratio, SampledData, boolean, dateTime, integer, string, time | 0..1 | - | - |
| Observation.derivedFrom | Reference | 0..* | - | - |
| Observation.component | BackboneElement | 0..* | - | - |
| Observation.component | BackboneElement | 0..* | - | gene-studied |
| Observation.component | BackboneElement | 0..* | - | biomarker-category |

**NOTE**: `conclusion-string` component was REMOVED in 2026.0.x.

### 2.10 MolekulareKonsequenz (Observation) -- NEW in 2026

Base: `genomics-reporting/molecular-consequence`

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| Observation.extension | Extension | 0..* | - | workflow-relatedArtifact |
| Observation.category | CodeableConcept | 2..* | preferred: observation-category | - |
| Observation.code | CodeableConcept | 1..1 | example: observation-codes | - |
| Observation.subject | Reference | 0..1 | - | - |
| Observation.encounter | Reference | 0..1 | - | - |
| Observation.effective[x] | Period, Timing, dateTime, instant | 0..1 | - | - |
| Observation.issued | instant | 0..1 | - | - |
| Observation.derivedFrom | Reference | 1..* | - | - |
| Observation.component | BackboneElement | 0..* | - | - |
| Observation.component | BackboneElement | 0..1 | - | conclusion-string |
| Observation.component | BackboneElement | 0..* | - | evidence-level |
| Observation.component | BackboneElement | 0..1 | - | clinical-significance |
| Observation.component | BackboneElement | 0..1 | - | functional-effect |

**NOTE**: This profile now holds `functional-effect` (moved from DiagnostischeImplikation) and `amino-acid-change-type` logic (moved from Variante).

### 2.11 MolekularerBiomarker (Observation) -- Parent profile

Base: `genomics-reporting/molecular-biomarker`

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| Observation.category | CodeableConcept | 2..* | preferred: observation-category | - |
| Observation.code | CodeableConcept | 1..1 | example: molecular-biomarker-code-vs | - |
| Observation.subject | Reference | 0..1 | - | - |
| Observation.encounter | Reference | 0..1 | - | - |
| Observation.effective[x] | Period, Timing, dateTime, instant | 0..1 | - | - |
| Observation.issued | instant | 0..1 | - | - |
| Observation.derivedFrom | Reference | 0..* | - | - |
| Observation.component | BackboneElement | 0..* | - | - |
| Observation.component | BackboneElement | 0..* | - | gene-studied |
| Observation.component | BackboneElement | 0..* | - | biomarker-category |

### 2.12 MolekulargenetischerBefundbericht (DiagnosticReport)

Base: `genomics-reporting/genomic-report`

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| DiagnosticReport.extension | Extension | 0..* | - | recommended-action |
| DiagnosticReport.extension | Extension | 0..* | - | genomic-risk-assessment |
| DiagnosticReport.extension | Extension | 0..* | - | coded-note |
| DiagnosticReport.extension | Extension | 0..* | - | supporting-info |
| DiagnosticReport.extension | Extension | 0..* | - | genomic-study |
| DiagnosticReport.extension | Extension | 0..* | - | workflow-relatedArtifact |
| DiagnosticReport.status | code | 1..1 | required: diagnostic-report-status | - |
| DiagnosticReport.subject | Reference | 1..1 | - | - |
| DiagnosticReport.encounter | Reference | 0..1 | - | - |
| DiagnosticReport.issued | instant | 0..1 | - | - |
| DiagnosticReport.performer | Reference | 0..* | - | - |
| DiagnosticReport.resultsInterpreter | Reference | 0..* | - | - |
| DiagnosticReport.specimen | Reference | 0..* | - | - |
| DiagnosticReport.result | Reference | 0..* | - | - |
| DiagnosticReport.result | Reference | 0..* | - | diagnostic-implication |
| DiagnosticReport.result | Reference | 0..* | - | therapeutic-implication |
| DiagnosticReport.result | Reference | 0..* | - | variant |
| DiagnosticReport.result | Reference | 0..* | - | sequence-phase-relation |
| DiagnosticReport.result | Reference | 0..* | - | genotype |
| DiagnosticReport.result | Reference | 0..* | - | haplotype |
| DiagnosticReport.result | Reference | 0..* | - | biomarker |
| DiagnosticReport.media | BackboneElement | 0..* | - | - |
| DiagnosticReport.conclusion | string | 0..1 | - | - |
| DiagnosticReport.conclusionCode | CodeableConcept | 0..* | example: clinical-findings | - |

**NOTE**: Removed result slices from v1.x: `overall` (ergebnis-zusammenfassung), `region-studied`. New extensions: `genomic-study`, `genomic-risk-assessment`, `coded-note`, `workflow-relatedArtifact`. New result slices: `sequence-phase-relation`, `haplotype`, `biomarker`.

### 2.13 Mutationslast (Observation)

Base: `mii-pr-molgen-molekularer-biomarker` (child of molecular-biomarker)

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| Observation.status | code | 1..1 | required: observation-status | - |
| Observation.category | CodeableConcept | 2..* | preferred: observation-category | - |
| Observation.code | CodeableConcept | 1..1 | example: molecular-biomarker-code-vs | - |
| Observation.subject | Reference | 1..1 | - | - |
| Observation.encounter | Reference | 0..1 | - | - |
| Observation.effective[x] | Period, Timing, dateTime, instant | 0..1 | - | - |
| Observation.issued | instant | 0..1 | - | - |
| Observation.value[x] | CodeableConcept, Period, Quantity, Range, Ratio, SampledData, boolean, dateTime, integer, string, time | 0..1 | - | - |
| Observation.specimen | Reference | 0..1 | - | - |
| Observation.derivedFrom | Reference | 0..* | - | - |
| Observation.component | BackboneElement | 0..* | - | - |
| Observation.component | BackboneElement | 0..* | - | gene-studied |
| Observation.component | BackboneElement | 0..* | - | biomarker-category |

### 2.14 PolygenerRisikoScore (RiskAssessment) -- NEW, no existing test data

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| RiskAssessment.identifier | Identifier | 0..* | - | - |
| RiskAssessment.status | code | 1..1 | required: observation-status | - |
| RiskAssessment.code | CodeableConcept | 0..1 | - | - |
| RiskAssessment.subject | Reference | 1..1 | - | - |
| RiskAssessment.encounter | Reference | 0..1 | - | - |
| RiskAssessment.occurrence[x] | Period, dateTime | 0..1 | - | - |
| RiskAssessment.condition | Reference | 0..1 | - | - |
| RiskAssessment.basis | Reference | 0..* | - | - |
| RiskAssessment.prediction | BackboneElement | 0..* | - | - |
| RiskAssessment.prediction.extension | Extension | 0..1 | - | whenCodeableConcept |
| RiskAssessment.prediction.outcome | CodeableConcept | 0..1 | example | - |
| RiskAssessment.prediction.probability[x] | Range, decimal | 0..1 | - | - |
| RiskAssessment.prediction.qualitativeRisk | CodeableConcept | 0..1 | example: risk-probability | - |
| RiskAssessment.prediction.relativeRisk | decimal | 0..1 | - | - |
| RiskAssessment.prediction.when[x] | Period, Range | 0..1 | - | - |

### 2.15 TherapeutischeImplikation (Observation)

Base: `genomics-reporting/therapeutic-implication`

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| Observation.status | code | 1..1 | required: observation-status | - |
| Observation.category | CodeableConcept | 2..* | preferred: observation-category | - |
| Observation.code | CodeableConcept | 1..1 | example: observation-codes | - |
| Observation.subject | Reference | 1..1 | - | - |
| Observation.encounter | Reference | 0..1 | - | - |
| Observation.effective[x] | Period, Timing, dateTime, instant | 0..1 | - | - |
| Observation.issued | instant | 0..1 | - | - |
| Observation.derivedFrom | Reference | 1..* | - | - |
| Observation.derivedFrom | Reference | 0..* | - | variant |
| Observation.component | BackboneElement | 0..* | - | - |
| Observation.component | BackboneElement | 0..1 | - | conclusion-string |
| Observation.component | BackboneElement | 0..* | - | evidence-level |
| Observation.component | BackboneElement | 0..* | - | therapeutic-implication |
| Observation.component | BackboneElement | 0..* | - | phenotypic-treatment-context |
| Observation.component | BackboneElement | 0..* | - | medication-assessed |
| Observation.component | BackboneElement | 0..* | - | therapy-assessed |

### 2.16 Variante (Observation) -- Most complex profile (34 MS elements)

Base: `genomics-reporting/variant`

| Element Path | Type(s) | Card | Binding | Slice |
|---|---|---|---|---|
| Observation.status | code | 1..1 | required: observation-status | - |
| Observation.category | CodeableConcept | 2..* | preferred: observation-category | - |
| Observation.code | CodeableConcept | 1..1 | example: observation-codes | - |
| Observation.subject | Reference | 1..1 | - | - |
| Observation.effective[x] | Period, Timing, dateTime, instant | 0..1 | - | - |
| Observation.issued | instant | 0..1 | - | - |
| Observation.value[x] | CodeableConcept, Period, Quantity, Range, Ratio, SampledData, boolean, dateTime, integer, string, time | 0..1 | - | - |
| Observation.method | CodeableConcept | 0..1 | extensible: LL4048-6 | - |
| Observation.specimen | Reference | 0..1 | - | - |
| Observation.device | Reference | 0..1 | - | - |
| Observation.component | BackboneElement | 0..1 | - | conclusion-string |
| Observation.component | BackboneElement | 0..* | - | gene-studied |
| Observation.component | BackboneElement | 0..* | - | cytogenetic-location |
| Observation.component | BackboneElement | 0..* | - | reference-sequence-assembly |
| Observation.component | BackboneElement | 0..* | - | chromosome-identifier |
| Observation.component | BackboneElement | 0..1 | - | representative-coding-hgvs |
| Observation.component | BackboneElement | 0..1 | - | genomic-hgvs |
| Observation.component | BackboneElement | 0..1 | - | genomic-ref-seq |
| Observation.component | BackboneElement | 0..1 | - | representative-transcript-ref-seq |
| Observation.component | BackboneElement | 0..1 | - | exact-start-end |
| Observation.component | BackboneElement | 0..1 | - | inner-start-end |
| Observation.component | BackboneElement | 0..1 | - | outer-start-end |
| Observation.component | BackboneElement | 0..1 | - | ref-allele |
| Observation.component | BackboneElement | 0..1 | - | alt-allele |
| Observation.component | BackboneElement | 0..1 | - | coding-change-type |
| Observation.component | BackboneElement | 0..1 | - | genomic-source-class |
| Observation.component | BackboneElement | 0..1 | - | sample-allelic-frequency |
| Observation.component | BackboneElement | 0..1 | - | allelic-read-depth |
| Observation.component | BackboneElement | 0..1 | - | allelic-state |
| Observation.component | BackboneElement | 0..1 | - | variant-inheritance |
| Observation.component | BackboneElement | 0..* | - | variation-code |
| Observation.component | BackboneElement | 0..1 | - | representative-protein-hgvs |
| Observation.component | BackboneElement | 0..1 | - | copy-number |
| Observation.component | BackboneElement | 0..1 | - | variant-confidence-status |
| Observation.component | BackboneElement | 0..* | - | dna-region |
| Observation.component | BackboneElement | 0..1 | - | gene-fusion |
| Observation.component | BackboneElement | 0..1 | - | detection-limit |

**NOTE**: `amino-acid-change-type` component REMOVED in 2026.0.x (moved to MolekulareKonsequenz).

---

## 3. Existing Test Data Review

### 3.1 Anforderung.fsh

**Instances**: 2 (patient-3, patient-4)
**Profile**: anforderung-genetischer-test

| MS Element | Patient-3 | Patient-4 |
|---|---|---|
| basedOn | - | - |
| code | YES (SCT, LOINC, HGNC) | YES (SCT) |
| subject | YES | YES |
| encounter | - | - |
| authoredOn | YES | YES |
| requester | - | YES |
| reasonCode | YES | YES (2 entries) |
| reasonReference | - | YES |
| supportingInfo | YES (familienanamnese) | - |
| note | - | - |

**Gaps**: `encounter`, `basedOn`, `note` not covered. Patient-3 missing `requester`, `reasonReference`. Patient-4 missing `supportingInfo`.

**Status**: Mostly OK for 2026, no breaking changes.

### 3.2 DiagnosticReport.fsh (Befundbericht)

**Instances**: 2 (patient-3, patient-4)
**Profile**: molekulargenetischer-befundbericht

| MS Element | Patient-3 | Patient-4 |
|---|---|---|
| ext:recommended-action | YES (2 refs) | - |
| ext:genomic-risk-assessment | - | - |
| ext:coded-note | - | - |
| ext:supporting-info | YES | YES |
| ext:genomic-study | - | - |
| ext:workflow-relatedArtifact | - | - |
| status | YES | YES |
| subject | YES | YES |
| encounter | - | - |
| issued | - | - |
| performer | - | YES |
| resultsInterpreter | - | - |
| specimen | YES | YES |
| result (base) | - | - |
| result:diagnostic-implication | YES | YES |
| result:therapeutic-implication | YES | - |
| result:variant | YES | YES |
| result:sequence-phase-relation | - | - |
| result:genotype | YES | - |
| result:haplotype | - | - |
| result:biomarker | - | - |
| media | - | - |
| conclusion | YES | YES |
| conclusionCode | - | - |

**Gaps**: `encounter`, `issued`, `resultsInterpreter`, `conclusionCode`, `media` not covered. New extensions `genomic-study`, `genomic-risk-assessment`, `coded-note`, `workflow-relatedArtifact` not covered. New result slices `sequence-phase-relation`, `haplotype`, `biomarker` not covered.

**Breaking Changes Applied**: `result[overall]`, `result[region-studied]`, `result[tumor-mutation-burden]`, `result[microsatellite-instability]` already commented out. Need to add `ext:genomic-study` reference.

### 3.3 Variante.fsh

**Instances**: 2 (patient-3 BRAF, patient-4 CTNNA1) + 1 Device
**Profile**: variante

Patient-3 covers: status, category, code, subject, valueCodeableConcept, method, specimen, device, gene-studied, genomic-ref-seq, dna-region (x2), representative-coding-hgvs, representative-protein-hgvs, sample-allelic-frequency, cytogenetic-location, coding-change-type, variation-code

Patient-4 covers: status, category, code, subject, valueCodeableConcept, method, specimen, device, gene-studied, representative-transcript-ref-seq, representative-coding-hgvs, genomic-hgvs, genomic-ref-seq, representative-protein-hgvs, allelic-state, coding-change-type, cytogenetic-location

**Gaps** (not covered by either instance):
- effective[x], issued
- conclusion-string, reference-sequence-assembly, chromosome-identifier
- exact-start-end, inner-start-end, outer-start-end
- ref-allele, alt-allele
- genomic-source-class, allelic-read-depth, variant-inheritance
- copy-number, variant-confidence-status, gene-fusion, detection-limit

**Breaking Changes**: `amino-acid-change-type` already commented out with TODO note.

### 3.4 DiagnostischeImplikation.fsh

**Instances**: 2 (patient-3, patient-4)

Patient-3 covers: status, category, code, subject, derivedFrom[variant], component[conclusion-string]

Patient-4 covers: status, category, code, subject, performer, derivedFrom[variant], component[conclusion-string], component[clinical-significance], component[predicted-phenotype], extension[workflow-relatedArtifact]

**Gaps**:
- encounter, effective[x], issued
- component[evidence-level], component[mode-of-inheritance]

**Breaking Changes**: `functional-effect` already commented out with TODO note.

### 3.5 TherapeutischeImplikation.fsh

**Instances**: 1 (patient-3 only)

Covers: status, category, code, subject, derivedFrom, component[conclusion-string], component[medication-assessed] (3 entries)

**Gaps**:
- encounter, effective[x], issued
- component[evidence-level], component[therapeutic-implication], component[phenotypic-treatment-context], component[therapy-assessed]
- derivedFrom:variant (typed slice)
- Only 1 instance (patient-4 has no therapeutic implication)

### 3.6 FamilyMemberHistory.fsh (Familienanamnese)

**Instances**: 2 (patient-3, patient-4)

Both cover: status, patient, date, relationship (snomed + v3-RoleCode), sex, deceasedBoolean, reasonCode.coding[sct], reasonReference (pat-3 only), condition[0].code.coding[sct], condition[0].contributedToDeath

**Gaps**:
- relationship.coding extensions: Verwandtschaftsgrad, Verwandtschaftsverhaeltnis, FamiliareLinie
- reasonCode.coding slices: icd10-gm, alpha-id, orphanet
- condition.code.coding slices: icd10-gm, alpha-id, orphanet

### 3.7 Folgemassnahme.fsh

**Instances**: 1 (patient-3 only)

Covers: status, intent, basedOn, code (LOINC LL1037-2), for, reasonReference, reasonCode, description

**Gaps**: encounter. Only 1 instance.

### 3.8 Medikationsempfehlung.fsh

**Instances**: 1 (patient-3 only)

Covers: status, intent, basedOn, code (LOINC LL4049-4), for, reasonReference

**Gaps**: encounter, reasonCode. Only 1 instance.

### 3.9 Genotyp.fsh

**Instances**: 1 (patient-3 only)

Covers: status, category, code, subject, valueCodeableConcept, method, specimen, device, derivedFrom, component[gene-studied], component[cytogenetic-location]

**Gaps**: encounter, effective[x], issued, component[conclusion-string], component[reference-sequence-assembly]. Only 1 instance.

### 3.10 Mutationslast.fsh

**Instances**: 1 (patient-3 only)

Covers: status, category, code, subject, valueQuantity, specimen

**Gaps**: encounter, effective[x], issued, derivedFrom, component[gene-studied], component[biomarker-category]. Only 1 instance.

### 3.11 Mikrosatelliteninstabilitaet.fsh

**Instances**: 1 (patient-3 only)

Covers: status, category, code, subject, valueCodeableConcept, specimen

**Gaps**: encounter, effective[x], issued, derivedFrom, component[gene-studied], component[biomarker-category]. Only 1 instance.

**Breaking Changes**: `conclusion-string` already commented out.

### 3.12 UntersuchteRegion.fsh

**ALL COMMENTED OUT** - Correct. Profile removed in 2026.0.x, replaced by GenomicStudy + GenomicStudyAnalysis.

---

## 4. Example Instances from Module Repo

The module repo at `/Users/thome/code/fhir-profiling/kerndatensatzmodul-GenetischeTests/` contains:
- `input/fsh/ARCHIVED-STU2-Examples.fsh` - Archived old examples (not relevant for 2026)
- `input/fsh/additional-examples.fsh` - May contain newer examples

No generated example JSON files found in `fsh-generated/resources/`.

---

## 5. Profiles with NO Existing Test Instances

These profiles need entirely new FSH instances:

| Profile | Priority | Notes |
|---|---|---|
| **GenomicStudy** | HIGH | Replaces untersuchte-region. Must be referenced from Befundbericht via ext:genomic-study |
| **GenomicStudyAnalysis** | HIGH | Referenced from GenomicStudy via ext:genomic-study-analysis |
| **MolekulareKonsequenz** | HIGH | Holds amino-acid-change-type + functional-effect moved from Variante/DiagImplikation |
| **MolekularerBiomarker** | LOW | Parent profile; children (MSI, Mutationslast) already have instances. Could skip if child instances suffice. |
| **PolygenerRisikoScore** | MEDIUM | New RiskAssessment profile, referenced from Befundbericht via ext:genomic-risk-assessment |

---

## 6. Recommendations

### 6.1 New Instances Needed

1. **GenomicStudy** for Patient-3 (BRAF analysis):
   - status: #completed
   - code: genomic study type
   - subject: patient-3
   - performedDateTime
   - reasonReference: anforderung-1
   - extension[genomic-study-analysis]: reference to analysis instance

2. **GenomicStudyAnalysis** for Patient-3:
   - extension[method-type]: Sequencing
   - extension[genome-build]: GRCh37/GRCh38
   - extension[title]: "BRAF Exon 15 Analysis"
   - extension[specimen]: specimen-1
   - extension[device]: device-sequencer
   - extension[regions]: BRAF region info

3. **MolekulareKonsequenz** for Patient-3 (BRAF):
   - category: laboratory
   - code: molecular-consequence
   - subject: patient-3
   - derivedFrom: variante-1
   - component[functional-effect]: loss_of_function_variant or gain_of_function (BRAF V600E is gain-of-function)
   - component[conclusion-string]: "Missense mutation"

4. **MolekulareKonsequenz** for Patient-4 (CTNNA1):
   - derivedFrom: variante-1
   - component[functional-effect]: loss_of_function_variant
   - component[conclusion-string]: "Frameshift"

5. **PolygenerRisikoScore** for Patient-3 or Patient-4:
   - status: #final
   - subject: patient reference
   - prediction with outcome, probability, qualitativeRisk

### 6.2 Existing Instances to Update

1. **DiagnosticReport.fsh**: Add `extension[genomic-study]` references to new GenomicStudy instances. Add `result[biomarker]` references to MSI and Mutationslast. Consider adding `issued`, `encounter`.

2. **Variante.fsh**: Confirm `amino-acid-change-type` is fully removed (already done). No other changes needed.

3. **DiagnostischeImplikation.fsh**: Confirm `functional-effect` is fully removed (already done). No other changes needed.

4. **Mikrosatelliteninstabilitaet.fsh**: Confirm `conclusion-string` is fully removed (already done). No other changes needed.

5. **Bundle.fsh**: Add new instances to Patient-3 and Patient-4 bundles:
   - GenomicStudy instances (Procedure)
   - GenomicStudyAnalysis instances (Procedure)
   - MolekulareKonsequenz instances (Observation)
   - PolygenerRisikoScore instance (RiskAssessment)

### 6.3 Key Aliases Needed (already available in aliases.fsh)

- `$loinc`, `$sct`, `$observation-category`, `$HGNC`, `$RefSeq`, `$HGVS`, `$ChromLoc`, `$SO`, `$dbSNP`, `$tbd-codes-cs`, `$v2-0074`, `$diagnostic-report-status`, `$related-artifact-type`, `$DeviceNameType`, `$ucum`, `$atc`, `$v3-RoleCode`, `$administrative-gender`, `$HPO`

### 6.4 TestDataLabel Pattern

All instances must include:
```fsh
* insert TestDataLabel
```

Which expands to:
```fsh
* meta.security[+] = $v3-ActReason#HTEST "test health data"
```

### 6.5 Bundle Pattern

Use `AddBundleEntry(instanceId, resourceType)` RuleSet for bundle entries.

### 6.6 Naming Convention

Instance IDs follow pattern: `mii-exa-test-data-patient-{N}-molgen-{profile-short-name}-{sequence}`

Examples:
- `mii-exa-test-data-patient-3-molgen-genomic-study-1`
- `mii-exa-test-data-patient-3-molgen-genomic-study-analysis-1`
- `mii-exa-test-data-patient-3-molgen-molekulare-konsequenz-1`
- `mii-exa-test-data-patient-3-molgen-polygener-risiko-score-1`
