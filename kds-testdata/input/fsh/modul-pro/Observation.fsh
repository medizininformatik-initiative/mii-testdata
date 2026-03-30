// =============================================================================
// PRO Module - Score Observation Test Instances
// =============================================================================

// -----------------------------------------------------------------------------
// PHQ-9 Score (Score Instance base profile)
// Covers: MII_PR_PRO_Score_Instance
// MS elements: identifier, status, code, subject, effectiveDateTime, valueQuantity,
//   interpretation, note, method, derivedFrom, performer, focus,
//   extension:instantiatesCanonical
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-phq9-score
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance
Usage: #example
Description: "PRO Observation: PHQ-9 Score for Patient 1 (mild depression, score 8)"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-PHQ9-PAT1-001"
* status = #final
* code = $loinc#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* focus = Reference(mii-exa-test-data-pro-encounter-1)
* encounter = Reference(mii-exa-test-data-pro-encounter-1)
* effectiveDateTime = "2024-03-15T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-pro-patient-1)
* valueQuantity.value = 8
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* interpretation = $v3-ObservationInterpretation#L "Low"
* interpretation.text = "Mild depression (5-9)"
* method.text = "PHQ-9 Self-Report Questionnaire"
* note[+].text = "Patient completed questionnaire independently during outpatient visit"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9"


// -----------------------------------------------------------------------------
// PROMIS Depression SF4a Raw Score (standalone profile, NOT child of Score Instance)
// Covers: MII_PR_PRO_PROMIS_Depression_SF4a_Raw_Score
// MS elements: status (fixed final), category, code, subject, effectiveDateTime,
//   valueQuantity(.value), referenceRange, derivedFrom, extension:instantiatesCanonical
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-promis-dep-sf4a-raw-score
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-depression-sf4a-raw-score
Usage: #example
Description: "PRO Observation: PROMIS Depression SF4a Raw Score for Patient 1 (mild, raw score 7)"
* insert TestDataLabel
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#77821-7 "PROMIS short form - emotional distress - depression 4a - version 1.0 raw score"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* effectiveDateTime = "2024-03-15T10:15:00+01:00"
* valueQuantity.value = 7
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* referenceRange[+].low.value = 4
* referenceRange[=].high.value = 20
* referenceRange[=].text = "Valid range for PROMIS Depression SF 4a raw scores"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-promis-dep-sf4a-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-depression-sf4a-raw-score"


// -----------------------------------------------------------------------------
// PROMIS Depression T-Score (standalone profile, NOT child of Score Instance)
// Covers: MII_PR_PRO_Depression_T_Score
// MS elements: status (fixed final), category, code, subject, effectiveDateTime,
//   valueQuantity(.value), referenceRange, derivedFrom, extension:instantiatesCanonical
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-promis-dep-sf4a-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-depression-t-score
Usage: #example
Description: "PRO Observation: PROMIS Depression T-Score for Patient 1 (mild, T-score 52.7)"
* insert TestDataLabel
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* effectiveDateTime = "2024-03-15T10:15:00+01:00"
* valueQuantity.value = 52.7
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* referenceRange[+].low.value = 41.0
* referenceRange[=].high.value = 78.4
* referenceRange[=].text = "Depression T-score interpretation based on European population data"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-promis-dep-sf4a-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-depression-t-score"


// -----------------------------------------------------------------------------
// BDI-II Observation (child of Score Instance)
// Covers: MII_PR_PRO_Observation_BDI_II
// MS elements: code (pattern), valueQuantity(.value, fixed unit/system/code),
//   method (pattern), interpretation, derivedFrom, + inherited from Score Instance
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-bdi-ii-score
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-bdi-ii
Usage: #example
Description: "PRO Observation: BDI-II Total Score for Patient 1 (mild depression, score 12)"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-BDI2-PAT1-001"
* status = #final
* code = $loinc#89209-1 "Beck Depression Inventory II total score [BDI]"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* encounter = Reference(mii-exa-test-data-pro-encounter-1)
* effectiveDateTime = "2024-03-15T10:30:00+01:00"
* performer = Reference(mii-exa-test-data-pro-patient-1)
* valueQuantity.value = 12
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* method.coding = $loinc#89209-1 "Beck Depression Inventory II total score [BDI]"
* method.text = "Beck Depression Inventory II (BDI-II)"
* interpretation = $v3-ObservationInterpretation#L "Low"
* interpretation.text = "Mild depression (10-18)"
* note[+].text = "BDI-II completed as cross-validation for PHQ-9 screening"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-bdi-ii"


// -----------------------------------------------------------------------------
// EQ-5D-5L Index (child of Score Instance)
// Covers: MII_PR_PRO_Observation_EQ5D5L_Index
// MS elements: code (SNOMED pattern), valueQuantity (unit=1), method (SNOMED pattern),
//   note[reference] (fixed literature ref), interpretation, derivedFrom
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-eq5d5l-index
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index
Usage: #example
Description: "PRO Observation: EQ-5D-5L Index Value for Patient 1"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-EQ5D-IDX-PAT1-001"
* status = #final
// code inherited from profile pattern (sct#736534008)
* subject = Reference(mii-exa-test-data-pro-patient-1)
* encounter = Reference(mii-exa-test-data-pro-encounter-1)
* effectiveDateTime = "2024-03-15T11:00:00+01:00"
* performer = Reference(mii-exa-test-data-pro-patient-1)
* valueQuantity.value = 0.812
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method = http://snomed.info/sct#73041000052103 "EuroQoL five dimension five level questionnaire"
* note[+].text = "Reference: Ludwig, K., Graf von der Schulenburg, JM. & Greiner, W. German Value Set for the EQ-5D-5L. PharmacoEconomics 36, 663-674 (2018). https://doi.org/10.1007/s40273-018-0615-8"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Good health state"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index"


// -----------------------------------------------------------------------------
// EQ-5D-5L VAS (child of Score Instance)
// Covers: MII_PR_PRO_Observation_EQ5D5L_VAS
// MS elements: code (SNOMED pattern), valueQuantity (unit=1), method (SNOMED pattern),
//   interpretation, derivedFrom
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-eq5d5l-vas
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas
Usage: #example
Description: "PRO Observation: EQ-5D-5L VAS Score for Patient 1"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-EQ5D-VAS-PAT1-001"
* status = #final
// code inherited from profile pattern (sct#736535009)
* subject = Reference(mii-exa-test-data-pro-patient-1)
* encounter = Reference(mii-exa-test-data-pro-encounter-1)
* effectiveDateTime = "2024-03-15T11:00:00+01:00"
* performer = Reference(mii-exa-test-data-pro-patient-1)
* valueQuantity.value = 75
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method = http://snomed.info/sct#73041000052103 "EuroQoL five dimension five level questionnaire"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Good self-rated health"
* note[+].text = "VAS scale 0-100, higher values indicate better health"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"


// -----------------------------------------------------------------------------
// EQ-5D-5L Profile (child of Score Instance, valueString type)
// Covers: MII_PR_PRO_Observation_EQ5D5L_Profile
// MS elements: code (MII CS pattern), valueString, method (SNOMED pattern),
//   interpretation, derivedFrom
// Note: referenceRange is 0..0 in this profile
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-eq5d5l-profile
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile
Usage: #example
Description: "PRO Observation: EQ-5D-5L Profile String for Patient 1"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-EQ5D-PROF-PAT1-001"
* status = #final
* code = https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue#euroqol-eq5d5l-profile "EuroQol EQ-5D-5L Profile"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* encounter = Reference(mii-exa-test-data-pro-encounter-1)
* effectiveDateTime = "2024-03-15T11:00:00+01:00"
* performer = Reference(mii-exa-test-data-pro-patient-1)
* valueString = "11212"
* method = http://snomed.info/sct#73041000052103 "EuroQoL five dimension five level questionnaire"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Mild problems in usual activities and pain/discomfort"
* note[+].text = "Profile string: Mobility=1, Self-care=1, Usual Activities=2, Pain/Discomfort=1, Anxiety/Depression=2"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile"


// -----------------------------------------------------------------------------
// PROMIS-29 Anxiety T-Score
// Covers: MII_PR_PRO_PROMIS_29_Anxiety_TScore
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-promis29-anxiety-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-anxiety-tscore
Usage: #example
Description: "PRO Observation: PROMIS-29 Anxiety T-Score for Patient 1"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-P29-ANX-PAT1-001"
* status = #final
* code = $loinc#71967-4 "PROMIS-29 Anxiety score T-score"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* encounter = Reference(mii-exa-test-data-pro-encounter-1)
* effectiveDateTime = "2024-03-15T11:30:00+01:00"
* performer = Reference(mii-exa-test-data-pro-patient-1)
* valueQuantity.value = 53.7
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* method.text = "PROMIS-29 Profile v2.1"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Within normal limits"
* note[+].text = "PROMIS-29 anxiety domain completed as part of comprehensive assessment"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore"


// -----------------------------------------------------------------------------
// PROMIS-29 Depression T-Score
// Covers: MII_PR_PRO_PROMIS_29_Depression_TScore
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-promis29-depression-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-depression-tscore
Usage: #example
Description: "PRO Observation: PROMIS-29 Depression T-Score for Patient 1"
* insert TestDataLabel
* status = #final
* code = $loinc#77861-3 "PROMIS emotional distress - depression - version 1.0 Tscore"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* effectiveDateTime = "2024-03-15T11:30:00+01:00"
* valueQuantity.value = 55.1
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* method.text = "PROMIS-29 Profile v2.1"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-depression-tscore"


// -----------------------------------------------------------------------------
// PROMIS-29 Fatigue T-Score
// Covers: MII_PR_PRO_PROMIS_29_Fatigue_TScore
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-promis29-fatigue-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-fatigue-tscore
Usage: #example
Description: "PRO Observation: PROMIS-29 Fatigue T-Score for Patient 1"
* insert TestDataLabel
* status = #final
* code = $loinc#77864-7 "PROMIS fatigue - version 1.0 Tscore"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* effectiveDateTime = "2024-03-15T11:30:00+01:00"
* valueQuantity.value = 58.3
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* method.text = "PROMIS-29 Profile v2.1"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-fatigue-tscore"


// -----------------------------------------------------------------------------
// PROMIS-29 Pain Intensity
// Covers: MII_PR_PRO_PROMIS_29_Pain_Intensity
// Note: unit is "1" not "{score}" per profile
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-promis29-pain-intensity
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-pain-intensity
Usage: #example
Description: "PRO Observation: PROMIS-29 Pain Intensity for Patient 1"
* insert TestDataLabel
* status = #final
* code = $loinc#75261-8 "How intense was your average pain in the past 7 days [PROMIS]"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* effectiveDateTime = "2024-03-15T11:30:00+01:00"
* valueQuantity.value = 3
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method.text = "PROMIS-29 Profile v2.1 - Pain Intensity single item"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Mild pain"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity"


// -----------------------------------------------------------------------------
// PROMIS-29 Pain Interference T-Score
// Covers: MII_PR_PRO_PROMIS_29_Pain_Interference_TScore
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-pat1-pro-p29-pain-int-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-pain-interference-tscore
Usage: #example
Description: "PRO Observation: PROMIS-29 Pain Interference T-Score for Patient 1"
* insert TestDataLabel
* status = #final
* code = $loinc#77865-4 "PROMIS pain interference - version 1.0 Tscore"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* effectiveDateTime = "2024-03-15T11:30:00+01:00"
* valueQuantity.value = 52.4
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* method.text = "PROMIS-29 Profile v2.1"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-interference-tscore"


// -----------------------------------------------------------------------------
// PROMIS-29 Physical Function T-Score
// Covers: MII_PR_PRO_PROMIS_29_Physical_Function_TScore
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-pat1-pro-p29-phys-fn-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-physical-function-tscore
Usage: #example
Description: "PRO Observation: PROMIS-29 Physical Function T-Score for Patient 1"
* insert TestDataLabel
* status = #final
* code = $loinc#91721-1 "PROMIS physical function - version 2.0 T-score"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* effectiveDateTime = "2024-03-15T11:30:00+01:00"
* valueQuantity.value = 48.2
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* method.text = "PROMIS-29 Profile v2.1"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore"


// -----------------------------------------------------------------------------
// PROMIS-29 Sleep Disturbance T-Score
// Covers: MII_PR_PRO_PROMIS_29_Sleep_Disturbance_TScore
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-pat1-pro-p29-sleep-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-sleep-disturbance-tscore
Usage: #example
Description: "PRO Observation: PROMIS-29 Sleep Disturbance T-Score for Patient 1"
* insert TestDataLabel
* status = #final
* code = $loinc#77860-5 "PROMIS sleep disturbance - version 1.0 Tscore"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* effectiveDateTime = "2024-03-15T11:30:00+01:00"
* valueQuantity.value = 56.8
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* method.text = "PROMIS-29 Profile v2.1"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore"


// -----------------------------------------------------------------------------
// PROMIS-29 Social Function T-Score
// Covers: MII_PR_PRO_PROMIS_29_Social_Function_TScore
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-promis29-social-function-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-social-function-tscore
Usage: #example
Description: "PRO Observation: PROMIS-29 Social Function T-Score for Patient 1"
* insert TestDataLabel
* status = #final
* code = $loinc#77854-8 "PROMIS ability to participate in social roles and activities - version 2.0 Tscore"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* effectiveDateTime = "2024-03-15T11:30:00+01:00"
* valueQuantity.value = 44.9
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* method.text = "PROMIS-29 Profile v2.1"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-social-function-tscore"


// -----------------------------------------------------------------------------
// PROMIS Cognitive Function SF4a Raw Score
// Covers: MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_Raw_Score
// MS elements: code, valueQuantity(.value), method, referenceRange,
//   interpretation, derivedFrom, extension:instantiatesCanonical
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-promis-cogfn-sf4a-raw-score
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-cognitive-function-sf4a-raw-score
Usage: #example
Description: "PRO Observation: PROMIS Cognitive Function SF4a Raw Score for Patient 1"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-COGFN-RAW-PAT1-001"
* status = #final
* code = $loinc#81533-2 "PROMIS short form - cognitive function 4a - version 2.0 raw score"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* encounter = Reference(mii-exa-test-data-pro-encounter-1)
* effectiveDateTime = "2024-03-15T12:00:00+01:00"
* performer = Reference(mii-exa-test-data-pro-patient-1)
* valueQuantity.value = 15
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* method.text = "PROMIS Cognitive Function SF 4a"
* referenceRange[+].low.value = 4
* referenceRange[=].high.value = 20
* referenceRange[=].text = "Valid range for PROMIS Cognitive Function SF 4a raw scores"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Above average cognitive function"
* note[+].text = "Cognitive function screening as part of comprehensive PRO assessment"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score"


// -----------------------------------------------------------------------------
// PROMIS Cognitive Function SF4a T-Score
// Covers: MII_PR_PRO_PROMIS_Cognitive_Function_SF4a_TScore
// MS elements: code, valueQuantity(.value), method, interpretation,
//   derivedFrom, extension:instantiatesCanonical
// -----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-1-pro-promis-cogfn-sf4a-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-cognitive-function-sf4a-tscore
Usage: #example
Description: "PRO Observation: PROMIS Cognitive Function SF4a T-Score for Patient 1"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/pro-observation-id"
* identifier[=].value = "PRO-OBS-COGFN-T-PAT1-001"
* status = #final
* code = $loinc#81538-1 "PROMIS cognitive function - version 2.0 T-score"
* subject = Reference(mii-exa-test-data-pro-patient-1)
* encounter = Reference(mii-exa-test-data-pro-encounter-1)
* effectiveDateTime = "2024-03-15T12:00:00+01:00"
* performer = Reference(mii-exa-test-data-pro-patient-1)
* valueQuantity.value = 54.1
* valueQuantity.unit = "{score}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}
* method.text = "PROMIS Cognitive Function SF 4a"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Cognitive function within normal limits"
* note[+].text = "T-score derived from raw score 15"
* derivedFrom = Reference(mii-exa-test-data-patient-1-pro-phq9-response)
* extension[instantiatesCanonical].url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension[instantiatesCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-tscore"
