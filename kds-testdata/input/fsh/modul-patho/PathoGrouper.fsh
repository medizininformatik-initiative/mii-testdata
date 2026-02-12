// -------------------------------------------------------
// Patho Groupers for Patient-1: Prostate Biopsy
// -------------------------------------------------------

// =====================================================
// MACROSCOPIC GROUPER
// =====================================================
Instance: mii-exa-test-data-patient-1-patho-macroscopic-grouper-1
InstanceOf: mii-pr-patho-macroscopic-grouper
Usage: #example
Description: "Patho Makroskopischer Grouper: Prostata-Stanzbiopsie A"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* code.coding = $loinc#22634-0 "Pathology report gross observation Narrative"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* specimen = Reference(mii-exa-test-data-patient-1-patho-specimen-1)
* hasMember[pathology-finding][+] = Reference(mii-exa-test-data-patient-1-patho-macro-finding-1)
* hasMember[pathology-finding][+] = Reference(mii-exa-test-data-patient-1-patho-macro-finding-2)
* valueString = "Probe A: 1,2 cm langer weisslicher Gewebszylinder aus dem rechten lateralen Prostataseitenlappen peripher"

// =====================================================
// MICROSCOPIC GROUPER
// =====================================================
Instance: mii-exa-test-data-patient-1-patho-microscopic-grouper-1
InstanceOf: mii-pr-patho-microscopic-grouper
Usage: #example
Description: "Patho Mikroskopischer Grouper: Prostata-Stanzbiopsie A"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* code.coding = $loinc#22635-7 "Pathology report microscopic observation Narrative Other stain"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* specimen = Reference(mii-exa-test-data-patient-1-patho-specimen-2)
* hasMember[pathology-finding][+] = Reference(mii-exa-test-data-patient-1-patho-micro-finding-1)
* hasMember[pathology-finding][+] = Reference(mii-exa-test-data-patient-1-patho-micro-finding-2)
* hasMember[pathology-finding][+] = Reference(mii-exa-test-data-patient-1-patho-micro-finding-3)
* valueString = "Prostatastanze mit herdfoermiger kontinuierlicher Infiltration durch unscharf begrenzte Verbaende eines kleintubulär wachsenden Adenokarzinoms (Gleason-Muster 3), stellenweise mit fusionierten Druesen (Gleason-Muster 4), ca. 40% der Schnittflaeche des Zylinders einnehmend"

// =====================================================
// DIAGNOSTIC CONCLUSION GROUPER
// =====================================================
Instance: mii-exa-test-data-pat1-patho-diag-concl-grouper-1
InstanceOf: mii-pr-patho-diagnostic-conclusion-grouper
Usage: #example
Description: "Patho Diagnostische Schlussfolgerung: Prostata-Adenokarzinom, Gleason 3+4=7, ISUP 2"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* code.coding = $loinc#22637-3 "Pathology report final diagnosis Narrative"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* hasMember[pathology-finding][+] = Reference(mii-exa-test-data-patient-1-patho-diagnostic-finding-1)
* hasMember[pathology-finding][+] = Reference(mii-exa-test-data-patient-1-patho-diagnostic-finding-2)
* hasMember[pathology-finding][+] = Reference(mii-exa-test-data-patient-1-patho-diagnostic-finding-3)
* derivedFrom[grouper-observation][+] = Reference(mii-exa-test-data-patient-1-patho-macroscopic-grouper-1)
* derivedFrom[grouper-observation][+] = Reference(mii-exa-test-data-patient-1-patho-microscopic-grouper-1)

// =====================================================
// INTRAOPERATIVE GROUPER
// =====================================================
Instance: mii-exa-test-data-patient-1-patho-intraoperative-grouper-1
InstanceOf: mii-pr-patho-intraoperative-grouper
Usage: #example
Description: "Patho Intraoperativer Grouper: Schnellschnittbefund Prostata-Stanzbiopsie"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* code.coding = $loinc#83321-0 "Pathology report intraoperative observation in Specimen Document"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15"
* specimen = Reference(mii-exa-test-data-patient-1-patho-specimen-1)
* hasMember[pathology-finding][+] = Reference(mii-exa-test-data-patient-1-patho-intraop-finding-1)
* valueString = "Schnellschnittbefund: Tumornachweis in der Stanzbiopsie aus dem rechten Prostataseitenlappen"

// =====================================================
// ADDITIONAL SPECIFIED GROUPER
// =====================================================
Instance: mii-exa-test-data-patient-1-patho-additional-grouper-1
InstanceOf: mii-pr-patho-additional-specified-grouper
Usage: #example
Description: "Patho Zusaetzlicher Grouper: Ergaenzende immunhistochemische Befunde"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* code.coding = $loinc#100969-5 "Pathology report additional specified observation in Specimen Narrative"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* specimen = Reference(mii-exa-test-data-patient-1-patho-specimen-2)
* hasMember[pathology-finding][+] = Reference(mii-exa-test-data-patient-1-patho-additional-finding-1)
* valueString = "Immunhistochemische Zusatzuntersuchung: AMACR positiv in den Tumorzellen, Basalzellmarker (p63) negativ"
