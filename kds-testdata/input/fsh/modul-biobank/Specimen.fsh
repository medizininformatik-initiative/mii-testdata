// Patient-1
Instance: mii-exa-test-data-patient-1-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Klinische Chemie und Hämatologie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|1.0.8"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
// Probenebene und Infektiositaetsstatus (SpecimenCore-Extensions)
* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#PRIMÄRPROBE "Primärprobe"
* extension[infektiositaetsstatus].valueCodeableConcept = $sct#409603009 "Biosafety level 2 (qualifier value)"
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000001"
* status = #available
* type.coding[sct] = $sct#122555007 "Venous blood specimen (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-1)
* collection.collectedDateTime = "2024-02-15T11:05:00+01:00"
* collection.bodySite.coding[sct] = $sct#789218009 "Structure of dorsum of left hand (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* collection.method = $sct#129300006
* collection.quantity = 10 'mL' "mL"
* note.text = "Probe innerhalb von 30 Minuten nach Entnahme eingelagert."
// Logische Referenz auf den Laborauftrag (liegt im Pat-1-Bundle)
* request.identifier.system = "https://www.charite.de/fhir/sid/Laboranforderungen"
* request.identifier.value = "LA_000001"
* request.display = "Laborauftrag kleines Blutbild"
// Lagerprozess (processing-Slice) mit Temperaturbedingungen
* processing[lagerprozess][+].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[lagerprozess][=].extension[temperaturbedingungen].valueRange.low = 15 'Cel' "°C"
* processing[lagerprozess][=].extension[temperaturbedingungen].valueRange.high = 25 'Cel' "°C"
* processing[lagerprozess][=].procedure = $sct#1186936003 "Storage of specimen (procedure)"
* processing[lagerprozess][=].additive = Reference(mii-exa-test-data-patient-1-substance-1)
* processing[lagerprozess][=].timePeriod.start = "2024-02-15T11:05:00+01:00"
* processing[lagerprozess][=].timePeriod.end = "2024-02-15T11:35:00+01:00"
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
* container.capacity.unit = "mL"
* container.specimenQuantity = 10 'ml'
* container.specimenQuantity.unit = "mL"
* container.additiveReference = Reference(mii-exa-test-data-patient-1-substance-1)

// Patient-2 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-2-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000003"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-2)
* collection.collectedDateTime = "2024-03-04T06:45:00+01:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 5 'ml'
* container.specimenQuantity.unit = "mL"

//Patient-3
Instance: mii-exa-test-data-patient-3-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Gewebeprobe aus dem Kolon"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|1.0.8"
* type = $sct#128159001 "Tissue specimen from colon (specimen)"
* collection.collectedDateTime = "2022-03-24T12:44:00+01:00"
// Zeitpunkt der Unterbindung der Blutversorgung (warme Ischaemie, Gewebeprobe)
* collection.extension[einstellungBlutversorgung].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung"
* collection.extension[einstellungBlutversorgung].valueDateTime = "2022-03-24T12:30:00+01:00"
* collection.bodySite.coding[sct] = $sct#71854001 "Colon structure (body structure)"
* collection.bodySite.coding[icd-o-3] = $icd-o-3#C18.9 "Colon, NOS"
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000002"
* status = #available
* subject = Reference(mii-exa-test-data-biobank-patient-3)
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 5 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-3 Specimen (Serum für Klinische Chemie - zusätzlich zum bestehenden Gewebe)
Instance: mii-exa-test-data-patient-3-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000004"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-3)
// Aliquot aus der primaeren Blutentnahme
* parent = Reference(mii-exa-test-data-patient-3-specimen-3)
* collection.collectedDateTime = "2022-04-05T07:15:00+02:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 7 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-3 Specimen (EDTA-Blut für Hämatologie - zusätzlich)
Instance: mii-exa-test-data-patient-3-specimen-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000005"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-3)
* collection.collectedDateTime = "2022-04-05T07:15:00+02:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 5 'ml'
* container.specimenQuantity.unit = "mL"

//Patient-4
Instance: mii-exa-test-data-patient-4-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Klinische Chemie und Hämatologie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #available
* type = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-4)
* receivedTime = "2022-11-30"
* collection.collectedDateTime = "2022-11-30"
* identifier.system = "https://www.charite.de/fhir/sid/bioproben"
* identifier.value = "BP_00070024"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 5 'ml'
* container.specimenQuantity.unit = "mL"

Instance: mii-exa-test-data-patient-4-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Klinische Chemie und Hämatologie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #available
* type = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-4)
* receivedTime = "2022-11-30"
* collection.collectedDateTime = "2022-11-30"
* identifier.system = "https://www.charite.de/fhir/sid/bioproben"
* identifier.value = "BP_00070025"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 5 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-4 Specimen (Serum für Klinische Chemie - zusätzlich zu bestehenden)
Instance: mii-exa-test-data-patient-4-specimen-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000006"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-4)
* collection.collectedDateTime = "2020-09-17T06:30:00+02:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 7 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-4 Specimen (EDTA-Blut für Hämatologie - zusätzlich)
Instance: mii-exa-test-data-patient-4-specimen-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000007"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-4)
* collection.collectedDateTime = "2020-09-17T06:30:00+02:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 5 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-5 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-5-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000008"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-5)
* collection.collectedDateTime = "2023-07-12T06:00:00+02:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 5 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-5 Specimen (Serum für Klinische Chemie)
Instance: mii-exa-test-data-patient-5-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000009"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-5)
* collection.collectedDateTime = "2023-07-12T06:00:00+02:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 7 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-6 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-6-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000010"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-6)
* collection.collectedDateTime = "2022-03-14T06:15:00+01:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 5 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-6 Specimen (Serum für Klinische Chemie)
Instance: mii-exa-test-data-patient-6-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000011"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-6)
* collection.collectedDateTime = "2022-03-14T06:15:00+01:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 7 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-7 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-7-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000012"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-7)
* collection.collectedDateTime = "2024-01-10T07:30:00+01:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 5 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-7 Specimen (Serum für Klinische Chemie)
Instance: mii-exa-test-data-patient-7-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000013"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-7)
* collection.collectedDateTime = "2024-01-10T07:30:00+01:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 7 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-8 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-8-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000014"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-8)
* collection.collectedDateTime = "2023-11-12T05:45:00+01:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 5 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-8 Specimen (Serum für Klinische Chemie)
Instance: mii-exa-test-data-patient-8-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000015"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-8)
* collection.collectedDateTime = "2023-11-12T05:45:00+01:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 7 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-9 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-9-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000016"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-9)
* collection.collectedDateTime = "2024-02-22T06:30:00+01:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 5 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-9 Specimen (Serum für Klinische Chemie)
Instance: mii-exa-test-data-patient-9-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000017"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-9)
* collection.collectedDateTime = "2024-02-22T06:30:00+01:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 7 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-10 Specimen (EDTA-Blut für Hämatologie)
Instance: mii-exa-test-data-patient-10-specimen-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: EDTA-Blut für Hämatologie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000018"
* status = #available
* type.coding[sct] = $sct#445295009 "Blood specimen with edetic acid (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-2)
* collection.collectedDateTime = "2019-05-16T07:45:00+02:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 5 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 5 'ml'
* container.specimenQuantity.unit = "mL"

// Patient-10 Specimen (Serum für Klinische Chemie)
Instance: mii-exa-test-data-patient-10-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Serum für Klinische Chemie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000019"
* status = #available
* type.coding[sct] = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-2)
* collection.collectedDateTime = "2019-05-16T07:45:00+02:00"
* collection.bodySite.coding[sct] = $sct#368209003 "Right upper arm structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 7 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 7 'ml'
* container.specimenQuantity.unit = "mL"

// ============================================================================
// Zelllinie/Organoid und SpecimenCore
// Adaptiert aus den Beispielen des Pakets
// de.medizininformatikinitiative.kerndatensatz.biobank 2027.0.0-ballot
// (Specimen-OrganoidLunge -> Kolon-Organoid passend zur Kolonkarzinom-Diagnose
//  von Biobank-Patient 3; DNA-Probe als SpecimenCore-Instanz)
// ============================================================================

// --- Kolon-Organoid, abgeleitet aus der Gewebeprobe von Patient-3 ---
Instance: mii-exa-test-data-biobank-organoid-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-zellinie-organoid
Usage: #example
Description: "Specimen: Kolon-Tumor-Organoid, abgeleitet aus der Gewebeprobe von Biobank-Patient 3"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[kulturprotokoll].valueReference = Reference(mii-exa-test-data-biobank-kulturprotokoll-1)
* extension[modifikationen].extension[artDerModifikation].valueCodeableConcept = $clo#CLO:0037375 "derives from cell with knockout gene"
* extension[modifikationen].extension[zielGen].valueCoding = $genenames#TP53 "tumor protein p53"
* extension[modifikationen].extension[protokoll].valueReference = Reference(mii-exa-test-data-biobank-crispr-protokoll-1)
* extension[anzahlPassagen].valueInteger = 3
// Anzahl der eingelagerten Aliquots dieser Organoid-Passage
* extension[anzahlAliquots].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-aliquots"
* extension[anzahlAliquots].valueInteger = 6
// Entnommen wurde das Aliquot nicht am Patienten, sondern aus der laufenden
// Organoid-Kultur -> focus verweist auf das Kulturmedium der Kultur
* extension[focus].url = "http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-focus"
* extension[focus].valueReference = Reference(mii-exa-test-data-biobank-substance-kulturmedium-1)
// Verwaltende Organisation und zugrundeliegende Diagnose (Biobank-Specimen-Extensions)
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-3)
// Probenebene und Infektiositaetsstatus (SpecimenCore-Extensions)
* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#ALIQUOT "Aliquot"
* extension[infektiositaetsstatus].valueCodeableConcept = $sct#409603009 "Biosafety level 2 (qualifier value)"
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000020"
* status = #available
* type.coding[sct] = $sct#123038009 "Specimen (specimen)"
* type.coding[+] = $miabis-sample-type#Organoid "Organoids"
* subject = Reference(mii-exa-test-data-biobank-patient-3)
* parent = Reference(mii-exa-test-data-patient-3-specimen-1)
* receivedTime = "2022-03-24T14:00:00+01:00"
* collection.collectedDateTime = "2022-03-24T12:44:00+01:00"
* collection.quantity = 1 'mL' "mL"
* collection.bodySite.coding[0] = $sct#71854001 "Colon structure (body structure)"
* collection.method = $sct#86273004 "Biopsy (procedure)"
* collection.fastingStatusCodeableConcept = $v2-0916#NF "The patient indicated they did not fast prior to the procedure."
* collection.extension[einstellungBlutversorgung].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung"
* collection.extension[einstellungBlutversorgung].valueDateTime = "2022-03-24T12:30:00+01:00"
* note.text = "Kolon-Tumor-Organoid, Passage 3, aus der Gewebeprobe etabliert."
// Logische Referenz auf die Anforderung der Organoid-Kultur
* request.identifier.system = "https://www.charite.de/fhir/sid/Bioproben-Anforderungen"
* request.identifier.value = "BPA_000001"
* request.display = "Anforderung Organoid-Kultur"
* processing[0].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[0].extension[temperaturbedingungen].valueRange.low = 37 'Cel' "°C"
* processing[0].extension[temperaturbedingungen].valueRange.high = 37 'Cel' "°C"
* processing[0].procedure = $sct#1186936003 "Storage of specimen (procedure)"
* processing[0].additive = Reference(mii-exa-test-data-patient-1-substance-1)
* processing[0].timePeriod.start = "2022-04-01T10:00:00+02:00"
* processing[0].timePeriod.end = "2022-04-12T10:00:00+02:00"
// Kryokonservierung der Aliquots in der Gasphase ueber fluessigem Stickstoff;
// die Langzeit-Lagertemperatur zusaetzlich MIABIS-kodiert
* processing[1].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[1].extension[temperaturbedingungen].valueRange.low = -196 'Cel' "°C"
* processing[1].extension[temperaturbedingungen].valueRange.high = -150 'Cel' "°C"
* processing[1].extension[temperature-miabis].url = "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-sample-storage-temperature-extension"
* processing[1].extension[temperature-miabis].valueCodeableConcept = $miabis-storage-temperature#LN "liquid nitrogen, -150 to -196 degrees Celsius"
* processing[1].description = "Kryokonservierung der Organoid-Aliquots"
* processing[1].procedure = $sct#27872000 "Specimen freezing (procedure)"
* processing[1].timePeriod.start = "2022-04-12T11:00:00+02:00"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 2 'mL' "mL"
* container.additiveCodeableConcept.coding = $sct#105590001 "Substance (substance)"
* container.additiveCodeableConcept.text = "Organoid-Kulturmedium mit Matrigel"
* container.specimenQuantity = 1 'ml'
* container.specimenQuantity.unit = "mL"

// --- DNA-Probe als SpecimenCore-Instanz (bewusst gegen das Core-Profil,
//     Doppel-Abdeckung zu den Specimen-Instanzen gegen das Vollprofil) ---
Instance: mii-exa-test-data-biobank-specimen-dna-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore
Usage: #example
Description: "Specimen (Core): DNA-Probe, extrahiert aus dem EDTA-Blut von Biobank-Patient 1"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
// Probenebene und Infektiositaetsstatus (SpecimenCore-Extensions)
* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#ALIQUOT "Aliquot"
* extension[infektiositaetsstatus].valueCodeableConcept = $sct#409603009 "Biosafety level 2 (qualifier value)"
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000021"
* status = #available
* type.coding[sct] = $sct#258566005 "Deoxyribonucleic acid specimen (specimen)"
* subject = Reference(mii-exa-test-data-biobank-patient-1)
* parent = Reference(mii-exa-test-data-patient-1-specimen-1)
* receivedTime = "2024-02-15T13:30:00+01:00"
* collection.collectedDateTime = "2024-02-15T11:05:00+01:00"
* collection.quantity = 10 'mL' "mL"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* collection.extension[einstellungBlutversorgung].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung"
* collection.extension[einstellungBlutversorgung].valueDateTime = "2024-02-15T11:05:00+01:00"
* processing.description = "DNA-Extraktion aus EDTA-Vollblut"
* processing.procedure = $sct#73373003 "Specimen centrifugation (procedure)"
* processing.additive = Reference(mii-exa-test-data-patient-1-substance-1)
* processing.timePeriod.start = "2024-02-15T13:45:00+01:00"
* processing.timePeriod.end = "2024-02-15T14:30:00+01:00"
* note.text = "DNA-Extraktion aus dem EDTA-Vollblut, Konzentration 50 ng/uL."
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 0.5 'mL' "mL"
* container.specimenQuantity = 0.2 'ml'
* container.specimenQuantity.unit = "mL"

// --- Zellkultur-Lysat aus der Organoid-Kultur (Specimen-Vollprofil) ---
//     Gewonnen wurde das Material nicht am Patienten, sondern an der Kultur;
//     focus zeigt deshalb auf das Zellkulturmedium.
Instance: mii-exa-test-data-biobank-specimen-zellkultur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
Usage: #example
Description: "Specimen: Zellkultur-Lysat aus der Kolon-Organoid-Kultur von Biobank-Patient 3"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-biobank-diagnose-3)
* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#ALIQUOT "Aliquot"
* extension[infektiositaetsstatus].valueCodeableConcept = $sct#409603009 "Biosafety level 2 (qualifier value)"
* extension[focus].url = "http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-focus"
* extension[focus].valueReference = Reference(mii-exa-test-data-biobank-substance-kulturmedium-1)
* extension[anzahlAliquots].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-aliquots"
* extension[anzahlAliquots].valueInteger = 4
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000022"
* status = #available
* type.coding[sct] = $sct#1404538009 "Cell culture lysate specimen"
* subject = Reference(mii-exa-test-data-biobank-patient-3)
* parent = Reference(mii-exa-test-data-biobank-organoid-1)
* receivedTime = "2022-04-12T12:00:00+02:00"
* collection.collectedDateTime = "2022-04-12T10:30:00+02:00"
* collection.quantity = 1 'mL' "mL"
* note.text = "Lysat aus Passage 3 der Organoid-Kultur, fuer RNA-Extraktion vorgesehen."
// Kryokonservierung, Langzeit-Lagertemperatur zusaetzlich MIABIS-kodiert
* processing[0].extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing[0].extension[temperaturbedingungen].valueRange.low = -85 'Cel' "°C"
* processing[0].extension[temperaturbedingungen].valueRange.high = -60 'Cel' "°C"
* processing[0].extension[temperature-miabis].url = "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-sample-storage-temperature-extension"
* processing[0].extension[temperature-miabis].valueCodeableConcept = $miabis-storage-temperature#-60to-85 "between -60 and -85 degrees Celsius"
* processing[0].description = "Einfrieren des Lysats bei -80 °C"
* processing[0].procedure = $sct#27872000 "Specimen freezing (procedure)"
* processing[0].timePeriod.start = "2022-04-12T12:15:00+02:00"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 2 'mL' "mL"
* container.specimenQuantity = 1 'ml'
* container.specimenQuantity.unit = "mL"

// --- Umgebungsabstrich aus dem CO2-Inkubator der Zellkulturbank (SpecimenCore) ---
//     Sterilitaetskontrolle; das Material stammt vom Geraet, nicht vom Patienten,
//     daher focus auf den Inkubator.
Instance: mii-exa-test-data-biobank-specimen-inkubator-abstrich-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore
Usage: #example
Description: "Specimen (Core): Umgebungsabstrich aus dem CO2-Inkubator der Zellkulturbank"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#PRIMÄRPROBE "Primärprobe"
* extension[infektiositaetsstatus].valueCodeableConcept = $sct#409603009 "Biosafety level 2 (qualifier value)"
* extension[focus].url = "http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-focus"
* extension[focus].valueReference = Reference(mii-exa-test-data-biobank-device-inkubator-1)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000023"
* status = #available
* type.coding[sct] = $sct#419695002 "Environmental swab"
* type.coding[+] = $miabis-sample-type#SpecimenEnvironment "Specimen from environment"
* subject = Reference(mii-exa-test-data-biobank-patient-3)
* receivedTime = "2022-04-12T11:30:00+02:00"
* collection.collectedDateTime = "2022-04-12T11:00:00+02:00"
* note.text = "Routinemaessige Sterilitaetskontrolle des Inkubators, in dem die Organoid-Kultur gehalten wird."
* processing.extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing.extension[temperaturbedingungen].valueRange.low = 15 'Cel' "°C"
* processing.extension[temperaturbedingungen].valueRange.high = 25 'Cel' "°C"
* processing.description = "Transport zum Mikrobiologie-Labor bei Raumtemperatur"
* processing.procedure = $sct#1186936003 "Storage of specimen (procedure)"
* processing.timePeriod.start = "2022-04-12T11:05:00+02:00"
* processing.timePeriod.end = "2022-04-12T11:30:00+02:00"
* container.type = $sct#83059008 "Tube, device (physical object)"