// ============================================================================
// MII Kardiologie Test Data - Patient und Encounter
// Szenario: Karl Herzmann, 75 Jahre, KHK mit Z.n. Myokardinfarkt,
// hochgradige Aortenklappenstenose, chronische Herzinsuffizienz (NYHA II),
// Z.n. embolischem zerebrovaskulaerem Ereignis, ICD-Implantation.
// ============================================================================

Instance: mii-exa-test-data-kardiologie-patient-1
InstanceOf: Patient
Usage: #example
Description: "Kardiologie Test Patient: Karl Herzmann (KHK, Aortenklappenstenose, Herzinsuffizienz)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[+].system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier[=].value = "KARDIO-TEST-001"
* name.family = "Herzmann"
* name.given = "Karl"
* birthDate = 1949-11-02
* gender = #male

Instance: mii-exa-test-data-kardiologie-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Kardiologie Test Encounter: stationaere Aufnahme wegen dekompensierter Herzinsuffizienz"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-kardiologie-patient-1)
* period.start = "2025-03-10"
* period.end = "2025-03-18"
* diagnosis[+].condition = Reference(mii-exa-test-data-kardiologie-diagnose-1)
* diagnosis[=].use = $diagnosis-role#AD "Admission diagnosis"
* diagnosis[=].rank = 1
