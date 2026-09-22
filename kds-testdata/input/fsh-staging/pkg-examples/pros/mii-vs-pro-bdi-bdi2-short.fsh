Instance: mii-vs-pro-bdi-bdi2-short
InstanceOf: ValueSet
Usage: #inline
* status = #active
* name = "MII_VS_PRO_BDI_BDI2_AnswerListShort"
* title = "MII VS PRO BDI-II"
* description = "MII VS PRO BDI-II ValueSet for Beck Depression Inventory II (BDI-II) Questionnaire"
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-bdi-bdi2-short"
* version = "2027.0.0-ballot.1"
* experimental = true
* compose.include.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-bdi-bdi2"
* compose.include.concept[0].code = #bdi-bdi2-answer-0
* compose.include.concept[+].code = #bdi-bdi2-answer-1
* compose.include.concept[+].code = #bdi-bdi2-answer-2
* compose.include.concept[+].code = #bdi-bdi2-answer-3