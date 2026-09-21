// ============================================================================
// MII Kardiologie Test Data - Device und DeviceMetric
// Implantierbarer Kardioverter-Defibrillator (ICD) mit NBG-Schrittmachermodus
// ============================================================================

Instance: mii-exa-test-data-kardiologie-device-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-device
Usage: #example
Description: "Kardio Device: Implantierbarer Kardioverter-Defibrillator (ICD)"
* insert TestDataLabel
* status = #active
* expirationDate = "2033-03-12"
* type = $sct20260701#72506001 "Implantable defibrillator, device (physical object)"
* manufacturer = "Medtronic"
* deviceName.name = "Medtronic Evera MRI XT VR"
* deviceName.type = #manufacturer-name
* patient = Reference(mii-exa-test-data-kardiologie-patient-1)

Instance: mii-exa-test-data-kardiologie-devicemetric-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-nbg-schrittmachermodus
Usage: #example
Description: "Kardio DeviceMetric: NBG-Schrittmachermodus des ICD"
* insert TestDataLabel
* type = $11073-10101#730752 "MDC_IDC_SET_BRADY_MODE"
* type.coding.version = "2024-12-05"
* type.text = "Brady-Stimulationsmodus nach NBG-Standard"
* source = Reference(mii-exa-test-data-kardiologie-device-1)
* category = #setting
