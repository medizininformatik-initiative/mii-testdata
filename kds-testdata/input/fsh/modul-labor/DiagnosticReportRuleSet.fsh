RuleSet: AddDiagnosticReport(identifierValue, subject)
* identifier[befund].type = $v2-0203#FILL
* identifier[befund].system = "https://www.charite.de/fhir/sid/lab-results"
* identifier[befund].value = "{identifierValue}"
* identifier[befund].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[befund].assigner.identifier.value = "Charité"
* status = #final
* category.coding[loinc-lab] = $loinc#26436-6 "Laboratory studies (set)"
* category.coding[diagnostic-service-sections] = $v2-0074#LAB
* code.coding[loinc-labReport] = $loinc#11502-2 "Laboratory report"
* subject = Reference({subject})