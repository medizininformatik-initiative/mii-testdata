// ============================================================================
// MII Mikrobio Device + ServiceRequest
// ============================================================================

// MALDI-TOF Massenspektrometer — Erreger-Identifikation am Kultur-Isolat
Instance: mii-exa-test-data-mikrobio-device-maldi-1
InstanceOf: Device
Usage: #example
Description: "Mikrobio Lab Analyzer: MALDI-TOF Massenspektrometer (Erreger-Identifikation)"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* identifier.value = "MALDI-TOF-001"
* deviceName[+].name = "MALDI Biotyper"
* deviceName[=].type = #model-name
* type = $sct#469318003 "Bacterial identification device (physical object)"

// Real-time-PCR-Cycler — molekulare Diagnostik
Instance: mii-exa-test-data-mikrobio-device-pcr-1
InstanceOf: Device
Usage: #example
Description: "Mikrobio Lab Analyzer: Real-time-PCR-Cycler (molekulare Diagnostik)"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* identifier.value = "PCR-CYCLER-001"
* deviceName[+].name = "Real-Time PCR Cycler"
* deviceName[=].type = #model-name

// Immunoassay-Analyzer — Serologie
Instance: mii-exa-test-data-mikrobio-device-immunoassay-1
InstanceOf: Device
Usage: #example
Description: "Mikrobio Lab Analyzer: Immunoassay-Analyzer (Serologie)"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* identifier.value = "IMMUNOASSAY-001"
* deviceName[+].name = "Immunoassay Analyzer"
* deviceName[=].type = #model-name

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
