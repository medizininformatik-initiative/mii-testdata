Instance: mii-exa-test-data-anforderung
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung
Usage: #example
Description: "ServiceRequest: Anforderung MR"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung"
* status = #completed
* intent = #order
* category = $sct#363679005 "Imaging (procedure)"
* subject = Reference(mii-exa-test-data-patient-1)
* code = $sct#71651007 "Mammography (procedure)"
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* authoredOn = "2024-07-19T12:03:30+02:00"
* requester = Reference(mii-exa-test-data-organization-biobank-charite)
* reasonCode = $sct#268547008 "Screening for malignant neoplasm of breast (procedure)"
* reasonReference = Reference(mii-exa-test-data-patient-1-diagnose-1)
* supportingInfo = Reference(mii-exa-test-data-bildgebungsstudie)