// ============================================================================
// Seltene Erkrankungen - Therapieempfehlung (MedicationRequest)
// Maximum MS element coverage for Patient-3
// ============================================================================

Instance: mii-exa-test-data-patient-3-seltene-therapieempfehlung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung
Usage: #example
Description: "Therapieempfehlung: Losartan for Marfan - all MS elements including extensions"
* insert TestDataLabel
// Prioritaet extension (decimal/positiveInt)
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet"
* extension[=].valuePositiveInt = 1
// Evidenzgraduierung extension (CodeableConcept with Evidenzgrad coding)
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung"
* extension[=].valueCodeableConcept.coding[+].code = #1A
* extension[=].valueCodeableConcept.coding[=].display = "Evidenzgrad 1A"
// Publikation extension (Identifier with DOI)
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation"
* extension[=].valueIdentifier.system = "https://doi.org"
* extension[=].valueIdentifier.value = "10.1016/j.ejphar.2015.03.048"
* status = #active
* intent = #proposal
// Both category slices: strategy + type
* category[+] = $seltene-cs-strategie#prevention-medication "Präventive Medikation"
* category[+] = $seltene-cs-typ#symptomatic "Symptomatisch"
* medicationCodeableConcept = $atc#C09CA01 "Losartan"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* reasonReference = Reference(mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1)
* dosageInstruction[+].text = "50mg 1x taeglich"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].doseAndRate[+].doseQuantity.value = 50
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mg"
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = $ucum
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #mg
