Instance: mii-exa-test-data-patient-3-molgen-medikationsempfehlung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/medikationsempfehlung
Usage: #example
Description: "Task: Medikationsempfehlung fuer BRAF-Mutation"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/medication-recommendation"
* status = #requested
* intent = #proposal
* basedOn = Reference(mii-exa-test-data-patient-3-molgen-anforderung-1)
* code = $loinc#LA26421-0 "Consider alternative medication"
* code.text = "Alternative Medikation in Erwaegung ziehen"
* for = Reference(mii-exa-test-data-molgen-patient-1)
* encounter = Reference(mii-exa-test-data-molgen-encounter-1)
* reasonReference = Reference(mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1)
* reasonCode = $sct#447886005 "Adenocarcinoma of anorectum (disorder)"
