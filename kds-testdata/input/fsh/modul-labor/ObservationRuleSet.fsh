RuleSet: AddLabObservation(identifierValue, codeCodingCodeLoinc, codeCodingDisplayLoinc, subject, encounter, effectiveDateTime, issued)
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/lab-results"
* identifier[analyseBefundCode].value = "{identifierValue}"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "Charité"
* status = #final
* category.coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category.coding[observation-category] = $observation-category#laboratory "Laboratory"
* code = $loinc#{codeCodingCodeLoinc} "{codeCodingDisplayLoinc}"
* subject = Reference({subject})
* encounter = Reference({encounter})
* effectiveDateTime = "{effectiveDateTime}"
* issued = "{issued}"