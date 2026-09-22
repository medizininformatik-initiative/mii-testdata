Instance: mii-exa-bildgebung-bildgebungsstudie-pt
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
* extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund"
* extension.valueString = "Verdacht auf Karzinom"
* series.extension.extension[0].url = "radiopharmaceutical"
* series.extension.extension[=].valueCodeableConcept.coding = http://snomed.info/sct#35321007 "Fluorodeoxyglucose (18-F) (substance)"
* series.extension.extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.extension.extension[+].url = "radionuclide"
* series.extension.extension[=].valueCodeableConcept.coding = http://snomed.info/sct#77004003 "Fluorine-18 (substance)"
* series.extension.extension[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.extension.extension[+].valueQuantity.value = 10000
* series.extension.extension[=].valueQuantity.unit = "Seconds"
* series.extension.extension[=].url = "tracerExposureTime"
* series.extension.extension[+].url = "units"
* series.extension.extension[=].valueCodeableConcept = http://unitsofmeasure.org#BQML
* series.extension.extension[+].valueQuantity.value = 196
* series.extension.extension[=].valueQuantity.unit = "Becquerel"
* series.extension.extension[=].url = "radionuclideTotalDose"
* series.extension.extension[+].valueQuantity.value = 6586.2
* series.extension.extension[=].valueQuantity.unit = "Seconds"
* series.extension.extension[=].url = "radionuclideHalfLife"
* series.extension.extension[+].url = "seriesType"
* series.extension.extension[=].valueCodeableConcept.coding[0] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-series-type#DYNAMIC
* series.extension.extension[=].valueCodeableConcept.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-series-type#IMAGE
* series.extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt"
* series.instance.extension.extension[0].valueQuantity.value = 2.89
* series.instance.extension.extension[=].valueQuantity.unit = "millimeter"
* series.instance.extension.extension[=].url = "pixelSpacingX"
* series.instance.extension.extension[+].valueQuantity.value = 2.89
* series.instance.extension.extension[=].valueQuantity.unit = "millimeter"
* series.instance.extension.extension[=].url = "pixelSpacingY"
* series.instance.extension.extension[+].valueQuantity.value = 4
* series.instance.extension.extension[=].valueQuantity.unit = "millimeter"
* series.instance.extension.extension[=].url = "sliceThickness"
* series.instance.extension.extension[+].url = "imageType"
* series.instance.extension.extension[=].valueCodeableConcept.coding[0].code = #ORIGINAL
* series.instance.extension.extension[=].valueCodeableConcept.coding[+].code = #PRIMARY
* series.instance.extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details"
* series.instance.uid = "instance-example-uid"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.128
* series.instance.number = 31
* series.uid = "series-example-uid"
* series.performer.actor = Reference(mii-exa-bildgebung-geraet)
* series.number = 1
* series.modality = http://dicom.nema.org/resources/ontology/DCM#PT "Positron emission tomography"
* series.description = "PET WB"
* series.numberOfInstances = 195
* series.bodySite = http://snomed.info/sct#51185008 "Thoracic structure (body structure)"
* series.bodySite.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.laterality = http://snomed.info/sct#66459002 "Unilateral"
* series.laterality.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.started = "2024-07-19T12:03:30+02:00"
* status = #available
* modality = http://dicom.nema.org/resources/ontology/DCM#PT "Positron emission tomography"
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