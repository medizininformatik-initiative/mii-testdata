// -------------------------------------------------------
// Patho Specimen for Patient-1: Prostate Biopsy Specimens
// -------------------------------------------------------

// Specimen 1: Parent biopsy specimen - Prostate tru-cut biopsy sample
Instance: mii-exa-test-data-patient-1-patho-specimen-1
InstanceOf: mii-pr-patho-specimen
Usage: #example
Description: "Patho Specimen: Prostata-Stanzbiopsie, rechter Seitenlappen lateral"
* insert TestDataLabel
* identifier[Filler-ID].type = $v2-0203#FILL
* identifier[Filler-ID].system = "https://www.charite.de/fhir/sid/patho-befundnummern"
* identifier[Filler-ID].value = "E24.00001-A"
* accessionIdentifier.system = "https://www.charite.de/fhir/sid/patho-befundnummern"
* accessionIdentifier.value = "E24.00001"
* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patient-1)
* request = Reference(mii-exa-test-data-patient-1-patho-request-1)
* collection.collector = Reference(mii-exa-test-data-practitioner-physician-1)
* collection.collectedDateTime = "2024-02-15T09:30:00+01:00"
* collection.method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
* collection.bodySite = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* container.type = $sct#434746001 "Specimen vial (physical object)"

// Specimen 2: Processed HE-stained slide derived from Specimen 1
Instance: mii-exa-test-data-patient-1-patho-specimen-2
InstanceOf: mii-pr-patho-specimen
Usage: #example
Description: "Patho Specimen: HE-gefaerbter Schnitt der Prostata-Stanzbiopsie"
* insert TestDataLabel
* identifier[Filler-ID].type = $v2-0203#FILL
* identifier[Filler-ID].system = "https://www.charite.de/fhir/sid/patho-befundnummern"
* identifier[Filler-ID].value = "E24.00001-A1-HE"
* accessionIdentifier.system = "https://www.charite.de/fhir/sid/patho-befundnummern"
* accessionIdentifier.value = "E24.00001"
* status = #available
* type = $sct#787150001 "Stained slide of tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patient-1)
* parent = Reference(mii-exa-test-data-patient-1-patho-specimen-1)
* request = Reference(mii-exa-test-data-patient-1-patho-request-1)
* collection.collector = Reference(mii-exa-test-data-practitioner-physician-1)
* collection.collectedDateTime = "2024-02-15T09:30:00+01:00"
* collection.method = $sct#40923002 "Tissue processing technique, routine, embed, cut and stain, per surgical specimen (procedure)"
* collection.bodySite = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* processing.extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing.extension[temperaturbedingungen].valueRange.low = 15 'Cel' "°C"
* processing.extension[temperaturbedingungen].valueRange.high = 25 'Cel' "°C"
* processing.procedure.coding[sct] = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
* container.type = $sct#433466003 "Microscope slide (physical object)"
