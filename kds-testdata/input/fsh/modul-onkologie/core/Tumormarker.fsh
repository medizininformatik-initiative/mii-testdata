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
* effectiveDateTime.extension[QuelleKlinischesBezugsdatum].valueCoding = $SCT#399445004 "Specimen collection date (observable entity)"
* valueQuantity = 356 'U/mL' "U/mL"
* valueQuantity.value.extension[quantityPrecision].valueInteger = 0
* valueQuantity.comparator = #>
* interpretation = $v3-ObservationInterpretation#H "High"
* basedOn = Reference(mii-exa-test-data-onko-therapieempfehlung-op-1)
* category[observation-category].coding.display = "Laboratory"
* device = Reference(mii-exa-test-data-onko-sequencer-1)
* device.identifier.system = "https://www.charite.de/fhir/sid/geraete"
* device.identifier.value = "ANALYZER-0815"
* specimen.identifier.system = "https://www.charite.de/fhir/sid/proben"
* specimen.identifier.value = "PROBE-2021-000356"
* encounter.identifier.system = "https://www.charite.de/fhir/sid/fallnummer"
* encounter.identifier.value = "F-2021-004711"
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "ONKO-TEST-001"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* issued = "2021-09-28T15:30:00+02:00"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #414464004
* method.coding.display = "Immunoassay method (procedure)"
* modifierExtension[interpretationsbeeinflussendeEigenschaft].valueCoding = $SCT#118127007 "Specimen lipemic (finding)"
* note.text = "CA-125 deutlich erhöht, passend zum Ovarialkarzinom."
* referenceRange.low = 0 'U/mL'
* referenceRange.high = 35 'U/mL'
* specimen = Reference(mii-exa-test-data-onko-specimen-1)

// Variante: valueCodeableConcept (MS-Choice-Alternative, inkl. coding.version)
Instance: mii-exa-test-data-onko-tumormarker-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumormarker
Usage: #example
Description: "Onkologie Test Tumormarker - semiquantitatives Ergebnis (valueCodeableConcept)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[observation-category] = $observation-category#laboratory
* code.coding[loinc] = $loinc#10334-1 "Cancer Ag 125 [Units/volume] in Serum or Plasma"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/tumormarker-befunde"
* identifier[analyseBefundCode].value = "TM-2021-000411"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-test-data-organization-charite)
* effectiveDateTime = "2021-11-15"
* valueCodeableConcept.coding = $SCT#10828004 "Positive (qualifier value)"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20240201"

// Variante: valueRange (MS-Choice-Alternative)
Instance: mii-exa-test-data-onko-tumormarker-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumormarker
Usage: #example
Description: "Onkologie Test Tumormarker - Bereichsangabe (valueRange)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[observation-category] = $observation-category#laboratory
* code.coding[loinc] = $loinc#10334-1 "Cancer Ag 125 [Units/volume] in Serum or Plasma"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/tumormarker-befunde"
* identifier[analyseBefundCode].value = "TM-2021-000502"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-test-data-organization-charite)
* effectiveDateTime = "2021-12-15"
* valueRange.low = 300 'U/mL'
* valueRange.high = 400 'U/mL'

// Variante: valueRatio (MS-Choice-Alternative)
Instance: mii-exa-test-data-onko-tumormarker-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumormarker
Usage: #example
Description: "Onkologie Test Tumormarker - Verhaeltnisangabe (valueRatio)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[observation-category] = $observation-category#laboratory
* code.coding[loinc] = $loinc#10334-1 "Cancer Ag 125 [Units/volume] in Serum or Plasma"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/tumormarker-befunde"
* identifier[analyseBefundCode].value = "TM-2022-000017"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-test-data-organization-charite)
* effectiveDateTime = "2022-01-15"
* valueRatio.numerator = 1 'U/mL'
* valueRatio.denominator = 128 'U/mL'

// Variante: dataAbsentReason (einzige Onko-DAR-Variante gemaess Testdaten-Policy)
Instance: mii-exa-test-data-onko-tumormarker-5
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumormarker
Usage: #example
Description: "Onkologie Test Tumormarker - nicht bestimmbar (dataAbsentReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[observation-category] = $observation-category#laboratory
* code.coding[loinc] = $loinc#10334-1 "Cancer Ag 125 [Units/volume] in Serum or Plasma"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/tumormarker-befunde"
* identifier[analyseBefundCode].value = "TM-2022-000058"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-test-data-organization-charite)
* effectiveDateTime = "2022-02-15"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#error "Error"
