Instance: mii-exa-bildgebung-bildgebungsstudie-ct
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
* extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund"
* extension.valueString = "Verdacht auf Karzinom"
* series.extension[0].extension[0].url = "convolutionalKernel"
* series.extension[=].extension[=].valueString = "SOFT"
* series.extension[=].extension[+].valueQuantity.value = 4.04
* series.extension[=].extension[=].valueQuantity.unit = "milligray"
* series.extension[=].extension[=].url = "CTDIvol"
* series.extension[=].extension[+].valueQuantity.value = 110
* series.extension[=].extension[=].valueQuantity.unit = "kilovolt"
* series.extension[=].extension[=].url = "KVP"
* series.extension[=].extension[+].valueQuantity.value = 38
* series.extension[=].extension[=].valueQuantity.unit = "milliampere second"
* series.extension[=].extension[=].url = "exposure"
* series.extension[=].extension[+].valueQuantity.value = 600
* series.extension[=].extension[=].valueQuantity.unit = "milliseconds"
* series.extension[=].extension[=].url = "exposureTime"
* series.extension[=].extension[+].valueQuantity.value = 96
* series.extension[=].extension[=].valueQuantity.unit = "milliampere"
* series.extension[=].extension[=].url = "xRayTubeCurrent"
* series.extension[=].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct"
* series.extension[+].extension[0].url = "contrastBolus"
* series.extension[=].extension[=].valueBoolean = true
* series.extension[=].extension[+].url = "contrastBolusDetails"
* series.extension[=].extension[=].valueReference = Reference(mii-exa-bildgebung-kontrastmittelgabe)
* series.extension[=].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel"
* series.instance.extension.extension[0].valueQuantity.value = 1.36
* series.instance.extension.extension[=].valueQuantity.unit = "millimeter"
* series.instance.extension.extension[=].url = "pixelSpacingX"
* series.instance.extension.extension[+].valueQuantity.value = 1.36
* series.instance.extension.extension[=].valueQuantity.unit = "millimeter"
* series.instance.extension.extension[=].url = "pixelSpacingY"
* series.instance.extension.extension[+].valueQuantity.value = 4
* series.instance.extension.extension[=].valueQuantity.unit = "millimeter"
* series.instance.extension.extension[=].url = "sliceThickness"
* series.instance.extension.extension[+].url = "imageType"
* series.instance.extension.extension[=].valueCodeableConcept.coding[0] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type#DERIVED
* series.instance.extension.extension[=].valueCodeableConcept.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type#PRIMARY
* series.instance.extension.extension[=].valueCodeableConcept.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type#AXIAL
* series.instance.extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details"
* series.instance.uid = "instance-example-uid"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.2
* series.instance.number = 31
* series.performer.actor = Reference(mii-exa-bildgebung-geraet)
* series.uid = "series-example-uid"
* series.number = 1
* series.modality = http://dicom.nema.org/resources/ontology/DCM#CT "Computed Tomography"
* series.description = "AC LD CT Whole Body 4.0 HD Field of View"
* series.numberOfInstances = 195
* series.bodySite = http://snomed.info/sct#51185008 "Thoracic structure (body structure)"
* series.bodySite.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.laterality = http://snomed.info/sct#7771000 "Left"
* series.laterality.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.started = "2024-07-19T12:03:30+02:00"
* status = #available
* modality = http://dicom.nema.org/resources/ontology/DCM#CT "Computed Tomography"
* subject = Reference(mii-exa-bildgebung-radiologischer-patient)
* subject.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical record number"
* subject.identifier.system = "https://system-url"
* subject.identifier.value = "study-uid"
* encounter = Reference(mii-exa-bildgebung-radiologischer-fall)
* basedOn = Reference(mii-exa-bildgebung-anforderung-bildgebung)
* numberOfSeries = 2
* numberOfInstances = 390
* procedureReference = Reference(mii-exa-bildgebung-bildgebungsprozedur)
* reasonReference = Reference(mii-exa-bildgebung-radiologische-diagnose)
* description = "whole body aquisition"