// ============================================================================
// Tumormarker (2027-ballot.1: neu abgedecktes Profil)
// CA-125 passend zum Ovarialkarzinom (C56) der Test-Diagnose.
// ============================================================================
Instance: mii-exa-test-data-onko-tumormarker-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumormarker
Usage: #example
Description: "Onkologie Test Tumormarker - CA-125 erhöht (356 U/mL)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/tumormarker-befunde"
* identifier[analyseBefundCode].value = "TM-2021-000356"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-test-data-organization-charite)
* status = #final
* category[observation-category] = $observation-category#laboratory
* code.coding[loinc] = $loinc#10334-1 "Cancer Ag 125 [Units/volume] in Serum or Plasma"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-09-28"
* valueQuantity = 356 'U/mL' "U/mL"
* interpretation = $v3-ObservationInterpretation#H "High"
