Instance: mii-exa-pro-euroqol-eq5d5l-coded-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
* item[0].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#MO-3 "Ich habe mäßige Probleme herumzugehen"
* item[=].linkId = "euroqol-eq5d5l-coded-q01-MO"
* item[=].text = "BEWEGLICHKEIT / MOBILITÄT"
* item[+].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#SC-2 "Ich habe leichte Probleme, mich selbst zu waschen oder anzuziehen"
* item[=].linkId = "euroqol-eq5d5l-coded-q02-SC"
* item[=].text = "FÜR SICH SELBST SORGEN"
* item[+].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#UA-4 "Ich habe große Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[=].linkId = "euroqol-eq5d5l-coded-q03-UA"
* item[=].text = "ALLTÄGLICHE TÄTIGKEITEN (z.B. Arbeit, Studium, Hausarbeit, Familien- / Freizeitaktivitäten)"
* item[+].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#PD-3 "Ich habe mäßige Schmerzen oder Beschwerden"
* item[=].linkId = "euroqol-eq5d5l-coded-q04-PD"
* item[=].text = "SCHMERZEN / KÖRPERLICHEN BESCHWERDEN"
* item[+].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#AD-1 "Ich bin nicht ängstlich oder deprimiert"
* item[=].linkId = "euroqol-eq5d5l-coded-q05-AD"
* item[=].text = "ANGST / NIEDERGESCHLAGENHEIT"
* item[+].answer.valueString = "32431"
* item[=].linkId = "euroqol-eq5d5l-coded-score-profile"
* item[=].text = "Gesundheitszustand"
* item[+].answer.valueInteger = 55
* item[=].linkId = "euroqol-eq5d5l-coded-vas"
* item[=].text = "IHRE GESUNDHEIT HEUTE"
* language = #de
* status = #completed
* subject = Reference(mii-exa-pro-patient)
* authored = "2024-03-15T14:45:00+01:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-answer-coding|2027.0.0-ballot.1"