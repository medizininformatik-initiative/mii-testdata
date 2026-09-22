// TNM Staging nach Biopsie - cT2a
Instance: mii-exa-test-data-patho-tnm-t-1
InstanceOf: $mii-tnm-t
Usage: #example
Title: "Klinisches T-Staging"
Description: "Klinische T-Kategorie nach Biopsie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $loinc#21905-5 "Primary tumor.clinical [Class] Cancer"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* valueCodeableConcept = https://www.uicc.org/resources/tnm#T2a "T2a"
* effectiveDateTime = "2024-01-22T10:00:00+01:00"
* note.text = "Tumor tastbar, weniger als die Hälfte eines Lappens befallend"

// TNM Staging - cN0
Instance: mii-exa-test-data-patho-tnm-n-1
InstanceOf: $mii-tnm-n
Usage: #example
Title: "Klinisches N-Staging"
Description: "Klinische N-Kategorie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $loinc#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* valueCodeableConcept = https://www.uicc.org/resources/tnm#N0 "N0"
* effectiveDateTime = "2024-01-22T10:00:00+01:00"
* note.text = "Keine regionalen Lymphknotenmetastasen nachweisbar"

// TNM Staging - cM0
Instance: mii-exa-test-data-patho-tnm-m-1
InstanceOf: $mii-tnm-m
Usage: #example
Title: "Klinisches M-Staging"
Description: "Klinische M-Kategorie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $loinc#21907-1 "Distant metastases.clinical [Class] Cancer"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* valueCodeableConcept = https://www.uicc.org/resources/tnm#M0 "M0"
* effectiveDateTime = "2024-01-22T10:00:00+01:00"
* note.text = "Keine Fernmetastasen nachweisbar"