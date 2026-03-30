// ============================================================================
// Pathologie Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-patho-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Pathologie Testdaten Patient-1"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-patho-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-patho-encounter-1, Encounter)
// Pathologie Resources
* insert AddBundleEntry(mii-exa-test-data-patient-1-patho-active-problems-1, List)
* insert AddBundleEntry(mii-exa-test-data-patient-1-patho-hopi-1, List)
* insert AddBundleEntry(mii-exa-test-data-patient-1-patho-problem-list-item-1, Condition)
