// ============================================================================
// MII MTB Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-mtb-patient-1
InstanceOf: Patient
Usage: #example
Description: "MTB Test Patient"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "MTB-TEST-001"
* name.family = "Tumorfall"
* name.given = "Elena"
* birthDate = 1971-04-12
* gender = #female

Instance: mii-exa-test-data-mtb-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "MTB Test Encounter"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* period.start = "2024-01-15"
* period.end = "2024-06-30"
