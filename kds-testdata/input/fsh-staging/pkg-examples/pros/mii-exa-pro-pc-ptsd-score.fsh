Instance: mii-exa-pro-pc-ptsd-score
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue#pc-ptsd-total "PC-PTSD Total Score (0-4)"
* subject = Reference(mii-exa-pro-patient)
* valueQuantity = 3 '{score}' "{score}"
* derivedFrom = Reference(mii-exa-pro-pc-ptsd-response)
* status = #final
* effectiveDateTime = "2026-09-01"