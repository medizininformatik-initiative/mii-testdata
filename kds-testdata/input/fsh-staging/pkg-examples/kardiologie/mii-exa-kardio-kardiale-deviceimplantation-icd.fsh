Instance: mii-exa-kardio-kardiale-deviceimplantation-icd
InstanceOf: MII_PR_Kardio_Kardiale_Deviceimplantation
Usage: #example
* contained = Beispielpatient
* extension[0].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* extension[=].valueDateTime = "2025-05-16T16:23:12+02:00"
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[=].valueCoding = http://snomed.info/sct#262202000 "Therapeutic"
* category.coding = http://snomed.info/sct#387713003 "Surgical procedure"
* category.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.coding = http://snomed.info/sct#395218007 "Implantation of internal cardiac defibrillator"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* bodySite.coding = http://snomed.info/sct#80891009 "Heart structure"
* bodySite.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* note.text = "Implantation eines ICDs im April 2020"
* focalDevice.manipulated = Reference(mii-exa-kardio-device-icd)
* focalDevice.action.coding = http://snomed.info/sct#129338005 "Surgical implantation - action"
* focalDevice.action.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* language = #de
* status = #completed
* subject = Reference(Beispielpatient)
* performedDateTime = "2020-04"