// -------------------------------------------------------
// Patho Problem List Item (Condition) for Patient-1
// -------------------------------------------------------

Instance: mii-exa-test-data-patient-1-patho-problem-list-item-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item
Usage: #example
Description: "Patho Problem List Item: PSA-Erhöhung bei V.a. Prostatakarzinom"
* insert TestDataLabel
* category[problem-list-item].coding = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code.coding[+] = $sct#399068003 "Malignant neoplasm of prostate"
* code.coding[+] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C61 "Bösartige Neubildung der Prostata"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* recordedDate = "2024-02-16"
