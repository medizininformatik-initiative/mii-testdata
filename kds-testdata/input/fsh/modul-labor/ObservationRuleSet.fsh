RuleSet: AddLabObservation(identifierValue, codeCodingCodeLoinc, codeCodingDisplayLoinc, subject, encounter, effectiveDateTime, issued)
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/lab-results"
* identifier[analyseBefundCode].value = "{identifierValue}"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "Charité"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[+] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#{codeCodingCodeLoinc} "{codeCodingDisplayLoinc}"
* subject = Reference({subject})
* encounter = Reference({encounter})
* effectiveDateTime = "{effectiveDateTime}"
* issued = "{issued}"