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
* status = #completed
* language = #de
* subject = Reference(mii-exa-test-data-pro-patient-1)
* authored = "2024-03-15T10:00:00+01:00"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9"

// q01: Little interest or pleasure - Several days (1)
* item[+].linkId = "phq-phq9-q01"
* item[=].answer[0].valueCoding = $loinc#LA6569-3 "Several days"

// q02: Feeling down, depressed - Several days (1)
* item[+].linkId = "phq-phq9-q02"
* item[=].answer[0].valueCoding = $loinc#LA6569-3 "Several days"

// q03: Sleep problems - More than half the days (2)
* item[+].linkId = "phq-phq9-q03"
* item[=].answer[0].valueCoding = $loinc#LA6570-1 "More than half the days"

// q04: Feeling tired - Several days (1)
* item[+].linkId = "phq-phq9-q04"
* item[=].answer[0].valueCoding = $loinc#LA6569-3 "Several days"

// q05: Poor appetite - Not at all (0)
* item[+].linkId = "phq-phq9-q05"
* item[=].answer[0].valueCoding = $loinc#LA6568-5 "Not at all"

// q06: Feeling bad about yourself - Several days (1)
* item[+].linkId = "phq-phq9-q06"
* item[=].answer[0].valueCoding = $loinc#LA6569-3 "Several days"

// q07: Trouble concentrating - Several days (1)
* item[+].linkId = "phq-phq9-q07"
* item[=].answer[0].valueCoding = $loinc#LA6569-3 "Several days"

// q08: Moving/speaking slowly - Not at all (0)
* item[+].linkId = "phq-phq9-q08"
* item[=].answer[0].valueCoding = $loinc#LA6568-5 "Not at all"

// q09: Thoughts of death - Several days (1)
* item[+].linkId = "phq-phq9-q09"
* item[=].answer[0].valueCoding = $loinc#LA6569-3 "Several days"

// Total score: 1+1+2+1+0+1+1+0+1 = 8 (mild depression)
* item[+].linkId = "phq-phq9-score-total"
* item[=].answer[0].valueDecimal = 8

// q10: Functional impairment
* item[+].linkId = "phq-phq9-q10"
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
