Instance: mii-exa-pro-gad-7-score
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code.coding[0] = http://loinc.org#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* code.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue#phq-gad7-total "GAD-7 Total Score (0-21)"
* subject = Reference(mii-exa-pro-patient)
* valueQuantity = 7 '{score}' "{score}"
* derivedFrom = Reference(mii-exa-pro-gad-7-response)
* status = #final
* effectiveDateTime = "2026-09-02"