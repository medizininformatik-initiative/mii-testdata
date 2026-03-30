// ============================================================================
// MII MTB Module - Behandlungsepisode (Treatment Episode) - 7 profiles
// ============================================================================

// =============================================================================
// 1. MII_PR_MTB_Behandlungsepisode (ClinicalImpression)
// =============================================================================
Instance: mii-exa-test-data-mtb-behandlungsepisode-1
InstanceOf: MII_PR_MTB_Behandlungsepisode
Usage: #example
Title: "MTB Behandlungsepisode"
Description: "Test instance for MTB treatment episode with all MS slices populated"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode"
* status = #completed
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* effectivePeriod.start = "2024-01-15"
* effectivePeriod.end = "2024-06-30"
* problem = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* investigation[NgsBericht][+].item = Reference(mii-exa-test-data-mtb-ngs-bericht-1)
* investigation[MolekularPathologieBefund][+].item = Reference(mii-exa-test-data-mtb-molecular-pathology-report-1)
* investigation[ECOG][+].item = Reference(mii-exa-test-data-mtb-labobs-ecog-1)
* investigation[Einwilligung].item = Reference(mii-exa-test-data-mtb-consent-given-1)
* supportingInfo[Vortherapie][+] = Reference(mii-exa-test-data-mtb-systemische-vortherapie-1)
* supportingInfo[Vorbefund][+] = Reference(mii-exa-test-data-mtb-labobs-vorbefund-1)
* supportingInfo[Therapieplan] = Reference(mii-exa-test-data-mtb-therapieplan-1)

// =============================================================================
// 2. MII_PR_MTB_Consent_Given (Observation)
// =============================================================================
Instance: mii-exa-test-data-mtb-consent-given-1
InstanceOf: MII_PR_MTB_Consent_Given
Usage: #example
Title: "MTB Consent Given"
Description: "Test instance for MTB consent/patient education confirmation"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given"
* status = #final
// code inherited from profile pattern (loinc#105511-0 "Was consent given")
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* effectiveDateTime = "2024-01-10"
* valueCodeableConcept = $SCT#373066001 "Yes (qualifier value)"

// =============================================================================
// 3. MII_PR_MTB_Diagnose_Primaertumor (Condition, extends Onko Diagnose)
// =============================================================================
Instance: mii-exa-test-data-mtb-diagnose-primaertumor-1
InstanceOf: MII_PR_MTB_Diagnose_Primaertumor
Usage: #example
Title: "MTB Diagnose Primaertumor"
Description: "Test instance for MTB primary tumor diagnosis with all MS elements"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor"
* extension[Feststellungsdatum].valueDateTime = "2024-01-05"
* recordedDate = "2024-01-05"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus.coding[condition-ver-status][+] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung][+] = $mii-cs-onko-primaertumor-diagnosesicherung#7
* code.coding[+] = $ICD10GM#C34.1 "Bösartige Neubildung: Oberlappen (-Bronchus)"
* code.coding[=].version = "2024"
* bodySite = $ICDO3#C34.1 "Lungenoberlappen"
* stage[ErstdiagnoseZeitpunkt].assessment[+] = Reference(mii-exa-test-data-mtb-tumorausbreitung-1)
// type inherited from profile pattern (sct#371469007 "Histologic grade of neoplasm")
* stage[OncoTree].assessment[+] = Reference(mii-exa-test-data-mtb-oncotree-1)

// =============================================================================
// 4. MII_PR_MTB_Oncotree (Observation)
// =============================================================================
Instance: mii-exa-test-data-mtb-oncotree-1
InstanceOf: MII_PR_MTB_Oncotree
Usage: #example
Title: "MTB Oncotree Classification"
Description: "Test instance for Oncotree tumor classification"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree"
* status = #final
// code inherited from profile (sct#371469007 "Histologic grade of neoplasm")
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* effectiveDateTime = "2024-01-05"
* valueCodeableConcept = $OT#NSCLC "Non-Small Cell Lung Cancer"

// =============================================================================
// 5. MII_PR_MTB_Systemische_Vortherapie (Procedure, extends Onko Systemische Therapie)
// =============================================================================
Instance: mii-exa-test-data-mtb-systemische-vortherapie-1
InstanceOf: MII_PR_MTB_Systemische_Vortherapie
Usage: #example
Title: "MTB Systemische Vortherapie"
Description: "Test instance for prior systemic therapy"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie"
* extension[Intention].valueCodeableConcept.coding[0] = $mii-cs-onko-intention#K
* status = #completed
* category.coding[sct] = $SCT#277132007 "Therapeutic procedure (procedure)"
* code.coding[sct] = $SCT#367336001 "Chemotherapy (procedure)"
* code.coding[systemische_therapie_art] = $mii-cs-onko-therapie-typ#CH
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* performedPeriod.start = "2023-06-01"
* performedPeriod.end = "2023-11-15"
* outcome.coding[+] = $mii-cs-onko-therapie-grund-ende#E

// =============================================================================
// 6. MII_PR_MTB_Tumorausbreitung (Observation)
// =============================================================================
Instance: mii-exa-test-data-mtb-tumorausbreitung-1
InstanceOf: MII_PR_MTB_Tumorausbreitung
Usage: #example
Title: "MTB Tumorausbreitung"
Description: "Test instance for tumor spread assessment with all MS elements"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung"
* status = #final
* category[+] = $SCT#473302008 "Aware of diagnosis"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* encounter = Reference(mii-exa-test-data-mtb-encounter-1)
* effectiveDateTime = "2024-01-05"
* valueCodeableConcept = $SCT#255127006 "Local tumor spread"

// =============================================================================
// 7. MII_PR_MTB_WHO_Grad_Tumor_ZNS (Observation)
// =============================================================================
Instance: mii-exa-test-data-mtb-who-grad-tumor-zns-1
InstanceOf: MII_PR_MTB_WHO_Grad_Tumor_ZNS
Usage: #example
Title: "MTB WHO Grad Tumor ZNS"
Description: "Test instance for WHO CNS tumor grading"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-who-grad-tumor-zns"
* status = #final
// code inherited from profile pattern (sct#396921005 "WHO grade finding for central nervous system tumor")
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* effectiveDateTime = "2024-01-05"
* valueCodeableConcept = $SCT#1228852002 "World Health Organization grade 4 (qualifier value)"
