Instance: mii-exa-bildgebung-bildgebungsstudie-us
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
* extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund"
* extension.valueString = "Verdacht auf akutes Abdomen"
* series.extension[0].extension[0].valueQuantity.value = 1670
* series.extension[=].extension[=].valueQuantity.unit = "kilohertz"
* series.extension[=].extension[=].url = "transducerFrequency"
* series.extension[=].extension[+].valueQuantity.value = 5860
* series.extension[=].extension[=].valueQuantity.unit = "hertz"
* series.extension[=].extension[=].url = "pulseRepetitionFrequency"
* series.extension[=].extension[+].url = "ultrasoundColor"
* series.extension[=].extension[=].valueBoolean = false
* series.extension[=].extension[+].url = "transducerType"
* series.extension[=].extension[=].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-transducer-type#CURVED_LINEAR
* series.extension[=].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us"
* series.extension[+].extension.url = "contrastBolus"
* series.extension[=].extension.valueBoolean = false
* series.extension[=].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel"
* series.instance.extension.extension[0].url = "imageType"
* series.instance.extension.extension[=].valueCodeableConcept.coding[0] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type#ORIGINAL
* series.instance.extension.extension[=].valueCodeableConcept.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type#SECONDARY
* series.instance.extension.extension[=].valueCodeableConcept.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type#ABDOMINAL
* series.instance.extension.extension[=].valueCodeableConcept.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type#0001
* series.instance.extension.extension[+].url = "burnedInAnnotation"
* series.instance.extension.extension[=].valueBoolean = true
* series.instance.extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details"
* series.instance.uid = "instance-example-uid"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.4
* series.instance.number = 1
* series.performer.actor = Reference(mii-exa-bildgebung-geraet)
* series.uid = "series-example-uid"
* series.number = 1
* series.modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
* series.description = "Abdomen Oberbauch"
* series.numberOfInstances = 28
* series.bodySite = http://snomed.info/sct#80581009 "Upper abdomen structure (body structure)"
* series.bodySite.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.laterality = http://snomed.info/sct#51440002 "Bilateral"
* series.laterality.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.started = "2025-07-07T12:03:30+02:00"
* status = #available
* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
* subject = Reference(mii-exa-bildgebung-radiologischer-patient)
* subject.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical record number"
* subject.identifier.system = "https://system-url"
* subject.identifier.value = "study-uid"
* encounter = Reference(mii-exa-bildgebung-radiologischer-fall)
* basedOn = Reference(mii-exa-bildgebung-anforderung-bildgebung)
* numberOfSeries = 2
* numberOfInstances = 6
* procedureReference = Reference(mii-exa-bildgebung-bildgebungsprozedur)
* reasonReference = Reference(mii-exa-bildgebung-radiologische-diagnose)
* description = "Abdomen Ober- und Unterbauch"