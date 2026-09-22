Instance: mii-exa-pro-dass-dass21-score-depression-equiv
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code.coding[0] = http://snomed.info/sct#416954004 "Depression anxiety stress scales depression score"
* code.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue#dass21-depression-equiv "DASS-21 Depression DASS-42 Equivalent Score"
* subject = Reference(mii-exa-pro-patient)
* valueQuantity = 24 '{score}' "{score}"
* derivedFrom = Reference(mii-exa-pro-dass-dass21-response-01)
* status = #final
* effectiveDateTime = "2026-02-01"