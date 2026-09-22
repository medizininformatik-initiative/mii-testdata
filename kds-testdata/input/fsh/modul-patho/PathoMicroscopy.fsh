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