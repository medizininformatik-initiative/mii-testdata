Instance: mii-exa-pro-scoff-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
* item[0].answer.valueCoding = http://snomed.info/sct#373066001 "Yes"
* item[=].answer.valueCoding.display.extension.extension[0].url = "lang"
* item[=].answer.valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answer.valueCoding.display.extension.extension[+].url = "content"
* item[=].answer.valueCoding.display.extension.extension[=].valueString = "Ja"
* item[=].answer.valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].linkId = "scoff-q01"
* item[=].text = "Do you make yourself Sick because you feel uncomfortably full?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Übergeben Sie sich, wenn Sie sich unangenehm voll fühlen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].answer.valueCoding = http://snomed.info/sct#373066001 "Yes"
* item[=].answer.valueCoding.display.extension.extension[0].url = "lang"
* item[=].answer.valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answer.valueCoding.display.extension.extension[+].url = "content"
* item[=].answer.valueCoding.display.extension.extension[=].valueString = "Ja"
* item[=].answer.valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].linkId = "scoff-q02"
* item[=].text = "Do you worry you have lost Control over how much you eat?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Machen Sie sich Sorgen, weil Sie manchmal nicht mit dem Essen aufhören können?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].answer.valueCoding = http://snomed.info/sct#373067005 "No"
* item[=].answer.valueCoding.display.extension.extension[0].url = "lang"
* item[=].answer.valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answer.valueCoding.display.extension.extension[+].url = "content"
* item[=].answer.valueCoding.display.extension.extension[=].valueString = "Nein"
* item[=].answer.valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].linkId = "scoff-q03"
* item[=].text = "Have you recently lost more than One stone in a 3 month period?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Haben Sie in der letzten Zeit mehr als 6 kg in 3 Monaten abgenommen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].answer.valueCoding = http://snomed.info/sct#373067005 "No"
* item[=].answer.valueCoding.display.extension.extension[0].url = "lang"
* item[=].answer.valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answer.valueCoding.display.extension.extension[+].url = "content"
* item[=].answer.valueCoding.display.extension.extension[=].valueString = "Nein"
* item[=].answer.valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].linkId = "scoff-q04"
* item[=].text = "Do you believe yourself to be Fat when others say you are too thin?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Finden Sie sich zu dick, während andere Sie zu dünn finden?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].answer.valueCoding = http://snomed.info/sct#373066001 "Yes"
* item[=].answer.valueCoding.display.extension.extension[0].url = "lang"
* item[=].answer.valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answer.valueCoding.display.extension.extension[+].url = "content"
* item[=].answer.valueCoding.display.extension.extension[=].valueString = "Ja"
* item[=].answer.valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].linkId = "scoff-q05"
* item[=].text = "Would you say that Food dominates your life?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Würden Sie sagen, dass Essen Ihr Leben sehr beeinflusst?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].answer.valueDecimal = 3
* item[=].linkId = "scoff-score-total"
* item[=].text = "SCOFF Total Score (0-5)"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "SCOFF Summenwert (0-5)"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* status = #completed
* language = #en
* subject = Reference(mii-exa-pro-patient)
* authored = "2026-08-28T09:30:00Z"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-scoff|2027.0.0-ballot.1"