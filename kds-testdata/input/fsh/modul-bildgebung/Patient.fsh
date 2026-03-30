// ============================================================================
// MII Bildgebung Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-bildgebung-patient-1
InstanceOf: Patient
Usage: #example
Description: "Bildgebung Test Patient"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "BILD-TEST-001"
* name.family = "Mustermann"
* name.given = "Andreas"
* birthDate = 1968-07-22
* gender = #male

Instance: mii-exa-test-data-bildgebung-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Bildgebung Test Encounter"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-bildgebung-patient-1)
* period.start = "2024-03-01"
* period.end = "2024-03-15"
