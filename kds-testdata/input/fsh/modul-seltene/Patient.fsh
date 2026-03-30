// ============================================================================
// MII Seltene Erkrankungen Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-seltene-patient-1
InstanceOf: Patient
Usage: #example
Description: "Seltene Erkrankungen Test Patient"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "SELT-TEST-001"
* name.family = "Seltenfall"
* name.given = "Luisa"
* birthDate = 1995-02-10
* gender = #female

Instance: mii-exa-test-data-seltene-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Seltene Erkrankungen Test Encounter"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* period.start = "2024-03-01"
* period.end = "2024-03-25"
