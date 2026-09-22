Instance: mii-exa-pro-dass-dass21-score-stress-raw
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code.coding[0] = http://snomed.info/sct#416767005 "Depression anxiety stress scales stress score"
* code.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue#dass21-stress-raw "DASS-21 Stress Raw Score"
* subject = Reference(mii-exa-pro-patient)
* valueQuantity = 11 '{score}' "{score}"
* derivedFrom = Reference(mii-exa-pro-dass-dass21-response-01)
* status = #final
* effectiveDateTime = "2026-02-01"