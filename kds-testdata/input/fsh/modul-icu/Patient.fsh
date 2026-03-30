// ============================================================================
// MII ICU Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-icu-patient-1
InstanceOf: Patient
Usage: #example
Description: "ICU Test Patient"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "ICU-TEST-001"
* name.family = "Intensiv"
* name.given = "Thomas"
* birthDate = 1959-01-28
* gender = #male

Instance: mii-exa-test-data-icu-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "ICU Test Encounter"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* period.start = "2024-05-01"
* period.end = "2024-05-14"
