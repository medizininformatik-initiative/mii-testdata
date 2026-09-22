Instance: mii-exa-bildgebung-bildgebungsstudie-cr
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
* extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund"
* extension.valueString = "Verdacht auf Karzinom"
* series.extension[0].extension[0].valueQuantity.value = 110
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
* series.extension[=].extension[+].url = "viewPosition"
* series.extension[=].extension[=].valueCodeableConcept.coding = http://snomed.info/sct#399038007 "Right posterior oblique projection (qualifier value)"
* series.extension[=].extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.extension[=].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx"
* series.extension[+].extension.url = "contrastBolus"
* series.extension[=].extension.valueBoolean = false
* series.extension[=].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel"
* series.instance.extension.extension.url = "imageType"
* series.instance.extension.extension.valueCodeableConcept.coding[0] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type#ORIGINAL
* series.instance.extension.extension.valueCodeableConcept.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type#PRIMARY
* series.instance.extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details"
* series.instance.uid = "instance-example-uid"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.1
* series.instance.number = 1
* series.performer.actor = Reference(mii-exa-bildgebung-geraet)
* series.uid = "series-example-uid"
* series.number = 1
* series.modality = http://dicom.nema.org/resources/ontology/DCM#CR "Computed Radiography"
* series.description = "X Thorax a.p. liegend"
* series.numberOfInstances = 1
* series.bodySite = http://snomed.info/sct#43799004 "Thoracic cavity structure (body structure)"
* series.bodySite.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.laterality = http://snomed.info/sct#66459002 "Unilateral"
* series.laterality.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.started = "2024-07-19T12:03:30+02:00"
* status = #available
* modality = http://dicom.nema.org/resources/ontology/DCM#CR "Computed Radiography"
* subject = Reference(mii-exa-bildgebung-radiologischer-patient)
* subject.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical record number"
* subject.identifier.system = "https://system-url"
* subject.identifier.value = "study-uid"
* encounter = Reference(mii-exa-bildgebung-radiologischer-fall)
* basedOn = Reference(mii-exa-bildgebung-anforderung-bildgebung)
* numberOfSeries = 1
* numberOfInstances = 1
* procedureReference = Reference(mii-exa-bildgebung-bildgebungsprozedur)
* reasonReference = Reference(mii-exa-bildgebung-radiologische-diagnose)
* description = "Thorax auf Station;"