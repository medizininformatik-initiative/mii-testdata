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
// STANZE 02 - Rechts lateral mid (POSITIVE)
// =============================================================================

Instance: mii-exa-test-data-patho-specimen-02-part
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Prostatastanze 02 - Rechts lateral mid"
Description: "Tru-cut Biopsie aus der rechten lateralen Mitte (periphere Zone)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Markiert mit blauer Tinte"

* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
  * value = "BX24_001_02_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_B"

* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"

* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* request = Reference(mii-exa-test-data-patho-request-1)

* collection
  * collector = Reference(mii-exa-test-data-patho-practitioner-2)
  * collectedDateTime = "2024-01-15T10:32:00+01:00"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"


// Block für Stanze 02
Instance: mii-exa-test-data-patho-specimen-02-block
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock Stanze 02"
Description: "Paraffineinbettung der Prostatastanze 02"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_B_1"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#706053007 "General specimen container (physical object)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-02-part)
* collection
  * collectedDateTime = "2024-01-16T10:32:00+01:00"
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

// Schnitt für Stanze 02 Block
Instance: mii-exa-test-data-patho-specimen-02-slide
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt Stanze 02"
Description: "Hämatoxylin-Eosin gefärbter Schnitt der Prostatastanze 02"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_B_1_1HE"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-02-block)
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

// =============================================================================
// STANZE 04 - Rechts medial basal (POSITIVE)
// =============================================================================

Instance: mii-exa-test-data-patho-specimen-04-part
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Prostatastanze 04 - Rechts medial basal"
Description: "Tru-cut Biopsie aus der rechten medialen Basis (Übergangszone)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = $sct#716892006 "Structure of basal part of anterior fibromuscular stroma of right half prostate (body structure)"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Markiert mit gelber Tinte"

* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
  * value = "BX24_001_04_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_D"

* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"

* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* request = Reference(mii-exa-test-data-patho-request-1)

* collection
  * collector = Reference(mii-exa-test-data-patho-practitioner-2)
  * collectedDateTime = "2024-01-15T10:36:00+01:00"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716892006 "Structure of basal part of anterior fibromuscular stroma of right half prostate (body structure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"


// Block für Stanze 04
Instance: mii-exa-test-data-patho-specimen-04-block
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock Stanze 04"
Description: "Paraffineinbettung der Prostatastanze 04"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_D_1"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#706053007 "General specimen container (physical object)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-04-part)
* collection
  * collectedDateTime = "2024-01-16T10:36:00+01:00"
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

// Schnitt für Stanze 04 Block
Instance: mii-exa-test-data-patho-specimen-04-slide
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt Stanze 04"
Description: "Hämatoxylin-Eosin gefärbter Schnitt der Prostatastanze 04"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_D_1_1HE"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-04-block)
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
// STANZE 05 - Rechts medial mid (BENIGNE)
// =============================================================================

Instance: mii-exa-test-data-patho-specimen-05-part
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Prostatastanze 05 - Rechts medial mid"
Description: "Tru-cut Biopsie aus der rechten medialen Mitte (Übergangszone)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = $sct#716911004 "Structure of middle regional part of transition zone of right half prostate (body structure)"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Markiert mit oranger Tinte"

* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
  * value = "BX24_001_05_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_E"

* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"

* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* request = Reference(mii-exa-test-data-patho-request-1)

* collection
  * collector = Reference(mii-exa-test-data-patho-practitioner-2)
  * collectedDateTime = "2024-01-15T10:38:00+01:00"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716911004 "Structure of middle regional part of transition zone of right half prostate (body structure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

// Block für Stanze 05
Instance: mii-exa-test-data-patho-specimen-05-block
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock Stanze 05"
Description: "Paraffineinbettung der Prostatastanze 05"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_E_1"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#706053007 "General specimen container (physical object)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-05-part)
* collection
  * collectedDateTime = "2024-01-16T10:38:00+01:00"
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

// Schnitt für Stanze 05 Block
Instance: mii-exa-test-data-patho-specimen-05-slide
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt Stanze 05"
Description: "Hämatoxylin-Eosin gefärbter Schnitt der Prostatastanze 05"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_E_1_1HE"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-05-block)
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
// STANZE 06 - Rechts medial apikal (POSITIVE)
// =============================================================================

Instance: mii-exa-test-data-patho-specimen-06-part
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Prostatastanze 06 - Rechts medial apikal"
Description: "Tru-cut Biopsie aus der rechten medialen Apex (anteriores fibromuskuläres Stroma)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Markiert mit violetter Tinte"

* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
  * value = "BX24_001_06_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_F"

* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"

* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* request = Reference(mii-exa-test-data-patho-request-1)

* collection
  * collector = Reference(mii-exa-test-data-patho-practitioner-2)
  * collectedDateTime = "2024-01-15T10:40:00+01:00"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

// Block für Stanze 06
Instance: mii-exa-test-data-patho-specimen-06-block
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock Stanze 06"
Description: "Paraffineinbettung der Prostatastanze 06"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_F_1"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#706053007 "General specimen container (physical object)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-06-part)
* collection
  * collectedDateTime = "2024-01-16T10:40:00+01:00"
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

// Schnitt für Stanze 06 Block
Instance: mii-exa-test-data-patho-specimen-06-slide
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt Stanze 06"
Description: "Hämatoxylin-Eosin gefärbter Schnitt der Prostatastanze 06"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_F_1_1HE"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-06-block)
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
// STANZE 07 - Links lateral basal (POSITIVE - HIGHEST GRADE 4+5=9)
// =============================================================================

Instance: mii-exa-test-data-patho-specimen-07-part
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Prostatastanze 07 - Links lateral basal"
Description: "Tru-cut Biopsie aus der linken lateralen Basis (periphere Zone)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = $sct#716903009 "Left basal peripheral zone of prostate"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Markiert mit rosa Tinte"

* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
  * value = "BX24_001_07_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_G"

* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"

* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* request = Reference(mii-exa-test-data-patho-request-1)

* collection
  * collector = Reference(mii-exa-test-data-patho-practitioner-2)
  * collectedDateTime = "2024-01-15T10:42:00+01:00"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716903009 "Left basal peripheral zone of prostate"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

// Block für Stanze 07
Instance: mii-exa-test-data-patho-specimen-07-block
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock Stanze 07"
Description: "Paraffineinbettung der Prostatastanze 07"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_G_1"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#706053007 "General specimen container (physical object)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-07-part)
* collection
  * collectedDateTime = "2024-01-16T10:42:00+01:00"
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

// Schnitt für Stanze 07 Block
Instance: mii-exa-test-data-patho-specimen-07-slide
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt Stanze 07"
Description: "Hämatoxylin-Eosin gefärbter Schnitt der Prostatastanze 07"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_G_1_1HE"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-07-block)
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
// STANZE 08 - Links lateral mid (BENIGNE)
// =============================================================================

Instance: mii-exa-test-data-patho-specimen-08-part
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Prostatastanze 08 - Links lateral mid"
Description: "Tru-cut Biopsie aus der linken lateralen Mitte (periphere Zone)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = $sct#716918005 "Structure of lateral middle regional part of peripheral zone of left half prostate (body structure)"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Markiert mit brauner Tinte"

* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
  * value = "BX24_001_08_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_H"

* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"

* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* request = Reference(mii-exa-test-data-patho-request-1)

* collection
  * collector = Reference(mii-exa-test-data-patho-practitioner-2)
  * collectedDateTime = "2024-01-15T10:44:00+01:00"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716918005 "Structure of lateral middle regional part of peripheral zone of left half prostate (body structure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

// Block für Stanze 08
Instance: mii-exa-test-data-patho-specimen-08-block
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock Stanze 08"
Description: "Paraffineinbettung der Prostatastanze 08"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_H_1"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#706053007 "General specimen container (physical object)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-08-part)
* collection
  * collectedDateTime = "2024-01-16T10:44:00+01:00"
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

// Schnitt für Stanze 08 Block
Instance: mii-exa-test-data-patho-specimen-08-slide
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt Stanze 08"
Description: "Hämatoxylin-Eosin gefärbter Schnitt der Prostatastanze 08"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_H_1_1HE"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-08-block)
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
// STANZE 09 - Links lateral apikal (POSITIVE)
// =============================================================================

Instance: mii-exa-test-data-patho-specimen-09-part
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Prostatastanze 09 - Links lateral apikal"
Description: "Tru-cut Biopsie aus der linken lateralen Apex (periphere Zone)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = $sct#716935009 "Left apical peripheral zone of prostate"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Markiert mit schwarzer Tinte"

* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
  * value = "BX24_001_09_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_I"

* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"

* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* request = Reference(mii-exa-test-data-patho-request-1)

* collection
  * collector = Reference(mii-exa-test-data-patho-practitioner-2)
  * collectedDateTime = "2024-01-15T10:46:00+01:00"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716935009 "Left apical peripheral zone of prostate"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

// Block für Stanze 09
Instance: mii-exa-test-data-patho-specimen-09-block
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock Stanze 09"
Description: "Paraffineinbettung der Prostatastanze 09"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_I_1"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#706053007 "General specimen container (physical object)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-09-part)
* collection
  * collectedDateTime = "2024-01-16T10:46:00+01:00"
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

// Schnitt für Stanze 09 Block
Instance: mii-exa-test-data-patho-specimen-09-slide
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt Stanze 09"
Description: "Hämatoxylin-Eosin gefärbter Schnitt der Prostatastanze 09"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_I_1_1HE"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-09-block)
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
// STANZE 10 - Links medial basal (BENIGNE)
// =============================================================================

Instance: mii-exa-test-data-patho-specimen-10-part
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Prostatastanze 10 - Links medial basal"
Description: "Tru-cut Biopsie aus der linken medialen Basis (anteriores fibromuskuläres Stroma)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = $sct#716893001 "Structure of basal part of anterior fibromuscular stroma of left half prostate (body structure)"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Markiert mit silberner Tinte"

* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
  * value = "BX24_001_10_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_J"

* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"

* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* request = Reference(mii-exa-test-data-patho-request-1)

* collection
  * collector = Reference(mii-exa-test-data-patho-practitioner-2)
  * collectedDateTime = "2024-01-15T10:48:00+01:00"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716893001 "Structure of basal part of anterior fibromuscular stroma of left half prostate (body structure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

// Block für Stanze 10
Instance: mii-exa-test-data-patho-specimen-10-block
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock Stanze 10"
Description: "Paraffineinbettung der Prostatastanze 10"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_J_1"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#706053007 "General specimen container (physical object)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-10-part)
* collection
  * collectedDateTime = "2024-01-16T10:48:00+01:00"
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

// Schnitt für Stanze 10 Block
Instance: mii-exa-test-data-patho-specimen-10-slide
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt Stanze 10"
Description: "Hämatoxylin-Eosin gefärbter Schnitt der Prostatastanze 10"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_J_1_1HE"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-10-block)
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
// STANZE 11 - Links medial mid (POSITIVE)
// =============================================================================

Instance: mii-exa-test-data-patho-specimen-11-part
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Prostatastanze 11 - Links medial mid"
Description: "Tru-cut Biopsie aus der linken medialen Mitte (Übergangszone)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = $sct#716912006 "Structure of middle regional part of transition zone of left half prostate (body structure)"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Markiert mit goldener Tinte"

* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
  * value = "BX24_001_11_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_K"

* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"

* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* request = Reference(mii-exa-test-data-patho-request-1)

* collection
  * collector = Reference(mii-exa-test-data-patho-practitioner-2)
  * collectedDateTime = "2024-01-15T10:50:00+01:00"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716912006 "Structure of middle regional part of transition zone of left half prostate (body structure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

// Block für Stanze 11
Instance: mii-exa-test-data-patho-specimen-11-block
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock Stanze 11"
Description: "Paraffineinbettung der Prostatastanze 11"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_K_1"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#706053007 "General specimen container (physical object)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-11-part)
* collection
  * collectedDateTime = "2024-01-16T10:50:00+01:00"
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

// Schnitt für Stanze 11 Block
Instance: mii-exa-test-data-patho-specimen-11-slide
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt Stanze 11"
Description: "Hämatoxylin-Eosin gefärbter Schnitt der Prostatastanze 11"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_K_1_1HE"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-11-block)
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
// STANZE 12 - Links medial apikal (BENIGNE)
// =============================================================================

Instance: mii-exa-test-data-patho-specimen-12-part
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Prostatastanze 12 - Links medial apikal"
Description: "Tru-cut Biopsie aus der linken medialen Apex (anteriores fibromuskuläres Stroma)"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = $sct#716910003 "Structure of middle regional part of anterior fibromuscular stroma of left half prostate (body structure)"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Markiert mit türkiser Tinte"

* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
  * system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
  * value = "BX24_001_12_A"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_L"

* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"

* status = #available
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* request = Reference(mii-exa-test-data-patho-request-1)

* collection
  * collector = Reference(mii-exa-test-data-patho-practitioner-2)
  * collectedDateTime = "2024-01-15T10:52:00+01:00"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716910003 "Structure of middle regional part of anterior fibromuscular stroma of left half prostate (body structure)"

* container
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveCodeableConcept = $sct#434162003 "Neutral buffered formalin (substance)"

// Block für Stanze 12
Instance: mii-exa-test-data-patho-specimen-12-block
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "Paraffinblock Stanze 12"
Description: "Paraffineinbettung der Prostatastanze 12"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_L_1"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#706053007 "General specimen container (physical object)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-12-part)
* collection
  * collectedDateTime = "2024-01-16T10:52:00+01:00"
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

// Schnitt für Stanze 12 Block
Instance: mii-exa-test-data-patho-specimen-12-slide
InstanceOf: $mii-patho-specimen
Usage: #example
Title: "HE-Schnitt Stanze 12"
Description: "Hämatoxylin-Eosin gefärbter Schnitt der Prostatastanze 12"
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001_L_1_1HE"
* accessionIdentifier
  * system = "https://www.charite.de/fhir/sid/patho/befundbericht"
  * value = "E_24_001"
* status = #available
* type = $sct#430856003 "Tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* parent = Reference(mii-exa-test-data-patho-specimen-12-block)
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
