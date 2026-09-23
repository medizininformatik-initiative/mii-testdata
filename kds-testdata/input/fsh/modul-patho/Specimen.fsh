// =============================================================================
// STANZE 01 - Rechts lateral basal (POSITIVE)
// =============================================================================

Instance: mii-exa-test-data-patho-specimen-01-part
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Prostatastanze 01 - Rechts lateral basal"
Description: "Tru-cut Biopsie aus der rechten lateralen Basis (periphere Zone)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = $sct#716902004 "Right basal peripheral zone of prostate"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Markiert mit roter Tinte"

// Probenebene und Infektiositaetsstatus (aus SpecimenCore geerbt)
* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#PRIMÄRPROBE "Primärprobe"
* extension[infektiositaetsstatus].valueCodeableConcept = $sct#409603009 "Biosafety level 2 (qualifier value)"

* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
  * value = "BX24_001_01_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_A"

* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"

* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* request = Reference(mii-exa-test-data-patho-request-1)

* collection
  * collector = Reference(mii-exa-test-data-patho-practitioner-2)
  * collectedDateTime = "2024-01-15T10:30:00+01:00"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716902004 "Right basal peripheral zone of prostate"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

// MS-Auffuellung: Detail-Elemente des Patho-Specimen-Profils
* meta.lastUpdated = "2024-01-20T16:00:00+01:00"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Prostatastanze 01, rechts lateral basal, Tru-cut-Biopsie in Formalin</div>"
* note.text = "Stanze mit roter Tinte markiert, sofort in Formalin fixiert."
* receivedTime = "2024-01-15T16:00:00+01:00"
* collection.quantity.value = 1
* collection.quantity.unit = "Stanzzylinder"
* collection.quantity.system = $ucum
* collection.quantity.code = #1
* collection.extension[einstellungBlutversorgung].valueDateTime = "2024-01-15T10:29:00+01:00"
* collection.bodySite.extension[bodyStructure].valueReference = Reference(mii-exa-test-data-patho-body-structure-1)
* collection.fastingStatusCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0916"
* collection.fastingStatusCodeableConcept.coding.code = #NF
* processing[+].description = "Formalinfixierung"
* processing[=].procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen"
* processing[=].additive = Reference(mii-exa-test-data-patho-substance-formalin-1)
* processing[=].timePeriod.start = "2024-01-15T11:00:00+01:00"
* processing[=].timePeriod.end = "2024-01-16T07:30:00+01:00"
* container.capacity.value = 10
* container.capacity.unit = "mL"
* container.capacity.system = $ucum
* container.capacity.code = #mL
* container.specimenQuantity.value = 2
* container.specimenQuantity.unit = "mL"
* container.specimenQuantity.system = $ucum
* container.specimenQuantity.code = #mL

// BodyStructure (Ziel der bodyStructure-Extension der Entnahmestelle)
Instance: mii-exa-test-data-patho-body-structure-1
InstanceOf: BodyStructure
Usage: #example
Title: "Entnahmestelle Prostatastanze 01"
Description: "BodyStructure: rechte basale periphere Zone der Prostata"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* active = true
* location = $sct#716902004 "Right basal peripheral zone of prostate"
* patient = Reference(mii-exa-test-data-patho-patient-1)

// Substance (Ziel der processing.additive-Referenz)
Instance: mii-exa-test-data-patho-substance-formalin-1
InstanceOf: Substance
Usage: #example
Title: "Formalin (Fixativ)"
Description: "Substance: neutral gepuffertes Formalin als Fixierungs-Additiv"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* code = $sct#434162003 "Neutral buffered formalin (substance)"

// Block für Stanze 01
Instance: mii-exa-test-data-patho-specimen-01-block
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock Stanze 01"
Description: "Paraffineinbettung der Prostatastanze 01"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_A_1"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#706053007 "General specimen container (physical object)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-01-part)
* collection
  * collectedDateTime = "2024-01-16T10:30:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen"
  * timeDateTime = "2024-01-16T08:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// Schnitt für Stanze 01 Block
Instance: mii-exa-test-data-patho-specimen-01-slide
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt Stanze 01"
Description: "Hämatoxylin-Eosin gefärbter Schnitt der Prostatastanze 01"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_A_1_1HE"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-01-block)
* collection
  * collectedDateTime = "2024-01-17T08:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block"
  * timeDateTime = "2024-01-17T09:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Staining method"
  * timeDateTime = "2024-01-17T09:15:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"

// =============================================================================
// STANZE 03 - Rechts lateral apikal (BENIGNE)
// =============================================================================

Instance: mii-exa-test-data-patho-specimen-03-part
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Prostatastanze 03 - Rechts lateral apikal"
Description: "Tru-cut Biopsie aus der rechten lateralen Apex (periphere Zone)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = $sct#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Markiert mit grüner Tinte"

* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
  * value = "BX24_001_03_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_C"

* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"

* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* request = Reference(mii-exa-test-data-patho-request-1)

* collection
  * collector = Reference(mii-exa-test-data-patho-practitioner-2)
  * collectedDateTime = "2024-01-15T10:34:00+01:00"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"


// Block für Stanze 03  
Instance: mii-exa-test-data-patho-specimen-03-block
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock Stanze 03"
Description: "Paraffineinbettung der Prostatastanze 03"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_C_1"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#706053007 "General specimen container (physical object)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-03-part)
* collection
  * collectedDateTime = "2024-01-16T10:34:00+01:00"
  * method = $sct#787377000 "Gross examination and sampling of tissue specimen"
* processing[+]
  * description = "Zuschnitt und Paraffineinbettung"
  * procedure = $sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen"
  * timeDateTime = "2024-01-16T08:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#706053007 "General specimen container (physical object)"
  * additiveCodeableConcept = $sct#311731000 "Paraffin wax (substance)"

// Schnitt für Stanze 03 Block
Instance: mii-exa-test-data-patho-specimen-03-slide
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt Stanze 03"
Description: "Hämatoxylin-Eosin gefärbter Schnitt der Prostatastanze 03"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_C_1_1HE"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-03-block)
* collection
  * collectedDateTime = "2024-01-17T08:00:00+01:00"
  * method = $sct#13283003 "Tissue processing technique (procedure)"
* processing[+]
  * description = "Schnittherstellung"
  * procedure = $sct#434472006 "Sectioning of tissue block"
  * timeDateTime = "2024-01-17T09:00:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* processing[+]
  * description = "HE-Färbung"
  * procedure = $sct#127790008 "Staining method"
  * timeDateTime = "2024-01-17T09:15:00+01:00"
  * extension[temperaturbedingungen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
  * extension[temperaturbedingungen].valueRange.low.value = 2
  * extension[temperaturbedingungen].valueRange.high.value = 8
* container
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveCodeableConcept = $sct#430862008 "Microscope slide mounting medium (substance)"