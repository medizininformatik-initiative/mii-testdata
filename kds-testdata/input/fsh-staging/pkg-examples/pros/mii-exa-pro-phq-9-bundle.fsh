Instance: mii-exa-pro-phq-9-bundle
InstanceOf: Bundle
Usage: #example
* entry[0].request.method = #PUT
* entry[=].request.url = "Questionnaire/mii-qst-pro-phq-9"
* entry[=].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9"
* entry[=].resource = mii-qst-pro-phq-9
* entry[+].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/mii-exa-pro-phq-9-response"
* entry[=].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/QuestionnaireResponse/mii-exa-pro-phq-9-response"
* entry[=].resource = mii-exa-pro-phq-9-response
* entry[+].request.method = #PUT
* entry[=].request.url = "Observation/mii-exa-pro-phq-9-observation"
* entry[=].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Observation/mii-exa-pro-phq-9-observation"
* entry[=].resource = mii-exa-pro-phq-9-observation
* entry[+].resource = Inline-Instance-for-mii-exa-pro-phq-9-bundle-3
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/mii-exa-pro-patient"
* entry[=].fullUrl = "http://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Patient/mii-exa-pro-patient"
* type = #transaction