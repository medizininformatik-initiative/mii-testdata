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

Instance: mii-exa-test-data-biobank-patient-3
InstanceOf: Patient
Usage: #example
Description: "Biobank Test Patient 3"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "BIO-TEST-003"
* name.family = "Spender"
* name.given = "Claudia"
* birthDate = 1962-05-22
* gender = #female

Instance: mii-exa-test-data-biobank-patient-4
InstanceOf: Patient
Usage: #example
Description: "Biobank Test Patient 4"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "BIO-TEST-004"
* name.family = "Probenspender"
* name.given = "Dirk"
* birthDate = 1978-09-11
* gender = #male

Instance: mii-exa-test-data-biobank-patient-5
InstanceOf: Patient
Usage: #example
Description: "Biobank Test Patient 5"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "BIO-TEST-005"
* name.family = "Gewebe"
* name.given = "Eva"
* birthDate = 1991-01-30
* gender = #female

Instance: mii-exa-test-data-biobank-patient-6
InstanceOf: Patient
Usage: #example
Description: "Biobank Test Patient 6"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "BIO-TEST-006"
* name.family = "Blutprobe"
* name.given = "Frank"
* birthDate = 1955-12-07
* gender = #male

Instance: mii-exa-test-data-biobank-patient-7
InstanceOf: Patient
Usage: #example
Description: "Biobank Test Patient 7"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "BIO-TEST-007"
* name.family = "Serum"
* name.given = "Greta"
* birthDate = 1987-03-15
* gender = #female

Instance: mii-exa-test-data-biobank-patient-8
InstanceOf: Patient
Usage: #example
Description: "Biobank Test Patient 8"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "BIO-TEST-008"
* name.family = "Plasma"
* name.given = "Heinrich"
* birthDate = 1969-07-28
* gender = #male

Instance: mii-exa-test-data-biobank-patient-9
InstanceOf: Patient
Usage: #example
Description: "Biobank Test Patient 9"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "BIO-TEST-009"
* name.family = "Biopsie"
* name.given = "Ingrid"
* birthDate = 1983-10-04
* gender = #female

// Stub diagnoses for biobank specimens (referential integrity)
Instance: mii-exa-test-data-biobank-diagnose-1
InstanceOf: Condition
Usage: #example
Description: "Biobank Diagnose Patient 1"
* insert TestDataLabel
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* code.text = "Biobank-relevante Diagnose"
* subject = Reference(mii-exa-test-data-biobank-patient-1)
