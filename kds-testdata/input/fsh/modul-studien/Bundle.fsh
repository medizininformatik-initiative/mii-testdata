// ============================================================================
// Studien Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-studien-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Studien Testdaten Patient-1"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-studien-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-studien-encounter-1, Encounter)
// * insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
// Studieneinschluss
* insert AddBundleEntry(mii-exa-test-data-studie-einschluss-anfrage-1, ServiceRequest)
