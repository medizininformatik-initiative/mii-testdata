// ============================================================================
// MII Studien Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-studien-patient-1
InstanceOf: Patient
Usage: #example
Description: "Studien Test Patient"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "STUD-TEST-001"
* name.family = "Proband"
* name.given = "Felix"
* birthDate = 1990-03-20
* gender = #male

Instance: mii-exa-test-data-studien-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Studien Test Encounter"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-studien-patient-1)
* period.start = "2024-07-01"
* period.end = "2024-07-20"
