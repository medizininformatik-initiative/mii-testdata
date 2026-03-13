// ============================================================================
// Dokument Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-dokument-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Dokument Testdaten Patient-1"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-1-encounter-1, Encounter)
// DocumentReferences
* insert AddBundleEntry(mii-exa-test-data-patient-1-dokument-1, DocumentReference)
* insert AddBundleEntry(mii-exa-test-data-patient-1-dokument-2, DocumentReference)
