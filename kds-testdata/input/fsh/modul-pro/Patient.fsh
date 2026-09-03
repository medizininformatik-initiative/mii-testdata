// ============================================================================
// MII PRO Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-pro-patient-1
InstanceOf: Patient
Usage: #example
Description: "PRO Test Patient"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "PRO-TEST-001"
* name.family = "Fragebogen"
* name.given = "Anna"
* birthDate = 1988-12-05
* gender = #female

Instance: mii-exa-test-data-pro-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "PRO Test Encounter"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* period.start = "2024-06-01"
* period.end = "2024-06-15"
