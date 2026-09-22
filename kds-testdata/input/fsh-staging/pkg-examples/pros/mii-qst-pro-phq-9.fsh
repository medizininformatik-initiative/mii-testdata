Instance: mii-qst-pro-phq-9
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire
Usage: #inline
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9"
* title = "MII QST PRO PHQ-9"
* description = "Patient Health Questionnaire (PHQ-9)"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#natural "Natural"
* extension[+].extension[0].url = "displayable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "collectable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "populatable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "calculatable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "extractable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "domainAligned"
* extension[=].extension[=].valueBoolean = true
* extension[=].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
* extension[+].valueExpression.name = "rawScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^phq-phq2[a-i]$')).answer.value.weight().sum()"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[+].valueExpression.name = "phq9Score"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^phq-phq2[a-i]$')).answer.value.weight().sum()"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/variable"
* code[0] = http://loinc.org#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
* code[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue#phq-phq9 "PHQ-9 Questionnaire"
* item[0].linkId = "PHQ-9.Description"
* item[=].type = #display
* item[=].text = "Over the last two weeks, how often have you been bothered by any of the following problems?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Wie oft fühlten Sie sich im Verlauf der letzten 2 Wochen durch die folgenden Beschwerden beeinträchtigt?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].code = http://loinc.org#44250-9
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq2a').answer.value, {})"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].answerOption[0].valueCoding = http://loinc.org#LA6568-5 "Not at all"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Überhaupt nicht"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 0
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6569-3 "Several days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An einzelnen Tagen"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6570-1 "More than half the days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An mehr als der Hälfte der Tage"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6571-9 "Nearly every day"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Beinahe jeden Tag"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].linkId = "phq-phq2a"
* item[=].type = #choice
* item[=].prefix = "1"
* item[=].text = "Little interest or pleasure in doing things"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Wenig Interesse oder Freude an Ihren Tätigkeiten"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].code = http://loinc.org#44255-8
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq2b').answer.value, {})"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].answerOption[0].valueCoding = http://loinc.org#LA6568-5 "Not at all"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Überhaupt nicht"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 0
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6569-3 "Several days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An einzelnen Tagen"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6570-1 "More than half the days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An mehr als der Hälfte der Tage"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6571-9 "Nearly every day"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Beinahe jeden Tag"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].linkId = "phq-phq2b"
* item[=].type = #choice
* item[=].prefix = "2"
* item[=].text = "Feeling down, depressed, or hopeless"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Niedergeschlagenheit, Schwermut oder Hoffnungslosigkeit"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].code = http://loinc.org#44259-0
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq2c').answer.value, {})"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].answerOption[0].valueCoding = http://loinc.org#LA6568-5 "Not at all"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Überhaupt nicht"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 0
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6569-3 "Several days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An einzelnen Tagen"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6570-1 "More than half the days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An mehr als der Hälfte der Tage"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6571-9 "Nearly every day"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Beinahe jeden Tag"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].linkId = "phq-phq2c"
* item[=].type = #choice
* item[=].prefix = "3"
* item[=].text = "Trouble falling or staying asleep, or sleeping too much"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Schwierigkeiten ein- oder durchzuschlafen oder vermehrter Schlaf"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].code = http://loinc.org#44254-1
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq2d').answer.value, {})"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].answerOption[0].valueCoding = http://loinc.org#LA6568-5 "Not at all"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Überhaupt nicht"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 0
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6569-3 "Several days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An einzelnen Tagen"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6570-1 "More than half the days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An mehr als der Hälfte der Tage"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6571-9 "Nearly every day"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Beinahe jeden Tag"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].linkId = "phq-phq2d"
* item[=].type = #choice
* item[=].prefix = "4"
* item[=].text = "Feeling tired or having little energy"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Müdigkeit oder Gefühl, keine Energie zu haben"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].code = http://loinc.org#44251-7
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq2e').answer.value, {})"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].answerOption[0].valueCoding = http://loinc.org#LA6568-5 "Not at all"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Überhaupt nicht"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 0
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6569-3 "Several days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An einzelnen Tagen"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6570-1 "More than half the days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An mehr als der Hälfte der Tage"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6571-9 "Nearly every day"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Beinahe jeden Tag"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].linkId = "phq-phq2e"
* item[=].type = #choice
* item[=].prefix = "5"
* item[=].text = "Poor appetite or overeating"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Verminderter Appetit oder übermäßiges Bedürfnis zu essen"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].code = http://loinc.org#44258-2
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq2f').answer.value, {})"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].answerOption[0].valueCoding = http://loinc.org#LA6568-5 "Not at all"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Überhaupt nicht"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 0
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6569-3 "Several days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An einzelnen Tagen"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6570-1 "More than half the days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An mehr als der Hälfte der Tage"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6571-9 "Nearly every day"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Beinahe jeden Tag"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].linkId = "phq-phq2f"
* item[=].type = #choice
* item[=].prefix = "6"
* item[=].text = "Feeling bad about yourself - or that you are a failure or have let yourself or your family down"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Schlechte Meinung von sich selbst; Gefühl, ein Versager zu sein oder die Familie enttäuscht zu haben"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].code = http://loinc.org#44252-5
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq2g').answer.value, {})"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].answerOption[0].valueCoding = http://loinc.org#LA6568-5 "Not at all"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Überhaupt nicht"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 0
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6569-3 "Several days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An einzelnen Tagen"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6570-1 "More than half the days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An mehr als der Hälfte der Tage"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6571-9 "Nearly every day"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Beinahe jeden Tag"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].linkId = "phq-phq2g"
* item[=].type = #choice
* item[=].prefix = "7"
* item[=].text = "Trouble concentrating on things, such as reading the newspaper or watching television"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Schwierigkeiten, sich auf etwas zu konzentrieren, z.B. beim Zeitunglesen oder Fernsehen"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].code = http://loinc.org#44253-3
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq2h').answer.value, {})"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].answerOption[0].valueCoding = http://loinc.org#LA6568-5 "Not at all"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Überhaupt nicht"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 0
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6569-3 "Several days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An einzelnen Tagen"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6570-1 "More than half the days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An mehr als der Hälfte der Tage"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6571-9 "Nearly every day"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Beinahe jeden Tag"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].linkId = "phq-phq2h"
* item[=].type = #choice
* item[=].prefix = "8"
* item[=].text = "Moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Waren Ihre Bewegungen oder Ihre Sprache so verlangsamt, dass es auch anderen auffallen würde? Oder waren Sie im Gegenteil 'zappelig' oder ruhelos und hatten dadurch einen stärkeren Bewegungsdrang als sonst?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].code = http://loinc.org#44260-8
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq2i').answer.value, {})"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].answerOption[0].valueCoding = http://loinc.org#LA6568-5 "Not at all"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Überhaupt nicht"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 0
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6569-3 "Several days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An einzelnen Tagen"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 1
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6570-1 "More than half the days"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "An mehr als der Hälfte der Tage"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 2
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6571-9 "Nearly every day"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Beinahe jeden Tag"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/itemWeight"
* item[=].answerOption[=].extension.valueDecimal = 3
* item[=].linkId = "phq-phq2i"
* item[=].type = #choice
* item[=].prefix = "9"
* item[=].text = "Thoughts that you would be better off dead or of hurting yourself in some way"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Gedanken, dass Sie lieber tot wären oder sich Leid zufügen möchten"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].code = http://loinc.org#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* item[=].extension[0].valueExpression.name = "Scoreberechnung"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%phq9Score"
* item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].valueCoding = http://unitsofmeasure.org#{score}
* item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension[+].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/observation-category#survey
* item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category"
* item[=].linkId = "phq-phq9-score-total"
* item[=].type = #decimal
* item[=].prefix = "Auswertung"
* item[=].readOnly = true
* item[=].text = "PHQ-9 Total Score"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "PHQ-9 Gesamtwert"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].code = http://loinc.org#69722-7
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "iif(%sourceResponse.exists(), %sourceResponse.item.where(linkId='phq-phq9-difficulty').answer.value, {})"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].answerOption[0].valueCoding = http://loinc.org#LA6572-7 "Not difficult at all"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Überhaupt nicht erschwert"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6573-5 "Somewhat difficult"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Etwas erschwert"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6575-0 "Very difficult"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Relativ stark erschwert"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[+].valueCoding = http://loinc.org#LA6574-3 "Extremely difficult"
* item[=].answerOption[=].valueCoding.display.extension.extension[0].url = "lang"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueCode = #de
* item[=].answerOption[=].valueCoding.display.extension.extension[+].url = "content"
* item[=].answerOption[=].valueCoding.display.extension.extension[=].valueString = "Sehr stark erschwert"
* item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].linkId = "phq-phq9-difficulty"
* item[=].type = #choice
* item[=].prefix = "10"
* item[=].text = "If you checked off any problems, how difficult have these problems made it for you to do your work, take care of things at home, or get along with other people?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Wenn eines oder mehrere dieser Probleme bei Ihnen vorliegen, geben Sie bitte an, wie sehr diese Probleme es Ihnen erschwert haben, Ihre Arbeit zu erledigen, Ihren Haushalt zu regeln oder mit anderen Menschen zurecht zu kommen"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[+].code = http://loinc.org#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* item[=].extension[0].valueExpression.name = "promis-tscore-mapping"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "iif(%phq9Score = 0, 37.4, iif(%phq9Score = 1, 42.7, iif(%phq9Score = 2, 45.9, iif(%phq9Score = 3, 48.3, iif(%phq9Score = 4, 50.5, iif(%phq9Score = 5, 52.5, iif(%phq9Score = 6, 54.2, iif(%phq9Score = 7, 55.8, iif(%phq9Score = 8, 57.2, iif(%phq9Score = 9, 58.6, iif(%phq9Score = 10, 59.9, iif(%phq9Score = 11, 61.1, iif(%phq9Score = 12, 62.3, iif(%phq9Score = 13, 63.5, iif(%phq9Score = 14, 64.7, iif(%phq9Score = 15, 65.8, iif(%phq9Score = 16, 66.9, iif(%phq9Score = 17, 68.0, iif(%phq9Score = 18, 69.2, iif(%phq9Score = 19, 70.3, iif(%phq9Score = 20, 71.5, iif(%phq9Score = 21, 72.7, iif(%phq9Score = 22, 74.0, iif(%phq9Score = 23, 75.3, iif(%phq9Score = 24, 76.7, iif(%phq9Score = 25, 78.3, iif(%phq9Score = 26, 80.0, iif(%phq9Score = 27, 82.3, 82.3))))))))))))))))))))))))))))"
* item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].valueCoding = http://unitsofmeasure.org#{score}
* item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension[+].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/observation-category#survey
* item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category"
* item[=].linkId = "phq-phq9-promis-tscore"
* item[=].type = #decimal
* item[=].prefix = "T-Score"
* item[=].readOnly = true
* item[=].text = "PROMIS Depression T-Score (derived from PHQ-9)"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "PROMIS Depression T-Score (abgeleitet von PHQ-9)"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* version = "2027.0.0-ballot.1"
* status = #active
* experimental = true
* language = #en
* copyright = "Patient Health Questionnaire (PHQ/PHQ-9) © Pfizer Inc. Freely available — no permission required for reproduction, translation, display, or use (public domain). German version: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002). Lizenz-Status: frei verfügbar."