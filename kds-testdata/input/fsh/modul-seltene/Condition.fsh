// ============================================================================
// Seltene Erkrankungen - Conditions
// Clinical Diagnosis, Genetic Diagnosis, Symptom Condition
// Maximum MS element coverage for Patient-3
// ============================================================================

// =============================================================================
// Clinical Diagnosis: Marfan syndrome - ALL MS elements populated
// =============================================================================
Instance: mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis
Usage: #example
Description: "Clinical Diagnosis: Marfan syndrome - maximum MS element coverage"
* insert TestDataLabel
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $cs-hl7-condition-category#encounter-diagnosis
* severity = $sct#24484000 "Severe"
// code with icd10-gm, sct, orphanet, AND hpo slices
* code.coding[+] = $sct#19346006 "Marfan syndrome"
* code.coding[+] = $orpha#558 "Marfan syndrome"
* code.coding[+] = $icd-10-gm#Q87.4 "Marfan-Syndrom"
* code.coding[+] = $HPO#HP:0003549 "Connective tissue abnormality"
* code.text = "Marfan-Syndrom, klinisch diagnostiziert nach Ghent-Kriterien"
* bodySite = $sct#113257007 "Structure of cardiovascular system"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* onsetAge.value = 28
* onsetAge.unit = "years"
* onsetAge.system = $ucum
* onsetAge.code = #a
* abatementString = "Lebenslange Erkrankung, keine Remission erwartet"
* recordedDate = "2025-03-10"
* recorder = Reference(mii-exa-test-data-practitioner-physician-1)
* asserter = Reference(mii-exa-test-data-practitioner-physician-2)
* stage[+].type = $sct#260998006 "Clinical staging"
* stage[=].assessment = Reference(mii-exa-test-data-patient-3-seltene-clinical-impression-1)
* evidence[+].code = $HPO#HP:0002616 "Aortic root aneurysm"
* evidence[=].detail = Reference(mii-exa-test-data-patient-3-seltene-hpo-assessment-1)
* evidence[+].code = $HPO#HP:0001083 "Ectopia lentis"
* evidence[=].detail = Reference(mii-exa-test-data-patient-3-seltene-hpo-assessment-3)
* evidence[+].code = $HPO#HP:0000098 "Tall stature"
* evidence[=].detail = Reference(mii-exa-test-data-patient-3-seltene-hpo-assessment-4)
* note.text = "Klinische Diagnose basierend auf Ghent-Kriterien. Patient erfuellt Major-Kriterien im kardiovaskulaeren und ophthalmologischen System."

// =============================================================================
// Genetic Diagnosis: Marfan syndrome - ALL MS elements including penetrance
// =============================================================================
Instance: mii-exa-test-data-patient-3-seltene-genetic-diagnosis-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis
Usage: #example
Description: "Genetic Diagnosis: Marfan syndrome (FBN1 variant) - maximum MS element coverage including penetrance"
* insert TestDataLabel
// Penetrance extension (CodeableConcept variant)
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance"
* extension[=].valueCodeableConcept = $HPO#HP:0003829 "Incomplete penetrance"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $sct#782964007 "Genetic disease"
* severity = $sct#6736007 "Moderate"
// code with OMIM, SNOMED, Orphanet
* code.coding[+] = $OMIM#154700 "Marfan syndrome"
* code.coding[+] = $sct#19346006 "Marfan syndrome"
* code.coding[+] = $orpha#558 "Marfan syndrome"
* code.text = "Marfan-Syndrom, genetisch bestaetigt (FBN1-Variante)"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* onsetAge.value = 28
* onsetAge.unit = "years"
* onsetAge.system = $ucum
* onsetAge.code = #a
* abatementString = "Chronisch, genetisch bedingt"
* recordedDate = "2025-04-15"
* recorder = Reference(mii-exa-test-data-practitioner-physician-1)
* asserter = Reference(mii-exa-test-data-practitioner-physician-2)
* stage[+].type = $sct#260998006 "Clinical staging"
* stage[=].assessment = Reference(mii-exa-test-data-patient-3-seltene-clinical-impression-1)
// Evidence with genetic finding code AND detail references to MolGen
* evidence[+].code.coding[+] = $sct#106221001 "Genetic finding"
* evidence[=].detail[+] = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* evidence[=].detail[+] = Reference(mii-exa-test-data-patient-3-molgen-befundbericht-1)
* note.text = "Pathogene Variante im FBN1-Gen molekulargenetisch nachgewiesen. Diagnose genetisch gesichert. Unvollstaendige Penetranz dokumentiert."

// =============================================================================
// Symptom Condition 1: Tall stature - ALL 4 code slices + all optional fields
// =============================================================================
Instance: mii-exa-test-data-patient-3-seltene-symptom-condition-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition
Usage: #example
Description: "Symptom Condition: Tall stature - all 4 code slices (HPO, SNOMED, ICD-10-GM, MONDO), all MS elements"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/seltene-symptom"
* identifier[=].value = "SE-SYMPTOM-2025-001"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $cs-hl7-condition-category#problem-list-item "Problem List Item"
* severity = $HPO#HP:0012825 "Mild"
// All 4 coding slices populated
* code.coding[+] = $HPO-OBO#HP:0000098 "Tall stature"
* code.coding[+] = $sct#15456002 "Tall stature"
* code.coding[+] = $icd-10-gm#E34.4 "Konstitutioneller Hochwuchs"
* code.coding[+] = $MONDO#MONDO:0007064 "Marfan syndrome"
* code.text = "Hochwuchs bei Marfan-Syndrom"
* bodySite = $sct#38266002 "Entire body"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* onsetAge.value = 14
* onsetAge.unit = "years"
* onsetAge.system = $ucum
* onsetAge.code = #a
* recordedDate = "2025-03-10"
* stage[+].summary = $HPO#HP:0012825 "Mild"
* evidence[+].code = $HPO#HP:0000098 "Tall stature"
* evidence[=].detail = Reference(mii-exa-test-data-patient-3-seltene-hpo-assessment-4)
* note.text = "Hochwuchs seit der Adoleszenz, typisch fuer Marfan-Syndrom. 195 cm bei Alter 30."

// =============================================================================
// Symptom Condition 2: Aortic root dilatation - tests onsetDateTime and abatementDateTime
// =============================================================================
Instance: mii-exa-test-data-patient-3-seltene-symptom-condition-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition
Usage: #example
Description: "Symptom Condition: Aortic root dilatation - tests onsetDateTime/abatementDateTime slices"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/seltene-symptom"
* identifier[=].value = "SE-SYMPTOM-2025-002"
* clinicalStatus = $condition-clinical#inactive "Inactive"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $cs-hl7-condition-category#problem-list-item "Problem List Item"
* severity = $HPO#HP:0012828 "Severe"
* code.coding[+] = $HPO-OBO#HP:0002616 "Aortic root aneurysm"
* code.coding[+] = $sct#128599005 "Structural disorder of heart"
* code.text = "Aortenwurzeldilatation"
* bodySite = $sct#57034009 "Aortic root structure"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* onsetDateTime = "2024-06-15"
* abatementDateTime = "2025-06-01"
* recordedDate = "2024-06-15"
* stage[+].summary = $HPO#HP:0012828 "Severe"
* evidence[+].code = $HPO#HP:0002616 "Aortic root aneurysm"
* evidence[=].detail = Reference(mii-exa-test-data-patient-3-seltene-hpo-assessment-1)
* note.text = "Nach operativer Korrektur inaktiv."
