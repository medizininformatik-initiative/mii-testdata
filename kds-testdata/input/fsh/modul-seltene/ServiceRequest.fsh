// ============================================================================
// Seltene Erkrankungen - ServiceRequest
// Therapieempfehlung Nicht-Medikamentoes + Studieneinschluss Anfrage
// Maximum MS element coverage for Patient-3
// ============================================================================

// =============================================================================
// Non-medication therapy recommendation: Early detection - ALL MS elements
// =============================================================================
Instance: mii-exa-test-data-patient-3-seltene-therapie-nicht-med-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes
Usage: #example
Description: "Therapieempfehlung nicht-medikamentoes: Annual cardiac screening - all MS elements"
* insert TestDataLabel
// Extensions: Prioritaet, Evidenzgraduierung, Publikation
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet"
* extension[=].valuePositiveInt = 2
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung"
* extension[=].valueCodeableConcept.coding[+].code = #2B
* extension[=].valueCodeableConcept.coding[=].display = "Evidenzgrad 2B"
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation"
* extension[=].valueString = "ESC Guidelines on Marfan Syndrome 2024"
* status = #draft
* intent = #proposal
// Both category slices
* category[+] = $seltene-cs-strategie#early-detection "Früherkennung"
* category[+] = $seltene-cs-typ#symptomatic "Symptomatisch"
* priority = #routine
// code with SNOMED, OPS, and LOINC slices + required text
* code.coding[+] = $sct#312851005 "Screening for disorder"
* code.coding[+] = $ops#3-052 "Transthorakale Echokardiographie"
* code.coding[+] = $loinc#34552-0 "Cardiology Diagnostic study"
* code.text = "Jaehrliche kardiologische Kontrolle mittels Echokardiographie bei Marfan-Syndrom"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* occurrenceTiming.repeat.frequency = 1
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #a
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* performer = Reference(mii-exa-test-data-practitioner-physician-2)
* reasonCode = $sct#19346006 "Marfan syndrome"
* reasonReference = Reference(mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1)
* supportingInfo = Reference(mii-exa-test-data-patient-3-molgen-befundbericht-1)
* note.text = "Jaehrliche Echokardiographie zur Frueherkennung von Aortenwurzeldilatation empfohlen gemaess aktueller Leitlinie."

// =============================================================================
// Studieneinschluss Anfrage - ALL MS elements including statusReason, Prioritaet, Publikation
// =============================================================================
Instance: mii-exa-test-data-patient-3-seltene-studieneinschluss-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage
Usage: #example
Description: "Studieneinschluss Anfrage: Clinical trial referral - all MS elements"
* insert TestDataLabel
// Extensions: statusReason, Prioritaet, Publikation
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/request-statusReason"
* extension[=].valueCodeableConcept.text = "Patient erfuellt Einschlusskriterien der Studie"
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet"
* extension[=].valuePositiveInt = 1
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation"
* extension[=].valueIdentifier.system = "https://doi.org"
* extension[=].valueIdentifier.value = "10.1016/j.ahj.2020.09.005"
* status = #active
* intent = #proposal
// category and code inherited from profile (fixed values)
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* reasonReference = Reference(mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1)
// supportingInfo sliced - Studie reference
* supportingInfo = Reference(mii-exa-test-data-patient-3-molgen-befundbericht-1)
