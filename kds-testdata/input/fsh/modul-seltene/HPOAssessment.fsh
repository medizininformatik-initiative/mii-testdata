// ============================================================================
// Seltene Erkrankungen - HPO Assessment (Observation)
// Maximum MS element coverage for Patient-3
// ============================================================================

Alias: $seltene-cs-change-status = https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status

// HPO Assessment 1: Aortic root dilatation - Present, with bodySite, method, derivedFrom
Instance: mii-exa-test-data-patient-3-seltene-hpo-assessment-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment
Usage: #example
Description: "HPO Assessment: Aortic root aneurysm (Present) - all optional fields populated"
* insert TestDataLabel
* status = #final
* code = $HPO#HP:0002616 "Aortic root aneurysm"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectiveDateTime = "2025-03-10"
* note[+].text = "Aortenwurzeldilatation bei Echokardiographie festgestellt, Z-Score > 3."
* bodySite = $sct#57034009 "Aortic root structure"
* method = $sct#278292003 "Ultrasound imaging"
* derivedFrom = Reference(mii-exa-test-data-patient-3-labobs-1)
* component[+].code = $sct#260411009 "Presence findings"
* component[=].valueCodeableConcept = $loinc#LA9633-4 "Present"

// HPO Assessment 2: Arachnodactyly - Absent (excluded phenotype)
Instance: mii-exa-test-data-patient-3-seltene-hpo-assessment-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment
Usage: #example
Description: "HPO Assessment: Arachnodactyly (Absent) - excluded phenotype"
* insert TestDataLabel
* status = #final
* code = $HPO#HP:0001166 "Arachnodactyly"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectiveDateTime = "2025-03-10"
* note[+].text = "Arachnodaktylie bei klinischer Untersuchung nicht nachweisbar. Armspanne/Koerpergroesse-Verhaeltnis im Normbereich."
* method = $sct#5880005 "Physical examination procedure"
* component[+].code = $sct#260411009 "Presence findings"
* component[=].valueCodeableConcept = $loinc#LA9634-2 "Absent"

// HPO Assessment 3: Ectopia lentis - Present, Moderate severity, with change status (interpretation)
Instance: mii-exa-test-data-patient-3-seltene-hpo-assessment-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment
Usage: #example
Description: "HPO Assessment: Ectopia lentis (Present, Moderate severity, with change status interpretation)"
* insert TestDataLabel
* status = #final
* code = $HPO#HP:0001083 "Ectopia lentis"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectiveDateTime = "2025-03-10"
* note[+].text = "Moderate Linsensubluxation bilateral, ophthalmologisch dokumentiert."
* bodySite = $sct#78076003 "Lens structure"
* method = $sct#36228007 "Ophthalmic examination"
* component[+].code = $sct#260411009 "Presence findings"
* component[=].valueCodeableConcept = $loinc#LA9633-4 "Present"
* component[=].interpretation = $seltene-cs-change-status#newly-added "Neu hinzugekommen"
* component[+].code = $HPO#HP:0012824 "Severity"
* component[=].valueCodeableConcept = $HPO#HP:0012826 "Moderate"

// HPO Assessment 4: Tall stature - Present, effectivePeriod (tests effectivePeriod slice)
Instance: mii-exa-test-data-patient-3-seltene-hpo-assessment-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment
Usage: #example
Description: "HPO Assessment: Tall stature (Present, effectivePeriod) - tests effectivePeriod slice"
* insert TestDataLabel
* status = #final
* code = $HPO#HP:0000098 "Tall stature"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectivePeriod.start = "2011-01-01"
* effectivePeriod.end = "2025-03-10"
* note[+].text = "Hochwuchs seit Adoleszenz, typisch fuer Marfan-Syndrom. Koerpergroesse 195 cm."
* component[+].code = $sct#260411009 "Presence findings"
* component[=].valueCodeableConcept = $loinc#LA9633-4 "Present"
* component[=].interpretation = $seltene-cs-change-status#unchanged "Unveraendert"
* component[+].code = $HPO#HP:0012824 "Severity"
* component[=].valueCodeableConcept = $HPO#HP:0012825 "Mild"
