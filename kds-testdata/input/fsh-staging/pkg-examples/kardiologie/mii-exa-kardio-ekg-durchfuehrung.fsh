Instance: mii-exa-kardio-ekg-durchfuehrung
InstanceOf: Procedure
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-durchfuehrung"
* contained = Beispielpatient
* extension[0].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* extension[=].valueDateTime = "2025-01-10T16:23:12+02:00"
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[=].valueCoding = http://snomed.info/sct#261004008 "Diagnostic intent"
* category.coding = http://snomed.info/sct#165197003 "Diagnostic assessment"
* category.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.coding = http://snomed.info/sct#447113005 "12 lead electrocardiogram at rest"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* performedPeriod.start = "2023-05-03T07:38:07Z"
* performedPeriod.end = "2023-05-03T07:38:17Z"
* bodySite.coding = http://snomed.info/sct#80891009 "Heart structure"
* bodySite.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* note.text = "ICD Kontrolle"
* usedReference = Reference(mii-exa-kardio-ekg-geraet-mortara)
* language = #de
* status = #completed
* subject = Reference(Beispielpatient)