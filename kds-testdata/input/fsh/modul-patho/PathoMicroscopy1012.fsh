// =============================================================================
// MIKROSKOPISCHE BEFUNDE - PROSTATA STANZEN 10-12 (ALLE 16 PARAMETER)
// =============================================================================

// =============================================================================
// STANZE 10 - Mikroskopische Befunde (Benigne)
// =============================================================================

// Histologischer Typ ICD-O-3
Instance: mii-exa-test-data-patho-histo-typ-10
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histologischer Typ Stanze 10"
Description: "Histologischer Typ ICD-O-3 für Stanze 10"
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
* bodySite = $sct#716891004 "Basal anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-10-slide)

// Morphologie Freitext
Instance: mii-exa-test-data-patho-morph-text-10
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphologie Freitext Stanze 10"
Description: "Morphologie Freitext für Stanze 10"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "Benigne fibröse und glatte Muskulatur mit spärlichen Prostatadrüsen. Stromareiche Zone. Keine malignen Veränderungen."
* bodySite = $sct#716891004 "Basal anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-10-slide)

// STANZE 11 - Mikroskopische Befunde (Maligne - Gleason 3+4=7)
Instance: mii-exa-test-data-patho-histo-typ-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histologischer Typ Stanze 11"
Description: "Histologischer Typ ICD-O-3 für Stanze 11"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Morphologie Freitext
Instance: mii-exa-test-data-patho-morph-text-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphologie Freitext Stanze 11"
Description: "Morphologie Freitext für Stanze 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "Azinäres Adenokarzinom mit vorwiegend Gleason Pattern 3, gering fokal Gleason Pattern 4. Mäßig differenziertes Karzinom."
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Primäres Gleason Muster
Instance: mii-exa-test-data-patho-primaer-gleason-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Primäres Gleason Muster Stanze 11"
Description: "Primäres Gleason Muster für Stanze 11"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Sekundäres Gleason Muster
Instance: mii-exa-test-data-patho-sekundaer-gleason-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Sekundäres Gleason Muster Stanze 11"
Description: "Sekundäres Gleason Muster für Stanze 11"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Prozentualer Anteil Gleasonmuster 4/5
Instance: mii-exa-test-data-patho-prozent-gleason-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Prozentualer Anteil Gleasonmuster 4/5 Stanze 11"
Description: "Prozentualer Anteil Gleasonmuster 4/5 für Stanze 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area [Area Fraction] in Prostate tumor by Microscopy"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 15 '%' "%"
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Gradinggruppe nach ISUP 2014/WHO 2016
Instance: mii-exa-test-data-patho-gleason-grading-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Gradinggruppe ISUP Stanze 11"
Description: "Gradinggruppe nach ISUP 2014/WHO 2016 für Stanze 11"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Verhältnis positiver zu allen Stanzen
Instance: mii-exa-test-data-patho-verhaeltnis-positiver-stanzen-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Verhältnis positiver Stanzen 11"
Description: "Verhältnis positiver zu allen Stanzen für Stanze 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#372303007 "Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "7/12"
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Prozentualer Tumoranteil
Instance: mii-exa-test-data-patho-tumoranteil-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Prozentualer Tumoranteil Stanze 11"
Description: "Prozentualer Tumoranteil für Stanze 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $sct#385396009 "Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 25 '%' "%"
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Tumorbefall in Länge (mm)
Instance: mii-exa-test-data-patho-tumorbefallin-laenge-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumorbefall in Länge Stanze 11"
Description: "Tumorbefall für befallene Stanze in Länge in mm für Stanze 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#44618-7 "Total linear mm of carcinoma"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueQuantity = 2.8 'mm' "mm"
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Perineurale Infiltration
Instance: mii-exa-test-data-patho-perineurale-infiltration-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Perineurale Infiltration Stanze 11"
Description: "Perineurale Infiltration für Stanze 11"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Tumornachweis in Samenblasen
Instance: mii-exa-test-data-patho-tumornachweisin-samenblase-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumornachweis Samenblasen Stanze 11"
Description: "Tumornachweis in Samenblasen für Stanze 11"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Lymphovaskuläre Invasion
Instance: mii-exa-test-data-patho-lymphovaskulaere-invasion-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Lymphovaskuläre Invasion Stanze 11"
Description: "Lymphovaskuläre Invasion für Stanze 11"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Tumornachweis in periprostatischem Gewebe
Instance: mii-exa-test-data-patho-tumornachweis-in-fettgewebe-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Tumornachweis Fettgewebe Stanze 11"
Description: "Tumornachweis in periprostatischem Binde- und Fettgewebe für Stanze 11"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Intraduktales Karzinom
Instance: mii-exa-test-data-patho-intraduktales-karzinom-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Intraduktales Karzinom Stanze 11"
Description: "Intraduktales Karzinom für Stanze 11"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// ASAP
Instance: mii-exa-test-data-patho-asap-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "ASAP Stanze 11"
Description: "ASAP für Stanze 11"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// High-grade PIN
Instance: mii-exa-test-data-patho-high-grade-pin-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "High-grade PIN Stanze 11"
Description: "Begleitende High-grade-PIN für Stanze 11"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// Granulomatöse Prostatitis
Instance: mii-exa-test-data-patho-granulomatoese-prostatitis-11
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Granulomatöse Prostatitis Stanze 11"
Description: "Granulomatöse Prostatitis für Stanze 11"
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
* bodySite = $sct#716908000 "Middle anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-11-slide)

// =============================================================================
// STANZE 12 - Mikroskopische Befunde (Benigne)
// =============================================================================

// Histologischer Typ ICD-O-3
Instance: mii-exa-test-data-patho-histo-typ-12
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Histologischer Typ Stanze 12"
Description: "Histologischer Typ ICD-O-3 für Stanze 12"
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
* bodySite = $sct#716925003 "Apical anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-12-slide)

// Morphologie Freitext
Instance: mii-exa-test-data-patho-morph-text-12
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Morphologie Freitext Stanze 12"
Description: "Morphologie Freitext für Stanze 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#22635-7
* code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "Fibröse und glatte Muskulatur mit vereinzelten benignen Prostatadrüsen. Keine Atypien oder malignen Veränderungen."
* bodySite = $sct#716925003 "Apical anterior fibromuscular stroma of prostate"
* specimen = Reference(mii-exa-test-data-patho-specimen-12-slide)

