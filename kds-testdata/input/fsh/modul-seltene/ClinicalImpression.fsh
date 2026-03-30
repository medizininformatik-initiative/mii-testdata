// ============================================================================
// Seltene Erkrankungen - ClinicalImpression
// Maximum MS element coverage for Patient-3
// ============================================================================

Instance: mii-exa-test-data-patient-3-seltene-clinical-impression-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression
Usage: #example
Description: "ClinicalImpression: Rare disease assessment - all MS elements populated"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/seltene-clinical-impression"
* identifier[=].value = "SE-CI-2025-001"
* status = #completed
* code = $sct#389067005 "Community health procedure"
* description = "Marfan-Sprechstunde: Erstvorstellung zur Abklaerung erblicher Bindegewebserkrankung"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* encounter = Reference(mii-exa-test-data-seltene-encounter-1)
* effectiveDateTime = "2025-03-10"
* date = "2025-03-10"
* summary = "Patient mit V.a. Marfan-Syndrom vorgestellt. Aortenwurzeldilatation und Linsensubluxation nachgewiesen. Ghent-Kriterien erfuellt. Genetische Testung veranlasst."
* problem[+] = Reference(mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1)
* investigation[+].code.text = "Klinische Untersuchung und Bildgebung"
* investigation[=].item[+] = Reference(mii-exa-test-data-patient-3-seltene-hpo-assessment-1)
* investigation[=].item[+] = Reference(mii-exa-test-data-patient-3-seltene-hpo-assessment-3)
* investigation[=].item[+] = Reference(mii-exa-test-data-patient-3-seltene-hpo-assessment-4)
* finding[+].itemCodeableConcept = $HPO#HP:0002616 "Aortic root aneurysm"
* finding[=].itemReference = Reference(mii-exa-test-data-patient-3-seltene-hpo-assessment-1)
* finding[+].itemCodeableConcept = $HPO#HP:0001083 "Ectopia lentis"
* finding[=].itemReference = Reference(mii-exa-test-data-patient-3-seltene-hpo-assessment-3)
* finding[+].itemCodeableConcept = $HPO#HP:0000098 "Tall stature"
* finding[=].itemReference = Reference(mii-exa-test-data-patient-3-seltene-hpo-assessment-4)
* supportingInfo[+] = Reference(mii-exa-test-data-seltene-molgen-befundbericht-1)
* supportingInfo[+] = Reference(mii-exa-test-data-patient-3-seltene-symptom-condition-1)
* note[+].text = "Erstvorstellung in der Marfan-Sprechstunde. Klinische Diagnose gesichert, molekulargenetische Bestaetigung ausstehend."
* note[+].text = "Therapieplan erstellt: Losartan 50mg taeglich, jaehrliche Echokardiographie."
