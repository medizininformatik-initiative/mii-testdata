Instance: mii-exa-test-data-onko-mamma-systemische-medikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation
Usage: #example
Description: "MedicationStatement: Systemische Therapie für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* partOf = Reference(mii-exa-test-data-onko-mamma-systemische-procedure)
* medicationCodeableConcept.coding[atcClassDe] = $atc#L01CD02 "Docetaxel"
* effectiveDateTime = "2021-12-04"
* status = $medication-status#completed