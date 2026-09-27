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
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* extension[Feststellungsdatum].url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension[Feststellungsdatum].valueDateTime = "2025-03-10"
* category = $cs-hl7-condition-category#encounter-diagnosis
* severity = $sct#24484000 "Severe"
// code with icd10-gm, sct, orphanet, AND hpo slices
* code.coding[+] = $sct#19346006 "Marfan syndrome"
* code.coding[+] = $orpha#558 "Marfan syndrome"
* code.coding[+] = $icd-10-gm#Q87.4 "Marfan-Syndrom"
* code.coding[=].version = "2024"
* code.coding[=].extension[0].url = "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit"
* code.coding[=].extension[0].valueCoding = $diagnosesicherheit#G "gesicherte Diagnose"
* code.coding[=].extension[1].url = "http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen"
* code.coding[=].extension[1].valueCoding = $mehrfachcodierungs-kennzeichen#! "!"
* code.coding[=].extension[2].url = "http://fhir.de/StructureDefinition/seitenlokalisation"
* code.coding[=].extension[2].valueCoding = $seitenlokalisation#U "unbekannt"
* code.coding[+] = $HPO#HP:0003549 "Abnormality of connective tissue"
* code.text = "Marfan-Syndrom, klinisch diagnostiziert nach Ghent-Kriterien"
* bodySite = $sct#113257007 "Structure of cardiovascular system"
* bodySite.coding[0].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* encounter = Reference(mii-exa-test-data-seltene-encounter-1)
* onsetAge.value = 28
* onsetAge.unit = "years"
* onsetAge.system = $ucum
* onsetAge.code = #a
* onsetAge.extension[0].url = "http://fhir.de/StructureDefinition/lebensphase"
* onsetAge.extension[0].valueCodeableConcept = $sct#41847000 "Adulthood (qualifier value)"
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
// Clinical Diagnosis 2: Ectopia lentis bei Marfan - abatement-Variante (Age)
// mit ReferenzPrimaerdiagnose auf die Marfan-Hauptdiagnose
// =============================================================================
Instance: mii-exa-test-data-patient-3-seltene-clinical-diagnosis-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis
Usage: #example
Description: "Clinical Diagnosis: Ectopia lentis bei Marfan-Syndrom, nach Lensektomie behoben (abatementAge-Variante)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* clinicalStatus = $condition-clinical#resolved
* verificationStatus = $condition-ver-status#confirmed
* extension[Feststellungsdatum].url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension[Feststellungsdatum].valueDateTime = "2023-05-04"
* extension[ReferenzPrimaerdiagnose].url = "http://hl7.org/fhir/StructureDefinition/condition-related"
* extension[ReferenzPrimaerdiagnose].valueReference = Reference(mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1)
* category = $cs-hl7-condition-category#encounter-diagnosis
* code.coding[+] = $sct#77638001 "Ectopia lentis (disorder)"
* code.coding[+] = $icd-10-gm#H27.1 "Linsenluxation"
* code.coding[=].version = "2023"
* code.coding[=].extension[0].url = "http://fhir.de/StructureDefinition/seitenlokalisation"
* code.coding[=].extension[0].valueCoding = $seitenlokalisation#B "beiderseits"
* code.text = "Linsenluxation beidseits bei Marfan-Syndrom, nach Lensektomie behoben"
* bodySite = $sct#78076003 "Structure of crystalline lens (body structure)"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* encounter = Reference(mii-exa-test-data-seltene-encounter-1)
* onsetAge = 25 'a' "Jahre"
* abatementAge = 29 'a' "Jahre"
* abatementAge.extension[0].url = "http://fhir.de/StructureDefinition/lebensphase"
* abatementAge.extension[0].valueCodeableConcept = $sct#41847000 "Adulthood (qualifier value)"
* recordedDate = "2023-05-04"
* note.text = "Beidseitige Linsenluxation, operativ versorgt (Lensektomie mit IOL); seither behoben."

// =============================================================================
// Genetic Diagnosis: Marfan syndrome - ALL MS elements including penetrance
// =============================================================================
Instance: mii-exa-test-data-patient-3-seltene-genetic-diagnosis-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis
Usage: #example
Description: "Genetic Diagnosis: Marfan syndrome (FBN1 variant) - maximum MS element coverage including penetrance"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
// Penetrance extension (CodeableConcept variant)
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance"
* extension[=].valueCodeableConcept = $HPO#HP:0003829 "Incomplete penetrance"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* extension[Feststellungsdatum].url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension[Feststellungsdatum].valueDateTime = "2025-04-15"
* extension[ReferenzPrimaerdiagnose].url = "http://hl7.org/fhir/StructureDefinition/condition-related"
* extension[ReferenzPrimaerdiagnose].valueReference = Reference(mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1)
* category = $sct#782964007 "Genetic disease"
* severity = $sct#6736007 "Moderate severity"
// code with OMIM, SNOMED, Orphanet, ICD-10-GM (inkl. Versionen und ICD-Extensions)
* code.coding[+] = $OMIM#154700 "Marfan syndrome"
* code.coding[+] = $sct#19346006 "Marfan syndrome"
* code.coding[=].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* code.coding[+] = $orpha#558 "Marfan syndrome"
* code.coding[+] = $icd-10-gm#Q87.4 "Marfan-Syndrom"
* code.coding[=].version = "2025"
* code.coding[=].extension[0].url = "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit"
* code.coding[=].extension[0].valueCoding = $diagnosesicherheit#G "gesicherte Diagnose"
* code.coding[=].extension[1].url = "http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen"
* code.coding[=].extension[1].valueCoding = $mehrfachcodierungs-kennzeichen#! "!"
* code.coding[=].extension[2].url = "http://fhir.de/StructureDefinition/seitenlokalisation"
* code.coding[=].extension[2].valueCoding = $seitenlokalisation#U "unbekannt"
* code.text = "Marfan-Syndrom, genetisch bestaetigt (FBN1-Variante)"
* bodySite = $sct#113257007 "Structure of cardiovascular system"
* bodySite.coding[0].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* encounter = Reference(mii-exa-test-data-seltene-encounter-1)
* onsetAge.value = 28
* onsetAge.unit = "years"
* onsetAge.system = $ucum
* onsetAge.code = #a
* onsetAge.extension[0].url = "http://fhir.de/StructureDefinition/lebensphase"
* onsetAge.extension[0].valueCodeableConcept = $sct#41847000 "Adulthood (qualifier value)"
* recordedDate = "2025-04-15"
* recorder = Reference(mii-exa-test-data-practitioner-physician-1)
* asserter = Reference(mii-exa-test-data-practitioner-physician-2)
* stage[+].type = $sct#260998006 "Clinical staging"
* stage[=].assessment = Reference(mii-exa-test-data-patient-3-seltene-clinical-impression-1)
// Evidence with genetic finding code AND detail references to MolGen
* evidence[+].code.coding[+] = $sct#106221001 "Genetic finding"
* evidence[=].detail[+] = Reference(mii-exa-test-data-seltene-molgen-variante-1)
* evidence[=].detail[+] = Reference(mii-exa-test-data-seltene-molgen-befundbericht-1)
* note.text = "Pathogene Variante im FBN1-Gen molekulargenetisch nachgewiesen. Diagnose genetisch gesichert. Unvollstaendige Penetranz dokumentiert."

// =============================================================================
// Genetic Diagnosis 2: Transienter neonataler Diabetes mellitus (6q24) -
// anamnestisch, im Saeuglingsalter remittiert (abatementAge-Variante)
// =============================================================================
Instance: mii-exa-test-data-patient-3-seltene-genetic-diagnosis-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis
Usage: #example
Description: "Genetic Diagnosis: Transienter neonataler Diabetes mellitus (6q24), im Saeuglingsalter remittiert (abatement-Variante)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* clinicalStatus = $condition-clinical#resolved
* verificationStatus = $condition-ver-status#confirmed
* extension[Feststellungsdatum].url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension[Feststellungsdatum].valueDateTime = "1995-03-01"
* category = $sct#782964007 "Genetic disease"
* code.coding[+] = $sct#609569007 "Diabetes mellitus due to genetic defect in beta cell function (disorder)"
* code.coding[+] = $orpha#99886 "Transient neonatal diabetes mellitus"
* code.coding[+] = $icd-10-gm#P70.2 "Diabetes mellitus beim Neugeborenen"
* code.coding[=].version = "2025"
* code.text = "Transienter neonataler Diabetes mellitus (6q24), remittiert"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* encounter = Reference(mii-exa-test-data-seltene-encounter-1)
* evidence.code = $sct#106221001 "Genetic finding"
* evidence.detail = Reference(mii-exa-test-data-seltene-molgen-befundbericht-1)
* onsetAge = 2 'wk' "Wochen"
* onsetAge.extension[0].url = "http://fhir.de/StructureDefinition/lebensphase"
* onsetAge.extension[0].valueCodeableConcept = $sct#255407002 "Neonatal (qualifier value)"
* abatementAge = 9 'mo' "Monate"
* abatementAge.extension[0].url = "http://fhir.de/StructureDefinition/lebensphase"
* abatementAge.extension[0].valueCodeableConcept = $sct#3658006 "Infancy (qualifier value)"
* recordedDate = "2025-04-15"
* note.text = "Anamnestisch transienter neonataler Diabetes mellitus, unter Insulintherapie im Saeuglingsalter remittiert."

// =============================================================================
// Symptom Condition 1: Tall stature - ALL 4 code slices + all optional fields
// =============================================================================
Instance: mii-exa-test-data-patient-3-seltene-symptom-condition-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition
Usage: #example
Description: "Symptom Condition: Tall stature - all 4 code slices (HPO, SNOMED, ICD-10-GM, MONDO), all MS elements"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* code.coding[=].version = "2026"
* code.coding[+] = $MONDO#MONDO:0007064 "Marfan syndrome"
* code.text = "Hochwuchs bei Marfan-Syndrom"
* bodySite = $sct#38266002 "Entire body as a whole"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* encounter = Reference(mii-exa-test-data-seltene-encounter-1)
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
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[+].system = "https://www.charite.de/fhir/sid/seltene-symptom"
* identifier[=].value = "SE-SYMPTOM-2025-002"
* clinicalStatus = $condition-clinical#inactive "Inactive"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $cs-hl7-condition-category#problem-list-item "Problem List Item"
* severity = $HPO#HP:0012828 "Severe"
* code.coding[+] = $HPO-OBO#HP:0002616 "Aortic root aneurysm"
* code.coding[+] = $sct#128599005 "Structural disorder of heart"
* code.text = "Aortenwurzeldilatation"
* bodySite = $sct#57034009 "Aortic arch structure"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* encounter = Reference(mii-exa-test-data-seltene-encounter-1)
* onsetDateTime = "2024-06-15"
* abatementDateTime = "2025-06-01"
* recordedDate = "2024-06-15"
* stage[+].summary = $HPO#HP:0012828 "Severe"
* evidence[+].code = $HPO#HP:0002616 "Aortic root aneurysm"
* evidence[=].detail = Reference(mii-exa-test-data-patient-3-seltene-hpo-assessment-1)
* note.text = "Nach operativer Korrektur inaktiv."
