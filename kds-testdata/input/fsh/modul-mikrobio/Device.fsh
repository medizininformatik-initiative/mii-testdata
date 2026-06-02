// ============================================================================
// MII Mikrobio Device + ServiceRequest
// ============================================================================

Instance: mii-exa-test-data-mikrobio-device-1
InstanceOf: Device
Usage: #example
Description: "Mikrobio Lab Analyzer: VITEK 2 (BioMérieux)"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* identifier.value = "VITEK2-001"
* deviceName[+].name = "VITEK 2"
* deviceName[=].type = #manufacturer-name
* type = $sct#469318003 "Bacterial identification device (physical object)"

Instance: mii-exa-test-data-mikrobio-servicerequest-1
InstanceOf: ServiceRequest
Usage: #example
Description: "Mikrobio Auftrag: Blutkultur + Erregerdiagnostik"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/service-request"
* identifier.value = "MIKROBIO-SR-001"
* status = #completed
* intent = #order
* code = $sct#252418007 "Microbiology procedure (procedure)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* authoredOn = "2026-04-02T08:00:00+02:00"
