Instance: mii-exa-pro-euroqol-eq5d5l-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
* item[0].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#2 "Ich habe leichte Probleme herumzugehen"
* item[=].linkId = "euroqol-eq5d5l-q01-MO"
* item[=].text = "BEWEGLICHKEIT / MOBILITÄT"
* item[+].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#1 "Ich habe keine Probleme, mich selbst zu waschen oder anzuziehen"
* item[=].linkId = "euroqol-eq5d5l-q02-SC"
* item[=].text = "FÜR SICH SELBST SORGEN"
* item[+].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#2 "Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
* item[=].linkId = "euroqol-eq5d5l-q03-UA"
* item[=].text = "ALLTÄGLICHE TÄTIGKEITEN (z.B. Arbeit, Studium, Hausarbeit, Familien- / Freizeitaktivitäten)"
* item[+].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#3 "Ich habe mäßige Schmerzen oder Beschwerden"
* item[=].linkId = "euroqol-eq5d5l-q04-PD"
* item[=].text = "SCHMERZEN / KÖRPERLICHEN BESCHWERDEN"
* item[+].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set#4 "Ich bin sehr ängstlich oder deprimiert"
* item[=].linkId = "euroqol-eq5d5l-q05-AD"
* item[=].text = "ANGST / NIEDERGESCHLAGENHEIT"
* item[+].answer.valueInteger = 21234
* item[=].linkId = "euroqol-eq5d5l-score-profile"
* item[=].text = "Gesundheitszustand"
* item[+].answer.valueDecimal = 0.662
* item[=].linkId = "euroqol-eq5d5l-score-index"
* item[=].text = "Indexwert"
* item[+].answer.valueInteger = 75
* item[=].linkId = "euroqol-eq5d5l-vas"
* item[=].text = "IHRE GESUNDHEIT HEUTE"
* language = #de
* status = #completed
* subject = Reference(mii-exa-pro-patient)
* authored = "2023-10-01T12:00:00Z"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable|2027.0.0-ballot.1"