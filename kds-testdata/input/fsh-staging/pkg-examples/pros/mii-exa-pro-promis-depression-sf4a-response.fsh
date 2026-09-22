Instance: mii-exa-pro-promis-depression-sf4a-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
* item[0].answer.valueCoding = http://loinc.org#LA10082-8 "Sometimes"
* item[=].answer.valueCoding.display.extension.extension[0].url = "lang"
* item[=].answer.valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answer.valueCoding.display.extension.extension[+].url = "content"
* item[=].answer.valueCoding.display.extension.extension[=].valueString = "Manchmal"
* item[=].answer.valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].linkId = "promis-eddep04"
* item[=].text = "I felt worthless"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "...fühlte ich mich wertlos"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].answer.valueCoding = http://loinc.org#LA10066-1 "Rarely"
* item[=].answer.valueCoding.display.extension.extension[0].url = "lang"
* item[=].answer.valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answer.valueCoding.display.extension.extension[+].url = "content"
* item[=].answer.valueCoding.display.extension.extension[=].valueString = "Selten"
* item[=].answer.valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].linkId = "promis-eddep06"
* item[=].text = "I felt helpless"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "...fühlte ich mich hilflos"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].answer.valueCoding = http://loinc.org#LA10044-8 "Often"
* item[=].answer.valueCoding.display.extension.extension[0].url = "lang"
* item[=].answer.valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answer.valueCoding.display.extension.extension[+].url = "content"
* item[=].answer.valueCoding.display.extension.extension[=].valueString = "Oft"
* item[=].answer.valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].linkId = "promis-eddep29"
* item[=].text = "I felt depressed"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "...fühlte ich mich deprimiert"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].answer.valueCoding = http://loinc.org#LA10082-8 "Sometimes"
* item[=].answer.valueCoding.display.extension.extension[0].url = "lang"
* item[=].answer.valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answer.valueCoding.display.extension.extension[+].url = "content"
* item[=].answer.valueCoding.display.extension.extension[=].valueString = "Manchmal"
* item[=].answer.valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].linkId = "promis-eddep41"
* item[=].text = "I felt hopeless"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "...fühlte ich mich hoffnungslos"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].answer.valueDecimal = 12
* item[=].linkId = "promis-depression-score-raw"
* item[=].text = "PROMIS Depression Raw Score"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Rohwert (Summenscore)"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].answer.valueDecimal = 62.2
* item[=].linkId = "promis-depression-score-tscore"
* item[=].text = "PROMIS Depression T-Score"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "T-Score"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* language = #en
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-depression-sf4a|2027.0.0-ballot.1"
* status = #completed
* subject = Reference(mii-exa-pro-patient)
* authored = "2024-01-15T10:30:00Z"