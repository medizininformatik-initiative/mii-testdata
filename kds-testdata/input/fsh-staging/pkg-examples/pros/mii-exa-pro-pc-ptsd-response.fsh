Instance: mii-exa-pro-pc-ptsd-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
* item[0].answer.valueCoding = http://snomed.info/sct#373066001 "Yes"
* item[=].linkId = "pc-ptsd-q01"
* item[=].text = "… Albträume davon hatten oder daran dachten, obwohl Sie es nicht wollten?"
* item[+].answer.valueCoding = http://snomed.info/sct#373066001 "Yes"
* item[=].linkId = "pc-ptsd-q02"
* item[=].text = "… sich stark bemüht haben, nicht daran zu denken oder Situationen zu vermeiden, die Sie daran erinnern?"
* item[+].answer.valueCoding = http://snomed.info/sct#373067005 "No"
* item[=].linkId = "pc-ptsd-q03"
* item[=].text = "...ständig auf der Hut, wachsam oder schreckhaft waren?"
* item[+].answer.valueCoding = http://snomed.info/sct#373066001 "Yes"
* item[=].linkId = "pc-ptsd-q04"
* item[=].text = "...sich abgestumpft und teilnahmslos gegenüber anderen, bei ihren Aktivitäten oder in Ihrem Umfeld fühlten?"
* item[+].answer.valueDecimal = 3
* item[=].linkId = "pc-ptsd-score-total"
* item[=].text = "PC-PTSD Summenwert (0-4)"
* status = #completed
* language = #de
* subject = Reference(mii-exa-pro-patient)
* authored = "2026-08-28T09:30:00Z"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pc-ptsd|2027.0.0-ballot.1"