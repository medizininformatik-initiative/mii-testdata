Instance: mii-exa-pro-phq-15-observation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-15
Usage: #example
* derivedFrom = Reference(mii-exa-pro-phq-15-response)
* valueQuantity = 15 '{score}' "{score}"
* code = http://loinc.org#70273-8 "Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]"
* status = #final
* subject = Reference(mii-exa-pro-patient)
* effectiveDateTime = "2024-03-15T10:00:00Z"