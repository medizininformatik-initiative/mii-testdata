// Patient-1
Instance: mii-exa-test-data-patient-1-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Klinische Chemie und Hämatologie"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|1.0.8"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-1-diagnose-1)
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

// Patient-2 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-2-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-2-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000003"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-patient-2)
* collection.collectedDateTime = "2024-03-04T06:45:00+01:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.specimenQuantity = 5 'ml'

//Patient-3
Instance: mii-exa-test-data-patient-3-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Gewebeprobe aus dem Kolon"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|1.0.8"
* type = $sct#128159001 "Tissue specimen from colon (specimen)"
* collection.collectedDateTime = "2022-03-24T12:44:00+01:00"
* collection.bodySite = $sct#71854001 "Colon structure (body structure)"
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000002"
* status = #available
* subject = Reference(mii-exa-test-data-patient-3)

// Patient-3 Specimen (Serum für Klinische Chemie - zusätzlich zum bestehenden Gewebe)
Instance: mii-exa-test-data-patient-3-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-3-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000004"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-patient-3)
* collection.collectedDateTime = "2022-04-05T07:15:00+02:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.specimenQuantity = 7 'ml'

// Patient-3 Specimen (EDTA-Blut für Hämatologie - zusätzlich)
Instance: mii-exa-test-data-patient-3-specimen-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-3-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000005"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-patient-3)
* collection.collectedDateTime = "2022-04-05T07:15:00+02:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.specimenQuantity = 5 'ml'

//Patient-4
Instance: mii-exa-test-data-patient-4-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Klinische Chemie und Hämatologie"
* insert TestDataLabel
* status = #available
* type = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-patient-4)
* receivedTime = "2022-11-30"
* collection.collectedDateTime = "2022-11-30"
* identifier.system = "https://www.charite.de/fhir/sid/bioproben"
* identifier.value = "BP_00070024"

Instance: mii-exa-test-data-patient-4-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Klinische Chemie und Hämatologie"
* insert TestDataLabel
* status = #available
* type = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-patient-4)
* receivedTime = "2022-11-30"
* collection.collectedDateTime = "2022-11-30"
* identifier.system = "https://www.charite.de/fhir/sid/bioproben"
* identifier.value = "BP_00070025"

// Patient-4 Specimen (Serum für Klinische Chemie - zusätzlich zu bestehenden)
Instance: mii-exa-test-data-patient-4-specimen-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-4-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000006"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-patient-4)
* collection.collectedDateTime = "2020-09-17T06:30:00+02:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.specimenQuantity = 7 'ml'

// Patient-4 Specimen (EDTA-Blut für Hämatologie - zusätzlich)
Instance: mii-exa-test-data-patient-4-specimen-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-4-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000007"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-patient-4)
* collection.collectedDateTime = "2020-09-17T06:30:00+02:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.specimenQuantity = 5 'ml'

// Patient-5 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-5-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-5-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000008"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-patient-5)
* collection.collectedDateTime = "2023-07-12T06:00:00+02:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.specimenQuantity = 5 'ml'

// Patient-5 Specimen (Serum für Klinische Chemie)
Instance: mii-exa-test-data-patient-5-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-5-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000009"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-patient-5)
* collection.collectedDateTime = "2023-07-12T06:00:00+02:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.specimenQuantity = 7 'ml'

// Patient-6 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-6-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-6-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000010"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-patient-6)
* collection.collectedDateTime = "2022-03-14T06:15:00+01:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.specimenQuantity = 5 'ml'

// Patient-6 Specimen (Serum für Klinische Chemie)
Instance: mii-exa-test-data-patient-6-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-6-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000011"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-patient-6)
* collection.collectedDateTime = "2022-03-14T06:15:00+01:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.specimenQuantity = 7 'ml'

// Patient-7 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-7-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-7-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000012"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-patient-7)
* collection.collectedDateTime = "2024-01-10T07:30:00+01:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.specimenQuantity = 5 'ml'

// Patient-7 Specimen (Serum für Klinische Chemie)
Instance: mii-exa-test-data-patient-7-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-7-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000013"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-patient-7)
* collection.collectedDateTime = "2024-01-10T07:30:00+01:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.specimenQuantity = 7 'ml'

// Patient-8 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-8-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-8-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000014"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-patient-8)
* collection.collectedDateTime = "2023-11-12T05:45:00+01:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.specimenQuantity = 5 'ml'

// Patient-8 Specimen (Serum für Klinische Chemie)
Instance: mii-exa-test-data-patient-8-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-8-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000015"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-patient-8)
* collection.collectedDateTime = "2023-11-12T05:45:00+01:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.specimenQuantity = 7 'ml'

// Patient-9 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-9-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-9-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000016"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-patient-9)
* collection.collectedDateTime = "2024-02-22T06:30:00+01:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.specimenQuantity = 5 'ml'

// Patient-9 Specimen (Serum für Klinische Chemie)
Instance: mii-exa-test-data-patient-9-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-9-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000017"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-patient-9)
* collection.collectedDateTime = "2024-02-22T06:30:00+01:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.specimenQuantity = 7 'ml'

// Patient-10 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-10-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-10-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000018"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-patient-10)
* collection.collectedDateTime = "2019-05-16T07:45:00+02:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.specimenQuantity = 5 'ml'

// Patient-10 Specimen (Serum für Klinische Chemie)
Instance: mii-exa-test-data-patient-10-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-10-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000019"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-patient-10)
* collection.collectedDateTime = "2019-05-16T07:45:00+02:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.specimenQuantity = 7 'ml'