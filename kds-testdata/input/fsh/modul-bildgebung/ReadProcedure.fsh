Instance: mii-exa-test-data-befundungsprozedur
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-befundungsprozedur
Usage: #example
Description: "Procedure: Befundungsprozedur"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-befundungsprozedur"
* status = #completed
* category = $sct#165197003 "Diagnostic assessment (procedure)"
* code = $sct#4261000179100 "Computed tomography imaging report (record artifact)"
* subject = Reference(mii-exa-test-data-patient-1)
* performedDateTime = "2024-07-19T12:03:30+02:00"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* report = Reference(mii-exa-test-data-befundbericht)
* note.text = "Befundung eines Mamma-CTs"