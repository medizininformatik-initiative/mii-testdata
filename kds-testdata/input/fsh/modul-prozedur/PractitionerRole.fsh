Instance: mii-exa-test-data-practitioner-role-physician-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person
Usage: #example
Description: "PractitionerRole: Physician"
* insert TestDataLabel
* active = true
* practitioner = Reference(mii-exa-test-data-practitioner-physician-1)
* organization = Reference(mii-exa-test-data-organization-charite)
* code = $sct#309343006 "Physician (occupation)"