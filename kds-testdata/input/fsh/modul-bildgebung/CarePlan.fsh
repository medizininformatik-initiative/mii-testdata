Instance: mii-exa-test-data-behandlungsempfehlung
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung
Usage: #example
Description: "CarePlan: Behandlungsempfehlung"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung"
* status = #completed
* intent = #proposal
* description = "The patient must receive vacuum biopsy"
* subject = Reference(mii-exa-test-data-patient-1)
* supportingInfo = Reference(mii-exa-test-data-befundbericht)