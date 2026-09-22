// =============================================================================
// MIKROSKOPISCHE BEFUNDE - PROSTATA STANZEN 07-09 (ALLE 16 PARAMETER)
// =============================================================================

// =============================================================================
// STANZE 07 - Mikroskopische Befunde (Maligne - Gleason 4+5=9)
// =============================================================================

// Histologischer Typ ICD-O-3
Instance: mii-exa-test-data-patho-histo-typ-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histologischer Typ Stanze 07"
Description: "Histologischer Typ ICD-O-3 für Stanze 07"
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
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Morphologie Freitext
Instance: mii-exa-test-data-patho-morph-text-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphologie Freitext Stanze 07"
Description: "Morphologie Freitext für Stanze 07"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "Hochaggressives azinäres Adenokarzinom mit Gleason Pattern 4 und 5. Comedonecrosis, solid sheets, einzelne Zellen. Sehr schlechte Prognose."
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Primäres Gleason Muster
Instance: mii-exa-test-data-patho-primaer-gleason-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Primäres Gleason Muster Stanze 07"
Description: "Primäres Gleason Muster für Stanze 07"
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
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Sekundäres Gleason Muster
Instance: mii-exa-test-data-patho-sekundaer-gleason-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Sekundäres Gleason Muster Stanze 07"
Description: "Sekundäres Gleason Muster für Stanze 07"
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
* valueCodeableConcept = $sct#369774002 "Gleason Pattern 5 (finding)"
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Prozentualer Anteil Gleasonmuster 4/5
Instance: mii-exa-test-data-patho-prozent-gleason-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Prozentualer Anteil Gleasonmuster 4/5 Stanze 07"
Description: "Prozentualer Anteil Gleasonmuster 4/5 für Stanze 07"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area [Area Fraction] in Prostate tumor by Microscopy"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 100 '%' "%"
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Gradinggruppe nach ISUP 2014/WHO 2016
Instance: mii-exa-test-data-patho-gleason-grading-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Gradinggruppe ISUP Stanze 07"
Description: "Gradinggruppe nach ISUP 2014/WHO 2016 für Stanze 07"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code.coding[+] = $sct#1812491000004107 "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#860746006 "Gleason grade group 5 (finding)"
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Verhältnis positiver zu allen Stanzen
Instance: mii-exa-test-data-patho-verhaeltnis-positiver-stanzen-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Verhältnis positiver Stanzen 07"
Description: "Verhältnis positiver zu allen Stanzen für Stanze 07"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#372303007 "Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "5/12"
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Prozentualer Tumoranteil
Instance: mii-exa-test-data-patho-tumoranteil-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Prozentualer Tumoranteil Stanze 07"
Description: "Prozentualer Tumoranteil für Stanze 07"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#385396009 "Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 95 '%' "%"
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Tumorbefall in Länge (mm)
Instance: mii-exa-test-data-patho-tumorbefallin-laenge-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumorbefall in Länge Stanze 07"
Description: "Tumorbefall für befallene Stanze in Länge in mm für Stanze 07"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#44618-7 "Total linear mm of carcinoma"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 14.8 'mm' "mm"
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Perineurale Infiltration
Instance: mii-exa-test-data-patho-perineurale-infiltration-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Perineurale Infiltration Stanze 07"
Description: "Perineurale Infiltration für Stanze 07"
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
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Tumornachweis in Samenblasen
Instance: mii-exa-test-data-patho-tumornachweisin-samenblase-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumornachweis Samenblasen Stanze 07"
Description: "Tumornachweis in Samenblasen für Stanze 07"
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
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Lymphovaskuläre Invasion
Instance: mii-exa-test-data-patho-lymphovaskulaere-invasion-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Lymphovaskuläre Invasion Stanze 07"
Description: "Lymphovaskuläre Invasion für Stanze 07"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#33761-8 "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Tumornachweis in periprostatischem Gewebe
Instance: mii-exa-test-data-patho-tumornachweis-in-fettgewebe-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumornachweis Fettgewebe Stanze 07"
Description: "Tumornachweis in periprostatischem Binde- und Fettgewebe für Stanze 07"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#44625-2 "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Intraduktales Karzinom
Instance: mii-exa-test-data-patho-intraduktales-karzinom-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Intraduktales Karzinom Stanze 07"
Description: "Intraduktales Karzinom für Stanze 07"
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
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// ASAP
Instance: mii-exa-test-data-patho-asap-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "ASAP Stanze 07"
Description: "ASAP für Stanze 07"
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
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// High-grade PIN
Instance: mii-exa-test-data-patho-high-grade-pin-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "High-grade PIN Stanze 07"
Description: "Begleitende High-grade-PIN für Stanze 07"
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
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// Granulomatöse Prostatitis
Instance: mii-exa-test-data-patho-granulomatoese-prostatitis-07
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Granulomatöse Prostatitis Stanze 07"
Description: "Granulomatöse Prostatitis für Stanze 07"
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
* bodySite = $sct#716905002 "Left anterior basal peripheral zone of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-07-slide)

// =============================================================================
// STANZE 08 - Mikroskopische Befunde (Benigne)
// =============================================================================

// Histologischer Typ ICD-O-3
Instance: mii-exa-test-data-patho-histo-typ-08
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histologischer Typ Stanze 08"
Description: "Histologischer Typ ICD-O-3 für Stanze 08"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-08-slide)

// Morphologie Freitext
Instance: mii-exa-test-data-patho-morph-text-08
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphologie Freitext Stanze 08"
Description: "Morphologie Freitext für Stanze 08"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "Benigne Prostatadrüsen mit Zeichen einer nodulären Hyperplasie. Stromareiche Bereiche. Keine malignen Veränderungen."
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-08-slide)

// STANZE 09 - Mikroskopische Befunde (Maligne - Gleason 3+4=7)
Instance: mii-exa-test-data-patho-histo-typ-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histologischer Typ Stanze 09"
Description: "Histologischer Typ ICD-O-3 für Stanze 09"
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
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Morphologie Freitext
Instance: mii-exa-test-data-patho-morph-text-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphologie Freitext Stanze 09"
Description: "Morphologie Freitext für Stanze 09"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "Azinäres Adenokarzinom mit vorwiegend Gleason Pattern 3, fokal Gleason Pattern 4. Mäßig differenziertes Karzinom."
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Primäres Gleason Muster
Instance: mii-exa-test-data-patho-primaer-gleason-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Primäres Gleason Muster Stanze 09"
Description: "Primäres Gleason Muster für Stanze 09"
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
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Sekundäres Gleason Muster
Instance: mii-exa-test-data-patho-sekundaer-gleason-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Sekundäres Gleason Muster Stanze 09"
Description: "Sekundäres Gleason Muster für Stanze 09"
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
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Prozentualer Anteil Gleasonmuster 4/5
Instance: mii-exa-test-data-patho-prozent-gleason-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Prozentualer Anteil Gleasonmuster 4/5 Stanze 09"
Description: "Prozentualer Anteil Gleasonmuster 4/5 für Stanze 09"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area [Area Fraction] in Prostate tumor by Microscopy"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 20 '%' "%"
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Gradinggruppe nach ISUP 2014/WHO 2016
Instance: mii-exa-test-data-patho-gleason-grading-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Gradinggruppe ISUP Stanze 09"
Description: "Gradinggruppe nach ISUP 2014/WHO 2016 für Stanze 09"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code.coding[+] = $sct#1812491000004107 "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#860743003 "Gleason grade group 2 (finding)"
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Verhältnis positiver zu allen Stanzen
Instance: mii-exa-test-data-patho-verhaeltnis-positiver-stanzen-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Verhältnis positiver Stanzen 09"
Description: "Verhältnis positiver zu allen Stanzen für Stanze 09"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#372303007 "Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "6/12"
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Prozentualer Tumoranteil
Instance: mii-exa-test-data-patho-tumoranteil-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Prozentualer Tumoranteil Stanze 09"
Description: "Prozentualer Tumoranteil für Stanze 09"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#385396009 "Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 35 '%' "%"
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Tumorbefall in Länge (mm)
Instance: mii-exa-test-data-patho-tumorbefallin-laenge-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumorbefall in Länge Stanze 09"
Description: "Tumorbefall für befallene Stanze in Länge in mm für Stanze 09"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#44618-7 "Total linear mm of carcinoma"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 4.5 'mm' "mm"
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Perineurale Infiltration
Instance: mii-exa-test-data-patho-perineurale-infiltration-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Perineurale Infiltration Stanze 09"
Description: "Perineurale Infiltration für Stanze 09"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#47492008 "Not seen (qualifier value)"
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Tumornachweis in Samenblasen
Instance: mii-exa-test-data-patho-tumornachweisin-samenblase-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumornachweis Samenblasen Stanze 09"
Description: "Tumornachweis in Samenblasen für Stanze 09"
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
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Lymphovaskuläre Invasion
Instance: mii-exa-test-data-patho-lymphovaskulaere-invasion-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Lymphovaskuläre Invasion Stanze 09"
Description: "Lymphovaskuläre Invasion für Stanze 09"
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
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Tumornachweis in periprostatischem Gewebe
Instance: mii-exa-test-data-patho-tumornachweis-in-fettgewebe-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumornachweis Fettgewebe Stanze 09"
Description: "Tumornachweis in periprostatischem Binde- und Fettgewebe für Stanze 09"
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
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Intraduktales Karzinom
Instance: mii-exa-test-data-patho-intraduktales-karzinom-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Intraduktales Karzinom Stanze 09"
Description: "Intraduktales Karzinom für Stanze 09"
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
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// ASAP
Instance: mii-exa-test-data-patho-asap-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "ASAP Stanze 09"
Description: "ASAP für Stanze 09"
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
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// High-grade PIN
Instance: mii-exa-test-data-patho-high-grade-pin-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "High-grade PIN Stanze 09"
Description: "Begleitende High-grade-PIN für Stanze 09"
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
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)

// Granulomatöse Prostatitis
Instance: mii-exa-test-data-patho-granulomatoese-prostatitis-09
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Granulomatöse Prostatitis Stanze 09"
Description: "Granulomatöse Prostatitis für Stanze 09"
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
* bodySite = $sct#716909008 "Right middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-09-slide)