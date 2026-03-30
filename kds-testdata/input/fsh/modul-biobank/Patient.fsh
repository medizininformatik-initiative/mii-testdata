// ============================================================================
// MII Biobank Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-biobank-patient-1
InstanceOf: Patient
Usage: #example
Description: "Biobank Test Patient 1"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "BIO-TEST-001"
* name.family = "Musterfrau"
* name.given = "Sabine"
* birthDate = 1975-11-03
* gender = #female

Instance: mii-exa-test-data-biobank-patient-2
InstanceOf: Patient
Usage: #example
Description: "Biobank Test Patient 2"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "BIO-TEST-002"
* name.family = "Testfall"
* name.given = "Martin"
* birthDate = 1980-04-18
* gender = #male
