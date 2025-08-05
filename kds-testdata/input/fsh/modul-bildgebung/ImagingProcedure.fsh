Instance: mii-exa-test-data-bildgebungsprozedur
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur
Usage: #example
Description: "Procedure: Bildgebungsprozedur"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur"
* basedOn = Reference(mii-exa-test-data-anforderung)
* status = #completed
* category = $sct#363679005 "Imaging (procedure)"
* code = $sct#384151000119104 "Screening mammography of bilateral breasts (procedure)"
* subject = Reference(mii-exa-test-data-patient-1)
* performedDateTime = "2024-07-19T12:03:30+02:00"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* note.text = "Durchführung einer Mammographie"