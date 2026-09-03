// ============================================================================
// MII Onkologie Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-onko-patient-1
InstanceOf: Patient
Usage: #example
Description: "Onkologie Test Patient - Synthetic patient for comprehensive oncology testing"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "ONKO-TEST-001"
* name.family = "Musterperson"
* name.given = "Kim"
* birthDate = 1956-03-14
* gender = #female

Instance: mii-exa-test-data-onko-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Onkologie Test Encounter - Inpatient oncology encounter"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* period.start = "2021-06-10"
* period.end = "2021-10-15"
