// ============================================================================
// MII MTB Module - NGS Bericht (Diagnostics) - 27 profiles
// ============================================================================

// =============================================================================
// 8. MII_PR_MTB_NGS_Bericht (DiagnosticReport)
// =============================================================================
Instance: mii-exa-test-data-mtb-ngs-bericht-1
InstanceOf: MII_PR_MTB_NGS_Bericht
Usage: #example
Title: "MTB NGS Bericht"
Description: "Test instance for NGS report with all result slices populated"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht"
* status = #final
* category = $hl7-v2-0074#GE "Genetics"
* code = $loinc#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-test-data-patient-1)
* issued = "2024-03-15T00:00:00.000Z"
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* result[TumorMutionalBurden] = Reference(mii-exa-test-data-mtb-mutationslast-1)
* result[MSI] = Reference(mii-exa-test-data-mtb-mikrosatelliteninstabilitaet-1)
* result[BRCAness] = Reference(mii-exa-test-data-mtb-brcaness-1)
* result[HRDScore] = Reference(mii-exa-test-data-mtb-hrd-score-1)
* result[Ploidie] = Reference(mii-exa-test-data-mtb-ploidie-1)
* result[EinfacheVariante][+] = Reference(mii-exa-test-data-mtb-einfache-variante-1)
* result[CopyNumberVariant][+] = Reference(mii-exa-test-data-mtb-copy-number-variant-1)
* result[DNAFusion][+] = Reference(mii-exa-test-data-mtb-dna-fusion-1)
* result[RNAFusion][+] = Reference(mii-exa-test-data-mtb-rna-fusion-1)
* result[RNASeq][+] = Reference(mii-exa-test-data-mtb-rna-seq-1)
* result[+] = Reference(mii-exa-test-data-mtb-therapeutische-implikation-1)
* result[+] = Reference(mii-exa-test-data-mtb-diagnostische-implikation-1)

// =============================================================================
// 9. MII_PR_MTB_Genomic_Study (Procedure)
// =============================================================================
Instance: mii-exa-test-data-mtb-genomic-study-1
InstanceOf: MII_PR_MTB_Genomic_Study
Usage: #example
Title: "MTB Genomic Study"
Description: "Test instance for MTB genomic study procedure"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study"
* status = #completed
* subject = Reference(mii-exa-test-data-patient-1)
* extension[genomic-study-analysis][+].valueReference = Reference(mii-exa-test-data-mtb-genomic-study-analysis-1)

// =============================================================================
// 10. MII_PR_MTB_Genomic_Study_Analysis (Procedure)
// =============================================================================
Instance: mii-exa-test-data-mtb-genomic-study-analysis-1
InstanceOf: MII_PR_MTB_Genomic_Study_Analysis
Usage: #example
Title: "MTB Genomic Study Analysis"
Description: "Test instance for MTB genomic study analysis with method and change types"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis"
* status = #completed
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* subject = Reference(mii-exa-test-data-patient-1)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs#ngs-mps "Next-Generation (NGS)/Massively parallel sequencing (MPS)"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-change-type"
* extension[=].valueCodeableConcept = http://www.sequenceontology.org#SO:0001483 "SNV"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-genome-build"
* extension[=].valueCodeableConcept = $loinc#LA26806-2 "GRCh38"

// =============================================================================
// 11. MII_PR_MTB_Einfache_Variante (Observation, extends MolGen Variante)
// =============================================================================
Instance: mii-exa-test-data-mtb-einfache-variante-1
InstanceOf: MII_PR_MTB_Einfache_Variante
Usage: #example
Title: "MTB Einfache Variante - EGFR"
Description: "Test instance for simple variant (EGFR L858R) with all MS elements"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* subject = Reference(mii-exa-test-data-patient-1)
* identifier.system = "https://www.charite.de/fhir/sid/mtb-variante"
* identifier.value = "VAR-EGFR-001"
* focus = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:3236 "EGFR"
* component[representative-protein-hgvs].code = $loinc#48005-3 "Amino acid change (pHGVS)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_005219.2:p.Leu858Arg

// =============================================================================
// 12. MII_PR_MTB_Copy_Number_Variant (Observation, extends MolGen Variante)
// =============================================================================
Instance: mii-exa-test-data-mtb-copy-number-variant-1
InstanceOf: MII_PR_MTB_Copy_Number_Variant
Usage: #example
Title: "MTB Copy Number Variant - ERBB2"
Description: "Test instance for CNV (ERBB2 amplification) with all MS component slices"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* subject = Reference(mii-exa-test-data-patient-1)
* identifier.system = "https://www.charite.de/fhir/sid/mtb-variante"
* identifier.value = "CNV-ERBB2-001"
* focus = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:3430 "ERBB2"
* component[cnv-type].code = $bwhc-cnv-type#type
* component[cnv-type].valueCodeableConcept = $bwhc-cnv-type#high-level-gain "high-level-gain"
* component[copy-number].code = $loinc#82155-3 "Genomic structural variant copy number"
* component[copy-number].valueQuantity.value = 12
* component[copy-number].valueQuantity.system = $ucum
* component[copy-number].valueQuantity.code = #1
// code inherited from profile pattern (mii-cs-mtb-molekulare-biomarker#relative-copy-number)
* component[relative-copy-number].valueQuantity.value = 3.8
* component[relative-copy-number].valueQuantity.system = $ucum
* component[relative-copy-number].valueQuantity.code = #1

// =============================================================================
// 13. MII_PR_MTB_DNA_Fusion (Observation, extends MolGen Variante)
// =============================================================================
Instance: mii-exa-test-data-mtb-dna-fusion-1
InstanceOf: MII_PR_MTB_DNA_Fusion
Usage: #example
Title: "MTB DNA Fusion - EML4-ALK"
Description: "Test instance for DNA fusion variant (EML4-ALK)"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-dna-fusion"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* subject = Reference(mii-exa-test-data-patient-1)
* identifier.system = "https://www.charite.de/fhir/sid/mtb-variante"
* identifier.value = "FUS-DNA-EML4ALK-001"
* focus = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* component[gene-studied][+].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied][=].valueCodeableConcept = $HGNC#HGNC:427 "ALK"

// =============================================================================
// 14. MII_PR_MTB_RNA_Fusion (Observation, extends MolGen Variante)
// =============================================================================
Instance: mii-exa-test-data-mtb-rna-fusion-1
InstanceOf: MII_PR_MTB_RNA_Fusion
Usage: #example
Title: "MTB RNA Fusion - BCR-ABL1"
Description: "Test instance for RNA fusion variant (BCR-ABL1)"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-fusion"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* subject = Reference(mii-exa-test-data-patient-1)
* identifier.system = "https://www.charite.de/fhir/sid/mtb-variante"
* identifier.value = "FUS-RNA-BCRABL1-001"
* focus = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* component[gene-studied][+].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied][=].valueCodeableConcept = $HGNC#HGNC:76 "ABL1"

// =============================================================================
// 15. MII_PR_MTB_RNA_Seq (Observation, extends MolGen Variante)
// =============================================================================
Instance: mii-exa-test-data-mtb-rna-seq-1
InstanceOf: MII_PR_MTB_RNA_Seq
Usage: #example
Title: "MTB RNA Seq"
Description: "Test instance for RNA sequencing observation"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-seq"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* subject = Reference(mii-exa-test-data-patient-1)
* identifier.system = "https://www.charite.de/fhir/sid/mtb-variante"
* identifier.value = "RNASEQ-001"
* focus = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:7989 "NTRK1"

// =============================================================================
// 16. MII_PR_MTB_Diagnostische_Implikation (Observation, extends MolGen)
// =============================================================================
Instance: mii-exa-test-data-mtb-diagnostische-implikation-1
InstanceOf: MII_PR_MTB_Diagnostische_Implikation
Usage: #example
Title: "MTB Diagnostische Implikation"
Description: "Test instance for diagnostic implication of EGFR variant"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnostische-implikation"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $TBD#diagnostic-implication "Diagnostic Implication"
* subject = Reference(mii-exa-test-data-patient-1)
* derivedFrom = Reference(mii-exa-test-data-mtb-einfache-variante-1)
* component[clinical-significance].code = $loinc#53037-8
* component[clinical-significance].valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"

// =============================================================================
// 17. MII_PR_MTB_Therapeutische_Implikation (Observation, extends MolGen)
// =============================================================================
Instance: mii-exa-test-data-mtb-therapeutische-implikation-1
InstanceOf: MII_PR_MTB_Therapeutische_Implikation
Usage: #example
Title: "MTB Therapeutische Implikation"
Description: "Test instance for therapeutic implication with evidence grading"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapeutische-implikation"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $TBD#therapeutic-implication "Therapeutic Implication"
* subject = Reference(mii-exa-test-data-patient-1)
* derivedFrom = Reference(mii-exa-test-data-mtb-einfache-variante-1)
* component[conclusion-string].code = $TBD#conclusion-string
* component[conclusion-string].valueString = "EGFR L858R mutation predicts sensitivity to EGFR TKI therapy (EL m1A)."
* component[medication-assessed].code = $loinc#51963-7 "Medication assessed [ID]"
* component[medication-assessed].valueCodeableConcept = $atc#L01EB01 "Gefitinib"
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m1A

// =============================================================================
// 18. MII_PR_MTB_Molekularer_Biomarker (Observation, extends MolGen)
// =============================================================================
Instance: mii-exa-test-data-mtb-molekularer-biomarker-1
InstanceOf: MII_PR_MTB_Molekularer_Biomarker
Usage: #example
Title: "MTB Molekularer Biomarker"
Description: "Test instance for molecular biomarker base profile"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-test-data-patient-1)
* valueCodeableConcept = $loinc#LA9633-4 "Present"

// =============================================================================
// 19. MII_PR_MTB_Mutationslast (Observation, extends MTB Molekularer Biomarker)
// =============================================================================
Instance: mii-exa-test-data-mtb-mutationslast-1
InstanceOf: MII_PR_MTB_Mutationslast
Usage: #example
Title: "MTB Mutationslast (TMB)"
Description: "Test instance for tumor mutational burden"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mutationslast"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $loinc#94076-7 "Mutations/Megabase [# Ratio] in Tumor"
* subject = Reference(mii-exa-test-data-patient-1)
* valueQuantity.value = 14.2
* valueQuantity.unit = "mutations per megabase"
* valueQuantity.system = $ucum
* valueQuantity.code = #{Mutations}/1000000{Base}
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"

// =============================================================================
// 20. MII_PR_MTB_Mikrosatelliteninstabilitaet (Observation, extends MTB Molekularer Biomarker)
// =============================================================================
Instance: mii-exa-test-data-mtb-mikrosatelliteninstabilitaet-1
InstanceOf: MII_PR_MTB_Mikrosatelliteninstabilitaet
Usage: #example
Title: "MTB Mikrosatelliteninstabilitaet (MSI)"
Description: "Test instance for microsatellite instability"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $loinc#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* subject = Reference(mii-exa-test-data-patient-1)
* valueQuantity.value = 0.15
* valueQuantity.unit = "ratio"
* valueQuantity.system = $ucum
* valueQuantity.code = #1

// =============================================================================
// 21. MII_PR_MTB_HRD_Score (Observation, extends MTB Molekularer Biomarker)
// =============================================================================
Instance: mii-exa-test-data-mtb-hrd-score-1
InstanceOf: MII_PR_MTB_HRD_Score
Usage: #example
Title: "MTB HRD Score"
Description: "Test instance for homologous recombination deficiency score with sub-scores"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-hrd-score"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
// code inherited from profile pattern (loinc#107286-7)
* subject = Reference(mii-exa-test-data-patient-1)
* valueInteger = 42
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
// component codes inherited from profile patterns
* component[LST].valueInteger = 15
* component[TAI].valueInteger = 14
* component[LOH].valueInteger = 13

// =============================================================================
// 22. MII_PR_MTB_BRCAness (Observation, extends MTB Molekularer Biomarker)
// =============================================================================
Instance: mii-exa-test-data-mtb-brcaness-1
InstanceOf: MII_PR_MTB_BRCAness
Usage: #example
Title: "MTB BRCAness"
Description: "Test instance for BRCAness assessment"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-brcaness"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
// code inherited from profile pattern (mii-cs-mtb-molekulare-biomarker#brcaness)
* subject = Reference(mii-exa-test-data-patient-1)
* valueQuantity.value = 0.72
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"

// =============================================================================
// 23. MII_PR_MTB_Ploidie (Observation, extends MTB Molekularer Biomarker)
// =============================================================================
Instance: mii-exa-test-data-mtb-ploidie-1
InstanceOf: MII_PR_MTB_Ploidie
Usage: #example
Title: "MTB Ploidie"
Description: "Test instance for ploidy assessment"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ploidie"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-test-data-patient-1)
* valueQuantity.value = 2.3
* valueQuantity.system = $ucum
* valueQuantity.code = #1

// =============================================================================
// 24. MII_PR_MTB_BIOMARKER_HER2_STATUS (Observation, extends MTB Molekularer Biomarker)
// =============================================================================
Instance: mii-exa-test-data-mtb-biomarker-her2-status-1
InstanceOf: MII_PR_MTB_BIOMARKER_HER2_STATUS
Usage: #example
Title: "MTB Biomarker HER2 Status"
Description: "Test instance for HER2 biomarker status"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biomarker-her2-status"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $loinc#48676-1 "HER2 [Interpretation] in Tissue"
* subject = Reference(mii-exa-test-data-patient-1)
* valueCodeableConcept = $loinc#LA11842-4 "2+"

// =============================================================================
// 25. MII_PR_MTB_Molecular_Pathology_Report (DiagnosticReport)
// =============================================================================
Instance: mii-exa-test-data-mtb-molecular-pathology-report-1
InstanceOf: MII_PR_MTB_Molecular_Pathology_Report
Usage: #example
Title: "MTB Molecular Pathology Report"
Description: "Test instance for molecular pathology report"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molecular-pathology-report"
* status = #final
* code = $loinc#60568-3 "Pathology synoptic report"
* subject = Reference(mii-exa-test-data-patient-1)
* result[+] = Reference(mii-exa-test-data-mtb-immunohistochemistry-1)

// =============================================================================
// 26. MII_PR_MTB_Immunohistochemistry (Observation, extends MTB Molekularer Biomarker)
// =============================================================================
Instance: mii-exa-test-data-mtb-immunohistochemistry-1
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example
Title: "MTB Immunohistochemistry - PD-L1"
Description: "Test instance for immunohistochemistry observation"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* category[geCategory] = $hl7-v2-0074#GE "Genetics"
* code.coding[+] = $loinc#85147-7 "PD-L1 by clone 22C3 [Interpretation] in Tissue by Immune stain"
* subject = Reference(mii-exa-test-data-patient-1)
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* valueQuantity.value = 80
* valueQuantity.unit = "%"
* valueQuantity.code = #{/100}
* valueQuantity.system = $ucum
* component[gene-studied].code.coding = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept.coding = $HGNC#HGNC:17635 "CD274"

// =============================================================================
// 27. MII_PR_MTB_IMMUNOHISTOCHEMISTRY_HER2 (Observation, extends MTB Immunohistochemistry)
// =============================================================================
Instance: mii-exa-test-data-mtb-immunohistochemistry-her2-1
InstanceOf: MII_PR_MTB_IMMUNOHISTOCHEMISTRY_HER2
Usage: #example
Title: "MTB Immunohistochemistry HER2"
Description: "Test instance for HER2 immunohistochemistry"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-her2"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* category[geCategory] = $hl7-v2-0074#GE "Genetics"
* code.coding[spezifisch] = $loinc#18474-7 "HER2 Ag [Presence] in Tissue by Immune stain"
* subject = Reference(mii-exa-test-data-patient-1)
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* valueCodeableConcept.coding.system = "http://loinc.org"
* valueCodeableConcept.coding.code = #LA11842-4
* valueCodeableConcept.coding.display = "2+"
* component[gene-studied].code.coding = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept.coding = $HGNC#HGNC:3430 "ERBB2"

// =============================================================================
// 28. MII_PR_MTB_Immunohistochemistry_PDL1 (Observation, extends MTB Immunohistochemistry)
// =============================================================================
Instance: mii-exa-test-data-mtb-immunohistochemistry-pdl1-1
InstanceOf: MII_PR_MTB_Immunohistochemistry_PDL1
Usage: #example
Title: "MTB Immunohistochemistry PD-L1"
Description: "Test instance for PD-L1 immunohistochemistry with all MS elements"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-pdl1"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* category[geCategory] = $hl7-v2-0074#GE "Genetics"
* code.coding[+] = $loinc#85147-7 "PD-L1 by clone 22C3 [Interpretation] in Tissue by Immune stain"
* subject = Reference(mii-exa-test-data-patient-1)
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* valueQuantity.value = 80
* valueQuantity.unit = "%"
* valueQuantity.code = #{/100}
* valueQuantity.system = $ucum
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"

// =============================================================================
// 29. MII_PR_MTB_Immunohistochemistry_Phosphorylation (Observation, extends MTB IHC)
// =============================================================================
Instance: mii-exa-test-data-mtb-ihc-phosphorylation-1
InstanceOf: MII_PR_MTB_Immunohistochemistry_Phosphorylation
Usage: #example
Title: "MTB IHC Phosphorylation"
Description: "Test instance for phosphorylation immunohistochemistry"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-phosphorylation"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* category[geCategory] = $hl7-v2-0074#GE "Genetics"
* code.coding[+] = $loinc#55229-9 "Immune stain study"
* subject = Reference(mii-exa-test-data-patient-1)
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* valueCodeableConcept = $loinc#LA6576-8 "Positive"
* component[gene-studied].code.coding = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept.coding = $HGNC#HGNC:3236 "EGFR"

// =============================================================================
// 30. MII_PR_MTB_Immunohistochemistry_MMR (Observation, extends MTB Molekularer Biomarker)
// =============================================================================
Instance: mii-exa-test-data-mtb-ihc-mmr-1
InstanceOf: MII_PR_MTB_Immunohistochemistry_MMR
Usage: #example
Title: "MTB IHC MMR"
Description: "Test instance for mismatch repair protein immunohistochemistry"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-mmr"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $loinc#85337-4 "Mismatch repair protein in Tissue by Immune stain"
* subject = Reference(mii-exa-test-data-patient-1)
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* valueCodeableConcept.coding = $loinc#LA6576-8 "Positive"

// =============================================================================
// 31. MII_PR_MTB_Immunohistochemistry_MSI (Observation, extends MolGen MSI)
// =============================================================================
Instance: mii-exa-test-data-mtb-ihc-msi-1
InstanceOf: MII_PR_MTB_Immunohistochemistry_MSI
Usage: #example
Title: "MTB IHC MSI"
Description: "Test instance for MSI by immunohistochemistry"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-msi"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code.coding = $loinc#62862-8 "Microsatellite instability [Presence] in Tissue by Immune stain"
* subject = Reference(mii-exa-test-data-patient-1)
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* valueCodeableConcept = $loinc#LA14122-8 "Stable"

// =============================================================================
// 32. MII_PR_MTB_Biomarker_InSituHybridization (Observation, extends MTB Molekularer Biomarker)
// =============================================================================
Instance: mii-exa-test-data-mtb-insituhybridization-1
InstanceOf: MII_PR_MTB_Biomarker_InSituHybridization
Usage: #example
Title: "MTB In Situ Hybridization"
Description: "Test instance for in situ hybridization biomarker"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biomarker-insituhybridization"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* category[mbCategory] = $TBD#biomarker-category
* code.coding[+] = $loinc#49683-6 "ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH"
* method = $SCT#1303773004 "Fluorescence in situ hybridization technique (qualifier value)"
* subject = Reference(mii-exa-test-data-patient-1)
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* valueRatio.numerator.value = 2.4
* valueRatio.denominator.value = 1
* interpretation = $SCT#260385009 "Negative (qualifier value)"

// =============================================================================
// 33. MII_PR_MTB_INSITUHYBRIDIZATION_HER2 (Observation, extends MTB InSituHybridization)
// =============================================================================
Instance: mii-exa-test-data-mtb-insituhybridization-her2-1
InstanceOf: MII_PR_MTB_INSITUHYBRIDIZATION_HER2
Usage: #example
Title: "MTB In Situ Hybridization HER2"
Description: "Test instance for HER2 FISH with all component slices"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization-her2"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* category[mbCategory] = $TBD#biomarker-category
* code.coding[spezifisch] = $loinc#49683-6 "ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH"
* method = $SCT#1303773004 "Fluorescence in situ hybridization technique (qualifier value)"
* subject = Reference(mii-exa-test-data-patient-1)
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* valueRatio.numerator.value = 1.8
* valueRatio.denominator.value = 1
* interpretation = $SCT#260385009 "Negative (qualifier value)"
* component[target-signals].valueQuantity.value = 3.6
* component[target-signals].valueQuantity.unit = "#"
* component[reference-signals].valueQuantity.value = 2.0
* component[reference-signals].valueQuantity.unit = "#"
* component[cells-counted].valueQuantity.value = 60
* component[cells-counted].valueQuantity.unit = "#"

// =============================================================================
// 34. MII_PR_MTB_Tumorzellgehalt (Observation)
// =============================================================================
Instance: mii-exa-test-data-mtb-tumorzellgehalt-1
InstanceOf: MII_PR_MTB_Tumorzellgehalt
Usage: #example
Title: "MTB Tumorzellgehalt"
Description: "Test instance for tumor cell content measurement"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt"
* status = #final
// code inherited from profile pattern (loinc#93356-4)
* subject = Reference(mii-exa-test-data-patient-1)
* valueQuantity.value = 45
* valueQuantity.unit = "percent"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* method = $mii-cs-mtb-bestimmungsmethode-tumorzellgehalt#histologic
