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

// Stub resources for MTB (needed for referential integrity)
Instance: mii-exa-test-data-mtb-labobs-ecog-1
InstanceOf: Observation
Usage: #example
Description: "MTB ECOG Performance Status"
* insert TestDataLabel
* status = #final
* code = http://loinc.org#89247-1 "ECOG Performance Status score"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* valueInteger = 1

Instance: mii-exa-test-data-mtb-labobs-vorbefund-1
InstanceOf: Observation
Usage: #example
Description: "MTB Vorbefund Lab"
* insert TestDataLabel
* status = #final
* code = http://loinc.org#55233-8 "Circulating cell-free genomic DNA [Mass/volume] in Plasma"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* valueQuantity = 15.2 'ng/mL'

Instance: mii-exa-test-data-mtb-specimen-1
InstanceOf: Specimen
Usage: #example
Description: "MTB Tumorgewebe"
* insert TestDataLabel
* status = #available
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TISS "Tissue"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* collection.collectedDateTime = "2024-01-20"
