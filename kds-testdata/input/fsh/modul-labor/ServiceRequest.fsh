// Patient-1
Instance: mii-exa-test-data-patient-1-labrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab|1.0.7-alpha1"
* status = #completed
* intent = #order
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://www.charite.de/fhir/sid/Laboranforderungen"
* identifier[anforderung].value = "LA_000001"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "Charité"
* category.coding[laboratory] = $observation-category#laboratory
* code = $loinc#55429-5 "Short blood count panel - Blood"
* code.text = "kleines Blutbild"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* authoredOn = "2024-02-15T10:28:00+01:00"
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)