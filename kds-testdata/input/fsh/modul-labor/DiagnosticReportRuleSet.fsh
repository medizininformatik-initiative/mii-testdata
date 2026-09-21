RuleSet: AddDiagnosticReport(identifierValue, subject)
* identifier[befund].type = $v2-0203#FILL
* identifier[befund].system = "https://www.charite.de/fhir/sid/lab-results"
* identifier[befund].value = "{identifierValue}"
* identifier[befund].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[befund].assigner.identifier.value = "Charité"
* status = #final
* category[v2-lab].coding[0] = $v2-0074#LAB
* category[v2-lab].coding[+] = $loinc#26436-6 "Laboratory studies (set)"
* code.coding[loinc-labReport] = $loinc#11502-2 "Laboratory report"
* subject = Reference({subject})