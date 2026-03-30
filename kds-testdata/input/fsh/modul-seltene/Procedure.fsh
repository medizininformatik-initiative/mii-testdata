// ============================================================================
// Seltene Erkrankungen - Therapie Durchgefuehrt (Procedure)
// Maximum MS element coverage for Patient-3
// ============================================================================

// Procedure 1: Pharmakotherapie with performedPeriod
Instance: mii-exa-test-data-patient-3-seltene-therapie-durchgefuehrt-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt
Usage: #example
Description: "Therapie durchgefuehrt: Pharmakotherapie (Losartan) - tests performedPeriod, code.display"
* insert TestDataLabel
* status = #completed
* code.coding = $seltene-cs-narse#pharmakotherapie "Pharmakotherapie"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* performedPeriod.start = "2025-03-15"
* performedPeriod.end = "2025-09-15"

// Procedure 2: Sonstiges therapy with performedDateTime
Instance: mii-exa-test-data-patient-3-seltene-therapie-durchgefuehrt-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt
Usage: #example
Description: "Therapie durchgefuehrt: Sonstiges (Physiotherapie) - tests performedDateTime slice"
* insert TestDataLabel
* status = #completed
* code.coding = $seltene-cs-narse#sonstiges "Sonstiges"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* performedDateTime = "2025-05-20"
