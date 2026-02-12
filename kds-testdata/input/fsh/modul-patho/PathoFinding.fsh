// -------------------------------------------------------
// Patho Findings for Patient-1: Prostate Biopsy
// -------------------------------------------------------
// Section-type category codes (from mii-vs-patho-section-types-loinc):
//   22634-0 = Pathology report gross observation
//   22635-7 = Pathology report microscopic observation
//   22637-3 = Pathology report final diagnosis

// =====================================================
// MACROSCOPIC FINDINGS
// =====================================================

// Macro Finding 1: Biopsy site
Instance: mii-exa-test-data-patient-1-patho-macro-finding-1
InstanceOf: mii-pr-patho-finding
Usage: #example
Description: "Patho Makro-Befund: Entnahmeort der Prostata-Stanzbiopsie"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22634-0 "Pathology report gross observation Narrative"
* code.coding = $loinc#94738-2 "Biopsy site Patient"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* valueCodeableConcept = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* specimen = Reference(mii-exa-test-data-patient-1-patho-specimen-1)
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-image-1)

// Macro Finding 2: Tissue core length
Instance: mii-exa-test-data-patient-1-patho-macro-finding-2
InstanceOf: mii-pr-patho-finding
Usage: #example
Description: "Patho Makro-Befund: Stanzzylinderlänge"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22634-0 "Pathology report gross observation Narrative"
* code.coding = $loinc#44619-5 "Length of tissue core(s)"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* valueQuantity.value = 1.2
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm
* specimen = Reference(mii-exa-test-data-patient-1-patho-specimen-1)
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-image-1)

// =====================================================
// MICROSCOPIC FINDINGS
// =====================================================

// Micro Finding 1: Histologic type
Instance: mii-exa-test-data-patient-1-patho-micro-finding-1
InstanceOf: mii-pr-patho-finding
Usage: #example
Description: "Patho Mikro-Befund: Histologischer Typ - Azinäres Adenokarzinom"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22635-7 "Pathology report microscopic observation Narrative Other stain"
* code = $sct#371441004 "Histologic type of proliferative mass"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* valueCodeableConcept = $sct#45410002 "Acinar cell carcinoma"
* specimen = Reference(mii-exa-test-data-patient-1-patho-specimen-2)
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-image-2)

// Micro Finding 2: Gleason pattern primary
Instance: mii-exa-test-data-patient-1-patho-micro-finding-2
InstanceOf: mii-pr-patho-finding
Usage: #example
Description: "Patho Mikro-Befund: Primaeres Gleason-Muster 3"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22635-7 "Pathology report microscopic observation Narrative Other stain"
* code.coding = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* valueCodeableConcept = $sct#369772003 "Gleason Pattern 3 (finding)"
* specimen = Reference(mii-exa-test-data-patient-1-patho-specimen-2)
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-image-2)

// Micro Finding 3: Gleason pattern secondary
Instance: mii-exa-test-data-patient-1-patho-micro-finding-3
InstanceOf: mii-pr-patho-finding
Usage: #example
Description: "Patho Mikro-Befund: Sekundaeres Gleason-Muster 4"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22635-7 "Pathology report microscopic observation Narrative Other stain"
* code.coding = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* valueCodeableConcept = $sct#369773008 "Gleason Pattern 4 (finding)"
* specimen = Reference(mii-exa-test-data-patient-1-patho-specimen-2)
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-image-2)

// =====================================================
// DIAGNOSTIC CONCLUSION FINDINGS
// =====================================================

// Diagnostic Conclusion 1: ICD-O-3 Morphology
Instance: mii-exa-test-data-patient-1-patho-diagnostic-finding-1
InstanceOf: mii-pr-patho-finding
Usage: #example
Description: "Patho Diagnose: ICD-O-3 Morphologie - Azinäres Adenokarzinom"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22637-3 "Pathology report final diagnosis Narrative"
* code.coding = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* valueCodeableConcept = $icd-o-3#8140/3 "Adenokarzinom o.n.A."

// Diagnostic Conclusion 2: Gleason score
Instance: mii-exa-test-data-patient-1-patho-diagnostic-finding-2
InstanceOf: mii-pr-patho-finding
Usage: #example
Description: "Patho Diagnose: Gleason-Score 3+4=7"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22637-3 "Pathology report final diagnosis Narrative"
* code.coding = $loinc#35266-6 "Gleason score in Specimen Qualitative"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* valueCodeableConcept = $sct#57403001 "Gleason grade score 7 out of 10"

// Diagnostic Conclusion 3: ISUP Grade Group
Instance: mii-exa-test-data-patient-1-patho-diagnostic-finding-3
InstanceOf: mii-pr-patho-finding
Usage: #example
Description: "Patho Diagnose: ISUP Gradgruppe 2"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22637-3 "Pathology report final diagnosis Narrative"
* code.coding = $loinc#94734-1 "Prostate cancer grade group [Score] in Prostate tumor Qualitative"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* valueCodeableConcept = $loinc#LA9630-0 "Grade 2"

// =====================================================
// INTRAOPERATIVE FINDING
// =====================================================

// Intraoperative Finding 1: Frozen section tumor detection
Instance: mii-exa-test-data-patient-1-patho-intraop-finding-1
InstanceOf: mii-pr-patho-finding
Usage: #example
Description: "Patho Intraoperativer Befund: Schnellschnitt-Tumornachweis"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#83321-0 "Pathology report intraoperative observation in Specimen Document"
* code.coding = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15"
* valueString = "Karzinominfiltrate im Schnellschnitt nachweisbar"
* specimen = Reference(mii-exa-test-data-patient-1-patho-specimen-1)

// =====================================================
// ADDITIONAL SPECIFIED FINDING
// =====================================================

// Additional Finding 1: AMACR immunohistochemistry
Instance: mii-exa-test-data-patient-1-patho-additional-finding-1
InstanceOf: mii-pr-patho-finding
Usage: #example
Description: "Patho Zusatzbefund: AMACR Immunhistochemie positiv"
* insert TestDataLabel
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#100969-5 "Pathology report additional specified observation in Specimen Narrative"
* code.coding = $loinc#74119-9 "P504S Ag [Presence] in Tissue by Immune stain"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* specimen = Reference(mii-exa-test-data-patient-1-patho-specimen-2)
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-image-2)
