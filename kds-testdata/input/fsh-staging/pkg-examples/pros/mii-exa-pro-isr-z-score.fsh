Instance: mii-exa-pro-isr-z-score
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue#isr-z-mean "ISR-Z Skalenwert (Mittelwert 0-4)"
* subject = Reference(mii-exa-pro-patient)
* valueQuantity = 2 '{score}' "{score}"
* derivedFrom = Reference(mii-exa-pro-isr-z-response)
* status = #final
* effectiveDateTime = "2026-09-01"