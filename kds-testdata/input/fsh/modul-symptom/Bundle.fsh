// ============================================================================
// Symptom Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-symptom-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Symptom Testdaten Patient-1"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-symptom-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-symptom-encounter-1, Encounter)
// Symptom Conditions
* insert AddBundleEntry(mii-exa-test-data-symptom-condition-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-symptom-condition-2, Condition)
// Symptom Observations
* insert AddBundleEntry(mii-exa-test-data-symptom-observation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-symptom-observation-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-symptom-observation-3, Observation)
* insert AddBundleEntry(mii-exa-test-data-symptom-observation-4, Observation)
// Supporting resources
* insert AddBundleEntry(mii-exa-test-data-symptom-device-1, Device)
* insert AddBundleEntry(mii-exa-test-data-symptom-questionnaireresponse-1, QuestionnaireResponse)
