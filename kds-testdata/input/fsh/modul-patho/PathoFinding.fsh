Alias: $fhir-narrative-link = http://hl7.org/fhir/StructureDefinition/narrativeLink

// Patient-1
Instance: mii-exa-test-data-patient-1-patho-biopsy-site-a
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Biopsy Site A"
Description: "Biopsy site of Specimen A (1st punch)"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|1.0.0"
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22634-0 
* code.coding = $loinc#94738-2 "Biopsy site Patient"
* code.extension.url = $fhir-narrative-link
* code.extension.valueUrl = "#macro-a-biopsy-site-key"
* valueCodeableConcept = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* valueCodeableConcept.extension.url = $fhir-narrative-link
* valueCodeableConcept.extension.valueUrl = "#macro-a-biopsy-site-value"
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-attached-image)
* specimen = Reference(mii-exa-test-data-patient-1-patho-he-stained-slide-prostate)

Instance: mii-exa-test-data-patient-1-patho-tissue-length-a
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Tissue Length A"
Description: "Tissue length of Specimen A (1st punch)"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|1.0.0"
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22634-0 
* code.coding = $loinc#44619-5 "Length of tissue core(s)"
* code.extension.url = $fhir-narrative-link
* code.extension.valueUrl = "#macro-a-tissue-length-key"
* valueQuantity.value = 1.2
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm
* valueQuantity.extension.url = $fhir-narrative-link
* valueQuantity.extension.valueUrl = "#macro-a-tissue-length-value"
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-attached-image)
* specimen = Reference(mii-exa-test-data-patient-1-patho-he-stained-slide-prostate)

Instance: mii-exa-test-data-patient-1-patho-biopsy-site-b
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Biopsy Site B"
Description: "Biopsy site of Specimen B (2nd punch)"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|1.0.0"
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22634-0
* code.coding = $loinc#94738-2 "Biopsy site Patient"
* valueCodeableConcept = $sct#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-attached-image)

Instance: mii-exa-test-data-patient-1-patho-tissue-length-b
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Tissue Length B"
Description: "Tissue length of Specimen B (2nd punch)"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|1.0.0"
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22634-0 
* code.coding = $loinc#44619-5 "Length of tissue core(s)"
* valueQuantity.value = 1.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm 
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-attached-image)

Instance: mii-exa-test-data-patient-1-patho-histologic-type-a
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Histologic Type A"
Description: "[Microscopic Finding] Histologic type of Specimen A"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|1.0.0"
* status = #final 
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22635-7
* code = $sct#371441004 "Histologic type"
* valueCodeableConcept = $sct#45410002 "Acinar adenocarcinoma"
* specimen = Reference(mii-exa-test-data-patient-1-patho-he-stained-slide-prostate)

Instance: mii-exa-test-data-patient-1-patho-gleason-pattern-a
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Gleason Pattern A"
Description: "[Microscopic Finding] Gleason pattern.primary in prostate tumor for Specimen A"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|1.0.0"
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22635-7
* code = $loinc#44641-9 "Gleason pattern.primary in prostate tumor"
* valueCodeableConcept = $sct#369772003 "Gleason Pattern 3"
* specimen = Reference(mii-exa-test-data-patient-1-patho-he-stained-slide-prostate)

Instance: mii-exa-test-data-patient-1-patho-diagnostic-conclusion-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Diagnostic Conclusion 1"
Description: "Example for a diagnostic conclusion"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|1.0.0"
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22637-3
* code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* valueCodeableConcept = $icd-o-3#8140/3 "Adenokarzinom (azinär)"

Instance: mii-exa-test-data-patient-1-patho-diagnostic-conclusion-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Diagnostic Conclusion 2"
Description: "Example for diagnostic conclusion"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|1.0.0"
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22637-3 
* code = $loinc#35266-6 "Gleason score in Specimen Qualitative"
* valueCodeableConcept = $sct#57403001 "Gleason grade score 7"

Instance: mii-exa-test-data-patient-1-patho-diagnostic-conclusion-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Diagnostic Conclusion 3"
Description: "Example for diagnostic conclusion"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|1.0.0"
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* category[section-type].coding = $loinc#22637-3 
* code = $loinc#94734-1 "Prostate cancer grade group [Score] in Prostate tumor Qualitative"
* valueCodeableConcept = $loinc#LA9630-0 "Grade 2"
