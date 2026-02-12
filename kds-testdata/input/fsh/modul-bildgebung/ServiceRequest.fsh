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

// CT Thorax scenario
Instance: mii-exa-test-data-anforderung-ct
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung
Usage: #example
Description: "ServiceRequest: Anforderung CT Thorax"
* insert TestDataLabel
* status = #completed
* intent = #order
* priority = #urgent
* category = $sct#363679005 "Imaging (procedure)"
* code = $sct#169069000 "CT of chest"
* subject = Reference(mii-exa-test-data-patient-2)
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* authoredOn = "2024-11-04T16:30:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* performer = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#427359005 "Solitary nodule of lung"
* reasonReference = Reference(mii-exa-test-data-patient-2-diagnose-1)
* supportingInfo = Reference(mii-exa-test-data-bildgebungsstudie-ct)
* note.text = "V.a. Bronchialkarzinom bei Raucher mit Haemoptysen. CT Thorax mit KM zur Abklaerung dringend erbeten."