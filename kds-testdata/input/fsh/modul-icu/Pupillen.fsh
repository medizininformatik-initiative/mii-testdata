// ============================================================================
// ICU - Untersuchung Pupillenbefund (Grouper + Einzelbefunde)
// Neurologischer Status 2024-05-06, 07:30 Uhr: Anisokorie als Nebenbefund
// (rechte Pupille 3 mm prompt lichtreagibel, linke Pupille 5 mm traege).
// Der Pupillenbefund-Grouper verlangt hasMember 9/9:
// 2x Form, 2x Groesse, 2x Lichtreaktion direkt, 2x indirekt, 1x Symmetrie.
// ============================================================================

Instance: mii-exa-test-data-patient-1-icu-pupille-befund-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenbefund
Usage: #example
Description: "ICU Pupillenbefund: Grouper mit 9 Einzelbefunden (Anisokorie)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding[Snomed] = $sct#247010007 "Pupil finding (finding)"
* code.coding[Loinc] = $loinc#80310-6 "Pupil assessment panel"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T07:30:00+02:00"
* hasMember[PupillenlichtreaktionDirekt][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-licht-dir-re-1)
* hasMember[PupillenlichtreaktionDirekt][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-licht-dir-li-1)
* hasMember[PupillenlichtreaktionIndirekt][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-licht-ind-re-1)
* hasMember[PupillenlichtreaktionIndirekt][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-licht-ind-li-1)
* hasMember[Pupillengroesse][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-groesse-re-1)
* hasMember[Pupillengroesse][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-groesse-li-1)
* hasMember[Pupillenform][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-form-re-1)
* hasMember[Pupillenform][+] = Reference(mii-exa-test-data-patient-1-icu-pupille-form-li-1)
* hasMember[Pupillensymmetrie] = Reference(mii-exa-test-data-patient-1-icu-pupille-symmetrie-1)
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-befund-1"

// --- Pupillenform (rechts / links) ---
Instance: mii-exa-test-data-patient-1-icu-pupille-form-re-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenform
Usage: #example
Description: "ICU Pupillenbefund: Pupillenform rechts rund"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#363954009 "Pupil shape"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T07:30:00+02:00"
* valueCodeableConcept.coding[Loinc] = $loinc#LA24884-1 "Round"
* bodySite = $sct#52378001 "Structure of pupil of right eye"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-form-re-1"

Instance: mii-exa-test-data-patient-1-icu-pupille-form-li-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenform
Usage: #example
Description: "ICU Pupillenbefund: Pupillenform links rund"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#363954009 "Pupil shape"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T07:30:00+02:00"
* valueCodeableConcept.coding[Loinc] = $loinc#LA24884-1 "Round"
* bodySite = $sct#16089004 "Structure of pupil of left eye"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-form-li-1"

// --- Pupillengroesse (rechts / links) ---
Instance: mii-exa-test-data-patient-1-icu-pupille-groesse-re-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillengroesse
Usage: #example
Description: "ICU Pupillenbefund: Pupillengroesse rechts 3 mm"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#363953003 "Size of pupil"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T07:30:00+02:00"
* valueQuantity = 3 'mm' "mm"
* bodySite = $sct#52378001 "Structure of pupil of right eye"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-groesse-re-1"

Instance: mii-exa-test-data-patient-1-icu-pupille-groesse-li-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillengroesse
Usage: #example
Description: "ICU Pupillenbefund: Pupillengroesse links 5 mm (Anisokorie)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#363953003 "Size of pupil"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T07:30:00+02:00"
* valueQuantity = 5 'mm' "mm"
* bodySite = $sct#16089004 "Structure of pupil of left eye"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-groesse-li-1"

// --- Pupillenlichtreaktion direkt (rechts / links) ---
Instance: mii-exa-test-data-patient-1-icu-pupille-licht-dir-re-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenlichtreaktion-direkt
Usage: #example
Description: "ICU Pupillenbefund: direkte Lichtreaktion rechts prompt"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#45832002
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T07:30:00+02:00"
* valueCodeableConcept.coding[Loinc] = $loinc#LA25441-9 "Reactive to light"
* bodySite = $sct#52378001 "Structure of pupil of right eye"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-licht-dir-re-1"

Instance: mii-exa-test-data-patient-1-icu-pupille-licht-dir-li-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenlichtreaktion-direkt
Usage: #example
Description: "ICU Pupillenbefund: direkte Lichtreaktion links traege"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#45832002
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T07:30:00+02:00"
* valueCodeableConcept.coding[Loinc] = $loinc#LA24899-9 "Sluggishly reactive to light"
* bodySite = $sct#16089004 "Structure of pupil of left eye"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-licht-dir-li-1"

// --- Pupillenlichtreaktion indirekt (rechts / links) ---
Instance: mii-exa-test-data-patient-1-icu-pupille-licht-ind-re-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenlichtreaktion-indirekt
Usage: #example
Description: "ICU Pupillenbefund: indirekte (konsensuelle) Lichtreaktion rechts prompt"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#84917001
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T07:30:00+02:00"
* valueCodeableConcept.coding[Loinc] = $loinc#LA25441-9 "Reactive to light"
* bodySite = $sct#52378001 "Structure of pupil of right eye"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-licht-ind-re-1"

Instance: mii-exa-test-data-patient-1-icu-pupille-licht-ind-li-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenlichtreaktion-indirekt
Usage: #example
Description: "ICU Pupillenbefund: indirekte (konsensuelle) Lichtreaktion links traege"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#84917001
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T07:30:00+02:00"
* valueCodeableConcept.coding[Loinc] = $loinc#LA24899-9 "Sluggishly reactive to light"
* bodySite = $sct#16089004 "Structure of pupil of left eye"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-licht-ind-li-1"

// --- Pupillensymmetrie ---
Instance: mii-exa-test-data-patient-1-icu-pupille-symmetrie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillensymmetrie
Usage: #example
Description: "ICU Pupillenbefund: Pupillensymmetrie - Anisokorie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $observation-category#exam "Exam"
* code.coding = $sct#301942005 "Finding of proportion of pupil (finding)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-06T07:30:00+02:00"
// Upstream-Defekt: value[x]:valueCodeableConcept.coding ist "closed" gesliced,
// ohne dass Slices definiert sind — ein kodierter Wert (Anisokorie, SCT 13045009)
// kann daher nicht profilkonform abgelegt werden; stattdessen dataAbsentReason.
// Der Befund selbst steckt in den beiden Pupillengroesse-Instanzen (3 mm / 5 mm).
// Details: docs/research-icu-scores.md
* dataAbsentReason = $data-absent-reason#unsupported "Unsupported"
* bodySite.coding = $sct#67019001 "Structure of pupil of both eyes (body structure)"
* identifier.system = "https://www.charite.de/fhir/sid/icu-observation-id"
* identifier.value = "icu-pupille-symmetrie-1"
