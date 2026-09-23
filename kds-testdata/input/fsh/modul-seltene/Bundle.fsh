// ============================================================================
// Seltene Erkrankungen Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-seltene-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Seltene Erkrankungen Testdaten Patient-3"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
// Perinataldaten + Consanguinity (Profilluecken-Abdeckung, Paket-Beispiele adaptiert)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-geburtsgewicht-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-geburtslaenge-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-gestationsalter-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-consanguinity-1, Observation)
// ICF-Assessment
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-icf-assessment-1, Observation)
// Registerteilnahme
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-registerteilnahme-1, ResearchSubject)
* insert AddBundleEntry(mii-exa-test-data-seltene-register-katalog-1, Library)
* insert AddBundleEntry(mii-exa-test-data-seltene-register-study-1, ResearchStudy)
* insert AddBundleEntry(mii-exa-test-data-seltene-register-consent-1, Consent)
// HPO Assessments
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-hpo-assessment-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-hpo-assessment-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-hpo-assessment-3, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-hpo-assessment-4, Observation)
// Conditions
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-clinical-diagnosis-2, Condition)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-genetic-diagnosis-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-genetic-diagnosis-2, Condition)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-symptom-condition-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-symptom-condition-2, Condition)
// Clinical Impression
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-clinical-impression-1, ClinicalImpression)
// Family History
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-familienanamnese-1, FamilyMemberHistory)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-familienanamnese-2, FamilyMemberHistory)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-familienanamnese-3, FamilyMemberHistory)
// Therapie
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-therapieplan-1, CarePlan)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-therapieempfehlung-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-therapie-nicht-med-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-studieneinschluss-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-therapie-kombination-1, RequestGroup)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-therapie-durchgefuehrt-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-3-seltene-therapie-durchgefuehrt-2, Procedure)
// Supporting resources
* insert AddBundleEntry(mii-exa-test-data-seltene-labobs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-seltene-molgen-befundbericht-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-seltene-molgen-variante-1, Observation)
// Infrastructure
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-2, Practitioner)
