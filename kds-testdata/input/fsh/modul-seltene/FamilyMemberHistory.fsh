// ============================================================================
// Seltene Erkrankungen - Familienanamnese (FamilyMemberHistory)
// Maximum MS element coverage for Patient-3
// ============================================================================

// Familienanamnese 1: Mother affected by rare disease - all MS elements
Instance: mii-exa-test-data-patient-3-seltene-familienanamnese-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese
Usage: #example
Description: "Familienanamnese: Mother with Marfan syndrome - all MS elements including penetrance, mondo, deceased"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
// vonSEBetroffen extension (required min=1)
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen"
* extension[=].valueCodeableConcept = $sct#373066001 "Yes"
* status = #completed
* date = "2025-03-10"
* patient = Reference(mii-exa-test-data-seltene-patient-1)
* relationship.coding[snomed] = $sct#65656005 "Natural mother"
* relationship.coding[snomed].extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-verwandtschaftsgrad"
* relationship.coding[snomed].extension[0].valueCoding = $sct#125678001 "First degree blood relative (person)"
* relationship.coding[snomed].extension[1].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-verwandtschaftsverhaeltnis"
* relationship.coding[snomed].extension[1].valueCoding = $sct#13646006 "Natural parent (person)"
* relationship.coding[snomed].extension[2].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-familiare-linie"
* relationship.coding[snomed].extension[2].valueCoding = $sct#72705000 "Mother (person)"
* sex = http://hl7.org/fhir/administrative-gender#female
* bornDate = "1960"
* deceasedBoolean = false
// Condition 1 with mondo coding, penetrance extension, contributedToDeath, onsetAge
* condition[+].extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance"
* condition[=].extension[=].valueCodeableConcept = $HPO#HP:0003829 "Incomplete penetrance"
* condition[=].code.coding[+] = $icd-10-gm#Q87.4 "Marfan-Syndrom"
* condition[=].code.coding[=].version = "2024"
* condition[=].code.coding[+] = $orpha#558 "Marfan syndrome"
* condition[=].code.coding[+] = $MONDO#MONDO:0007064 "Marfan syndrome"
* condition[=].contributedToDeath = false
* condition[=].onsetAge.value = 25
* condition[=].onsetAge.unit = "years"
* condition[=].onsetAge.system = $ucum
* condition[=].onsetAge.code = #a
// Condition 2: Cardiovascular complication
* condition[+].code.coding[+] = $icd-10-gm#I71.2 "Aneurysma der Aorta thoracica, ohne Angabe einer Ruptur"
* condition[=].code.coding[=].version = "2024"
* condition[=].code.coding[+] = $sct#233985008 "Abdominal aortic aneurysm"
* condition[=].contributedToDeath = false
* condition[=].onsetAge.value = 50
* condition[=].onsetAge.unit = "years"
* condition[=].onsetAge.system = $ucum
* condition[=].onsetAge.code = #a

// Familienanamnese 2: Father not affected - tests deceasedAge, vonSEBetroffen=No
Instance: mii-exa-test-data-patient-3-seltene-familienanamnese-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese
Usage: #example
Description: "Familienanamnese: Father not affected - tests vonSEBetroffen=No, deceasedAge"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen"
* extension[=].valueCodeableConcept = $sct#373067005 "No"
* status = #completed
* patient = Reference(mii-exa-test-data-seltene-patient-1)
* relationship = $sct#66839005 "Father"
* sex = http://hl7.org/fhir/administrative-gender#male
* bornDate = "1957"
* deceasedAge.value = 72
* deceasedAge.unit = "years"
* deceasedAge.system = $ucum
* deceasedAge.code = #a
* condition[+].code.coding[+] = $icd-10-gm#I25.1 "Atherosklerotische Herzkrankheit"
* condition[=].code.coding[=].version = "2024"
* condition[=].contributedToDeath = true
* condition[=].onsetAge.value = 60
* condition[=].onsetAge.unit = "years"
* condition[=].onsetAge.system = $ucum
* condition[=].onsetAge.code = #a

// Familienanamnese 3: Bruder - tests age[x] (statt born[x]), date, reasonCode,
// reasonReference (Anlass: gesicherte Marfan-Diagnose des Patienten)
Instance: mii-exa-test-data-patient-3-seltene-familienanamnese-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese
Usage: #example
Description: "Familienanamnese: Bruder, bisher nicht betroffen - tests age[x], date, reasonCode, reasonReference"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen"
* extension[=].valueCodeableConcept = $sct#373067005 "No"
* status = #completed
* date = "2025-03-10"
* patient = Reference(mii-exa-test-data-seltene-patient-1)
* reasonCode.coding[+] = $sct#19346006 "Marfan syndrome"
* reasonCode.coding[+] = $icd-10-gm#Q87.4 "Marfan-Syndrom"
* reasonCode.coding[=].version = "2025"
* reasonReference = Reference(mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1)
* relationship = $sct#60614009 "Natural brother"
* sex = http://hl7.org/fhir/administrative-gender#male
* ageAge = 27 'a' "Jahre"
