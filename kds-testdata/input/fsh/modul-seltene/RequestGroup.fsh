// ============================================================================
// Seltene Erkrankungen - Therapieempfehlung Kombination (RequestGroup)
// Maximum MS element coverage for Patient-3
// ============================================================================

Instance: mii-exa-test-data-patient-3-seltene-therapie-kombination-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination
Usage: #example
Description: "Therapieempfehlung Kombination: Combined therapy for Marfan - all MS elements"
* insert TestDataLabel
// Extensions: Prioritaet, Evidenzgraduierung, Publikation
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet"
* extension[=].valuePositiveInt = 1
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung"
* extension[=].valueCodeableConcept.coding[+].code = #1A
* extension[=].valueCodeableConcept.coding[=].display = "Evidenzgrad 1A"
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation"
* extension[=].valueString = "Marfan-Leitlinie DGK 2024"
* identifier[+].system = "https://www.charite.de/fhir/sid/seltene-kombination"
* identifier[=].value = "SE-KOMBI-2025-001"
* status = #draft
* intent = #proposal
* subject = Reference(mii-exa-test-data-patient-3)
// Multiple actions referencing therapy recommendations
* action[+].resource = Reference(mii-exa-test-data-patient-3-seltene-therapieempfehlung-1)
