// ============================================================================
// Molekulargenetik Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-molgen-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Molekulargenetik Testdaten Patient-3 und Patient-4"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-patient-3, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-3-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-patient-4, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-4-encounter-1, Encounter)
// Device
* insert AddBundleEntry(mii-exa-test-data-molgen-device-sequencer, Device)
// Patient-3 Molekulargenetik
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-anforderung-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-befundbericht-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-variante-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-genotyp-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-genomic-study-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-genomic-study-analysis-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-molekulare-konsequenz-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-diagnostische-implikation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-mutationslast-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-msi-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-medikationsempfehlung-1, Task)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-folgemassnahme-1, Task)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-family-member-history-1, FamilyMemberHistory)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-polygener-risiko-score-1, RiskAssessment)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-biomarker-1, Observation)
// Patient-4 Molekulargenetik
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-anforderung-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-befundbericht-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-variante-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-genomic-study-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-genomic-study-analysis-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-molekulare-konsequenz-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-diagnostische-implikation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-family-member-history-1, FamilyMemberHistory)
