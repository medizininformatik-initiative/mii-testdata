Instance: mii-exa-test-data-bildgebungsprozedur
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur
Usage: #example
Description: "Procedure: Bildgebungsprozedur"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur"
* basedOn = Reference(mii-exa-test-data-anforderung)
* extension[Dokumentationsdatum].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* extension[Dokumentationsdatum].valueDateTime = "2024-07-19T14:00:00+02:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent (qualifier value)"
* status = #completed
* category = $sct#363679005 "Imaging (procedure)"
* code = $sct#384151000119104 "Screening mammography of bilateral breasts (procedure)"
* code.coding[ops] = $ops#3-100 "Mammographie nativ"
* code.coding[ops].version = "2024"
* code.coding[ops].extension[0].url = "http://fhir.de/StructureDefinition/seitenlokalisation"
* code.coding[ops].extension[0].valueCoding = $seitenlokalisation#B "beiderseits"
* subject = Reference(mii-exa-test-data-bildgebung-patient-1)
* encounter = Reference(mii-exa-test-data-bildgebung-encounter-1)
* performedDateTime = "2024-07-19T12:03:30+02:00"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* bodySite.coding[0].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* note.text = "Durchführung einer Mammographie"