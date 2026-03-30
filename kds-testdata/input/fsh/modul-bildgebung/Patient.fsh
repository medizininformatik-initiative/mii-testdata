// ============================================================================
// MII Bildgebung Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-bildgebung-patient-1
InstanceOf: Patient
Usage: #example
Description: "Bildgebung Test Patient"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "BILD-TEST-001"
* name.family = "Mustermann"
* name.given = "Andreas"
* birthDate = 1968-07-22
* gender = #male

Instance: mii-exa-test-data-bildgebung-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Bildgebung Test Encounter"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-bildgebung-patient-1)
* period.start = "2024-03-01"
* period.end = "2024-03-15"

// Stub resources for Bildgebung (needed for referential integrity)
Instance: mii-exa-test-data-bildgebung-diagnose-1
InstanceOf: Condition
Usage: #example
Description: "Bildgebung Diagnose - Lungentumor"
* insert TestDataLabel
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C34.1 "Bösartige Neubildung: Oberlappen (-Bronchus)"
* subject = Reference(mii-exa-test-data-bildgebung-patient-1)

Instance: mii-exa-test-data-bildgebung-labobs-1
InstanceOf: Observation
Usage: #example
Description: "Bildgebung Lab - Tumorgröße"
* insert TestDataLabel
* status = #final
* code = http://loinc.org#21889-1 "Size Tumor"
* subject = Reference(mii-exa-test-data-bildgebung-patient-1)
* valueQuantity = 32 'mm'

Instance: mii-exa-test-data-bildgebung-medrequest-1
InstanceOf: MedicationRequest
Usage: #example
Description: "Bildgebung MedRequest - Kontrastmittel"
* insert TestDataLabel
* status = #completed
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-dalbavancin)
* subject = Reference(mii-exa-test-data-bildgebung-patient-1)
