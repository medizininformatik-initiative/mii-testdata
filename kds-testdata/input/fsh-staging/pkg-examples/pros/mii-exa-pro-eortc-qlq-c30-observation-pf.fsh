Instance: mii-exa-pro-eortc-qlq-c30-observation-pf
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code.coding[0] = http://snomed.info/sct#273446001 "European Organisation for Research and Treatment of Cancer - Quality of Life questionnaire (assessment scale)"
* code.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue#eortc-qlq-c30-pf "EORTC QLQ-C30 Physical Functioning Score"
* subject = Reference(mii-exa-pro-patient)
* valueQuantity = 73.33 '{score}' "{score}"
* derivedFrom = Reference(mii-exa-pro-eortc-qlq-c30-response)
* method.text = "EORTC QLQ-C30 Version 3.0 Scoring Manual"
* status = #final
* effectiveDateTime = "2024-01-15T10:30:00Z"