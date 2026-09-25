// =============================================================================
// PRO Module - lokaler Zusatzfragebogen (Testdaten)
// Zweck: Die MII-PRO-Instrumente (PHQ, PROMIS, WHODAS, EQ-5D) haben unter
// Frage-Items ausschliesslich display-Items; eine Antwortstruktur mit
// QuestionnaireResponse.item.answer.item ist damit nicht abbildbar.
// Dieser kleine, hauseigene Zusatzfragebogen enthaelt daher ein Frage-Item mit
// untergeordneten Frage-Items (Folgefragen zur Antwort "Ja") und dient als
// Grundlage der QuestionnaireResponse mit answer.item.
// =============================================================================

Instance: mii-exa-test-data-pro-questionnaire-schmerz-zusatz
InstanceOf: http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire
Usage: #example
Title: "PRO-Zusatzfragen Schmerz (Testdaten)"
Description: "Hauseigener PRO-Zusatzfragebogen mit Folgefragen unterhalb einer Antwort (Grundlage fuer answer.item)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* url = "https://www.charite.de/fhir/kds-testdata/Questionnaire/pro-zusatzfragen-schmerz"
* name = "PROZusatzfragenSchmerz"
* title = "PRO-Zusatzfragen Schmerz"
* status = #active
* experimental = true
* date = "2024-03-01"
* publisher = "Charité - Universitätsmedizin Berlin"
* subjectType = #Patient
* language = #de
* item[0].linkId = "zusatz-schmerz-vorhanden"
* item[0].text = "Hatten Sie in den letzten 7 Tagen Schmerzen?"
* item[0].type = #choice
* item[0].answerOption[0].valueCoding = $sct#373066001 "Yes"
* item[0].answerOption[1].valueCoding = $sct#373067005 "No"
// Folgefragen: gelten nur, wenn die Frage mit "Ja" beantwortet wurde, und
// erscheinen in der Antwort deshalb unterhalb von answer
* item[0].item[0].linkId = "zusatz-schmerz-lokalisation"
* item[0].item[0].text = "Wo hatten Sie diese Schmerzen hauptsächlich?"
* item[0].item[0].type = #string
* item[0].item[1].linkId = "zusatz-schmerz-intensitaet"
* item[0].item[1].text = "Wie stark waren die Schmerzen im Durchschnitt (0 = kein Schmerz, 10 = stärkster vorstellbarer Schmerz)?"
* item[0].item[1].type = #integer
