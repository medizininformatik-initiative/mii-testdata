// ============================================================================
// PRO Bundle (Patient-Reported Outcomes)
// ============================================================================

Instance: mii-exa-test-data-bundle-pro-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: PRO Testdaten Patient-1"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-pro-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-pro-encounter-1, Encounter)
// QuestionnaireResponses
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-phq9-response, QuestionnaireResponse)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis-dep-sf4a-response, QuestionnaireResponse)
// Observation Scores
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-phq9-score, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis-dep-sf4a-raw-score, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis-dep-sf4a-tscore, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-bdi-ii-score, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-eq5d5l-index, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-eq5d5l-vas, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-eq5d5l-profile, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis29-anxiety-tscore, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis29-depression-tscore, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis29-fatigue-tscore, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis29-pain-intensity, Observation)
* insert AddBundleEntry(mii-exa-test-data-pat1-pro-p29-pain-int-tscore, Observation)
* insert AddBundleEntry(mii-exa-test-data-pat1-pro-p29-phys-fn-tscore, Observation)
* insert AddBundleEntry(mii-exa-test-data-pat1-pro-p29-sleep-tscore, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis29-social-function-tscore, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis-cogfn-sf4a-raw-score, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-pro-promis-cogfn-sf4a-tscore, Observation)
