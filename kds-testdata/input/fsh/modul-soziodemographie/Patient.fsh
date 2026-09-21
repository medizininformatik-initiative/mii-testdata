// ============================================================================
// MII Soziodemographie Test Data - Patient
// (Die Profile des Moduls referenzieren keinen Encounter, daher nur Patient.)
// ============================================================================

Instance: mii-exa-test-data-soziodemographie-patient-1
InstanceOf: Patient
Usage: #example
Description: "Soziodemographie Test Patient"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "SDD-TEST-001"
* name.family = "Beispielmann"
* name.given = "Renate"
* birthDate = 1958-03-17
* gender = #female
