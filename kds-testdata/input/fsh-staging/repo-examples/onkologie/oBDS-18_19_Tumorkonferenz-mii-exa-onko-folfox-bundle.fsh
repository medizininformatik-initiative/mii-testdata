Instance: mii-exa-onko-folfox-workflow-bundle
InstanceOf: Bundle
Usage: #example
Title: "FOLFOX Workflow Bundle - Komplettes Beispiel von Tumorkonferenz bis Therapie"
Description: "Comprehensive Bundle demonstrating complete FOLFOX workflow from tumor board recommendation through actual treatment, with all resources for reference resolution validation"
* type = #collection
* timestamp = "2024-03-15T10:00:00Z"

// ENTRY: PATIENT
* entry[0].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-folfox-patient"
* entry[=].resource = mii-exa-onko-folfox-patient

// ENTRY: ENCOUNTER DIAGNOSESTELLUNG
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-folfox-encounter-diagnosis"
* entry[=].resource = mii-exa-onko-folfox-encounter-diagnosis

// ENTRY: ENCOUNTER SIGMARESEKTION
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-folfox-encounter-surgery"
* entry[=].resource = mii-exa-onko-folfox-encounter-surgery

// ENTRY: ENCOUNTER CHEMOTHERAPIE
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-folfox-encounter-chemo"
* entry[=].resource = mii-exa-onko-folfox-encounter-chemo

// ENTRY: COLORECTAL CANCER DIAGNOSIS
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-colorectal-cancer-diagnosis"
* entry[=].resource = mii-exa-onko-colorectal-cancer-diagnosis

// ENTRY: TNM T
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-colorectal-tnm-t"
* entry[=].resource = mii-exa-onko-colorectal-tnm-t

// ENTRY: TNM N
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-colorectal-tnm-n"
* entry[=].resource = mii-exa-onko-colorectal-tnm-n

// ENTRY: TNM M
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-colorectal-tnm-m"
* entry[=].resource = mii-exa-onko-colorectal-tnm-m

// ENTRY: TNM Combined
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-colorectal-tnm"
* entry[=].resource = mii-exa-onko-colorectal-tnm

// ENTRY: TUMOR BOARD DECISION (CarePlan)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CarePlan/mii-exa-onko-tumorkonferenz-folfox"
* entry[=].resource = mii-exa-onko-tumorkonferenz-folfox

// ENTRY: COMBINATION THERAPY RECOMMENDATION (RequestGroup)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/RequestGroup/mii-exa-onko-folfox-requestgroup"
* entry[=].resource = mii-exa-onko-folfox-requestgroup

// ENTRY: 5-FU MedicationRequest
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/MedicationRequest/mii-exa-onko-folfox-5fu-request"
* entry[=].resource = mii-exa-onko-folfox-5fu-request

// ENTRY: Leucovorin MedicationRequest
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/MedicationRequest/mii-exa-onko-folfox-leucovorin-request"
* entry[=].resource = mii-exa-onko-folfox-leucovorin-request

// ENTRY: Oxaliplatin MedicationRequest
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/MedicationRequest/mii-exa-onko-folfox-oxaliplatin-request"
* entry[=].resource = mii-exa-onko-folfox-oxaliplatin-request

// ENTRY: Sigmoid Resection (Main Procedure)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-sigmoid-resection"
* entry[=].resource = mii-exa-onko-sigmoid-resection

// ENTRY: Sigmoid Resection Part 1
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-sigmoid-resection-part1"
* entry[=].resource = mii-exa-onko-sigmoid-resection-part1

// ENTRY: Sigmoid Resection Part 2
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-sigmoid-resection-part2"
* entry[=].resource = mii-exa-onko-sigmoid-resection-part2

// ENTRY: Sigmoid Resection Part 3
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-sigmoid-resection-part3"
* entry[=].resource = mii-exa-onko-sigmoid-resection-part3

// ENTRY: FOLFOX Chemotherapy Procedure
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-folfox-procedure"
* entry[=].resource = mii-exa-onko-folfox-procedure

// ENTRY: 5-FU MedicationStatement
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/MedicationStatement/mii-exa-onko-folfox-5fu-statement"
* entry[=].resource = mii-exa-onko-folfox-5fu-statement

// ENTRY: Leucovorin MedicationStatement
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/MedicationStatement/mii-exa-onko-folfox-leucovorin-statement"
* entry[=].resource = mii-exa-onko-folfox-leucovorin-statement

// ENTRY: Oxaliplatin MedicationStatement
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/MedicationStatement/mii-exa-onko-folfox-oxaliplatin-statement"
* entry[=].resource = mii-exa-onko-folfox-oxaliplatin-statement

// ENTRY: 6-Month Follow-up
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-folfox-verlauf-6months"
* entry[=].resource = mii-exa-onko-folfox-verlauf-6months
