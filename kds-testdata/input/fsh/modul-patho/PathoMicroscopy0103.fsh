// =============================================================================
// MIKROSKOPISCHE BEFUNDE - PROSTATA STANZEN (ALLE 16 PARAMETER)
// =============================================================================

// =============================================================================
// STANZE 01 - Mikroskopische Befunde (Maligne - Gleason 3+4=7)
// =============================================================================

// Histologischer Typ ICD-O-3
Instance: mii-exa-test-data-patho-histo-typ-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histologischer Typ Stanze 01"
Description: "Histologischer Typ ICD-O-3 für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $ICDO-3#8140/3 "Azinäres Adenokarzinom"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Morphologie Freitext
Instance: mii-exa-test-data-patho-morph-text-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphologie Freitext Stanze 01"
Description: "Morphologie Freitext für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "Unregelmäßige, infiltrative Drüsenstrukturen, typisch für das azinäre Adenokarzinom. Gleason Pattern 3 mit fusion pattern (Pattern 4) kombiniert."
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Primäres Gleason Muster
Instance: mii-exa-test-data-patho-primaer-gleason-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Primäres Gleason Muster Stanze 01"
Description: "Primäres Gleason Muster für Stanze 01"
// TODO Profilharmonisierung ausstehend: * meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code.coding[+] = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor" 
* code.coding[+] = $sct#384994009 "Primary Gleason pattern (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#369772003 "Gleason Pattern 3 (finding)"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Sekundäres Gleason Muster
Instance: mii-exa-test-data-patho-sekundaer-gleason-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Sekundäres Gleason Muster Stanze 01"
Description: "Sekundäres Gleason Muster für Stanze 01"
// TODO Profilharmonisierung ausstehend: * meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code.coding[+] = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
* code.coding[+] = $sct#384995005 "Secondary Gleason pattern (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#369773008 "Gleason Pattern 4 (finding)"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Prozentualer Anteil Gleasonmuster 4/5
Instance: mii-exa-test-data-patho-prozent-gleason-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Prozentualer Anteil Gleasonmuster 4/5 Stanze 01"
Description: "Prozentualer Anteil Gleasonmuster 4/5 für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area [Area Fraction] in Prostate tumor by Microscopy"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 30 '%' "%"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Gradinggruppe nach ISUP 2014/WHO 2016
Instance: mii-exa-test-data-patho-gleason-grading-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Gradinggruppe ISUP Stanze 01"
Description: "Gradinggruppe nach ISUP 2014/WHO 2016 für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code.coding[+] = $sct#1812491000004107 "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#1279714001 "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Verhältnis positiver zu allen Stanzen
Instance: mii-exa-test-data-patho-verhaeltnis-positiver-stanzen-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Verhältnis positiver Stanzen 01"
Description: "Verhältnis positiver zu allen Stanzen für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#372303007 "Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "1/12"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Prozentualer Tumoranteil
Instance: mii-exa-test-data-patho-tumoranteil-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Prozentualer Tumoranteil Stanze 01"
Description: "Prozentualer Tumoranteil für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#385396009 "Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 40 '%' "%"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Tumorbefall in Länge (mm)
Instance: mii-exa-test-data-patho-tumorbefallin-laenge-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumorbefall in Länge Stanze 01"
Description: "Tumorbefall für befallene Stanze in Länge in mm für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#44618-7 "Total linear mm of carcinoma"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 6.2 'mm' "mm"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Perineurale Infiltration
Instance: mii-exa-test-data-patho-perineurale-infiltration-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Perineurale Infiltration Stanze 01"
Description: "Perineurale Infiltration für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Tumornachweis in Samenblasen
Instance: mii-exa-test-data-patho-tumornachweisin-samenblase-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumornachweis Samenblasen Stanze 01"
Description: "Tumornachweis in Samenblasen für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#44626-0 "Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Lymphovaskuläre Invasion
Instance: mii-exa-test-data-patho-lymphovaskulaere-invasion-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Lymphovaskuläre Invasion Stanze 01"
Description: "Lymphovaskuläre Invasion für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#33761-8 "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Tumornachweis in periprostatischem Gewebe
Instance: mii-exa-test-data-patho-tumornachweis-in-fettgewebe-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumornachweis Fettgewebe Stanze 01"
Description: "Tumornachweis in periprostatischem Binde- und Fettgewebe für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#44625-2 "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Intraduktales Karzinom
Instance: mii-exa-test-data-patho-intraduktales-karzinom-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Intraduktales Karzinom Stanze 01"
Description: "Intraduktales Karzinom für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#1162814007 "Non-infiltrating intraductal carcinoma (morphologic abnormality)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// ASAP
Instance: mii-exa-test-data-patho-asap-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "ASAP Stanze 01"
Description: "ASAP für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#16294321000119104 "Atypical small acinar proliferation of prostate (disorder)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// High-grade PIN
Instance: mii-exa-test-data-patho-high-grade-pin-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "High-grade PIN Stanze 01"
Description: "Begleitende High-grade-PIN für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#94666-5 "High grade prostatic intraepithelial neoplasia [Presence] in Specimen by Microscopy"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// Granulomatöse Prostatitis
Instance: mii-exa-test-data-patho-granulomatoese-prostatitis-01
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Granulomatöse Prostatitis Stanze 01"
Description: "Granulomatöse Prostatitis für Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#94665-7 "Granulomatous prostatitis [Presence] in Specimen by Microscopy"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"
* bodySite = $sct#716902004 "Right basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)

// =============================================================================
// STANZE 02 - Mikroskopische Befunde (Maligne - Gleason 4+3=7)
// =============================================================================

// Histologischer Typ ICD-O-3
Instance: mii-exa-test-data-patho-histo-typ-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histologischer Typ Stanze 02"
Description: "Histologischer Typ ICD-O-3 für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $ICDO-3#8140/3 "Azinäres Adenokarzinom"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Morphologie Freitext
Instance: mii-exa-test-data-patho-morph-text-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphologie Freitext Stanze 02"
Description: "Morphologie Freitext für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "Azinäres Adenokarzinom mit überwiegend Gleason Pattern 4, fusion pattern und cribriform pattern."
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Primäres Gleason Muster
Instance: mii-exa-test-data-patho-primaer-gleason-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Primäres Gleason Muster Stanze 02"
Description: "Primäres Gleason Muster für Stanze 02"
// TODO Profilharmonisierung ausstehend: * meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code.coding[+] = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
* code.coding[+] = $sct#384994009 "Primary Gleason pattern (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#369773008 "Gleason Pattern 4 (finding)"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Sekundäres Gleason Muster
Instance: mii-exa-test-data-patho-sekundaer-gleason-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Sekundäres Gleason Muster Stanze 02"
Description: "Sekundäres Gleason Muster für Stanze 02"
// TODO Profilharmonisierung ausstehend: * meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code.coding[+] = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
* code.coding[+] = $sct#384995005 "Secondary Gleason pattern (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#369772003 "Gleason Pattern 3 (finding)"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Prozentualer Anteil Gleasonmuster 4/5
Instance: mii-exa-test-data-patho-prozent-gleason-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Prozentualer Anteil Gleasonmuster 4/5 Stanze 02"
Description: "Prozentualer Anteil Gleasonmuster 4/5 für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area [Area Fraction] in Prostate tumor by Microscopy"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 70 '%' "%"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Gradinggruppe nach ISUP 2014/WHO 2016
Instance: mii-exa-test-data-patho-gleason-grading-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Gradinggruppe ISUP Stanze 02"
Description: "Gradinggruppe nach ISUP 2014/WHO 2016 für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code.coding[+] = $sct#1812491000004107 "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#1279716004 "International Society of Urological Pathology grade group 3 (Gleason score 4 + 3 = 7)"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Verhältnis positiver zu allen Stanzen
Instance: mii-exa-test-data-patho-verhaeltnis-positiver-stanzen-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Verhältnis positiver Stanzen 02"
Description: "Verhältnis positiver zu allen Stanzen für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#372303007 "Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "2/12"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Prozentualer Tumoranteil
Instance: mii-exa-test-data-patho-tumoranteil-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Prozentualer Tumoranteil Stanze 02"
Description: "Prozentualer Tumoranteil für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#385396009 "Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 60 '%' "%"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Tumorbefall in Länge (mm)
Instance: mii-exa-test-data-patho-tumorbefallin-laenge-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumorbefall in Länge Stanze 02"
Description: "Tumorbefall für befallene Stanze in Länge in mm für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#44618-7 "Total linear mm of carcinoma"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 8.5 'mm' "mm"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Perineurale Infiltration
Instance: mii-exa-test-data-patho-perineurale-infiltration-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Perineurale Infiltration Stanze 02"
Description: "Perineurale Infiltration für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Tumornachweis in Samenblasen
Instance: mii-exa-test-data-patho-tumornachweisin-samenblase-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumornachweis Samenblasen Stanze 02"
Description: "Tumornachweis in Samenblasen für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#44626-0 "Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Lymphovaskuläre Invasion
Instance: mii-exa-test-data-patho-lymphovaskulaere-invasion-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Lymphovaskuläre Invasion Stanze 02"
Description: "Lymphovaskuläre Invasion für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#33761-8 "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Tumornachweis in periprostatischem Gewebe
Instance: mii-exa-test-data-patho-tumornachweis-in-fettgewebe-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumornachweis Fettgewebe Stanze 02"
Description: "Tumornachweis in periprostatischem Binde- und Fettgewebe für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#44625-2 "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Intraduktales Karzinom
Instance: mii-exa-test-data-patho-intraduktales-karzinom-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Intraduktales Karzinom Stanze 02"
Description: "Intraduktales Karzinom für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#1162814007 "Non-infiltrating intraductal carcinoma (morphologic abnormality)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// ASAP
Instance: mii-exa-test-data-patho-asap-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "ASAP Stanze 02"
Description: "ASAP für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#16294321000119104 "Atypical small acinar proliferation of prostate (disorder)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// High-grade PIN
Instance: mii-exa-test-data-patho-high-grade-pin-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "High-grade PIN Stanze 02"
Description: "Begleitende High-grade-PIN für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#94666-5 "High grade prostatic intraepithelial neoplasia [Presence] in Specimen by Microscopy"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// Granulomatöse Prostatitis
Instance: mii-exa-test-data-patho-granulomatoese-prostatitis-02
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Granulomatöse Prostatitis Stanze 02"
Description: "Granulomatöse Prostatitis für Stanze 02"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#94665-7 "Granulomatous prostatitis [Presence] in Specimen by Microscopy"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"
* bodySite = $sct#716903009 "Left basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-02-slide)

// =============================================================================
// STANZE 03 - Mikroskopische Befunde (Benigne)
// =============================================================================

// Histologischer Typ ICD-O-3
Instance: mii-exa-test-data-patho-histo-typ-03
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histologischer Typ Stanze 03"
Description: "Histologischer Typ ICD-O-3 für Stanze 03"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#110396000 "No evidence of malignant neoplasm (finding)"
* bodySite = $sct#716904003 "Right anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-03-slide)

// Morphologie Freitext
Instance: mii-exa-test-data-patho-morph-text-03
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphologie Freitext Stanze 03"
Description: "Morphologie Freitext für Stanze 03"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "Benigne Prostatadrüsen mit regelrechten azinären Strukturen. Vereinzelt Fibrose. Kein Anhalt für maligne Veränderungen."
* bodySite = $sct#716904003 "Right anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-03-slide)

