// ============================================================================
// MII Studien Test Data - Eligibility-Gruppe (Group)
// Ziel der Eligibility-Extension der Studie; aus den historischen
// 2025er-Testdaten (git 00b7374c^) uebernommen.
// ============================================================================

Instance: mii-exa-test-data-studien-group-1
InstanceOf: Group
Usage: #example
Description: "Group: Eligibility-Population der Studie MII-BIOMARKER-2024"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* active = true
* type = #person
* actual = false
* code = $sct#116154003 "Patient (person)"
* managingEntity = Reference(mii-exa-test-data-organization-charite)
