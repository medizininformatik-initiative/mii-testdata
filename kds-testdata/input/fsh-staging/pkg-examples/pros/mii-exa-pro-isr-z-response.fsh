Instance: mii-exa-pro-isr-z-response
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
Usage: #example
* item[0].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-isr-z-answers#trifft-ziemlich-zu "trifft ziemlich zu"
* item[=].linkId = "isr-z-q01"
* item[=].text = "Ich leide unter meinen ständig wiederkehrenden, sinnlosen Gedanken oder Handlungen, gegen die ich mich aber nicht wehren kann (z.B. Hände waschen)."
* item[+].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-isr-z-answers#trifft-kaum-zu "trifft kaum zu"
* item[=].linkId = "isr-z-q02"
* item[=].text = "Ich leiste Widerstand gegen immer wiederkehrende, unsinnige Gedanken oder Handlungen, auch wenn mir das nicht immer gelingt."
* item[+].answer.valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-isr-z-answers#trifft-deutlich-zu "trifft deutlich zu"
* item[=].linkId = "isr-z-q03"
* item[=].text = "Ich leide unter quälenden, sinnlosen Gedanken oder Handlungen, die mein normales Leben beeinträchtigen."
* item[+].answer.valueDecimal = 2
* item[=].linkId = "isr-z-score-mean"
* item[=].text = "ISR-Z Skalenwert (Mittelwert der 3 Zwang-Items, Bereich 0-4)"
* status = #completed
* language = #de
* subject = Reference(mii-exa-pro-patient)
* authored = "2026-08-28T09:30:00Z"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-isr-z|2027.0.0-ballot.1"