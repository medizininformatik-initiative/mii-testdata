Instance: mii-exa-pro-whodas12-score-simple-sum
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-whodas12
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code.coding[0] = http://snomed.info/sct#715823002 "WHODAS (World Health Organization Disability Assessment Schedule) 2.0 score"
* code.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue#whodas12-simple-sum "WHODAS 2.0 12-Item Simple Sum Score (0-48)"
* subject = Reference(mii-exa-pro-patient)
* valueQuantity = 24 '{score}' "{score}"
* derivedFrom = Reference(mii-exa-pro-whodas12-response-01)
* status = #final
* effectiveDateTime = "2026-02-01"