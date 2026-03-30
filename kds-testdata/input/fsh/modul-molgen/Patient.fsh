// ============================================================================
// MII Molgen Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-molgen-patient-1
InstanceOf: Patient
Usage: #example
Description: "Molgen Test Patient 1 (Erbliche Tumorerkrankung)"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "MOL-TEST-001"
* name.family = "Genomisch"
* name.given = "Petra"
* birthDate = 1985-08-14
* gender = #female

Instance: mii-exa-test-data-molgen-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Molgen Test Encounter 1"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* period.start = "2024-03-01"
* period.end = "2024-03-20"

Instance: mii-exa-test-data-molgen-patient-2
InstanceOf: Patient
Usage: #example
Description: "Molgen Test Patient 2 (NSCLC)"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "MOL-TEST-002"
* name.family = "Sequenziert"
* name.given = "Markus"
* birthDate = 1972-11-25
* gender = #male

Instance: mii-exa-test-data-molgen-encounter-2
InstanceOf: Encounter
Usage: #example
Description: "Molgen Test Encounter 2"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-molgen-patient-2)
* period.start = "2024-04-01"
* period.end = "2024-04-15"
