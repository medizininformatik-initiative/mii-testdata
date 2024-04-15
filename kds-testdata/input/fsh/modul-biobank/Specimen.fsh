// Patient-1
Instance: mii-exa-test-data-patient-1-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|1.0.8"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000001"
* status = #available
* type.coding[sct] = $sct#122555007 "Venous blood specimen (specimen)"
* subject = Reference(mii-exa-test-data-patient-1)
* collection.collectedDateTime = "2024-02-15T11:05:00+01:00"
* collection.bodySite.coding[sct] = $sct#789218009 "Structure of dorsum of left hand (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
//* processing[lagerprozess][+].extension[temperaturbedingungen].valueRange.low = 15 'Cel' "°C"
//* processing[lagerprozess][=].extension[temperaturbedingungen].valueRange.high = 25 'Cel' "°C"
//* processing[lagerprozess][=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
//* processing[lagerprozess][=].procedure = $sct#1186936003 "Storage of specimen (procedure)"
//* processing[lagerprozess][=].timePeriod.start = "2024-02-15T11:05:00+01:00"
//* processing[lagerprozess][=].timePeriod.end = "2024-02-15T11:35:00+01:00"
//* processing[1].extension[temperaturbedingungen].valueRange.low = 15 'Cel' "°C"
//* processing[1].extension[temperaturbedingungen].valueRange.high = 25 'Cel' "°C"
//* processing[1].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
//* processing[1].procedure = $sct#73373003 "Specimen centrifugation (procedure)"
//* processing[1].timePeriod.start = "2024-02-15T11:35:00+01:00"
//* processing[1].timePeriod.end = "2024-02-15T11:45:00+01:00"
//* processing[lagerprozess][+].extension[temperaturbedingungen].valueRange.low = 15 'Cel' "°C"
//* processing[lagerprozess][=].extension[temperaturbedingungen].valueRange.high = 25 'Cel' "°C"
//* processing[lagerprozess][=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
//* processing[lagerprozess][=].procedure = $sct#1186936003 "Storage of specimen (procedure)"
//* processing[lagerprozess][=].timePeriod.start = "2024-02-15T11:45:00+01:00"
//* processing[lagerprozess][=].timePeriod.end = "2024-02-15T12:00:00+01:00"
//* processing[lagerprozess][+].extension[temperaturbedingungen].valueRange.low = -85 'Cel' "°C"
//* processing[lagerprozess][=].extension[temperaturbedingungen].valueRange.high = -60 'Cel' "°C"
//* processing[lagerprozess][=].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
//* processing[lagerprozess][=].procedure.coding[0] = $sct#1186936003 "Storage of specimen (procedure)"
//* processing[lagerprozess][=].procedure.coding[1] = $sct#27872000 "Specimen freezing (procedure)"
//* processing[lagerprozess][=].timePeriod.start = "2024-02-15T12:00:00+01:00"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 10 'ml'
* container.specimenQuantity = 10 'ml'
* container.additiveReference = Reference(mii-exa-test-data-patient-1-substance-1)

//Patient-3
Instance: mii-exa-test-data-patient-3-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|1.0.8"
* type = $sct#128159001 "Tissue specimen from colon (specimen)"
* collection.collectedDateTime = "2022-03-24T12:44:00+01:00"
* collection.bodySite = $sct#71854001 "Colon structure (body structure)"
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000002"
* status = #available
* subject = Reference(mii-exa-test-data-patient-3)