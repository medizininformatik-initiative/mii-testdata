// -------------------------------------------------------
// Patho Lists for Patient-1: Prostate Biopsy
// -------------------------------------------------------

// =====================================================
// ACTIVE PROBLEMS LIST
// =====================================================
Instance: mii-exa-test-data-patient-1-patho-active-problems-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list
Usage: #example
Description: "Patho Active Problems List: Prostataerkrankungen bei Patient-1"
* insert TestDataLabel
* status = #current
* mode = #snapshot
* code.coding = $loinc#11450-4 "Problem list - Reported"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* date = "2024-02-16"
* entry[+].item = Reference(mii-exa-test-data-patient-1-patho-problem-list-item-1)

// =====================================================
// HISTORY OF PRESENT ILLNESS
// =====================================================
Instance: mii-exa-test-data-patient-1-patho-hopi-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness
Usage: #example
Description: "Patho History of Present Illness: Klinische Anamnese bei Prostata-Stanzbiopsie"
* insert TestDataLabel
* status = #current
* mode = #snapshot
* code.coding = $loinc#8684-3 "History of Present illness"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* date = "2024-02-15"
* entry[+].item = Reference(mii-exa-test-data-patient-1-patho-problem-list-item-1)
