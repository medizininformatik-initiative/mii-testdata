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
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* statusReason.coding = $mii-cs-mtb-therapie-status-grund#medical-reason

// =============================================================================
// 44. MII_PR_MTB_Systemische_Therapie (Procedure, extends Onko Systemische Therapie)
// =============================================================================
Instance: mii-exa-test-data-mtb-systemische-therapie-1
InstanceOf: MII_PR_MTB_Systemische_Therapie
Usage: #example
Title: "MTB Systemische Therapie"
Description: "Test instance for MTB systemic therapy procedure"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie"
* status = #completed
* statusReason.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund#regular-completion
* category = $SCT#367336001 "Chemotherapy (procedure)"
* extension[Intention].valueCodeableConcept.coding[0] = $mii-cs-onko-intention#K
* code.coding[systemische_therapie_art] = $mii-cs-onko-therapie-typ#ZS
* code.coding[ops] = $OPS#8-54 "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
* code.coding[ops].version = "2024"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* performedPeriod.start = "2024-04-15"
* performedPeriod.end = "2024-08-30"
* basedOn = Reference(mii-exa-test-data-mtb-therapieplan-1)
* code.coding[ops].extension[Seitenlokalisation].valueCoding = $seitenlokalisation#R "rechts"
* encounter = Reference(mii-exa-test-data-mtb-encounter-1)
* extension[Dokumentationsdatum].valueDateTime = "2024-08-30"
* extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000 "Therapeutic"
* extension[Intention].valueCodeableConcept.text = "kurativ"
* extension[StellungZurOp].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop"
* extension[StellungZurOp].valueCodeableConcept.coding.code = #O
* extension[StellungZurOp].valueCodeableConcept.text = "ohne Bezug zur operativen Therapie"
* extension[causedBy].valueReference = Reference(mii-exa-test-data-mtb-therapieempfehlung-1)
* bodySite.coding[snomed-ct] = $SCT#39607008 "Lung structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* note.text = "Zielgerichtete Therapie mit Osimertinib gemaess MTB-Beschluss."
* outcome.coding[+] = $mii-cs-onko-therapie-grund-ende#E
* partOf = Reference(mii-exa-test-data-mtb-systemische-vortherapie-1)
* reasonReference = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* usedCode.coding.system = $mii-cs-onko-therapie-protokolle
* usedCode.coding.code = #CarboTax
* usedCode.coding.display = "CarboTax"

// =============================================================================
// 45. MII_PR_MTB_Systemische_Therapie_Medication_Statement (MedicationStatement, extends Onko)
// =============================================================================
Instance: mii-exa-test-data-mtb-systemische-therapie-medstatement-1
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "MTB Systemische Therapie MedicationStatement"
Description: "Test instance for MTB systemic therapy medication statement"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"
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
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.doseAndRate.doseQuantity.value = 80
* dosage.doseAndRate.doseQuantity.unit = "mg"
* dosage.doseAndRate.doseQuantity.code = #mg
* dosage.doseAndRate.doseQuantity.system = $ucum
* category = $med-statement-category#inpatient "Inpatient"
* context = Reference(mii-exa-test-data-mtb-encounter-1)
* dateAsserted = "2024-04-15"
* identifier.system = "https://www.charite.de/fhir/sid/mtb-medikation"
* identifier.value = "MEDSTMT-2024-001"
* informationSource = Reference(mii-exa-test-data-mtb-patient-1)
* medicationCodeableConcept.text = "Osimertinib 80 mg Filmtabletten"
* reasonCode = $ICD10GM#C34.1 "Bösartige Neubildung: Oberlappen (-Bronchus)"
* reasonReference = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
// Dosage 1: Detail-MS (Timing, Dosis-Range, Raten-Varianten)
* dosage.sequence = 1
* dosage.text = "80 mg einmal täglich oral"
* dosage.site = $SCT#123851003 "Mouth region structure (body structure)"
* dosage.route = $SCT#26643006 "Oral route (qualifier value)"
* dosage.asNeededBoolean = false
* dosage.timing.event = "2024-04-15T08:00:00+02:00"
* dosage.timing.repeat.boundsPeriod.start = "2024-04-15"
* dosage.timing.repeat.boundsPeriod.end = "2024-08-30"
* dosage.timing.repeat.count = 130
* dosage.timing.repeat.countMax = 140
* dosage.timing.repeat.duration = 5
* dosage.timing.repeat.durationMax = 10
* dosage.timing.repeat.durationUnit = #min
* dosage.timing.repeat.frequencyMax = 2
* dosage.timing.repeat.periodMax = 2
* dosage.timing.repeat.dayOfWeek[+] = #mon
* dosage.timing.repeat.timeOfDay[+] = "08:00:00"
* dosage.maxDosePerAdministration = 80 'mg'
* dosage.maxDosePerAdministration.unit = "mg"
* dosage.maxDosePerPeriod.numerator = 160 'mg'
* dosage.maxDosePerPeriod.numerator.unit = "mg"
* dosage.maxDosePerPeriod.denominator = 1 'd'
* dosage.maxDosePerPeriod.denominator.unit = "Tag"
* dosage.doseAndRate[0].type.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-dosisdichte#volle-Dosis "volle Dosis"
* dosage.doseAndRate[0].rateRatio.numerator = 80 'mg'
* dosage.doseAndRate[0].rateRatio.numerator.unit = "mg"
* dosage.doseAndRate[0].rateRatio.denominator = 1 'd'
* dosage.doseAndRate[0].rateRatio.denominator.unit = "Tag"
* dosage.doseAndRate[1].doseRange.low = 40 'mg'
* dosage.doseAndRate[1].doseRange.low.unit = "mg"
* dosage.doseAndRate[1].doseRange.high.value = 80
* dosage.doseAndRate[1].doseRange.high.unit = "mg"
* dosage.doseAndRate[1].doseRange.high.system = $ucum
* dosage.doseAndRate[1].doseRange.high.code = #mg
* dosage.doseAndRate[1].rateQuantity = 3.3 'mg/h'
* dosage.doseAndRate[1].rateQuantity.unit = "mg/h"
* dosage.doseAndRate[2].rateRange.low = 2 'mg/h'
* dosage.doseAndRate[2].rateRange.low.unit = "mg/h"
* dosage.doseAndRate[2].rateRange.high = 4 'mg/h'
* dosage.doseAndRate[2].rateRange.high.unit = "mg/h"
// Varianten-Instanz 2: asNeededCodeableConcept- und boundsDuration/when-Varianten (dosage ist im Profil 0..1)
Instance: mii-exa-test-data-mtb-systemische-therapie-medstatement-2
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "MTB Systemtherapie MedicationStatement (Variante asNeededCodeableConcept)"
Description: "Minimal-Variante fuer die MS-Choice-Alternativen asNeededCodeableConcept, boundsDuration und timing.when"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"
* partOf = Reference(mii-exa-test-data-mtb-systemische-therapie-1)
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $atc#A04AA55 "Palonosetron, Kombinationen"
* medicationCodeableConcept.coding[atcClassDe].version = "2024"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* effectivePeriod.start = "2024-04-15"
* dosage.sequence = 1
* dosage.text = "Bei Bedarf bei Übelkeit, morgens"
* dosage.asNeededCodeableConcept = $SCT#422587007 "Nausea (finding)"
* dosage.timing.repeat.boundsDuration = 7 'd'
* dosage.timing.repeat.boundsDuration.unit = "Tage"
* dosage.timing.repeat.when[+] = #MORN
* dosage.timing.repeat.offset = 30

// Varianten-Instanz 3: boundsRange-Variante
Instance: mii-exa-test-data-mtb-systemische-therapie-medstatement-3
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "MTB Systemtherapie MedicationStatement (Variante boundsRange)"
Description: "Minimal-Variante fuer die MS-Choice-Alternative timing.repeat.boundsRange"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"
* partOf = Reference(mii-exa-test-data-mtb-systemische-therapie-1)
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $atc#L01EB04 "Osimertinib"
* medicationCodeableConcept.coding[atcClassDe].version = "2024"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* effectivePeriod.start = "2024-08-15"
* dosage.sequence = 1
* dosage.text = "Ausschleichen über 1-2 Wochen"
* dosage.timing.repeat.boundsRange.low = 1 'wk'
* dosage.timing.repeat.boundsRange.low.unit = "Wochen"
* dosage.timing.repeat.boundsRange.high = 2 'wk'
* dosage.timing.repeat.boundsRange.high.unit = "Wochen"

// =============================================================================
// 46. MII_PR_MTB_Response_Befund (Observation, extends Onko Verlauf)
// =============================================================================
Instance: mii-exa-test-data-mtb-response-befund-1
InstanceOf: MII_PR_MTB_Response_Befund
Usage: #example
Title: "MTB Response Befund"
Description: "Test instance for MTB response assessment with RECIST method"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* encounter = Reference(mii-exa-test-data-mtb-encounter-1)
* identifier.system = "https://www.charite.de/fhir/sid/mtb-befund"
* identifier.value = "RESPONSE-2024-001"

// =============================================================================
// 47. MII_PR_MTB_Antrag_Kostenuebernahme (Claim)
// =============================================================================
Instance: mii-exa-test-data-mtb-antrag-kostenuebernahme-1
InstanceOf: MII_PR_MTB_Antrag_Kostenuebernahme
Usage: #example
Title: "MTB Antrag Kostenuebernahme"
Description: "Test instance for cost coverage application with all MS elements"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme"
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional "Institutional"
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
* related.relationship.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium"
* related.relationship.coding.code = #follow-up-claim
* related.claim = Reference(mii-exa-test-data-mtb-antrag-kostenuebernahme-2)

// Erstantrag (Vorgaenger-Claim fuer related.claim)
Instance: mii-exa-test-data-mtb-antrag-kostenuebernahme-2
InstanceOf: MII_PR_MTB_Antrag_Kostenuebernahme
Usage: #example
Title: "MTB Antrag Kostenuebernahme (Erstantrag)"
Description: "Minimaler Erstantrag als Ziel der related.claim-Referenz des Folgeantrags"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme"
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional "Institutional"
* use = #claim
* patient = Reference(mii-exa-test-data-mtb-patient-1)
* created = "2024-03-20"
* provider = Reference(mii-exa-test-data-organization-charite)
* prescription = Reference(mii-exa-test-data-mtb-therapieempfehlung-1)
* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage.display = "GKV-Versicherung"
* careTeam[ZPMBeteiligung].provider = Reference(mii-exa-test-data-organization-charite)
* careTeam[ZPMBeteiligung].responsible = true

// =============================================================================
// 48. MII_PR_MTB_Antwort_Kostenuebernahme (ClaimResponse)
// =============================================================================
Instance: mii-exa-test-data-mtb-antwort-kostenuebernahme-1
InstanceOf: MII_PR_MTB_Antwort_Kostenuebernahme
Usage: #example
Title: "MTB Antwort Kostenuebernahme"
Description: "Test instance for cost coverage response with all MS elements"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional "Institutional"
* use = #claim
* patient = Reference(mii-exa-test-data-mtb-patient-1)
* created = "2024-04-20"
* insurer = Reference(mii-exa-test-data-organization-charite)
* request = Reference(mii-exa-test-data-mtb-antrag-kostenuebernahme-1)
* outcome = #complete
* extension[Entscheidung].valueCodeableConcept.coding = $mii-cs-mtb-antwort-entscheidung#accepted
