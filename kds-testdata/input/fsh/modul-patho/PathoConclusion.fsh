// ============================================================================
// DIAGNOSTIC CONCLUSION - BIOPSY 
// ============================================================================

// Diagnostic Conclusion Grouper
Instance: mii-exa-test-data-patho-conclusion-grouper-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper
Usage: #example
Title: "Diagnostic Conclusion Grouper - Biopsy"
Description: "Grouper for all diagnostic conclusion findings in biopsy specimens"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22637-3
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* hasMember[+] = Reference(mii-exa-test-data-patho-histological-type-icdo-3)
* hasMember[+] = Reference(mii-exa-test-data-patho-morphology-free-text)
* hasMember[+] = Reference(mii-exa-test-data-patho-icdo-version)
* hasMember[+] = Reference(mii-exa-test-data-patho-primary-gleason-pattern)
* hasMember[+] = Reference(mii-exa-test-data-patho-secondary-gleason-pattern)
* hasMember[+] = Reference(mii-exa-test-data-patho-gleason-score-total)
* hasMember[+] = Reference(mii-exa-test-data-patho-percentage-gleason-45)
* hasMember[+] = Reference(mii-exa-test-data-patho-grading-group-isup)
* hasMember[+] = Reference(mii-exa-test-data-patho-histological-grade-who)
* hasMember[+] = Reference(mii-exa-test-data-patho-positive-cores-right)
* hasMember[+] = Reference(mii-exa-test-data-patho-positive-cores-left)
* hasMember[+] = Reference(mii-exa-test-data-patho-ratio-positive-cores)
* hasMember[+] = Reference(mii-exa-test-data-patho-percentage-tumor-total)
* hasMember[+] = Reference(mii-exa-test-data-patho-tumor-length-total)
* hasMember[+] = Reference(mii-exa-test-data-patho-perineural-infiltration)
* hasMember[+] = Reference(mii-exa-test-data-patho-seminal-vesicle-invasion)
* hasMember[+] = Reference(mii-exa-test-data-patho-lymphovascular-invasion)
* hasMember[+] = Reference(mii-exa-test-data-patho-periprostatatic-fat-invasion)
* hasMember[+] = Reference(mii-exa-test-data-patho-intraductal-carcinoma)
* hasMember[+] = Reference(mii-exa-test-data-patho-asap)
* hasMember[+] = Reference(mii-exa-test-data-patho-high-grade-pin)
* hasMember[+] = Reference(mii-exa-test-data-patho-granulomatous-prostatitis)
// derivedFrom references to microscopy findings
* derivedFrom[0] = Reference(mii-exa-test-data-patho-primaer-gleason-01)
* derivedFrom[+] = Reference(mii-exa-test-data-patho-sekundaer-gleason-01)
* derivedFrom[+] = Reference(mii-exa-test-data-patho-gleason-grading-01)
* derivedFrom[+] = Reference(mii-exa-test-data-patho-tumoranteil-01)
* meta.lastUpdated = "2024-01-20T16:00:00+01:00"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Diagnostische Schlussfolgerung: Azinäres Adenokarzinom der Prostata, Gleason 3+4=7, ISUP 2</div>"
* identifier.system = "https://www.charite.de/fhir/sid/patho/befund"
* identifier.value = "E_24_001_CONCLUSION"
* method = $sct#104157003 "Light microscopy (procedure)"
* note.text = "Diagnose auf Basis von Mikroskopie und Immunhistochemie beider Stanzen."
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)
* bodySite = $sct#41216001 "Prostate"

// Histological Type (ICD-O-3)
Instance: mii-exa-test-data-patho-histological-type-icdo-3
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histological Type ICD-O-3 - Biopsy"
Description: "Histological type according to ICD-O-3 classification"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $ICDO-3#8140/3 "Azinäres Adenokarzinom"
* valueCodeableConcept.coding.version = "3.2"

// Morphology Free Text
Instance: mii-exa-test-data-patho-morphology-free-text
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphology Free Text Description - Biopsy"
Description: "Free text description of tumor morphology"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueString = "Konventionelles Adenokarzinom der Prostata mit prominenten azidophilen Nukleolen"

// ICD-O Version
Instance: mii-exa-test-data-patho-icdo-version
InstanceOf: $mii-patho-finding
Usage: #example
Title: "ICD-O Version - Biopsy"
Description: "Version of ICD-O classification used"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#397005006 "World Health Organization tumor classification (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $ICDO-3_Auflagen#33 "ICD-O-3 2. Auflage 2019"

// Primary Gleason Pattern
Instance: mii-exa-test-data-patho-primary-gleason-pattern
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Primary Gleason Pattern (Epstein 2005) - Biopsy"
Description: "Primary Gleason pattern according to Epstein 2005"
// TODO Profilharmonisierung ausstehend: * meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[+] = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
* code.coding[+] = $sct#384994009 "Primary Gleason pattern (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $sct#369772003 "Gleason Pattern 3 (finding)"
* derivedFrom[0] = Reference(mii-exa-test-data-patho-primaer-gleason-01)

// Secondary Gleason Pattern
Instance: mii-exa-test-data-patho-secondary-gleason-pattern
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Secondary Gleason Pattern (Epstein 2005) - Biopsy"
Description: "Secondary Gleason pattern according to Epstein 2005"
// TODO Profilharmonisierung ausstehend: * meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[+] = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
* code.coding[+] = $sct#384995005 "Secondary Gleason pattern (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $sct#369773008 "Gleason Pattern 4 (finding)"
* derivedFrom[0] = Reference(mii-exa-test-data-patho-sekundaer-gleason-01)

// Gleason Score
Instance: mii-exa-test-data-patho-gleason-score-total
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Total Gleason Score - Biopsy"
Description: "Total Gleason score in biopsy specimens"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[+] = $loinc#35266-6 "Gleason score in Specimen Qualitative"
* code.coding[+] = $sct#385377005 "Gleason grade finding for prostatic cancer"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $sct#57403001 "Gleason grade score 7"
* meta.lastUpdated = "2024-01-20T16:00:00+01:00"
* identifier.system = "https://www.charite.de/fhir/sid/patho/befund"
* identifier.value = "E_24_001_GLEASON"
* method = $sct#104157003 "Light microscopy (procedure)"
* hasMember[+] = Reference(mii-exa-test-data-patho-primary-gleason-pattern)
* hasMember[+] = Reference(mii-exa-test-data-patho-secondary-gleason-pattern)
// component-DAR auf Finding-Ebene: Anteil Gleason-Muster 4/5 nicht bestimmbar.
// (Die Grouper-Profile tragen ihre eigenen component-DAR-Instanzen, siehe
//  PathoGrouperDataAbsent.fsh.)
* component.code = $loinc#44641-9 "Percent of Gleason pattern 4 and 5 in Prostate tumor"
* component.dataAbsentReason = $data-absent-reason#unknown "Unknown"
* derivedFrom[0] = Reference(mii-exa-test-data-patho-primary-gleason-pattern)
* derivedFrom[+] = Reference(mii-exa-test-data-patho-secondary-gleason-pattern)

// Percentage of Gleason Pattern 4/5
Instance: mii-exa-test-data-patho-percentage-gleason-45
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Percentage of Gleason Pattern 4/5 - Biopsy"
Description: "Percentage of tumor area with Gleason pattern 4 and 5"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area [Area Fraction] in Prostate tumor by Microscopy"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueQuantity.value = 30
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%

// Grading Group ISUP 2014/WHO 2016
Instance: mii-exa-test-data-patho-grading-group-isup
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Grading Group according to ISUP 2014/WHO 2016 - Biopsy"
Description: "Prostate cancer grade group according to ISUP 2014 and WHO 2016"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code.coding[+] = $sct#1812491000004107 "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $sct#1279714001 "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"

// Histological Grade WHO
Instance: mii-exa-test-data-patho-histological-grade-who
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histological Differentiation Grade WHO - Biopsy"
Description: "Histological differentiation grade according to WHO"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#21858-6 "Grade Cancer"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept.coding = $sct#1663004 "Moderately differentiated (qualifier value)"
* valueCodeableConcept.text = "G2: mäßig differenziert"

// Number of Positive Cores Right
Instance: mii-exa-test-data-patho-positive-cores-right
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Number of Positive Cores Right Side - Biopsy"
Description: "Number of tissue cores positive for carcinoma on the right side"
// TODO Profilharmonisierung ausstehend: * meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44651-8 "Tissue cores.positive.carcinoma in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* bodySite = $sct#24028007 "Right (qualifier value)"
* valueQuantity.value = 1


// Number of Positive Cores Left
Instance: mii-exa-test-data-patho-positive-cores-left
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Number of Positive Cores Left Side - Biopsy"
Description: "Number of tissue cores positive for carcinoma on the left side"
// TODO Profilharmonisierung ausstehend: * meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44651-8 "Tissue cores.positive.carcinoma in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* bodySite = $sct#7771000 "Left (qualifier value)"
* valueQuantity.value = 0

// Ratio of Positive to Total Cores
Instance: mii-exa-test-data-patho-ratio-positive-cores
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Ratio of Positive to Total Cores - Biopsy"
Description: "Ratio of positive cores to all examined cores"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#372303007 "Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueRatio.numerator.value = 1
* valueRatio.numerator.unit = "cores"
* valueRatio.denominator.value = 2
* valueRatio.denominator.unit = "cores"

// Percentage Tumor Total
Instance: mii-exa-test-data-patho-percentage-tumor-total
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Percentage Tumor Content Total - Biopsy"
Description: "Total percentage of tumor in all positive tissue cores"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44651-8 "Tissue cores.positive.carcinoma in Tissue core"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueQuantity.value = 40
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%

// Tumor Length Total
Instance: mii-exa-test-data-patho-tumor-length-total
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Total Tumor Length in mm - Biopsy"
Description: "Total linear length of carcinoma in millimeters"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44618-7 "Total linear mm of carcinoma"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueQuantity.value = 7.2
* valueQuantity.unit = "mm"
* valueQuantity.system = $ucum
* valueQuantity.code = #mm

// Perineural Infiltration
Instance: mii-exa-test-data-patho-perineural-infiltration
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Perineural Infiltration - Biopsy"
Description: "Presence of perineural invasion in cancer specimen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"

// Seminal Vesicle Invasion
Instance: mii-exa-test-data-patho-seminal-vesicle-invasion
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Seminal Vesicle Invasion - Biopsy"
Description: "Tumor invasion into seminal vesicles (typically not assessable in biopsy)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44626-0 "Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"

// Lymphovascular Invasion
Instance: mii-exa-test-data-patho-lymphovascular-invasion
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Lymphovascular Invasion - Biopsy"
Description: "Lymphatic and vascular invasion in cancer specimen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#33761-8 "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"

// Periprostatic Fat Invasion
Instance: mii-exa-test-data-patho-periprostatatic-fat-invasion
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Periprostatic Fat Invasion - Biopsy"
Description: "Tumor invasion into periprostatic connective and adipose tissue (typically not assessable in biopsy)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#44625-2 "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"

// Intraductal Carcinoma
Instance: mii-exa-test-data-patho-intraductal-carcinoma
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Intraductal Carcinoma - Biopsy"
Description: "Presence of intraductal carcinoma"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#1162814007 "Non-infiltrating intraductal carcinoma (morphologic abnormality)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"

// ASAP
Instance: mii-exa-test-data-patho-asap
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Atypical Small Acinar Proliferation (ASAP) - Biopsy"
Description: "Presence of atypical small acinar proliferation"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $sct#16294321000119104 "Atypical small acinar proliferation of prostate (disorder)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"

// High-grade PIN
Instance: mii-exa-test-data-patho-high-grade-pin
InstanceOf: $mii-patho-finding
Usage: #example
Title: "High-grade Prostatic Intraepithelial Neoplasia - Biopsy"
Description: "Presence of high-grade prostatic intraepithelial neoplasia"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#94666-5 "High grade prostatic intraepithelial neoplasia [Presence] in Specimen by Microscopy"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"

// Granulomatous Prostatitis
Instance: mii-exa-test-data-patho-granulomatous-prostatitis
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Granulomatous Prostatitis - Biopsy"
Description: "Presence of granulomatous prostatitis"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22637-3
* code = $loinc#94665-7 "Granulomatous prostatitis [Presence] in Specimen by Microscopy"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-20"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"