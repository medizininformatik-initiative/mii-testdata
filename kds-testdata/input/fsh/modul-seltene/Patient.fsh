// ============================================================================
// MII Seltene Erkrankungen Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-seltene-patient-1
InstanceOf: Patient
Usage: #example
Description: "Seltene Erkrankungen Test Patient"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "SELT-TEST-001"
* name.family = "Seltenfall"
* name.given = "Luisa"
* birthDate = 1995-02-10
* gender = #female

Instance: mii-exa-test-data-seltene-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Seltene Erkrankungen Test Encounter"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* period.start = "2024-03-01"
* period.end = "2024-03-25"

// Stub resources for Seltene (needed for referential integrity)
Instance: mii-exa-test-data-seltene-labobs-1
InstanceOf: Observation
Usage: #example
Description: "Seltene Lab Observation - Enzymaktivitaet"
* insert TestDataLabel
* status = #final
* code = http://loinc.org#2157-6 "Creatine kinase [Enzymatic activity/volume] in Serum or Plasma"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* valueQuantity = 450 'U/L'

Instance: mii-exa-test-data-seltene-molgen-befundbericht-1
InstanceOf: DiagnosticReport
Usage: #example
Description: "Seltene Molgen Befundbericht Stub"
* insert TestDataLabel
* status = #final
* code = http://loinc.org#51969-4 "Genetic analysis summary report"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* effectiveDateTime = "2024-03-15"

Instance: mii-exa-test-data-seltene-molgen-variante-1
InstanceOf: Observation
Usage: #example
Description: "Seltene Molgen Variante Stub"
* insert TestDataLabel
* status = #final
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* valueCodeableConcept = http://loinc.org#LA6576-8 "Positive"
