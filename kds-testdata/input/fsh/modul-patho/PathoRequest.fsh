Instance: mii-exa-test-data-patient-1-patho-request-1
InstanceOf: mii-pr-patho-service-request
Usage: #example
Title: "MII EXA Patho Request"
Description: "Pathology Service Request Example"
* identifier[+].type = $v2-0203#PLAC
* identifier[=].value = "KHXX_ENDO_18.123451"
* identifier[=].system = "https://www.charite.de/fhir/sid/untersuchungsauftrag"
* identifier[+].type = $v2-0203#FILL 
* identifier[=].value = "E18-321654"
* identifier[=].system = "https://www.charite.de/fhir/sid/untersuchungsauftrag"
* status = #completed
* intent = #order
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* requester = Reference(mii-exa-test-data-organization-charite)
* reasonCode = $sct#266987004 "History of malignant neoplasm (situation)"
* code = $sct#44977009 "Cytopathology procedure, cell block preparation (procedure)"
* supportingInfo[anamnesis] = Reference(mii-exa-test-data-patient-1-patho-history-of-present-illness)
* supportingInfo[activeProblems] = Reference(mii-exa-test-data-patient-1-patho-active-problems-list)

Instance: mii-exa-test-data-patient-1-patho-problem-list-item-1
InstanceOf: mii-pr-patho-problem-list-item
Usage: #example
Title: "MII EXA Patho Problem List Item 1"
Description: "Pathology Problem List Item Example"
* category = $cs-hl7-condition-category#problem-list-item
* code = $sct#363346000 "Malignant neoplastic disease (disorder)"
* subject = Reference(mii-exa-test-data-patient-1)

Instance: mii-exa-test-data-patient-1-patho-problem-list-item-2
InstanceOf: mii-pr-patho-problem-list-item
Usage: #example
Title: "MII EXA Patho Problem List Item 2"
Description: "Pathology Problem List Item Example"
* category = $cs-hl7-condition-category#problem-list-item
* code = $sct#266987004 "History of malignant neoplasm (situation)"
* subject = Reference(mii-exa-test-data-patient-1)

Instance: mii-exa-test-data-patient-1-patho-history-of-present-illness
InstanceOf: mii-pr-patho-history-of-present-illness
Usage: #example
Title: "MII EXA Patho History Of Present Illness"
Description: "Pathology History of Present Illness List Example"
* status = #current 
* mode = #snapshot
* code = $loinc#8684-3 "History of Present illness"
* subject = Reference(mii-exa-test-data-patient-1)
* entry.item = Reference(mii-exa-test-data-patient-1-patho-problem-list-item-2)

Instance: mii-exa-test-data-patient-1-patho-active-problems-list
InstanceOf: mii-pr-patho-active-problems-list
Usage: #example
Title: "MII EXA Patho Active Problems List"
Description: "Pathology Active Problems List List Example"
* status = #current 
* mode = #snapshot
* code = $loinc#11450-4 "Problem list - Reported"
* subject = Reference(mii-exa-test-data-patient-1)
* entry.item = Reference(mii-exa-test-data-patient-1-patho-problem-list-item-1)