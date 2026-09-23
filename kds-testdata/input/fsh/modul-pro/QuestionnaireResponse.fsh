// =============================================================================
// PRO Module - QuestionnaireResponse Test Instances
// =============================================================================

// -----------------------------------------------------------------------------
// PHQ-9 QuestionnaireResponse (Patient 1, mild depression, score 8)
// Covers: MII_PR_PRO_QuestionnaireResponse
// MS elements: language, plus SDC inherited: questionnaire, status, subject, authored, item
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-phq9-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
Description: "PRO QuestionnaireResponse: PHQ-9 for Patient 1 (mild depression, score 8)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* language = #de
* subject = Reference(mii-exa-test-data-pro-patient-1)
* authored = "2024-03-15T10:00:00+01:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9"

// q01: Little interest or pleasure - Several days (1)
* item[+].linkId = "phq-phq2a"
* item[=].answer[0].valueCoding = $loinc#LA6569-3 "Several days"

// q02: Feeling down, depressed - Several days (1)
* item[+].linkId = "phq-phq2b"
* item[=].answer[0].valueCoding = $loinc#LA6569-3 "Several days"

// q03: Sleep problems - More than half the days (2)
* item[+].linkId = "phq-phq2c"
* item[=].answer[0].valueCoding = $loinc#LA6570-1 "More than half the days"

// q04: Feeling tired - Several days (1)
* item[+].linkId = "phq-phq2d"
* item[=].answer[0].valueCoding = $loinc#LA6569-3 "Several days"

// q05: Poor appetite - Not at all (0)
* item[+].linkId = "phq-phq2e"
* item[=].answer[0].valueCoding = $loinc#LA6568-5 "Not at all"

// q06: Feeling bad about yourself - Several days (1)
* item[+].linkId = "phq-phq2f"
* item[=].answer[0].valueCoding = $loinc#LA6569-3 "Several days"

// q07: Trouble concentrating - Several days (1)
* item[+].linkId = "phq-phq2g"
* item[=].answer[0].valueCoding = $loinc#LA6569-3 "Several days"

// q08: Moving/speaking slowly - Not at all (0)
* item[+].linkId = "phq-phq2h"
* item[=].answer[0].valueCoding = $loinc#LA6568-5 "Not at all"

// q09: Thoughts of death - Several days (1)
* item[+].linkId = "phq-phq2i"
* item[=].answer[0].valueCoding = $loinc#LA6569-3 "Several days"

// Total score: 1+1+2+1+0+1+1+0+1 = 8 (mild depression)
* item[+].linkId = "phq-phq9-score-total"
* item[=].answer[0].valueDecimal = 8

// q10: Functional impairment
* item[+].linkId = "phq-phq9-difficulty"
* item[=].answer[0].valueCoding = $loinc#LA6573-5 "Somewhat difficult"


// -----------------------------------------------------------------------------
// PROMIS Depression SF4a QuestionnaireResponse (Patient 1, mild, raw score 7)
// Covers: MII_PR_PRO_QuestionnaireResponse (second instance, different questionnaire)
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-promis-dep-sf4a-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
Description: "PRO QuestionnaireResponse: PROMIS Depression SF4a for Patient 1 (mild, raw score 7)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* language = #de
* subject = Reference(mii-exa-test-data-pro-patient-1)
* authored = "2024-03-15T10:15:00+01:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-depression-sf4a"

// Item 1: I felt worthless - Rarely (2)
* item[+].linkId = "promis-eddep04"
* item[=].answer.valueCoding = $loinc#LA10066-1 "Rarely"

// Item 2: I felt helpless - Rarely (2)
* item[+].linkId = "promis-eddep06"
* item[=].answer.valueCoding = $loinc#LA10066-1 "Rarely"

// Item 3: I felt depressed - Never (1)
* item[+].linkId = "promis-eddep29"
* item[=].answer.valueCoding = $loinc#LA6270-8 "Never"

// Item 4: I felt hopeless - Rarely (2)
* item[+].linkId = "promis-eddep41"
* item[=].answer.valueCoding = $loinc#LA10066-1 "Rarely"

// Raw score: 2+2+1+2 = 7
* item[+].linkId = "promis-depression-score-raw"
* item[=].answer.valueDecimal = 7

// T-Score: raw 7 -> T-score 52.7
* item[+].linkId = "promis-depression-score-tscore"
* item[=].answer.valueDecimal = 52.7


// -----------------------------------------------------------------------------
// PHQ-15 QuestionnaireResponse (Patient 1, medium somatic symptom severity, score 12)
// Covers: MII_PR_PRO_QuestionnaireResponse (PHQ-15); Basis fuer PHQ-15 Score Observation
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-phq15-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
Description: "PRO QuestionnaireResponse: PHQ-15 for Patient 1 (medium somatic symptom severity, score 12)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* language = #de
* subject = Reference(mii-exa-test-data-pro-patient-1)
* authored = "2024-03-15T10:30:00+01:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-15"

// q1a: Stomach pain - Bothered a little (1)
* item[+].linkId = "phq-phq1a"
* item[=].answer[0].valueCoding = $pro-phq15-answers#bothered-a-little "Bothered a little"
// q1b: Back pain - Bothered a lot (2)
* item[+].linkId = "phq-phq1b"
* item[=].answer[0].valueCoding = $pro-phq15-answers#bothered-a-lot "Bothered a lot"
// q1c: Pain in arms, legs, or joints - Bothered a little (1)
* item[+].linkId = "phq-phq1c"
* item[=].answer[0].valueCoding = $pro-phq15-answers#bothered-a-little "Bothered a little"
// q1d: Menstrual cramps - Not bothered (0)
* item[+].linkId = "phq-phq1d"
* item[=].answer[0].valueCoding = $pro-phq15-answers#not-bothered "Not bothered at all"
// q1e: Headaches - Bothered a little (1)
* item[+].linkId = "phq-phq1e"
* item[=].answer[0].valueCoding = $pro-phq15-answers#bothered-a-little "Bothered a little"
// q1f: Chest pain - Not bothered (0)
* item[+].linkId = "phq-phq1f"
* item[=].answer[0].valueCoding = $pro-phq15-answers#not-bothered "Not bothered at all"
// q1g: Dizziness - Bothered a little (1)
* item[+].linkId = "phq-phq1g"
* item[=].answer[0].valueCoding = $pro-phq15-answers#bothered-a-little "Bothered a little"
// q1h: Fainting spells - Not bothered (0)
* item[+].linkId = "phq-phq1h"
* item[=].answer[0].valueCoding = $pro-phq15-answers#not-bothered "Not bothered at all"
// q1i: Heart pounding or racing - Bothered a little (1)
* item[+].linkId = "phq-phq1i"
* item[=].answer[0].valueCoding = $pro-phq15-answers#bothered-a-little "Bothered a little"
// q1j: Shortness of breath - Not bothered (0)
* item[+].linkId = "phq-phq1j"
* item[=].answer[0].valueCoding = $pro-phq15-answers#not-bothered "Not bothered at all"
// q1k: Pain or problems during intercourse - Not bothered (0)
* item[+].linkId = "phq-phq1k"
* item[=].answer[0].valueCoding = $pro-phq15-answers#not-bothered "Not bothered at all"
// q1l: Constipation, loose bowels, or diarrhea - Bothered a little (1)
* item[+].linkId = "phq-phq1l"
* item[=].answer[0].valueCoding = $pro-phq15-answers#bothered-a-little "Bothered a little"
// q1m: Nausea, gas, or indigestion - Bothered a little (1)
* item[+].linkId = "phq-phq1m"
* item[=].answer[0].valueCoding = $pro-phq15-answers#bothered-a-little "Bothered a little"
// q2d: Feeling tired or having low energy - Bothered a little (1); konsistent mit PHQ-9 q04
* item[+].linkId = "phq-phq2d"
* item[=].answer[0].valueCoding = $pro-phq15-answers#bothered-a-little "Bothered a little"
// q2c: Trouble sleeping - Bothered a lot (2); konsistent mit PHQ-9 q03
* item[+].linkId = "phq-phq2c"
* item[=].answer[0].valueCoding = $pro-phq15-answers#bothered-a-lot "Bothered a lot"

// Total score: 1+2+1+0+1+0+1+0+1+0+0+1+1+1+2 = 12 (medium somatic symptom severity, 10-14)
* item[+].linkId = "phq-phq15-score-total"
* item[=].answer[0].valueDecimal = 12


// -----------------------------------------------------------------------------
// WHODAS 2.0 12-Item QuestionnaireResponse (Patient 1, mild disability, simple sum 12)
// Covers: MII_PR_PRO_QuestionnaireResponse (WHODAS-12); Basis fuer WHODAS-12 Score Observation
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-whodas12-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
Description: "PRO QuestionnaireResponse: WHODAS 2.0 12-Item for Patient 1 (mild disability, simple sum 12)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* language = #de
* subject = Reference(mii-exa-test-data-pro-patient-1)
* authored = "2024-03-15T10:45:00+01:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12"

// q01: Standing for long periods - Mild (1)
* item[+].linkId = "whodas-whodas12-q01"
* item[=].answer[0].valueCoding = $pro-whodas12#whodas12-answer-1 "Mild"
// q02: Household responsibilities - Mild (1)
* item[+].linkId = "whodas-whodas12-q02"
* item[=].answer[0].valueCoding = $pro-whodas12#whodas12-answer-1 "Mild"
// q03: Learning a new task - None (0)
* item[+].linkId = "whodas-whodas12-q03"
* item[=].answer[0].valueCoding = $pro-whodas12#whodas12-answer-0 "None"
// q04: Joining in community activities - Moderate (2)
* item[+].linkId = "whodas-whodas12-q04"
* item[=].answer[0].valueCoding = $pro-whodas12#whodas12-answer-2 "Moderate"
// q05: Emotionally affected by health problems - Moderate (2)
* item[+].linkId = "whodas-whodas12-q05"
* item[=].answer[0].valueCoding = $pro-whodas12#whodas12-answer-2 "Moderate"
// q06: Concentrating for ten minutes - Mild (1)
* item[+].linkId = "whodas-whodas12-q06"
* item[=].answer[0].valueCoding = $pro-whodas12#whodas12-answer-1 "Mild"
// q07: Walking a long distance - Mild (1)
* item[+].linkId = "whodas-whodas12-q07"
* item[=].answer[0].valueCoding = $pro-whodas12#whodas12-answer-1 "Mild"
// q08: Washing whole body - None (0)
* item[+].linkId = "whodas-whodas12-q08"
* item[=].answer[0].valueCoding = $pro-whodas12#whodas12-answer-0 "None"
// q09: Getting dressed - None (0)
* item[+].linkId = "whodas-whodas12-q09"
* item[=].answer[0].valueCoding = $pro-whodas12#whodas12-answer-0 "None"
// q10: Dealing with strangers - Mild (1)
* item[+].linkId = "whodas-whodas12-q10"
* item[=].answer[0].valueCoding = $pro-whodas12#whodas12-answer-1 "Mild"
// q11: Maintaining a friendship - Mild (1)
* item[+].linkId = "whodas-whodas12-q11"
* item[=].answer[0].valueCoding = $pro-whodas12#whodas12-answer-1 "Mild"
// q12: Day-to-day work/school - Moderate (2)
* item[+].linkId = "whodas-whodas12-q12"
* item[=].answer[0].valueCoding = $pro-whodas12#whodas12-answer-2 "Moderate"

// Simple sum: 1+1+0+2+2+1+1+0+0+1+1+2 = 12 (range 0-48)
* item[+].linkId = "whodas-whodas12-score-simple-sum"
* item[=].answer[0].valueDecimal = 12

// -----------------------------------------------------------------------------
// PROMIS-29 QuestionnaireResponse (Patient 1, Auszug Angst + Depression)
// Covers: identifier, author, item.text, item.item (verschachtelte Gruppen);
// answer.valueCoding.display mit translation-Extension wie im Questionnaire.
// Hinweis: item.answer.item bleibt offen - keines der PRO-Questionnaires hat
// Kind-Items unter Frage-Items, eine solche Antwortstruktur waere invalide.
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-promis29-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
Description: "PRO QuestionnaireResponse: PROMIS-29 (Auszug Angst/Depression) for Patient 1"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/pro-questionnaire-response-id"
* identifier.value = "PRO-QR-P29-PAT1-001"
* status = #completed
* language = #de
* subject = Reference(mii-exa-test-data-pro-patient-1)
* author = Reference(mii-exa-test-data-pro-patient-1)
* authored = "2024-03-15T10:30:00+01:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29-de"
// Gruppe ANGST mit verschachtelten Frage-Items (item.item)
* item[+].linkId = "PROMIS-29.Anxiety"
* item[=].text = "ANGST"
* item[=].item[+].linkId = "promis-edanx01"
* item[=].item[=].text = "Ich fürchtete mich."
* item[=].item[=].answer[0].valueCoding = $loinc#LA6270-8 "Nie"
* item[=].item[=].answer[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].answer[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].item[=].answer[0].valueCoding.display.extension[0].extension[0].valueCode = #en
* item[=].item[=].answer[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].item[=].answer[0].valueCoding.display.extension[0].extension[1].valueString = "Never"
* item[=].item[+].linkId = "promis-edanx41"
* item[=].item[=].text = "Meine Sorgen haben mich überwältigt."
* item[=].item[=].answer[0].valueCoding = $loinc#LA10066-1 "Selten"
// Gruppe DEPRESSION mit verschachtelten Frage-Items
* item[+].linkId = "PROMIS-29.Depression"
* item[=].text = "DEPRESSION"
* item[=].item[+].linkId = "promis-eddep04"
* item[=].item[=].text = "Ich fühlte mich wertlos."
* item[=].item[=].answer[0].valueCoding = $loinc#LA10066-1 "Selten"
* item[=].item[+].linkId = "promis-eddep29"
* item[=].item[=].text = "Ich fühlte mich niedergeschlagen."
* item[=].item[=].answer[0].valueCoding = $loinc#LA10082-8 "Manchmal"
