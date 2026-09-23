Instance: mii-exa-test-data-befundungsprozedur
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-befundungsprozedur
Usage: #example
Description: "Procedure: Befundungsprozedur"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-befundungsprozedur"
* extension[Dokumentationsdatum].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* extension[Dokumentationsdatum].valueDateTime = "2024-07-19T15:30:00+02:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent (qualifier value)"
* status = #completed
* category = $sct#165197003 "Diagnostic assessment (procedure)"
* code = $sct#4261000179100 "Computed tomography imaging report (record artifact)"
* code.coding[ops] = $ops#3-209 "Native Computertomographie, sonstige"
* code.coding[ops].version = "2024"
* code.coding[ops].extension[0].url = "http://fhir.de/StructureDefinition/seitenlokalisation"
* code.coding[ops].extension[0].valueCoding = $seitenlokalisation#L "links"
* subject = Reference(mii-exa-test-data-bildgebung-patient-1)
* encounter = Reference(mii-exa-test-data-bildgebung-encounter-1)
* performedDateTime = "2024-07-19T12:03:30+02:00"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* bodySite.coding[0].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* report = Reference(mii-exa-test-data-befundbericht)
* note.text = "Befundung eines Mamma-CTs"