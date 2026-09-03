# MTB (Molekulares Tumorboard) Module - Research Report

## 1. Module Metadata

- **Package**: `de.medizininformatikinitiative.kerndatensatz.mtb`
- **Version**: 2026.0.0
- **Canonical**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb`
- **FHIR Version**: 4.0.1
- **Repository**: `kerndatensatzmodul-molekulares-tumorboard`

## 2. Dependencies

The MTB module has extensive cross-module dependencies:
- `de.basisprofil.r4`: 1.5.4
- `de.medizininformatikinitiative.kerndatensatz.base`: 2026.0.0
- `de.medizininformatikinitiative.kerndatensatz.biobank`: 2026.0.0
- `de.medizininformatikinitiative.kerndatensatz.consent`: 2025.0.4
- `de.medizininformatikinitiative.kerndatensatz.medikation`: 2026.0.0
- `de.medizininformatikinitiative.kerndatensatz.meta`: 2026.0.0
- **`de.medizininformatikinitiative.kerndatensatz.molgen`: 2026.0.4** (key dependency)
- **`de.medizininformatikinitiative.kerndatensatz.onkologie`: 2026.0.1** (key dependency)
- `de.medizininformatikinitiative.kerndatensatz.patho`: 2026.0.0
- `de.medizininformatikinitiative.kerndatensatz.studie`: 2026.0.2
- `hl7.fhir.uv.genomics-reporting`: 3.0.0

**Cross-module profile inheritance**:
- Many profiles inherit from MolGen (variante, diagnostische-implikation, therapeutische-implikation, molekularer-biomarker, mikrosatelliteninstabilitaet, genomic-study-analysis)
- Many profiles inherit from Onkologie (diagnose-primaertumor, systemische-therapie, tumorkonferenz, verlauf, therapieempfehlung-medikation, therapieempfehlung-kombinationstherapie)
- One profile inherits from Studie (studie)
- One profile inherits from Genomics Reporting (genomic-study)

## 3. Profile Inventory (48 profiles total)

### A. Behandlungsepisode (Treatment Episode) - 7 profiles

| # | Profile Name | Base Type | Parent Profile | MS Count |
|---|-------------|-----------|----------------|----------|
| 1 | MII_PR_MTB_Behandlungsepisode | ClinicalImpression | FHIR ClinicalImpression | 16 |
| 2 | MII_PR_MTB_Consent_Given | Observation | FHIR Observation | 10 |
| 3 | MII_PR_MTB_Diagnose_Primaertumor | Condition | Onko Diagnose Primaertumor | 13 |
| 4 | MII_PR_MTB_Oncotree | Observation | FHIR Observation | 9 |
| 5 | MII_PR_MTB_Systemische_Vortherapie | Procedure | Onko Systemische Therapie | 7 |
| 6 | MII_PR_MTB_Tumorausbreitung | Observation | FHIR Observation | 14 |
| 7 | MII_PR_MTB_WHO_Grad_Tumor_ZNS | Observation | FHIR Observation | 9 |

### B. NGS-Bericht (NGS Report / Diagnostics) - 27 profiles

| # | Profile Name | Base Type | Parent Profile | MS Count |
|---|-------------|-----------|----------------|----------|
| 8 | MII_PR_MTB_NGS_Bericht | DiagnosticReport | FHIR DiagnosticReport | 18 |
| 9 | MII_PR_MTB_Genomic_Study | Procedure | Genomics Reporting genomic-study | 9 |
| 10 | MII_PR_MTB_Genomic_Study_Analysis | Procedure | MolGen Genomic Study Analysis | 8 |
| 11 | MII_PR_MTB_Einfache_Variante | Observation | MolGen Variante | 6 |
| 12 | MII_PR_MTB_Copy_Number_Variant | Observation | MolGen Variante | 27 |
| 13 | MII_PR_MTB_DNA_Fusion | Observation | MolGen Variante | 21 |
| 14 | MII_PR_MTB_RNA_Fusion | Observation | MolGen Variante | 26 |
| 15 | MII_PR_MTB_RNA_Seq | Observation | MolGen Variante | 9 |
| 16 | MII_PR_MTB_Diagnostische_Implikation | Observation | MolGen Diagnostische Implikation | 3 |
| 17 | MII_PR_MTB_Therapeutische_Implikation | Observation | MolGen Therapeutische Implikation | 4 |
| 18 | MII_PR_MTB_Molekularer_Biomarker | Observation | MolGen Molekularer Biomarker | 3 |
| 19 | MII_PR_MTB_Mutationslast | Observation | MTB Molekularer Biomarker | 5 |
| 20 | MII_PR_MTB_Mikrosatelliteninstabilitaet | Observation | MTB Molekularer Biomarker | 5 |
| 21 | MII_PR_MTB_HRD_Score | Observation | MTB Molekularer Biomarker | 10 |
| 22 | MII_PR_MTB_BRCAness | Observation | MTB Molekularer Biomarker | 6 |
| 23 | MII_PR_MTB_Ploidie | Observation | MTB Molekularer Biomarker | 4 |
| 24 | MII_PR_MTB_BIOMARKER_HER2_STATUS | Observation | MTB Molekularer Biomarker | 0 |
| 25 | MII_PR_MTB_Molecular_Pathology_Report | DiagnosticReport | FHIR DiagnosticReport | 9 |
| 26 | MII_PR_MTB_Immunohistochemistry | Observation | MTB Molekularer Biomarker | 7 |
| 27 | MII_PR_MTB_IMMUNOHISTOCHEMISTRY_HER2 | Observation | MTB Immunohistochemistry | 1 |
| 28 | MII_PR_MTB_Immunohistochemistry_PDL1 | Observation | MTB Immunohistochemistry | 16 |
| 29 | MII_PR_MTB_Immunohistochemistry_Phosphorylation | Observation | MTB Immunohistochemistry | 4 |
| 30 | MII_PR_MTB_Immunohistochemistry_MMR | Observation | MTB Molekularer Biomarker | 10 |
| 31 | MII_PR_MTB_Immunohistochemistry_MSI | Observation | MolGen Mikrosatelliteninstabilitaet | 5 |
| 32 | MII_PR_MTB_Biomarker_InSituHybridization | Observation | MTB Molekularer Biomarker | 9 |
| 33 | MII_PR_MTB_INSITUHYBRIDIZATION_HER2 | Observation | MTB InSituHybridization | 4 |
| 34 | MII_PR_MTB_Tumorzellgehalt | Observation | FHIR Observation | 5 |

### C. Beschluss/Therapieplan (Decision/Therapy Plan) - 8 profiles

| # | Profile Name | Base Type | Parent Profile | MS Count |
|---|-------------|-----------|----------------|----------|
| 35 | MII_PR_MTB_Therapieplan | CarePlan | Onko Tumorkonferenz | 13 |
| 36 | MII_PR_MTB_Therapieempfehlung | MedicationRequest | Onko Therapieempfehlung Medikation | 4 |
| 37 | MII_PR_MTB_Therapieempfehlung_Kombination | RequestGroup | Onko Therapieempfehlung Kombinationstherapie | 5 |
| 38 | MII_PR_MTB_Studieneinschluss_Anfrage | ServiceRequest | FHIR ServiceRequest | 11 |
| 39 | MII_PR_MTB_Studie | ResearchStudy | Studie Studie | 2 |
| 40 | MII_PR_MTB_Humangenetische_Beratung_Auftrag | ServiceRequest | FHIR ServiceRequest | 5 |
| 41 | MII_PR_MTB_Histologie_Evaluation_Auftrag | ServiceRequest | FHIR ServiceRequest | 6 |
| 42 | MII_PR_MTB_Biopsie_Auftrag | ServiceRequest | FHIR ServiceRequest | 6 |

### D. Follow-Up - 6 profiles

| # | Profile Name | Base Type | Parent Profile | MS Count |
|---|-------------|-----------|----------------|----------|
| 43 | MII_PR_MTB_Follow_Up_ClinicalImpression | ClinicalImpression | FHIR ClinicalImpression | 13 |
| 44 | MII_PR_MTB_Systemische_Therapie | Procedure | Onko Systemische Therapie | 4 |
| 45 | MII_PR_MTB_Systemische_Therapie_Medication_Statement | MedicationStatement | Onko Systemische Therapie Medikation | 1 |
| 46 | MII_PR_MTB_Response_Befund | Observation | Onko Verlauf | 7 |
| 47 | MII_PR_MTB_Antrag_Kostenuebernahme | Claim | FHIR Claim | 24 |
| 48 | MII_PR_MTB_Antwort_Kostenuebernahme | ClaimResponse | FHIR ClaimResponse | 12 |

### Extensions (11 total)

| Extension | Purpose |
|-----------|---------|
| mii-ex-mtb-antrag-kostenuebernahme-antragsstadium | Claim application stage |
| mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund | Rejection reason |
| mii-ex-mtb-antwort-kostenuebernahme-entscheidung | Decision |
| mii-ex-mtb-diagnose | Diagnosis reference |
| mii-ex-mtb-empfehlung-evidenzgraduierung | Evidence grading |
| mii-ex-mtb-empfehlung-prioritaet | Priority |
| mii-ex-mtb-empfehlung-publikation | Publication reference |
| mii-ex-mtb-genomic-study-analysis-qc | QC metrics |
| mii-ex-mtb-leitlinie-dokumentation | Guideline documentation |
| mii-ex-mtb-leitlinienbehandlung-status | Guideline treatment status |
| mii-ex-mtb-ngs-bericht-genomic-study | NGS report genomic study reference |

---

## 4. MS Element Details (Key Profiles)

### MII_PR_MTB_Behandlungsepisode (ClinicalImpression)
- `meta`, `meta.profile`
- `extension` (Leitlinienbehandlung-Status, 0..1)
- `effective[x]` (Period, 1..1) with `.end`
- `problem` (Reference, 0..1) - primary diagnosis
- `investigation` sliced: NgsBericht (0..1), MolekularPathologieBefund (0..1), ECOG (0..*), Einwilligung (0..*), KrankengeschichteFamilie (0..1)
- `supportingInfo` sliced: Vortherapie (Reference 0..*), Vorbefund (Reference 0..*) with extension for Leitlinie-Dokumentation, Therapieplan (Reference 0..1)

### MII_PR_MTB_NGS_Bericht (DiagnosticReport)
- `meta`, `meta.profile`
- `subject` (Reference)
- `issued`
- `specimen` (Reference)
- `result` sliced into: Mutationslast (0..1), MSI (0..1), BRCAness (0..1), HRDScore (0..1), Ploidie (0..1), EinfacheVariante (0..*), CopyNumberVariant (0..*), DNAFusion (0..*), RNAFusion (0..*), RNASeq (0..*), TherapeutischeImplikation (0..*), DiagnostischeImplikation (0..*), MolekularerBiomarker (0..1)

### MII_PR_MTB_Therapieplan (CarePlan)
- `meta`
- `description`
- `supportingInfo` Behandlungsepisode (Reference 0..1)
- `activity` sliced: Therapieempfehlung (0..*), Studieneinschlussempfehlung (0..1), HumangenetischeBeratung (0..1), HistologieEvaluation (0..*), Biopsie (0..*)

### MII_PR_MTB_Therapieempfehlung (MedicationRequest)
- `extension`: Prioritaet, Evidenzgraduierung, Publikation
- `reasonReference` (Reference 0..*)

### MII_PR_MTB_Follow_Up_ClinicalImpression (ClinicalImpression)
- `meta`, `meta.profile`
- `status`, `statusReason` (with binding to follow-up-status)
- `code` (1..*)
- `subject`
- `effective[x]` (dateTime)
- `previous` (Reference 1..*)
- `investigation`
- `supportingInfo` sliced: UmgesetzteTherapien (Reference 0..*), AntraegeKostenuebernahme (Reference 0..*)

### MII_PR_MTB_Einfache_Variante (Observation, extends MolGen Variante)
- `meta`, `meta.profile`
- `identifier`
- `focus` (Reference)
- `component.code`, `component.value[x]` (gene-studied, protein-hgvs from parent)

### MII_PR_MTB_Copy_Number_Variant (Observation, extends MolGen Variante)
- `meta`, `meta.profile`, `identifier`, `focus`
- `component` slices: gene-studied, copy-number, relative-copy-number, copy-number-allele-a, copy-number-allele-b, reported-focality, cnv-type, copy-number-neutral-loh

### MII_PR_MTB_Antrag_Kostenuebernahme (Claim)
- `meta`, `meta.profile`
- `status` (fixed: active)
- `type` (required binding)
- `use`, `patient`, `created`, `provider`
- `priority` (fixed: normal)
- `related` with claim + relationship
- `prescription` (Reference)
- `careTeam` (ZPMBeteiligung, 1..1) with provider and responsible
- `insurance` with sequence, focal (fixed: true), coverage, claimResponse

### MII_PR_MTB_Tumorausbreitung (Observation)
- `meta`, `meta.profile`
- `category` with 2 fixed SNOMED codings (473302008, 93771000119109)
- `code` with fixed SNOMED 371508000
- `subject` (1..*)
- `encounter`
- `effective[x]` (dateTime, 1..*)
- `value[x]` (CodeableConcept, 1..*) with required binding to tumorausbreitung VS

### MII_PR_MTB_Tumorzellgehalt (Observation)
- `meta`, `meta.profile`
- `value[x]` (Quantity, 1..*) with `.value` (1..*)
- `method` (1..*) with preferred binding to bestimmungsmethode-tumorzellgehalt VS

---

## 5. Existing Examples in Module Repository

The module repo has a comprehensive "Kim Musterperson" case (ovarian cancer patient). Examples in:
`/kerndatensatzmodul-molekulares-tumorboard/input/fsh/examples/`

Profiles covered by examples:
- **Behandlungsepisode**: `mii-exa-mtb-kim-musterperson-behandlungsepisode`
- **Consent_Given**: `mii-exa-mtb-kim-musterperson-aufklaerung`
- **Diagnose_Primaertumor**: `mii-exa-mtb-kim-diagnose`
- **Tumorausbreitung**: `mii-exa-mtb-kim-tumorausbreitung`
- **Oncotree**: `mii-exa-mtb-kim-oncotree`
- **NGS_Bericht**: `mii-exa-mtb-kim-musterperson-ngs-bericht`
- **Genomic_Study**: `mii-exa-mtb-kim-musterperson-genomic-study`
- **Genomic_Study_Analysis**: 3 instances (TSO500, HLA, IHC)
- **Einfache_Variante**: TP53, PIK3R1
- **Copy_Number_Variant**: CCNE1
- **Diagnostische_Implikation**: TP53
- **Therapeutische_Implikation**: PIK3R1
- **Therapieplan**: `mii-exa-mtb-kim-musterperson-therapieplan`
- **Therapieempfehlung**: Mirvetuximab, Trastuzumab, Adavosertib, Carboplatin, Lunresertib, Camonsertib, Cobimetinib
- **Therapieempfehlung_Kombination**: Adavosertib+Carboplatin, Lunresertib+Camonsertib
- **Studieneinschluss_Anfrage**: CLDN6, TEDOVA, CCNE1
- **Studie**: CLDN6, TEDOVA, CCNE1
- **Follow_Up_ClinicalImpression**: 1 instance
- **Systemische_Therapie**: Mirvetuximab soravtansine therapy
- **Systemische_Therapie_Medication_Statement**: 6 cycles Mirvetuximab
- **Systemische_Vortherapie**: Carboplatin/Doxorubicin, Mirvetuximab
- **Response_Befund**: 2 RECIST assessments
- **Antrag_Kostenuebernahme**: 1 Mirvetuximab claim
- **Antwort_Kostenuebernahme**: 1 claim response
- **Molecular_Pathology_Report**: 1 report
- **Immunohistochemistry**: HER2, Folat-Ra, Trop2, CA125, Pax8, WT1, ER, PR, p53 (9 instances)
- **InSituHybridization_HER2**: 1 FISH instance
- **Tumorzellgehalt**: Aszites specimen
- **Humangenetische_Beratung_Auftrag**: 1 instance
- **Histologie_Evaluation_Auftrag**: 1 instance
- **Biopsie_Auftrag**: 1 rebiopsie

### Key RuleSets from Module Examples
```fsh
RuleSet: BeschlussPrioritaet(prio)
* extension[Prioritaet].valuePositiveInt = {prio}

RuleSet: BeschlussSubPrioritaet(prio)
* extension[Prioritaet].valueDecimal = {prio}

RuleSet: BeschlussEvidenzgrad(grad)
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #{grad}

RuleSet: BeschlussEvidenzPublikation(quelle, id)
* extension[Publikation][+].valueIdentifier.system = "{quelle}"
* extension[Publikation][=].valueIdentifier.value = "{id}"
```

---

## 6. Existing Test Data in mii-testdata

**There is NO existing MTB test data in the mii-testdata repo.** No `modul-mtb/` directory exists.

---

## 7. Recommendations

### File Structure

```
modul-mtb/
  MtbAliases.fsh          - MTB-specific aliases and RuleSets
  Behandlungsepisode.fsh  - ClinicalImpression, Consent, Diagnose, Oncotree, Tumorausbreitung, WHO-Grad
  NgsBericht.fsh          - DiagnosticReport, GenomicStudy, GenomicStudyAnalysis, Varianten, Biomarker
  Therapieplan.fsh        - CarePlan, Therapieempfehlung, Studieneinschluss, Auftraege
  FollowUp.fsh            - Follow-Up ClinicalImpression, Systemische Therapie, Response, Kostenuebernahme
```

### Instance Creation Strategy

Create ONE instance per profile (minimum). For profiles with many MS elements or complex invariants, create MULTIPLE instances to achieve full MS coverage.

### Naming Convention
- Instance IDs: `mii-exa-test-data-mtb-{profile-short-name}-{number}`
- Use `* insert TestDataLabel` on all instances

### Key Implementation Notes

1. **Profile inheritance is deep**: Many MTB profiles inherit from MolGen or Onko profiles. Test instances must satisfy ALL constraints from the full inheritance chain.
2. **The module examples use `Example_Header` RuleSet** for `meta.profile`. In testdata, use `TestDataLabel` instead (sets `meta.security` with HTEST).
3. **Sliced elements are heavily used** in ClinicalImpression.investigation, ClinicalImpression.supportingInfo, CarePlan.activity, DiagnosticReport.result, and Observation.component.
4. **Fixed values exist** on several profiles (e.g., Claim.status=active, specific SNOMED codes).
5. **Cross-module references**: MTB instances should reference existing test data Patient, Encounter, and Onkologie data where appropriate.
6. **Aliases needed**: MTB-specific aliases from the module's `Aliases.fsh` need to be added (either to testdata aliases.fsh or a separate MtbAliases.fsh).
