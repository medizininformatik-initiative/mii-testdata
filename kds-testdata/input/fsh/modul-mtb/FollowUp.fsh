// ============================================================================
// MII MTB Module - Follow-Up - 6 profiles
// ============================================================================

// =============================================================================
// 43. MII_PR_MTB_Follow_Up_ClinicalImpression (ClinicalImpression)
// =============================================================================
Instance: mii-exa-test-data-mtb-follow-up-1
InstanceOf: MII_PR_MTB_Follow_Up_ClinicalImpression
Usage: #example
Title: "MTB Follow-Up"
Description: "Test instance for MTB follow-up clinical impression with all MS elements"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression"
* status = #completed
* code.coding = $SCT#390906007 "Follow-up encounter (procedure)"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* effectiveDateTime = "2024-09-15"
* previous = Reference(mii-exa-test-data-mtb-behandlungsepisode-1)
* investigation.code.coding = $mii-cs-mtb-follow-up-status#completed
* supportingInfo[UmgesetzteTherapien][+] = Reference(mii-exa-test-data-mtb-systemische-therapie-1)
* supportingInfo[AntraegeKostenuebernahme][+] = Reference(mii-exa-test-data-mtb-antrag-kostenuebernahme-1)
* supportingInfo[AntwortenKostenuebernahme][+] = Reference(mii-exa-test-data-mtb-antwort-kostenuebernahme-1)

// =============================================================================
// 44. MII_PR_MTB_Systemische_Therapie (Procedure, extends Onko Systemische Therapie)
// =============================================================================
Instance: mii-exa-test-data-mtb-systemische-therapie-1
InstanceOf: MII_PR_MTB_Systemische_Therapie
Usage: #example
Title: "MTB Systemische Therapie"
Description: "Test instance for MTB systemic therapy procedure"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie"
* status = #completed
* statusReason = #regular-completion
* category = $SCT#367336001 "Chemotherapy (procedure)"
* extension[Intention].valueCodeableConcept.coding[0] = $mii-cs-onko-intention#K
* code.coding[systemische_therapie_art] = $mii-cs-onko-therapie-typ#ZS
* code.coding[ops] = $OPS#8-54 "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
* code.coding[ops].version = "2024"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* performedPeriod.start = "2024-04-15"
* performedPeriod.end = "2024-08-30"
* basedOn = Reference(mii-exa-test-data-mtb-therapieplan-1)

// =============================================================================
// 45. MII_PR_MTB_Systemische_Therapie_Medication_Statement (MedicationStatement, extends Onko)
// =============================================================================
Instance: mii-exa-test-data-mtb-systemische-therapie-medstatement-1
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "MTB Systemische Therapie MedicationStatement"
Description: "Test instance for MTB systemic therapy medication statement"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement"
* basedOn = Reference(mii-exa-test-data-mtb-therapieempfehlung-1)
* partOf = Reference(mii-exa-test-data-mtb-systemische-therapie-1)
* status = #completed
* medicationCodeableConcept.coding[+] = $unii#3C06JJ0Z2O "OSIMERTINIB"
* medicationCodeableConcept.coding[atcClassDe] = $atc#L01EB04 "Osimertinib"
* medicationCodeableConcept.coding[atcClassDe].version = "2024"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* effectivePeriod.start = "2024-04-15"
* effectivePeriod.end = "2024-04-15"
* note.text = "Z1 Osimertinib 80mg oral, daily"
* dosage.doseAndRate.doseQuantity.value = 80
* dosage.doseAndRate.doseQuantity.unit = "mg"
* dosage.doseAndRate.doseQuantity.code = #mg
* dosage.doseAndRate.doseQuantity.system = $ucum

// =============================================================================
// 46. MII_PR_MTB_Response_Befund (Observation, extends Onko Verlauf)
// =============================================================================
Instance: mii-exa-test-data-mtb-response-befund-1
InstanceOf: MII_PR_MTB_Response_Befund
Usage: #example
Title: "MTB Response Befund"
Description: "Test instance for MTB response assessment with RECIST method"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund"
* status = #final
* code = $SCT#396432002 "Status of regression of tumor (observable entity)"
* method = $mii-cs-mtb-response-befund-beurteilungsmethode#RECIST "RECIST"
* effectiveDateTime = "2024-07-20"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* focus = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* partOf = Reference(mii-exa-test-data-mtb-systemische-therapie-1)
* valueCodeableConcept.coding = $mii-cs-mtb-response-befund-beurteilung#PR "Partial Response"
* component[Lymphknoten_Verlauf].code.coding = $SCT#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding = $mii-cs-onko-verlauf-lymphknoten#K "kein Lymphknotenbefall nachweisbar"

// =============================================================================
// 47. MII_PR_MTB_Antrag_Kostenuebernahme (Claim)
// =============================================================================
Instance: mii-exa-test-data-mtb-antrag-kostenuebernahme-1
InstanceOf: MII_PR_MTB_Antrag_Kostenuebernahme
Usage: #example
Title: "MTB Antrag Kostenuebernahme"
Description: "Test instance for cost coverage application with all MS elements"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme"
* type = #institutional
* use = #claim
* patient = Reference(mii-exa-test-data-mtb-patient-1)
* created = "2024-04-01"
* provider = Reference(mii-exa-test-data-organization-charite)
* prescription = Reference(mii-exa-test-data-mtb-therapieempfehlung-1)
* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage.display = "GKV-Versicherung"
* insurance.claimResponse = Reference(mii-exa-test-data-mtb-antwort-kostenuebernahme-1)
* careTeam[ZPMBeteiligung].provider = Reference(mii-exa-test-data-organization-charite)
* careTeam[ZPMBeteiligung].responsible = true
* related.relationship.coding.code = #initial-claim

// =============================================================================
// 48. MII_PR_MTB_Antwort_Kostenuebernahme (ClaimResponse)
// =============================================================================
Instance: mii-exa-test-data-mtb-antwort-kostenuebernahme-1
InstanceOf: MII_PR_MTB_Antwort_Kostenuebernahme
Usage: #example
Title: "MTB Antwort Kostenuebernahme"
Description: "Test instance for cost coverage response with all MS elements"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme"
* status = #active
* type = #institutional
* use = #claim
* patient = Reference(mii-exa-test-data-mtb-patient-1)
* created = "2024-04-20"
* insurer = Reference(mii-exa-test-data-organization-charite)
* request = Reference(mii-exa-test-data-mtb-antrag-kostenuebernahme-1)
* outcome = #complete
