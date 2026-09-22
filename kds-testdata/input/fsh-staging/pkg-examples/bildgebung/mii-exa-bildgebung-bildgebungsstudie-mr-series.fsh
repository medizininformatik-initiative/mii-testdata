Instance: mii-exa-bildgebung-bildgebungsstudie-mr-series
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
* extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund"
* extension.valueString = "Verdacht auf Kreuzbandruptur"
* series.extension[0].extension[0].valueQuantity.value = 3
* series.extension[=].extension[=].valueQuantity.unit = "tesla"
* series.extension[=].extension[=].url = "magneticFieldStrength"
* series.extension[=].extension[+].url = "scanningSequence"
* series.extension[=].extension[=].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence#SE
* series.extension[=].extension[+].url = "scanningSequenceVariant"
* series.extension[=].extension[=].valueCodeableConcept.coding[0] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence-variant#SP
* series.extension[=].extension[=].valueCodeableConcept.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence-variant#SK
* series.extension[=].extension[+].valueQuantity.value = 388
* series.extension[=].extension[=].valueQuantity.unit = "milliseconds"
* series.extension[=].extension[=].url = "echoTime"
* series.extension[=].extension[+].valueQuantity.value = 5000
* series.extension[=].extension[=].valueQuantity.unit = "milliseconds"
* series.extension[=].extension[=].url = "repetitionTime"
* series.extension[=].extension[+].valueQuantity.value = 900
* series.extension[=].extension[=].valueQuantity.unit = "milliseconds"
* series.extension[=].extension[=].url = "inversionTime"
* series.extension[=].extension[+].valueQuantity.value = 130
* series.extension[=].extension[=].valueQuantity.unit = "plane angle degree"
* series.extension[=].extension[=].url = "flipAngle"
* series.extension[=].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr"
* series.extension[+].extension.url = "contrastBolus"
* series.extension[=].extension.valueBoolean = false
* series.extension[=].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel"
* series.extension[+].valueQuantity.value = 4
* series.extension[=].valueQuantity.unit = "millimeter"
* series.extension[=].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-serie-schichtdicke"
* series.performer.actor = Reference(mii-exa-bildgebung-geraet)
* series.uid = "series-example-uid"
* series.number = 9
* series.modality = http://dicom.nema.org/resources/ontology/DCM#MR "Magnetic Resonance"
* series.description = "pd_tse_sag"
* series.numberOfInstances = 28
* series.bodySite = http://snomed.info/sct#72696002 "Knee region structure (body structure)"
* series.bodySite.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.laterality = http://snomed.info/sct#24028007 "Right"
* series.laterality.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* series.started = "2024-07-19T12:03:30+02:00"
* status = #available
* modality = http://dicom.nema.org/resources/ontology/DCM#MR "Magnetic Resonance"
* subject = Reference(mii-exa-bildgebung-radiologischer-patient)
* subject.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical record number"
* subject.identifier.system = "https://system-url"
* subject.identifier.value = "study-uid"
* encounter = Reference(mii-exa-bildgebung-radiologischer-fall)
* basedOn = Reference(mii-exa-bildgebung-anforderung-bildgebung)
* numberOfSeries = 11
* numberOfInstances = 294
* procedureReference = Reference(mii-exa-bildgebung-bildgebungsprozedur)
* reasonReference = Reference(mii-exa-bildgebung-radiologische-diagnose)
* description = "Knie DOT"