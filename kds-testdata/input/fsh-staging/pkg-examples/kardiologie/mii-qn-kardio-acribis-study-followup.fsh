Instance: mii-qn-kardio-acribis-study-followup
InstanceOf: Questionnaire
Usage: #example
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/Questionnaire/mii-qn-kardio-acribis-study-followup"
* title = "MII QN Kardio Acribis Study FollowUp"
* description = "Follow-Up-Fragebogen im Rahmen der Acribis-Studie."
* contact.telecom.system = #url
* contact.telecom.value = "https://www.medizininformatik-initiative.de"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.valueCodeableConcept = http://snomed.info/sct#110465008 "Clinical trial"
* subjectType = #Patient
* item[0].item[0].item.enableWhen.answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_other "Andere Person"
* item[=].item[=].item.enableWhen.question = "o_1"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.type = #string
* item[=].item[=].item.linkId = "o_1a"
* item[=].item[=].item.prefix = "Ausfüllende Person"
* item[=].item[=].item.text = "Um wen handelt es sich (Name oder Rolle)?"
* item[=].item[=].item.enableBehavior = #all
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].answerOption[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_patient "Patient/Patientin"
* item[=].item[=].answerOption[+].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_relative "Angehöriger/Angehörige"
* item[=].item[=].answerOption[+].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_physician "Arzt/Ärztin"
* item[=].item[=].answerOption[+].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_other "Andere Person"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "o_1"
* item[=].item[=].prefix = "Ausfüllende Person"
* item[=].item[=].text = "Wer füllt den Fragebogen aus?"
* item[=].item[=].repeats = false
* item[=].item[+].item[0].item[0].item.code = http://snomed.info/sct#385668008 "Success of action"
* item[=].item[=].item[=].item[=].item.enableWhen.question = "first_telefon_datum"
* item[=].item[=].item[=].item[=].item.enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item[=].item.linkId = "first_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].item.text = "1. Telefonat erfolgreich?"
* item[=].item[=].item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].linkId = "first_telefon_datum"
* item[=].item[=].item[=].item[=].text = "Telefonat 1. Versuch (Tag 0 bis 7)"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].item.code = http://snomed.info/sct#385668008 "Success of action"
* item[=].item[=].item[=].item[=].item.enableWhen.question = "second_telefon_datum"
* item[=].item[=].item[=].item[=].item.enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item[=].item.linkId = "second_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].item.text = "2. Telefonat erfolgreich?"
* item[=].item[=].item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].item[=].enableWhen.question = "first_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].linkId = "second_telefon_datum"
* item[=].item[=].item[=].item[=].text = "Telefonat 2. Versuch (Tag 0 bis 7)"
* item[=].item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].item.code = http://snomed.info/sct#385668008 "Success of action"
* item[=].item[=].item[=].item[=].item.enableWhen.question = "third_telefon_datum"
* item[=].item[=].item[=].item[=].item.enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item[=].item.linkId = "third_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].item.text = "3. Telefonat erfolgreich?"
* item[=].item[=].item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].item[=].enableWhen.question = "second_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].linkId = "third_telefon_datum"
* item[=].item[=].item[=].item[=].text = "Telefonat 3. Versuch (Tag 0 bis 7)"
* item[=].item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].enableWhen.question = "third_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].linkId = "259984180805"
* item[=].item[=].item[=].item[=].text = "ggf. Versand schriftlicher Information (Tag 7 bis 21)"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].item.code = http://snomed.info/sct#385668008 "Success of action"
* item[=].item[=].item[=].item[=].item.enableWhen.question = "fourth_telefon_datum"
* item[=].item[=].item[=].item[=].item.enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item[=].item.linkId = "fourth_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].item.text = "4. Telefonat erfolgreich?"
* item[=].item[=].item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].item[=].enableWhen.question = "third_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].linkId = "fourth_telefon_datum"
* item[=].item[=].item[=].item[=].text = "Telefonat 4. Versuch (Tag 21 bis 28)"
* item[=].item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].item.code = http://snomed.info/sct#385668008 "Success of action"
* item[=].item[=].item[=].item[=].item.enableWhen.question = "fifth_telefon_datum"
* item[=].item[=].item[=].item[=].item.enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item[=].item.linkId = "fifth_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].item.text = "5. Telefonat erfolgreich?"
* item[=].item[=].item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].item[=].enableWhen.question = "fourth_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].linkId = "fifth_telefon_datum"
* item[=].item[=].item[=].item[=].text = "Telefonat 5. Versuch (Tag 21 bis 28)"
* item[=].item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].item.code = http://snomed.info/sct#385668008 "Success of action"
* item[=].item[=].item[=].item[=].item.enableWhen.question = "sixth_telefon_datum"
* item[=].item[=].item[=].item[=].item.enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item[=].item.linkId = "sixth_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].item.text = "6. Telefonat erfolgreich?"
* item[=].item[=].item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].item[=].enableWhen.question = "fifth_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].linkId = "sixth_telefon_datum"
* item[=].item[=].item[=].item[=].text = "Telefonat 6. Versuch (Tag 21 bis 28)"
* item[=].item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].enableWhen.question = "sixth_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].linkId = "430864563593"
* item[=].item[=].item[=].item[=].text = "ggf. Versand schriftlicher Information (Tag 28 bis 42)"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].item.code = http://snomed.info/sct#385668008 "Success of action"
* item[=].item[=].item[=].item[=].item.enableWhen.question = "seventh_telefon_datum"
* item[=].item[=].item[=].item[=].item.enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item[=].item.linkId = "seventh_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].item.text = "7. Telefonat erfolgreich?"
* item[=].item[=].item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].item[=].enableWhen.question = "sixth_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].linkId = "seventh_telefon_datum"
* item[=].item[=].item[=].item[=].text = "Telefonat 7. Versuch (Tag 42 bis 49)"
* item[=].item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].item.code = http://snomed.info/sct#385668008 "Success of action"
* item[=].item[=].item[=].item[=].item.enableWhen.question = "eighth_telefon_datum"
* item[=].item[=].item[=].item[=].item.enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item[=].item.linkId = "eighth_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].item.text = "8. Telefonat erfolgreich?"
* item[=].item[=].item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].item[=].enableWhen.question = "seventh_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].linkId = "eighth_telefon_datum"
* item[=].item[=].item[=].item[=].text = "Telefonat 8. Versuch (Tag 42 bis 49)"
* item[=].item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].item.code = http://snomed.info/sct#385668008 "Success of action"
* item[=].item[=].item[=].item[=].item.enableWhen.question = "ninth_telefon_datum"
* item[=].item[=].item[=].item[=].item.enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item[=].item.linkId = "ninth_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].item.text = "9. Telefonat erfolgreich?"
* item[=].item[=].item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].item[=].enableWhen.question = "eighth_telefon_erfolgreich"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].linkId = "ninth_telefon_datum"
* item[=].item[=].item[=].item[=].text = "Telefonat 9. Versuch (Tag 42 bis 49)"
* item[=].item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].enableWhen.question = "243134446838"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#verbal_follow_up "Telefonisches Follow-Up (Telefon, ggf. schriftlich)"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].linkId = "group2"
* item[=].item[=].item[=].text = "Telefonisches Follow-Up"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].item[0].item[0].enableWhen.question = "531811477735"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].item[=].linkId = "551754048694"
* item[=].item[=].item[=].item[=].item[=].text = "ggf. Telefonat 1. Versuch (Tag 14 bis 21)"
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[+].enableWhen.question = "531811477735"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].item[=].linkId = "339142957184"
* item[=].item[=].item[=].item[=].item[=].text = "ggf. Telefonat 2. Versuch (Tag 14 bis 21)"
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[+].enableWhen.question = "531811477735"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].item[=].item[=].linkId = "336352021151"
* item[=].item[=].item[=].item[=].item[=].text = "ggf. Telefonat 3. Versuch (Tag 14 bis 21)"
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[+].enableWhen.question = "531811477735"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].item[=].linkId = "683622335202"
* item[=].item[=].item[=].item[=].item[=].text = "1. Kontakt erfolgreich?"
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].linkId = "531811477735"
* item[=].item[=].item[=].item[=].text = "Schriftlicher 1. Versuch (Tag 0 bis 14)"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].item[0].type = #dateTime
* item[=].item[=].item[=].item[=].item[=].linkId = "354842802717"
* item[=].item[=].item[=].item[=].item[=].text = "ggf. Telefonat 1. Versuch (Tag 35 bis 42)"
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[+].type = #dateTime
* item[=].item[=].item[=].item[=].item[=].linkId = "638025827421"
* item[=].item[=].item[=].item[=].item[=].text = "ggf. Telefonat 2. Versuch (Tag 35 bis 42)"
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[+].type = #dateTime
* item[=].item[=].item[=].item[=].item[=].linkId = "283707904427"
* item[=].item[=].item[=].item[=].item[=].text = "ggf. Telefonat 3. Versuch (Tag 35 bis 42)"
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[+].enableWhen.question = "708234487988"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].item[=].item[=].linkId = "343328919972"
* item[=].item[=].item[=].item[=].item[=].text = "2. Kontakt erfolgreich?"
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].enableWhen.question = "683622335202"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].linkId = "708234487988"
* item[=].item[=].item[=].item[=].text = "Schriftlicher 2. Versuch (Tag 21 bis 35)"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].item.enableWhen.question = "120750438814"
* item[=].item[=].item[=].item[=].item.enableWhen.operator = #exists
* item[=].item[=].item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item[=].item.linkId = "994511806344"
* item[=].item[=].item[=].item[=].item.text = "3. Kontakt erfolgreich?"
* item[=].item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].item[=].enableWhen.question = "343328919972"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].linkId = "120750438814"
* item[=].item[=].item[=].item[=].text = "Schriftlicher 3. Versuch (Tag 42 bis 49)"
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].enableWhen.question = "243134446838"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#written_follow_up "Schriftliches Follow-Up (Brief/E-Mail/App, ggf. telefonisch)"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].linkId = "653817429944"
* item[=].item[=].item[=].text = "Schriftliches Follow-Up"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].item.enableWhen.question = "175302299373"
* item[=].item[=].item[=].item.enableWhen.operator = #exists
* item[=].item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item.linkId = "242587999496"
* item[=].item[=].item[=].item.text = "War die Kontaktaufnahme mit dem Hausarzt erfolgreich?"
* item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].enableWhen[0].question = "994511806344"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = false
* item[=].item[=].item[=].enableWhen[+].question = "ninth_telefon_erfolgreich"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = false
* item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].linkId = "175302299373"
* item[=].item[=].item[=].text = "Kontaktaufnahme Hausarzt (nach Tag 49)"
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].item.enableWhen.question = "247749186905"
* item[=].item[=].item[=].item.enableWhen.operator = #exists
* item[=].item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item.linkId = "915186845968"
* item[=].item[=].item[=].item.text = "War die Kontaktaufnahme mit dem Einwohnermeldeamt erfolgreich?"
* item[=].item[=].item[=].item.repeats = false
* item[=].item[=].item[=].enableWhen[0].question = "ninth_telefon_erfolgreich"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = false
* item[=].item[=].item[=].enableWhen[+].question = "994511806344"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = false
* item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[=].linkId = "247749186905"
* item[=].item[=].item[=].text = "Kontaktaufnahme Einwohnermeldeamt (nach Tag 49)"
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].repeats = true
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_other "Andere Person"
* item[=].item[=].enableWhen[=].question = "o_1"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[+].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_physician "Arzt/Ärztin"
* item[=].item[=].enableWhen[=].question = "o_1"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].answerOption[0].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#written_follow_up "Schriftliches Follow-Up (Brief/E-Mail/App, ggf. telefonisch)"
* item[=].item[=].answerOption[+].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#verbal_follow_up "Telefonisches Follow-Up (Telefon, ggf. schriftlich)"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "243134446838"
* item[=].item[=].text = "In welcher Form erfolgt an Ihrem Standort das Follow-Up?"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "group1"
* item[=].text = "Allgemeine Angaben"
* item[=].repeats = false
* item[+].item.item[0].code = http://snomed.info/sct#399753006 "Date of death"
* item[=].item.item[=].enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item.item[=].enableWhen.question = "o_2"
* item[=].item.item[=].enableWhen.operator = #=
* item[=].item.item[=].type = #date
* item[=].item.item[=].linkId = "o_2a"
* item[=].item.item[=].text = "Wann ist die Patientin/der Patient verstorben?"
* item[=].item.item[=].enableBehavior = #all
* item[=].item.item[=].repeats = false
* item[=].item.item[+].item.extension[0].url = "http://hl7.org/fhir/StructureDefinition/preferredTerminologyServer"
* item[=].item.item[=].item.extension[=].valueUrl = "https://snowstorm.ihtsdotools.org/fhir"
* item[=].item.item[=].item.extension[+].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#drop-down "Drop down"
* item[=].item.item[=].item.extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.item[=].item.code = http://snomed.info/sct#184305005 "Cause of death"
* item[=].item.item[=].item.enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item.item[=].item.enableWhen.question = "o_2b"
* item[=].item.item[=].item.enableWhen.operator = #=
* item[=].item.item[=].item.answerOption[0].valueCoding = http://snomed.info/sct#22298006 "Myocardial infarction"
* item[=].item.item[=].item.answerOption[+].valueCoding = http://snomed.info/sct#422504002 "Ischemic stroke"
* item[=].item.item[=].item.answerOption[+].valueCoding = http://snomed.info/sct#274100004 "Cerebral hemorrhage"
* item[=].item.item[=].item.answerOption[+].valueCoding = http://snomed.info/sct#21454007 "Subarachnoid hemorrhage"
* item[=].item.item[=].item.answerOption[+].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#cerebral_hemorrhage_intracerebral_or_subarachnoid "Hirnblutung (intrazerebral oder subarachnoidal)"
* item[=].item.item[=].item.answerOption[+].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#other_cardiovascular_cause "Andere Herz-Kreislauf bedingte Ursache"
* item[=].item.item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "asked but unknown"
* item[=].item.item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item.item[=].item.answerOption[=].initialSelected = true
* item[=].item.item[=].item.type = #choice
* item[=].item.item[=].item.linkId = "o_2c"
* item[=].item.item[=].item.text = "Welche der im Antwortschema aufgeführten Herz-Kreislauf-bedingten Todesursachen lag vor?"
* item[=].item.item[=].item.enableBehavior = #all
* item[=].item.item[=].item.repeats = false
* item[=].item.item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.item[=].enableWhen.question = "o_2"
* item[=].item.item[=].enableWhen.operator = #=
* item[=].item.item[=].enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item.item[=].answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item.item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#N "No"
* item[=].item.item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "asked but unknown"
* item[=].item.item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item.item[=].answerOption[=].initialSelected = true
* item[=].item.item[=].type = #choice
* item[=].item.item[=].linkId = "o_2b"
* item[=].item.item[=].text = "Ist eine Herz-Kreislauf-Erkrankung als Todesursache fesgestellt worden?"
* item[=].item.item[=].enableBehavior = #all
* item[=].item.item[=].repeats = false
* item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.code = http://snomed.info/sct#419099009 "Dead"
* item[=].item.enableWhen[0].question = "o_1"
* item[=].item.enableWhen[=].operator = #=
* item[=].item.enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_relative "Angehöriger/Angehörige"
* item[=].item.enableWhen[+].question = "o_1"
* item[=].item.enableWhen[=].operator = #=
* item[=].item.enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_physician "Arzt/Ärztin"
* item[=].item.enableWhen[+].question = "o_1"
* item[=].item.enableWhen[=].operator = #=
* item[=].item.enableWhen[=].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_other "Andere Person"
* item[=].item.answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#N "No"
* item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "asked but unknown"
* item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item.answerOption[=].initialSelected = true
* item[=].item.type = #choice
* item[=].item.linkId = "o_2"
* item[=].item.text = "Ist die Patientin/der Patient verstorben?"
* item[=].item.enableBehavior = #any
* item[=].item.repeats = false
* item[=].enableWhen[0].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_relative "Angehöriger/Angehörige"
* item[=].enableWhen[=].question = "o_1"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[+].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_physician "Arzt/Ärztin"
* item[=].enableWhen[=].question = "o_1"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[+].answerCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#respondent_other "Andere Person"
* item[=].enableWhen[=].question = "o_1"
* item[=].enableWhen[=].operator = #=
* item[=].type = #group
* item[=].linkId = "group3"
* item[=].text = "Vitalstatus"
* item[=].enableBehavior = #any
* item[=].repeats = false
* item[+].type = #display
* item[=].linkId = "943114148728"
* item[=].text = "Sehr geehrte Teilnehmende, die folgenden Fragen beziehen sich auf Diagnosen, Krankenhausaufenthalte oder auch Behandlungen die seit Ihrer Teilnahme an der ACRIBiS Studie vor einem Jahr stattfanden. Diese Nachfolgebefragung dient dem Zweck festzustellen in wie weit sich der Gesundheitszustand des/der Probanden/in geändert hat und in wie weit diese Veränderungen Ihr Wohlbefinden beeinflusst haben. Die Teilnahme an der Studie fand am \"Datum Einschluß\" statt."
* item[+].item[0].item.item.code = http://snomed.info/sct#432213005 "Date of diagnosis"
* item[=].item[=].item.item.enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item.item.enableWhen.question = "o_3"
* item[=].item[=].item.item.enableWhen.operator = #=
* item[=].item[=].item.item.type = #date
* item[=].item[=].item.item.linkId = "o_3a"
* item[=].item[=].item.item.text = "Wann wurde der Herzinfarkt diagnostiziert?"
* item[=].item[=].item.item.enableBehavior = #all
* item[=].item[=].item.item.repeats = true
* item[=].item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.code = http://snomed.info/sct#22298006 "Myocardial infarction"
* item[=].item[=].item.answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#N "No"
* item[=].item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "asked but unknown"
* item[=].item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item[=].item.answerOption[=].initialSelected = true
* item[=].item[=].item.type = #choice
* item[=].item[=].item.linkId = "o_3"
* item[=].item[=].item.text = "Wurde ein Herzinfarkt diagnostiziert?"
* item[=].item[=].item.repeats = false
* item[=].item[=].type = #group
* item[=].item[=].linkId = "834093031358"
* item[=].item[=].text = "Herzinfarkt"
* item[=].item[=].repeats = false
* item[=].item[+].item.item.item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item.item.item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.item.item.enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item.item.item.enableWhen.question = "o_4"
* item[=].item[=].item.item.item.enableWhen.operator = #=
* item[=].item[=].item.item.item.answerOption[0].valueCoding = http://snomed.info/sct#422504002 "Ischemic stroke"
* item[=].item[=].item.item.item.answerOption[+].valueCoding = http://snomed.info/sct#274100004 "Cerebral hemorrhage"
* item[=].item[=].item.item.item.answerOption[+].valueCoding = http://snomed.info/sct#21454007 "Subarachnoid hemorrhage"
* item[=].item[=].item.item.item.answerOption[+].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer#cerebral_hemorrhage_intracerebral_or_subarachnoid "Hirnblutung (intrazerebral oder subarachnoidal)"
* item[=].item[=].item.item.item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "asked but unknown"
* item[=].item[=].item.item.item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item[=].item.item.item.answerOption[=].initialSelected = true
* item[=].item[=].item.item.item.type = #choice
* item[=].item[=].item.item.item.linkId = "o_4b"
* item[=].item[=].item.item.item.text = "Wissen Sie welche Art des Schlaganfalls diagnostiziert wurde?"
* item[=].item[=].item.item.item.enableBehavior = #all
* item[=].item[=].item.item.item.repeats = false
* item[=].item[=].item.item.code = http://snomed.info/sct#432213005 "Date of diagnosis"
* item[=].item[=].item.item.enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item.item.enableWhen.question = "o_4"
* item[=].item[=].item.item.enableWhen.operator = #=
* item[=].item[=].item.item.type = #date
* item[=].item[=].item.item.linkId = "o_4a"
* item[=].item[=].item.item.text = "Wann wurde der Schlaganfall / die Erkrankung der Hirngefäße diagnostiziert?"
* item[=].item[=].item.item.enableBehavior = #all
* item[=].item[=].item.item.repeats = true
* item[=].item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#N "No"
* item[=].item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "asked but unknown"
* item[=].item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item[=].item.answerOption[=].initialSelected = true
* item[=].item[=].item.type = #choice
* item[=].item[=].item.linkId = "o_4"
* item[=].item[=].item.text = "Wurde ein Schlaganfall oder Erkrankung der Hirngefäße diagnostiziert?"
* item[=].item[=].item.repeats = false
* item[=].item[=].type = #group
* item[=].item[=].linkId = "650578614260"
* item[=].item[=].text = "Schlaganfall oder Hirnblutung"
* item[=].item[=].repeats = false
* item[=].item[+].item[0].item.code = http://snomed.info/sct#432213005 "Date of diagnosis"
* item[=].item[=].item[=].item.enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item[=].item.enableWhen.question = "o_5"
* item[=].item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item[=].item.type = #date
* item[=].item[=].item[=].item.linkId = "o_5a"
* item[=].item[=].item[=].item.text = "Wann trat(en) diese starke Blutung(en) auf?"
* item[=].item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].code = http://snomed.info/sct#131148009:{42752001=789750003,246112005=24484000} "131148009|Bleeding|:{42752001|Due to|=789750003|Spontaneous event|,246112005|Severity|=24484000|Severe|}"
* item[=].item[=].item[=].answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#N "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "asked but unknown"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].linkId = "o_5"
* item[=].item[=].item[=].text = "Trat eine starke spontane Blutung (Starke Blutung, siehe Infobox) auf, die diagnostiziert wurde und ärztlch behandelt werden musste?"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[=].item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].linkId = "881254946120_helpText"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].text = "Gemeint sind im Folgenden innere Blutung, oder spontane äussere Blutungen, die ohne (starke) äusserliche Krafteinwirkung ausgelöst worden sind, wie starkes Nasenbluten oder Magen-Darmblutung beispielsweise."
* item[=].item[=].type = #group
* item[=].item[=].linkId = "881254946120"
* item[=].item[=].text = "Starke Blutung"
* item[=].item[=].repeats = false
* item[=].item[+].item[0].item.code = http://snomed.info/sct#432213005 "Date of diagnosis"
* item[=].item[=].item[=].item.enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item[=].item.enableWhen.question = "o_6"
* item[=].item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item[=].item.type = #date
* item[=].item[=].item[=].item.linkId = "o_6a"
* item[=].item[=].item[=].item.text = "Wann wurde die Transiente Ischämische Attacke (TIA) diagnostiziert?"
* item[=].item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].code = http://snomed.info/sct#266257000 "Transient cerebral ischemia"
* item[=].item[=].item[=].answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#N "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "asked but unknown"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].linkId = "o_6"
* item[=].item[=].item[=].text = "Wurde eine Transiente Ischämische Attacke (TIA, siehe Infobox) diagnostiziert?"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[=].item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].linkId = "245973210113_helpText"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].text = "Transiente Ischämische Attacke oder TIA ist eine Art \"Vorstufe zu einem Schlaganfall\" bzw. \"Mini\"-Schlaganfall genannte Unterversorgng des Gehirns bei dem es zur zeitweisen Verlust von Sprache, Lähmungen oder auch sonstige Symptome von Schlaganfällen kommen, die sich jedoch innerhalb eines Tages und meist vollkommen zurückbilden."
* item[=].item[=].type = #group
* item[=].item[=].linkId = "245973210113"
* item[=].item[=].text = "TIA"
* item[=].item[=].repeats = false
* item[=].item[+].item.item.code = http://snomed.info/sct#432213005 "Date of diagnosis"
* item[=].item[=].item.item.enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item.item.enableWhen.question = "o_7"
* item[=].item[=].item.item.enableWhen.operator = #=
* item[=].item[=].item.item.type = #date
* item[=].item[=].item.item.linkId = "o_7a"
* item[=].item[=].item.item.text = "Wann wurde das Vorhofflimmern diagnostiziert?"
* item[=].item[=].item.item.enableBehavior = #all
* item[=].item[=].item.item.repeats = true
* item[=].item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.code = http://snomed.info/sct#49436004 "Atrial fibrillation"
* item[=].item[=].item.answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#N "No"
* item[=].item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "asked but unknown"
* item[=].item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item[=].item.answerOption[=].initialSelected = true
* item[=].item[=].item.type = #choice
* item[=].item[=].item.linkId = "o_7"
* item[=].item[=].item.text = "Wurde ein Vorhofflimmern (dauerhaft oder anfallsartig) diagnostiziert?"
* item[=].item[=].item.repeats = false
* item[=].item[=].type = #group
* item[=].item[=].linkId = "826742623985"
* item[=].item[=].text = "Vorhofflimmern"
* item[=].item[=].repeats = false
* item[=].item[+].item[0].item.code = http://snomed.info/sct#432213005 "Date of diagnosis"
* item[=].item[=].item[=].item.enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item[=].item.enableWhen.question = "o_8"
* item[=].item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item[=].item.type = #date
* item[=].item[=].item[=].item.linkId = "o_8a"
* item[=].item[=].item[=].item.text = "Wann wurde die Herzinsuffizienz diagnostiziert?"
* item[=].item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].code = http://snomed.info/sct#48447003 "Chronic heart failure"
* item[=].item[=].item[=].answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#N "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "asked but unknown"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].linkId = "o_8"
* item[=].item[=].item[=].text = "Wurde eine Herzinsuffizienz (Herzschwäche, siehe Infobox) diagnostiziert?"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].item[0].code = http://snomed.info/sct#298060002 "Number of admissions"
* item[=].item[=].item[=].item[=].enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item[=].item[=].enableWhen.question = "o_9"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].item[=].linkId = "o_9a"
* item[=].item[=].item[=].item[=].text = "Wie häufig war aus diesem Grund im letzten Jahr im Krankenhaus notwendig?"
* item[=].item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[+].code = http://snomed.info/sct#399423000 "Date of admission"
* item[=].item[=].item[=].item[=].enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item[=].item[=].enableWhen.question = "o_9"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].linkId = "o_9b"
* item[=].item[=].item[=].item[=].text = "Wann kam es wegen eine Verschlechterung der Herzinsuffizienz zu einer stationären Aufnahme im Krankenhaus?"
* item[=].item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#N "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "asked but unknown"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].linkId = "o_9"
* item[=].item[=].item[=].text = "Wurden der Proband/die Probandin aufgrund einer Verschlechterung Ihrer Herzinsuffizienz (siehe Infobox) im letzten Jahr im Krankenhaus behandelt?"
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[+].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[=].item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].linkId = "944193442011_helpText"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].text = "Bei einer Herzinsuffizienz -die auch Herzschwäche genannt wird- hat das Herz nicht mehr genügend Kraft ausreichend Blut durch den Körper zu pumpen und es kommt zu einer zunehmend verminderten körperlichen Belastbarkeit, vermehrte Luftnot oder Einlagerung von Flüssigkeit (z.B. in den Beinen). Das kann zu behandlungsbedürftigen Zuständen führen, die mit Krankenhausaufenthalten verbunden sind."
* item[=].item[=].type = #group
* item[=].item[=].linkId = "944193442011"
* item[=].item[=].text = "Herzinsuffizienz"
* item[=].item[=].repeats = false
* item[=].item[+].item.item.item[0].code = http://snomed.info/sct#432213005 "Date of diagnosis"
* item[=].item[=].item.item.item[=].enableWhen.question = "o_10a"
* item[=].item[=].item.item.item[=].enableWhen.operator = #exists
* item[=].item[=].item.item.item[=].enableWhen.answerBoolean = true
* item[=].item[=].item.item.item[=].type = #date
* item[=].item[=].item.item.item[=].linkId = "o_10b"
* item[=].item[=].item.item.item[=].text = "Wann wurde diese Erkrankung diagnostiziert?"
* item[=].item[=].item.item.item[=].enableBehavior = #all
* item[=].item[=].item.item.item[=].repeats = false
* item[=].item[=].item.item.item[+].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.item.item[=].extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.item.item[=].linkId = "o_10a_helpText"
* item[=].item[=].item.item.item[=].type = #display
* item[=].item[=].item.item.item[=].text = "Angabe aus SNOMED-CT (Unterelemente von \"Disorder of cardiovascular system (disorder)\")"
* item[=].item[=].item.item.extension[0].url = "http://hl7.org/fhir/StructureDefinition/preferredTerminologyServer"
* item[=].item[=].item.item.extension[=].valueUrl = "https://snowstorm.ihtsdotools.org/fhir"
* item[=].item[=].item.item.extension[+].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#autocomplete "Auto-complete"
* item[=].item[=].item.item.extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.item.code = http://snomed.info/sct#439401001 "Diagnosis"
* item[=].item[=].item.item.enableWhen.answerCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item.item.enableWhen.question = "o_10"
* item[=].item[=].item.item.enableWhen.operator = #=
* item[=].item[=].item.item.type = #open-choice
* item[=].item[=].item.item.linkId = "o_10a"
* item[=].item[=].item.item.text = "Um welche weitere Herz-Kreislauf-Erkrankung handelt es sich?"
* item[=].item[=].item.item.enableBehavior = #all
* item[=].item[=].item.item.repeats = true
* item[=].item[=].item.item.answerValueSet = "http://snomed.info/sct?fhir_vs=isa/49601007"
* item[=].item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#Y "Yes"
* item[=].item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#N "No"
* item[=].item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "asked but unknown"
* item[=].item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item[=].item.answerOption[=].initialSelected = true
* item[=].item[=].item.type = #choice
* item[=].item[=].item.linkId = "o_10"
* item[=].item[=].item.text = "Wurden weitere Herz-Kreislauf-Erkrankungen diagnostiziert?"
* item[=].item[=].item.repeats = false
* item[=].item[=].type = #group
* item[=].item[=].linkId = "442060932628"
* item[=].item[=].text = "Weitere Herz-Kreislauf-Erkrankung"
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "group4"
* item[=].text = "Diagnosen im letzten Jahr (seit Teilnahme an der Acribis-Studie)"
* item[=].repeats = false
* item[+].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#drop-down "Drop down"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ParticipationMode#EMAILWRIT "email"
* item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ParticipationMode#MAILWRIT "mail"
* item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ParticipationMode#PHONE "telephone"
* item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ParticipationMode#FACE "face-to-face"
* item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ParticipationMode#ONLINEWRIT "online written"
* item[=].item.answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0532#NI "No Information"
* item[=].item.answerOption[=].initialSelected = true
* item[=].item.type = #choice
* item[=].item.linkId = "o_11"
* item[=].item.text = "Wie wurde das Follow-Up erhoben?"
* item[=].item.repeats = false
* item[=].type = #group
* item[=].linkId = "101636668393"
* item[=].text = "Allgemeine Angaben 2"
* item[=].repeats = false
* item[+].type = #display
* item[=].linkId = "504755903209"
* item[=].text = "Im Kontext der Follow-Up-Befragung der Acribis-Studie ist vorgesehen, dass neben den in diesem Fragebogen enthaltenen Follow-Up-Fragen auch Quality-of-Life-(QoL)-Fragebögen befüllt werden. Konkret handelt es sich um PROMIS-29 und EQ-5D-5L."
* version = "2027.0.0-ballot"
* publisher = "Medizininformatik Initiative"
* language = #de
* name = "MII_QN_Kardio_Acribis_Study_FollowUp"
* status = #draft
* experimental = true
* date = "2025-11-17"
* purpose = "Follow-Up-Fragebogen im Rahmen der Acribis-Studie."