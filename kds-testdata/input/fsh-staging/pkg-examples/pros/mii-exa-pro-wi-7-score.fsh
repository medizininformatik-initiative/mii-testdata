Instance: mii-exa-pro-wi-7-score
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue#wi-7-total "Whiteley-7 Total Score (0-7)"
* subject = Reference(mii-exa-pro-patient)
* valueQuantity = 3 '{score}' "{score}"
* derivedFrom = Reference(mii-exa-pro-wi-7-response)
* status = #final
* effectiveDateTime = "2026-09-01"