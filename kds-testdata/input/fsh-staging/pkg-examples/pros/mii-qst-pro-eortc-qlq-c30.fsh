Instance: mii-qst-pro-eortc-qlq-c30
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire
Usage: #inline
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-eortc-qlq-c30"
* title = "EORTC QLQ-C30 Quality of Life Questionnaire Version 3.0"
* description = "EORTC QLQ-C30 Version 3.0 Quality of Life Questionnaire - Complete implementation with all 30 items and 15 scale scores"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#natural "Natural"
* extension[+].extension[0].url = "displayable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "collectable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "calculatable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "extractable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "domainAligned"
* extension[=].extension[=].valueBoolean = false
* extension[=].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
* code[0] = http://snomed.info/sct#273446001 "European Organisation for Research and Treatment of Cancer - Quality of Life questionnaire (assessment scale)"
* code[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue#eortc-qlq-c30 "EORTC QLQ-C30 Quality of Life Questionnaire"
* item[0].linkId = "QLQ-C30.Introduction"
* item[=].type = #display
* item[=].text = "We are interested in some things about you and your health. Please answer all of the questions yourself by circling the number that best applies to you. There are no 'right' or 'wrong' answers. The information that you provide will remain strictly confidential."
* item[+].linkId = "QLQ-C30.Section1"
* item[=].type = #display
* item[=].text = "During the past week:"
* item[+].linkId = "qlq-c30-q01"
* item[=].type = #choice
* item[=].prefix = "1"
* item[=].text = "Do you have any trouble doing strenuous activities, like carrying a heavy shopping bag or a suitcase?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Bereitet es Ihnen Schwierigkeiten, sich körperlich anzustrengen (z.B. eine schwere Einkaufstasche oder einen Koffer zu tragen)?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q02"
* item[=].type = #choice
* item[=].prefix = "2"
* item[=].text = "Do you have any trouble taking a long walk?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Bereitet es Ihnen Schwierigkeiten, einen längeren Spaziergang zu machen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q03"
* item[=].type = #choice
* item[=].prefix = "3"
* item[=].text = "Do you have any trouble taking a short walk outside of the house?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Bereitet es Ihnen Schwierigkeiten, eine kurze Strecke außer Haus zu gehen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q04"
* item[=].type = #choice
* item[=].prefix = "4"
* item[=].text = "Do you need to stay in bed or a chair during the day?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Müssen Sie tagsüber im Bett liegen oder in einem Sessel sitzen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q05"
* item[=].type = #choice
* item[=].prefix = "5"
* item[=].text = "Do you need help with eating, dressing, washing yourself or using the toilet?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Brauchen Sie Hilfe beim Essen, Anziehen, Waschen oder Benutzen der Toilette?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q06"
* item[=].type = #choice
* item[=].prefix = "6"
* item[=].text = "Were you limited in doing either your work or other daily activities?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Waren Sie bei Ihrer Arbeit oder bei anderen tagtäglichen Beschäftigungen eingeschränkt?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q07"
* item[=].type = #choice
* item[=].prefix = "7"
* item[=].text = "Were you limited in pursuing your hobbies or other leisure time activities?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Waren Sie bei Ihren Hobbys oder anderen Freizeitbeschäftigungen eingeschränkt?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q08"
* item[=].type = #choice
* item[=].prefix = "8"
* item[=].text = "Were you short of breath?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Waren Sie kurzatmig?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q09"
* item[=].type = #choice
* item[=].prefix = "9"
* item[=].text = "Have you had pain?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Hatten Sie Schmerzen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q10"
* item[=].type = #choice
* item[=].prefix = "10"
* item[=].text = "Did you need to rest?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Mussten Sie sich ausruhen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q11"
* item[=].type = #choice
* item[=].prefix = "11"
* item[=].text = "Have you had trouble sleeping?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Hatten Sie Schlafstörungen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q12"
* item[=].type = #choice
* item[=].prefix = "12"
* item[=].text = "Have you felt weak?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Fühlten Sie sich schwach?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q13"
* item[=].type = #choice
* item[=].prefix = "13"
* item[=].text = "Have you lacked appetite?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Hatten Sie Appetitmangel?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q14"
* item[=].type = #choice
* item[=].prefix = "14"
* item[=].text = "Have you felt nauseated?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "War Ihnen übel?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q15"
* item[=].type = #choice
* item[=].prefix = "15"
* item[=].text = "Have you vomited?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Haben Sie erbrochen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q16"
* item[=].type = #choice
* item[=].prefix = "16"
* item[=].text = "Have you been constipated?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Hatten Sie Verstopfung?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q17"
* item[=].type = #choice
* item[=].prefix = "17"
* item[=].text = "Have you had diarrhea?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Hatten Sie Durchfall?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q18"
* item[=].type = #choice
* item[=].prefix = "18"
* item[=].text = "Were you tired?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Waren Sie müde?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q19"
* item[=].type = #choice
* item[=].prefix = "19"
* item[=].text = "Did pain interfere with your daily activities?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Fühlten Sie sich durch Schmerzen in Ihrem alltäglichen Leben beeinträchtigt?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q20"
* item[=].type = #choice
* item[=].prefix = "20"
* item[=].text = "Have you had difficulty in concentrating on things, like reading a newspaper or watching television?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Hatten Sie Schwierigkeiten, sich auf etwas zu konzentrieren, z.B. auf das Zeitunglesen oder das Fernsehen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q21"
* item[=].type = #choice
* item[=].prefix = "21"
* item[=].text = "Did you feel tense?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Fühlten Sie sich angespannt?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q22"
* item[=].type = #choice
* item[=].prefix = "22"
* item[=].text = "Did you worry?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Haben Sie sich Sorgen gemacht?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q23"
* item[=].type = #choice
* item[=].prefix = "23"
* item[=].text = "Did you feel irritable?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Waren Sie reizbar?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q24"
* item[=].type = #choice
* item[=].prefix = "24"
* item[=].text = "Did you feel depressed?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Fühlten Sie sich niedergeschlagen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q25"
* item[=].type = #choice
* item[=].prefix = "25"
* item[=].text = "Have you had difficulty remembering things?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Hatten Sie Schwierigkeiten, sich an Dinge zu erinnern?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q26"
* item[=].type = #choice
* item[=].prefix = "26"
* item[=].text = "Has your physical condition or medical treatment interfered with your family life?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Hat Ihr körperlicher Zustand oder Ihre medizinische Behandlung Ihr Familienleben beeinträchtigt?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q27"
* item[=].type = #choice
* item[=].prefix = "27"
* item[=].text = "Has your physical condition or medical treatment interfered with your social activities?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Hat Ihr körperlicher Zustand oder Ihre medizinische Behandlung Ihr Zusammensein oder Ihre gemeinsamen Unternehmungen mit anderen Menschen beeinträchtigt?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "qlq-c30-q28"
* item[=].type = #choice
* item[=].prefix = "28"
* item[=].text = "Has your physical condition or medical treatment caused you financial difficulties?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Hat Ihr körperlicher Zustand oder Ihre medizinische Behandlung für Sie finanzielle Schwierigkeiten mit sich gebracht?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-4pt"
* item[+].linkId = "QLQ-C30.Section2"
* item[=].type = #display
* item[=].text = "For the following questions please circle the number between 1 and 7 that best applies to you"
* item[+].linkId = "qlq-c30-q29"
* item[=].type = #choice
* item[=].prefix = "29"
* item[=].text = "How would you rate your overall health during the past week?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Wie würden Sie insgesamt Ihren Gesundheitszustand während der letzten Woche einschätzen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-7pt"
* item[+].linkId = "qlq-c30-q30"
* item[=].type = #choice
* item[=].prefix = "30"
* item[=].text = "How would you rate your overall quality of life during the past week?"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Wie würden Sie insgesamt Ihre Lebensqualität während der letzten Woche einschätzen?"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerValueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ValueSet/mii-vs-pro-eortc-qlq-c30-scale-7pt"
* item[+].item[0].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(1 - (((%resource.item.where(linkId.matches('^qlq-c30-q0[1-5]$')).answer.value.weight().sum()) / 5) - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-pf"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Physical Functioning Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Körperliche Funktion"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(1 - (((%resource.item.where(linkId='qlq-c30-q06' or linkId='qlq-c30-q07').answer.value.weight().sum()) / 2) - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-rf"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Role Functioning Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Rollenfunktion"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(1 - (((%resource.item.where(linkId.matches('^qlq-c30-q2[1-4]$')).answer.value.weight().sum()) / 4) - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-ef"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Emotional Functioning Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Emotionale Funktion"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(1 - (((%resource.item.where(linkId='qlq-c30-q20' or linkId='qlq-c30-q25').answer.value.weight().sum()) / 2) - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-cf"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Cognitive Functioning Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Kognitive Funktion"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(1 - (((%resource.item.where(linkId='qlq-c30-q26' or linkId='qlq-c30-q27').answer.value.weight().sum()) / 2) - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-sf"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Social Functioning Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Soziale Funktion"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(((%resource.item.where(linkId='qlq-c30-q10' or linkId='qlq-c30-q12' or linkId='qlq-c30-q18').answer.value.weight().sum()) / 3) - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-fa"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Fatigue Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Fatigue"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(((%resource.item.where(linkId='qlq-c30-q14' or linkId='qlq-c30-q15').answer.value.weight().sum()) / 2) - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-nv"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Nausea and Vomiting Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Übelkeit und Erbrechen"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(((%resource.item.where(linkId='qlq-c30-q09' or linkId='qlq-c30-q19').answer.value.weight().sum()) / 2) - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-pa"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Pain Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Schmerz"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "((%resource.item.where(linkId='qlq-c30-q08').answer.value.weight() - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-dy"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Dyspnoea Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Atemnot"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "((%resource.item.where(linkId='qlq-c30-q11').answer.value.weight() - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-sl"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Insomnia Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Schlaflosigkeit"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "((%resource.item.where(linkId='qlq-c30-q13').answer.value.weight() - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-ap"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Appetite Loss Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Appetitverlust"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "((%resource.item.where(linkId='qlq-c30-q16').answer.value.weight() - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-co"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Constipation Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Verstopfung"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "((%resource.item.where(linkId='qlq-c30-q17').answer.value.weight() - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-di"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Diarrhoea Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Durchfall"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "((%resource.item.where(linkId='qlq-c30-q28').answer.value.weight() - 1) / 3) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-fi"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Financial Difficulties Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Finanzielle Schwierigkeiten"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].item[+].extension[0].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "(((%resource.item.where(linkId='qlq-c30-q29' or linkId='qlq-c30-q30').answer.value.weight().sum()) / 2) - 1) / 6) * 100"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].linkId = "score-ql"
* item[=].item[=].type = #decimal
* item[=].item[=].text = "Global Health Status / Quality of Life Score"
* item[=].item[=].text.extension.extension[0].url = "lang"
* item[=].item[=].text.extension.extension[=].valueCode = #de
* item[=].item[=].text.extension.extension[+].url = "content"
* item[=].item[=].text.extension.extension[=].valueString = "Skalenwert Globaler Gesundheitsstatus / Lebensqualität"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].readOnly = true
* item[=].linkId = "QLQ-C30.Scores"
* item[=].type = #group
* item[=].text = "Calculated Scores (0-100 scale)"
* item[=].text.extension.extension[0].url = "lang"
* item[=].text.extension.extension[=].valueCode = #de
* item[=].text.extension.extension[+].url = "content"
* item[=].text.extension.extension[=].valueString = "Berechnete Scores (Skala 0–100)"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* version = "2027.0.0-ballot.1"
* status = #active
* experimental = true
* language = #en
* publisher = "Medizininformatik Initiative (MII)"
* copyright = "© Copyright 1995 EORTC Quality of Life Group. All rights reserved. Version 3.0"