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
// vonSEBetroffen extension (required min=1)
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen"
* extension[=].valueCodeableConcept = $sct#373066001 "Yes"
* status = #completed
* patient = Reference(mii-exa-test-data-patient-3)
* relationship = $sct#65656005 "Natural mother"
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
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen"
* extension[=].valueCodeableConcept = $sct#373067005 "No"
* status = #completed
* patient = Reference(mii-exa-test-data-patient-3)
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
