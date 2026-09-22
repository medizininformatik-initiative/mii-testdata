Instance: mii-exa-pro-euronet-soma-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
* item[0].answer.valueInteger = 6
* item[=].linkId = "euronet-soma-q01"
* item[=].text = "During the last 7 days, the overall intensity of my bodily symptoms was:"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Wie war die Gesamtstärke Ihrer Körperbeschwerden in den letzten 7 Tagen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].answer.valueInteger = 5
* item[=].linkId = "euronet-soma-q02"
* item[=].text = "During the last 7 days, my bodily symptoms interfered with daily life activities"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Wie sehr waren Sie in den letzten 7 Tagen durch Ihre Körperbeschwerden beeinträchtigt?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* status = #completed
* language = #en
* subject = Reference(mii-exa-pro-patient)
* authored = "2026-08-28T09:45:00Z"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma|2027.0.0-ballot.1"