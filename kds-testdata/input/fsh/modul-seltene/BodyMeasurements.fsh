// ============================================================================
// Seltene Erkrankungen - Body Measurements
// BMI, Kopfumfang, Hueftumfang, Taillenumfang, Blutgruppe
// Maximum MS element coverage for Patient-3
// ============================================================================

// --- BMI ---
Instance: mii-exa-test-data-patient-3-seltene-bmi-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-bodymassindex
Usage: #example
Description: "BMI Observation - all MS elements"
* insert TestDataLabel
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* effectiveDateTime = "2025-03-10T10:00:00+01:00"
* valueQuantity.value = 19.2
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = $ucum
* valueQuantity.code = #kg/m2

// --- Kopfumfang ---
Instance: mii-exa-test-data-patient-3-seltene-kopfumfang-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-kopfumfang
Usage: #example
Description: "Kopfumfang Observation - all MS elements"
* insert TestDataLabel
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#9843-4 "Head Occipital-frontal circumference"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* effectiveDateTime = "2025-03-10T10:00:00+01:00"
* valueQuantity.value = 57.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm

// --- Hueftumfang ---
Instance: mii-exa-test-data-patient-3-seltene-hueftumfang-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang
Usage: #example
Description: "Hueftumfang Observation - all MS elements"
* insert TestDataLabel
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#56063-1 "Circumference.at maximal protrusion of gluteus muscles Pelvis"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* effectiveDateTime = "2025-03-10T10:00:00+01:00"
* valueQuantity.value = 88
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm

// --- Taillenumfang ---
Instance: mii-exa-test-data-patient-3-seltene-taillenumfang-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-taillenumfang
Usage: #example
Description: "Taillenumfang Observation - all MS elements"
* insert TestDataLabel
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8280-0 "Waist Circumference at umbilicus by Tape measure"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* effectiveDateTime = "2025-03-10T10:00:00+01:00"
* valueQuantity.value = 74
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm

// --- Blutgruppe: ALL MS elements including both code slices and SNOMED+LOINC value coding ---
Instance: mii-exa-test-data-patient-3-seltene-blutgruppe-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-blutgruppe
Usage: #example
Description: "Blutgruppe Observation: A Rh(D) positive - all MS elements, both code and value slices"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-blutgruppe|2026.0.1"
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
// Both LOINC code slices: abo-rh AND abo
* code.coding[+] = $loinc#882-1 "ABO and Rh group [Type] in Blood"
* code.coding[+] = $loinc#883-9 "ABO group [Type] in Blood"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* effectiveDateTime = "2025-03-10T10:00:00+01:00"
// value with both LOINC and SNOMED coding slices + text
* valueCodeableConcept.coding[+] = $loinc#LA21325-8 "A Pos"
* valueCodeableConcept.coding[+] = $sct#278149003 "Blood group A Rh(D) positive (finding)"
* valueCodeableConcept.text = "A Rh(D) positiv"
