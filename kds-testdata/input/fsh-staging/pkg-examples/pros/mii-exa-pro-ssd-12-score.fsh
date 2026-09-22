Instance: mii-exa-pro-ssd-12-score
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue#ssd-12-total "SSD-12 Total Score (0-48)"
* subject = Reference(mii-exa-pro-patient)
* valueQuantity = 24 '{score}' "{score}"
* derivedFrom = Reference(mii-exa-pro-ssd-12-response)
* status = #final
* effectiveDateTime = "2026-09-01"