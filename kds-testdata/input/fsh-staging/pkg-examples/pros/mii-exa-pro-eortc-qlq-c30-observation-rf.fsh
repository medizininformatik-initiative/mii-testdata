Instance: mii-exa-pro-eortc-qlq-c30-observation-rf
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue#eortc-qlq-c30-rf "EORTC QLQ-C30 Role Functioning Score"
* subject = Reference(mii-exa-pro-patient)
* valueQuantity = 83.33 '{score}' "{score}"
* derivedFrom = Reference(mii-exa-pro-eortc-qlq-c30-response)
* status = #final
* effectiveDateTime = "2024-01-15T10:30:00Z"