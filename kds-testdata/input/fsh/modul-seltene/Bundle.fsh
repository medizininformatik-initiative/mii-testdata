// ============================================================================
// Seltene Erkrankungen Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-seltene-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Seltene Erkrankungen Testdaten Patient-3"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-seltene-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-seltene-encounter-1, Encounter)
// Body Measurements
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-bmi-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-kopfumfang-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-hueftumfang-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-taillenumfang-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-blutgruppe-1, Observation)
// HPO Assessments
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-hpo-assessment-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-hpo-assessment-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-hpo-assessment-3, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-hpo-assessment-4, Observation)
// Conditions
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-genetic-diagnosis-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-symptom-condition-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-symptom-condition-2, Condition)
// Clinical Impression
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-clinical-impression-1, ClinicalImpression)
// Family History
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-familienanamnese-1, FamilyMemberHistory)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-familienanamnese-2, FamilyMemberHistory)
// Therapie
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-therapieplan-1, CarePlan)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-therapieempfehlung-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-therapie-nicht-med-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-studieneinschluss-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-therapie-kombination-1, RequestGroup)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-therapie-durchgefuehrt-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-therapie-durchgefuehrt-2, Procedure)
