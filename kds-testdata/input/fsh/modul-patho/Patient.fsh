// ============================================================================
// MII Patho Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-patho-patient-1
InstanceOf: Patient
Usage: #example
Description: "Patho Test Patient"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "PATH-TEST-001"
* name.family = "Gewebeprobe"
* name.given = "Klaus"
* birthDate = 1963-06-30
* gender = #male

Instance: mii-exa-test-data-patho-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Patho Test Encounter"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* period.start = "2024-02-01"
* period.end = "2024-02-20"
