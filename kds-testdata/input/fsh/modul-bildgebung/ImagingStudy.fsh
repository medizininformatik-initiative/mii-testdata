Instance: mii-exa-test-data-bildgebungsstudie
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie
Usage: #example
Description: "ImagingStudy: MagneticResonance"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
* extension[bildgebungsgrund].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund"
* extension[bildgebungsgrund].valueString = "Verdacht auf Mammakarzinom"
* status = #available
* modality = $DCM#MR "Magnetic Resonance"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* basedOn = Reference(mii-exa-test-data-anforderung)
* numberOfSeries = 11
* numberOfInstances = 294
* procedureReference = Reference(mii-exa-test-data-bildgebungsprozedur)
* reasonReference = Reference(mii-exa-test-data-patient-1-diagnose-1)
* description = "Mamma"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[magneticFieldStrength].valueQuantity.value = 3
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[magneticFieldStrength].valueQuantity.unit = "tesla"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[scanningSequence].valueCodeableConcept = MII_CS_Bildgebung_Scanning_Sequence#SE
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[scanningSequenceVariant].valueCodeableConcept.coding[+] = MII_CS_Bildgebung_Scanning_Sequence_Variant#SP
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[scanningSequenceVariant].valueCodeableConcept.coding[+] = MII_CS_Bildgebung_Scanning_Sequence_Variant#SK
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[echoTime].valueQuantity.value = 388
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[echoTime].valueQuantity.unit = "milliseconds"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[repetitionTime].valueQuantity.value = 5000
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[repetitionTime].valueQuantity.unit = "milliseconds"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[inversionTime].valueQuantity.value = 900
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[inversionTime].valueQuantity.unit = "milliseconds"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[flipAngle].valueQuantity.value = 130
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[flipAngle].valueQuantity.unit = "plane angle degree"
* series.performer.actor = Reference(mii-exa-test-data-geraet)
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel].extension[contrastBolus].valueBoolean = true
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel].extension[contrastBolusDetails].valueReference = Reference(mii-exa-test-data-kontrastmittelgabe)
* series.uid = "1.2.34.5.6789.1.2.34.5678912.34567891234567891234"
* series.number = 9
* series.modality = $DCM#MR "Magnetic Resonance"
* series.description = "T2 STIR_tra DRB"
* series.numberOfInstances = 28
* series.bodySite = $sct#76752008 "Breast structure (body structure)"
* series.laterality = $sct#7771000 "Left"
* series.started = "2024-07-19T12:03:30+02:00"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingX].valueQuantity.value = 0.260417
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingX].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingY].valueQuantity.value = 0.260417
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingY].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[sliceThickness].valueQuantity.value = 3
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[sliceThickness].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[imageType].valueCodeableConcept.coding[pixelData] = MII_CS_Bildgebung_Instance_Image_Type#ORIGINAL
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[imageType].valueCodeableConcept.coding[patientExamination] = MII_CS_Bildgebung_Instance_Image_Type#SECONDARY
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[imageType].valueCodeableConcept.coding[modalityMR] = MII_CS_Bildgebung_Instance_Image_Type#OTHER
* series.instance.uid = "1.2.34.5.6789.1.2.3.45678.9123456789123456789123456789"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.4
* series.instance.number = 28

// CT Thorax scenario - pulmonary nodule in 65-year-old patient
Instance: mii-exa-test-data-bildgebungsstudie-ct
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie
Usage: #example
Description: "ImagingStudy: ComputedTomography Thorax"
* insert TestDataLabel
* extension[bildgebungsgrund].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund"
* extension[bildgebungsgrund].valueString = "Abklaerung pulmonaler Rundherd"
* status = #available
* modality = $DCM#CT "Computed Tomography"
* subject = Reference(mii-exa-test-data-patient-2)
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* basedOn = Reference(mii-exa-test-data-anforderung-ct)
* started = "2024-11-05T09:15:00+01:00"
* numberOfSeries = 4
* numberOfInstances = 612
* procedureReference = Reference(mii-exa-test-data-bildgebungsprozedur-ct)
* reasonReference = Reference(mii-exa-test-data-patient-2-diagnose-1)
* description = "CT Thorax mit KM"
// CT modality parameters - using generic extension syntax since SUSHI cannot resolve nested CT extension paths
* series.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct"
* series.extension[=].extension[+].url = "CTDIvol"
* series.extension[=].extension[=].valueQuantity = 8.5 'mGy' "milligray"
* series.extension[=].extension[+].url = "KVP"
* series.extension[=].extension[=].valueQuantity = 120 'kV' "kilovolt"
* series.extension[=].extension[+].url = "exposureTime"
* series.extension[=].extension[=].valueQuantity = 500 'ms' "milliseconds"
* series.extension[=].extension[+].url = "exposure"
* series.extension[=].extension[=].valueQuantity = 150 'mA.s' "milliampere second"
* series.extension[=].extension[+].url = "xRayTubeCurrent"
* series.extension[=].extension[=].valueQuantity = 300 'mA' "milliampere"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel].extension[contrastBolus].valueBoolean = true
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel].extension[contrastBolusDetails].valueReference = Reference(mii-exa-test-data-kontrastmittelgabe-ct)
* series.performer.actor = Reference(mii-exa-test-data-geraet-ct)
* series.uid = "2.16.840.1.113883.6.43.1.2.3456789.1234567890123456"
* series.number = 3
* series.modality = $DCM#CT "Computed Tomography"
* series.description = "Thorax 1.0 B31f mediastinal"
* series.numberOfInstances = 153
* series.bodySite = $sct#51185008 "Thoracic structure (body structure)"
* series.started = "2024-11-05T09:18:30+01:00"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingX].valueQuantity.value = 0.683594
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingX].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingY].valueQuantity.value = 0.683594
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingY].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[sliceThickness].valueQuantity.value = 1
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[sliceThickness].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[imageType].valueCodeableConcept.coding[pixelData] = MII_CS_Bildgebung_Instance_Image_Type#ORIGINAL
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[imageType].valueCodeableConcept.coding[patientExamination] = MII_CS_Bildgebung_Instance_Image_Type#PRIMARY
* series.instance.uid = "2.16.840.1.113883.6.43.1.2.3456789.1234567890123456.153"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.2
* series.instance.number = 153