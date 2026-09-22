Instance: mii-qst-pro-bdi-bdi2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire
Usage: #inline
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-bdi-bdi2"
* title = "MII QST PRO BDI-II"
* description = "MII QST PRO Beck Depression Inventory II (BDI-II) Questionnaire"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#natural "Natural"
* extension[+].extension[0].url = "displayable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "collectable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "populatable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "calculatable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "extractable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "domainAligned"
* extension[=].extension[=].valueBoolean = true
* extension[=].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
* extension[+].valueExpression.name = "bdiScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(type = 'choice').answer.value.weight().sum()"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/variable"
* code[0] = http://loinc.org#89210-9 "Beck Depression Inventory II [BDI]"
* code[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue#bdi-bdi2 "Beck Depression Inventory II (BDI-II)"
* item[0].linkId = "BDI-II.LicenseNotice"
* item[=].type = #display
* item[=].text = "⚠️ TESTVERSION - PLACEHOLDER TEXT ONLY ⚠️ Diese Version enthält Platzhaltertexte für Testzwecke. Die echten BDI-II Fragen sind urheberrechtlich geschützt. Für klinische Anwendungen ist eine Lizenz erforderlich."
* item[+].linkId = "bdi-bdi2-q01"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 1 about mood - NOT actual BDI-II text]"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q02"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 2 about outlook - NOT actual BDI-II text]"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q03"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 3 about experiences - NOT actual BDI-II text]"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q04"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 4 about enjoyment - NOT actual BDI-II text]"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q05"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 5 about feelings - NOT actual BDI-II text]"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q06"
* item[=].type = #choice
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q07"
* item[=].type = #choice
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q08"
* item[=].type = #choice
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q09"
* item[=].type = #choice
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q10"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 10 about emotions - NOT actual BDI-II text]"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q11"
* item[=].type = #choice
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q12"
* item[=].type = #choice
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q13"
* item[=].type = #choice
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q14"
* item[=].type = #choice
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q15"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 15 about energy (uses extended scale) - NOT actual BDI-II text]"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-long"
* item[+].linkId = "bdi-bdi2-q16"
* item[=].type = #choice
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q17"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 17 about appetite (uses extended scale) - NOT actual BDI-II text]"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-long"
* item[+].linkId = "bdi-bdi2-q18"
* item[=].type = #choice
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q19"
* item[=].type = #choice
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q20"
* item[=].type = #choice
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].linkId = "bdi-bdi2-q21"
* item[=].type = #choice
* item[=].text = "[TEST PLACEHOLDER: Question 21 about interests - NOT actual BDI-II text]"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* item[+].code = http://loinc.org#89209-1 "Beck Depression Inventory II total score [BDI]"
* item[=].extension[0].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%bdiScore"
* item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].valueCoding = http://unitsofmeasure.org#{score}
* item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].linkId = "bdi-bdi2-score-total"
* item[=].text = "BDI-II Gesamtscore (0-63)"
* item[=].type = #decimal
* item[+].code = http://loinc.org#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* item[=].extension[0].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "\n  iif(%bdiScore = 0, 38.2,\n  iif(%bdiScore = 1, 41.2,\n  iif(%bdiScore = 2, 43.5,\n  iif(%bdiScore = 3, 45.3,\n  iif(%bdiScore = 4, 46.9,\n  iif(%bdiScore = 5, 48.4,\n  iif(%bdiScore = 6, 49.7,\n  iif(%bdiScore = 7, 51.0,\n  iif(%bdiScore = 8, 52.2,\n  iif(%bdiScore = 9, 53.3,\n  iif(%bdiScore = 10, 54.4,\n  iif(%bdiScore = 11, 55.4,\n  iif(%bdiScore = 12, 56.4,\n  iif(%bdiScore = 13, 57.3,\n  iif(%bdiScore = 14, 58.2,\n  iif(%bdiScore = 15, 59.1,\n  iif(%bdiScore = 16, 59.9,\n  iif(%bdiScore = 17, 60.7,\n  iif(%bdiScore = 18, 61.5,\n  iif(%bdiScore = 19, 62.2,\n  iif(%bdiScore = 20, 62.9,\n  iif(%bdiScore = 21, 63.6,\n  iif(%bdiScore = 22, 64.3,\n  iif(%bdiScore = 23, 65.0,\n  iif(%bdiScore = 24, 65.6,\n  iif(%bdiScore = 25, 66.2,\n  iif(%bdiScore = 26, 66.8,\n  iif(%bdiScore = 27, 67.4,\n  iif(%bdiScore = 28, 68.0,\n  iif(%bdiScore = 29, 68.6,\n  iif(%bdiScore = 30, 69.1,\n  iif(%bdiScore = 31, 69.7,\n  iif(%bdiScore = 32, 70.2,\n  iif(%bdiScore = 33, 70.7,\n  iif(%bdiScore = 34, 71.2,\n  iif(%bdiScore = 35, 71.8,\n  iif(%bdiScore = 36, 72.3,\n  iif(%bdiScore = 37, 72.8,\n  iif(%bdiScore = 38, 73.3,\n  iif(%bdiScore = 39, 73.8,\n  iif(%bdiScore = 40, 74.3,\n  iif(%bdiScore = 41, 74.8,\n  iif(%bdiScore = 42, 75.3,\n  iif(%bdiScore = 43, 75.8,\n  iif(%bdiScore = 44, 76.3,\n  iif(%bdiScore = 45, 76.9,\n  iif(%bdiScore = 46, 77.4,\n  iif(%bdiScore = 47, 77.9,\n  iif(%bdiScore = 48, 78.5,\n  iif(%bdiScore = 49, 79.0,\n  iif(%bdiScore = 50, 79.6,\n  iif(%bdiScore = 51, 80.1,\n  iif(%bdiScore = 52, 80.7,\n  iif(%bdiScore = 53, 81.3,\n  iif(%bdiScore = 54, 81.9,\n  iif(%bdiScore = 55, 82.5,\n  iif(%bdiScore = 56, 83.2,\n  iif(%bdiScore = 57, 83.8,\n  iif(%bdiScore = 58, 84.5,\n  iif(%bdiScore = 59, 85.3,\n  iif(%bdiScore = 60, 86.0,\n  iif(%bdiScore = 61, 86.9,\n  iif(%bdiScore = 62, 87.8,\n  iif(%bdiScore = 63, 88.8, 88.8)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))\n"
* item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].valueCoding = http://unitsofmeasure.org#{score}
* item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].linkId = "bdi-bdi2-promis-tscore"
* item[=].text = "PROMIS Depression T-Score (abgeleitet von BDI-II)"
* item[=].type = #decimal
* item[=].readOnly = true
* version = "2027.0.0-ballot.1"
* status = #active
* experimental = true
* language = #de