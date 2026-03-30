// ============================================================================
// MII Dokument Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-dokument-patient-1
InstanceOf: Patient
Usage: #example
Description: "Dokument Test Patient"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "DOK-TEST-001"
* name.family = "Beispiel"
* name.given = "Maria"
* birthDate = 1982-09-15
* gender = #female

Instance: mii-exa-test-data-dokument-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Dokument Test Encounter"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-dokument-patient-1)
* period.start = "2024-04-01"
* period.end = "2024-04-10"
