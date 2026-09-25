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
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* extension[LeitlinienbehandlungStatus].valueCoding = $mii-cs-mtb-leitlinienbehandlung-status#exhausted "exhausted"
* supportingInfo[Vortherapie][0].extension[LeitlinieDokumentation].extension[Therapielinie].valueUnsignedInt = 1
* supportingInfo[Vortherapie][0].extension[LeitlinieDokumentation].extension[Zulassungsstatus].valueCodeableConcept.coding = $mii-cs-mtb-zulassungsstatus#in-label

// =============================================================================
// 2. MII_PR_MTB_Consent_Given (Observation)
// =============================================================================
Instance: mii-exa-test-data-mtb-consent-given-1
InstanceOf: MII_PR_MTB_Consent_Given
Usage: #example
Title: "MTB Consent Given"
Description: "Test instance for MTB consent/patient education confirmation"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given"
* status = #final
// code inherited from profile pattern (loinc#105511-0 "Was consent given")
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* effectiveDateTime = "2024-01-10"
* valueCodeableConcept = $SCT#373066001 "Yes (qualifier value)"
* encounter = Reference(mii-exa-test-data-mtb-encounter-1)

// =============================================================================
// 3. MII_PR_MTB_Diagnose_Primaertumor (Condition, extends Onko Diagnose)
// =============================================================================
Instance: mii-exa-test-data-mtb-diagnose-primaertumor-1
InstanceOf: MII_PR_MTB_Diagnose_Primaertumor
Usage: #example
Title: "MTB Diagnose Primaertumor"
Description: "Test instance for MTB primary tumor diagnosis with all MS elements"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor"
* extension[Feststellungsdatum].valueDateTime = "2024-01-05"
* recordedDate = "2024-01-05"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus.coding[condition-ver-status][+] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung][+] = $mii-cs-onko-primaertumor-diagnosesicherung#7
* code.coding[icd10-gm] = $ICD10GM#C34.1 "Bösartige Neubildung: Oberlappen (-Bronchus)"
* code.coding[icd10-gm].version = "2024"
* code.coding[icd10-gm].extension[Diagnosesicherheit].valueCoding = $diagnosesicherheit#G "Gesicherte Diagnose"
* code.coding[icd10-gm].extension[Seitenlokalisation].valueCoding = $seitenlokalisation#R "rechts"
* code.coding[icd10-gm].extension[Mehrfachcodierungs-Kennzeichen].valueCoding = $mehrfachcodierungs-kennzeichen#"!"
* bodySite = $ICDO3#C34.1 "Lungenoberlappen"
* bodySite.coding[snomed-ct] = $SCT#45653009 "Structure of upper lobe of lung (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* stage[ErstdiagnoseZeitpunkt].assessment[+] = Reference(mii-exa-test-data-mtb-tumorausbreitung-1)
// type inherited from profile pattern (sct#371469007 "Histologic grade of neoplasm")
* stage[OncoTree].assessment[+] = Reference(mii-exa-test-data-mtb-oncotree-1)
* identifier.system = "https://www.charite.de/fhir/sid/mtb-diagnose"
* identifier.value = "DIAG-2024-001"
* encounter = Reference(mii-exa-test-data-mtb-encounter-1)
* onsetDateTime = "2023-12-15"
* note.text = "Erstdiagnose eines EGFR-mutierten NSCLC des rechten Oberlappens."
* evidence.code = $SCT#49727002 "Cough (finding)"
* evidence.detail = Reference(mii-exa-test-data-mtb-evidenz-liste-1)
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = $ICDO3#8140/3 "Adenocarcinoma, NOS"
* extension[morphology-behavior-icdo3].valueCodeableConcept.text = "Adenokarzinom o.n.A."
* extension[dueTo].valueCodeableConcept = $SCT#77176002 "Smoker (finding)"
* extension[occurredFollowing].valueCodeableConcept = $SCT#65958008 "Chronic disease of respiratory system (disorder)"
* extension[ReferenzPrimaerdiagnose].valueReference = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-2)

// Variante: abgeschlossene Diagnose mit abatementDateTime + onsetAge (MS-Choice-Varianten)
Instance: mii-exa-test-data-mtb-diagnose-primaertumor-2
InstanceOf: MII_PR_MTB_Diagnose_Primaertumor
Usage: #example
Title: "MTB Diagnose Primaertumor (Variante abatementDateTime)"
Description: "Minimal-Variante fuer die MS-Choice-Alternativen abatementDateTime und onsetAge"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor"
* extension[Feststellungsdatum].valueDateTime = "2018-03-01"
* recordedDate = "2018-03-01"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#resolved
* verificationStatus.coding[condition-ver-status][+] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung][+] = $mii-cs-onko-primaertumor-diagnosesicherung#7
* code.coding[icd10-gm] = $ICD10GM#C61 "Bösartige Neubildung der Prostata"
* code.coding[icd10-gm].version = "2018"
* onsetAge = 46 'a'
* onsetAge.unit = "Jahre"
* onsetAge.extension[Lebensphase-Beginn].valueCodeableConcept.coding = $SCT#41847000 "Adulthood (qualifier value)"
* abatementDateTime = "2019-06-30"

// Variante: abgeschlossene Diagnose mit abatementAge (MS-Choice-Variante)
Instance: mii-exa-test-data-mtb-diagnose-primaertumor-3
InstanceOf: MII_PR_MTB_Diagnose_Primaertumor
Usage: #example
Title: "MTB Diagnose Primaertumor (Variante abatementAge)"
Description: "Minimal-Variante fuer die MS-Choice-Alternative abatementAge"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor"
* extension[Feststellungsdatum].valueDateTime = "2015-05-01"
* recordedDate = "2015-05-01"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#resolved
* verificationStatus.coding[condition-ver-status][+] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung][+] = $mii-cs-onko-primaertumor-diagnosesicherung#7
* code.coding[icd10-gm] = $ICD10GM#C44.3 "Sonstige bösartige Neubildungen: Haut sonstiger und nicht näher bezeichneter Teile des Gesichtes"
* code.coding[icd10-gm].version = "2015"
* abatementAge = 45 'a'
* abatementAge.unit = "Jahre"
* abatementAge.extension[Lebensphase-Ende].valueCodeableConcept.coding = $SCT#41847000 "Adulthood (qualifier value)"

// Variante: histologische Transformation des EGFR-mutierten Adenokarzinoms in ein
// kleinzelliges Lungenkarzinom unter TKI-Therapie (Condition.extension:transformationVon)
Instance: mii-exa-test-data-mtb-diagnose-primaertumor-4
InstanceOf: MII_PR_MTB_Diagnose_Primaertumor
Usage: #example
Title: "MTB Diagnose Primaertumor (SCLC-Transformation)"
Description: "Kleinzellige Transformation des EGFR-mutierten Adenokarzinoms unter TKI-Therapie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor"
* extension[Feststellungsdatum].valueDateTime = "2024-09-12"
* recordedDate = "2024-09-12"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus.coding[condition-ver-status][+] = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.coding[primaertumorDiagnosesicherung][+] = $mii-cs-onko-primaertumor-diagnosesicherung#7 "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = $ICD10GM#C34.1 "Bösartige Neubildung: Oberlappen (-Bronchus)"
* code.coding[icd10-gm].version = "2024"
* code.coding[icd10-gm].extension[Diagnosesicherheit].valueCoding = $diagnosesicherheit#G "Gesicherte Diagnose"
* code.coding[icd10-gm].extension[Seitenlokalisation].valueCoding = $seitenlokalisation#R "rechts"
* bodySite = $ICDO3#C34.1 "Lungenoberlappen"
* bodySite.coding[snomed-ct] = $SCT#45653009 "Structure of upper lobe of lung (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = $ICDO3#8041/3 "Small cell carcinoma, NOS"
* extension[morphology-behavior-icdo3].valueCodeableConcept.text = "Kleinzelliges Karzinom o.n.A."
// Hervorgegangen aus dem EGFR-mutierten Adenokarzinom der Erstdiagnose
* extension[transformationVon].valueReference = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* onsetDateTime = "2024-09-12"
* note.text = "Rebiopsie bei Progress unter Osimertinib: histologische Transformation in ein kleinzelliges Lungenkarzinom."

// Evidenz-Liste der Erstdiagnose (Ziel von Condition.evidence.detail)
Instance: mii-exa-test-data-mtb-evidenz-liste-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose
Usage: #example
Title: "MTB Evidenz-Liste Erstdiagnose"
Description: "Liste der Evidenz-Befunde zur Erstdiagnose des Primaertumors"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #current
* mode = #snapshot
* title = "Liste der Evidenz zum Erstdiagnosezeitpunkt"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* entry.item = Reference(mii-exa-test-data-mtb-labobs-vorbefund-1)

// =============================================================================
// 4. MII_PR_MTB_Oncotree (Observation)
// =============================================================================
Instance: mii-exa-test-data-mtb-oncotree-1
InstanceOf: MII_PR_MTB_Oncotree
Usage: #example
Title: "MTB Oncotree Classification"
Description: "Test instance for Oncotree tumor classification"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree"
* status = #final
// code inherited from profile (sct#371469007 "Histologic grade of neoplasm")
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* effectiveDateTime = "2024-01-05"
* valueCodeableConcept = $OT#NSCLC "Non-Small Cell Lung Cancer"
* encounter = Reference(mii-exa-test-data-mtb-encounter-1)

// =============================================================================
// 5. MII_PR_MTB_Systemische_Vortherapie (Procedure, extends Onko Systemische Therapie)
// =============================================================================
Instance: mii-exa-test-data-mtb-systemische-vortherapie-1
InstanceOf: MII_PR_MTB_Systemische_Vortherapie
Usage: #example
Title: "MTB Systemische Vortherapie"
Description: "Test instance for prior systemic therapy"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* code.coding[ops] = $OPS#8-54 "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
* code.coding[ops].version = "2023"
* code.coding[ops].extension[Seitenlokalisation].valueCoding = $seitenlokalisation#R "rechts"
* encounter = Reference(mii-exa-test-data-mtb-encounter-1)
* extension[Dokumentationsdatum].valueDateTime = "2023-11-20"
* extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000 "Therapeutic"
* extension[Intention].valueCodeableConcept.text = "kurativ"
* extension[StellungZurOp].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop"
* extension[StellungZurOp].valueCodeableConcept.coding.code = #O
* extension[StellungZurOp].valueCodeableConcept.text = "ohne Bezug zur operativen Therapie"
* bodySite.coding[snomed-ct] = $SCT#39607008 "Lung structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* note.text = "Platinbasierte Erstlinien-Chemotherapie vor MTB-Vorstellung."
// Leitliniendokumentation der Vortherapie: 1. Therapielinie, zugelassene Anwendung
* extension[Leitlinie].extension[Therapielinie].valueUnsignedInt = 1
* extension[Leitlinie].extension[Zulassungsstatus].valueCodeableConcept.coding = $mii-cs-mtb-zulassungsstatus#in-label "In-Label"
* basedOn[tumorkonferenz] = Reference(mii-exa-test-data-mtb-therapieplan-1)
* partOf = Reference(mii-exa-test-data-mtb-systemische-therapie-1)
* reasonReference = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* statusReason.coding = $mii-cs-mtb-therapie-status-grund#regular-completion
* usedCode.coding.system = $mii-cs-onko-therapie-protokolle
* usedCode.coding.code = #CarboTax
* usedCode.coding.display = "CarboTax"

// =============================================================================
// 6. MII_PR_MTB_Tumorausbreitung (Observation)
// =============================================================================
Instance: mii-exa-test-data-mtb-tumorausbreitung-1
InstanceOf: MII_PR_MTB_Tumorausbreitung
Usage: #example
Title: "MTB Tumorausbreitung"
Description: "Test instance for tumor spread assessment with all MS elements"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-who-grad-tumor-zns"
* status = #final
// code inherited from profile pattern (sct#396921005 "WHO grade finding for central nervous system tumor")
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* effectiveDateTime = "2024-01-05"
* valueCodeableConcept = $SCT#1228852002 "World Health Organization grade 4 (qualifier value)"
* encounter = Reference(mii-exa-test-data-mtb-encounter-1)
