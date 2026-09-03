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

// Stub specimens for molgen (needed for referential integrity)
Instance: mii-exa-test-data-molgen-specimen-1
InstanceOf: Specimen
Usage: #example
Description: "Molgen Specimen 1 - Blutprobe Patient 1"
* insert TestDataLabel
* status = #available
* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLD "Whole blood"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* collection.collectedDateTime = "2024-03-05"

Instance: mii-exa-test-data-molgen-specimen-2
InstanceOf: Specimen
Usage: #example
Description: "Molgen Specimen 2 - Tumorgewebe Patient 2"
* insert TestDataLabel
* status = #available
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TISS "Tissue"
* subject = Reference(mii-exa-test-data-molgen-patient-2)
* collection.collectedDateTime = "2024-04-03"

Instance: mii-exa-test-data-molgen-specimen-3
InstanceOf: Specimen
Usage: #example
Description: "Molgen Specimen 3 - Blutprobe Patient 2"
* insert TestDataLabel
* status = #available
* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLD "Whole blood"
* subject = Reference(mii-exa-test-data-molgen-patient-2)
* collection.collectedDateTime = "2024-04-03"

Instance: mii-exa-test-data-molgen-diagnose-1
InstanceOf: Condition
Usage: #example
Description: "Molgen Diagnose - Erbliches Tumorsyndrom"
* insert TestDataLabel
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C18.7 "Bösartige Neubildung: Colon sigmoideum"
* subject = Reference(mii-exa-test-data-molgen-patient-1)

Instance: mii-exa-test-data-molgen-diagnose-2
InstanceOf: Condition
Usage: #example
Description: "Molgen Diagnose - NSCLC"
* insert TestDataLabel
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C34.1 "Bösartige Neubildung: Oberlappen (-Bronchus)"
* subject = Reference(mii-exa-test-data-molgen-patient-2)
