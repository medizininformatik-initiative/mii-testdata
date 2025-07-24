// Patient-3
Instance: mii-exa-test-data-patient-3-molgen-folgemassnahme-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/empfohlene-folgemassnahme
Usage: #example
Description: "Task: Empfohlene Folgemaßnahme für BRAF-Mutation"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/empfohlene-folgemassnahme|1.0.0"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/followup-recommendation"
* status = #requested
* intent = #proposal
* basedOn = Reference(mii-exa-test-data-patient-3-molgen-anforderung-1)
* code = $loinc#LA14020-4 "Genetic counseling recommended"
* description = "Genetische Beratung empfohlen mit Dr. Rosalind Franklin"
* for = Reference(mii-exa-test-data-patient-3)
* reasonReference = Reference(mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1)
* reasonCode = $sct#447886005 "Adenocarcinoma of anorectum (disorder)"