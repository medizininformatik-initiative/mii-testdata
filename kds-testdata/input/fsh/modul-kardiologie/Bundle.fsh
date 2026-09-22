// ============================================================================
// Kardiologie Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-kardiologie-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Kardiologie Testdaten Patient-1 (KHK mit Z.n. Myokardinfarkt, Aortenklappenstenose, Herzinsuffizienz NYHA II, Z.n. embolischem zerebrovaskulaerem Ereignis, ICD-Implantation)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* type = #transaction
* timestamp = "2025-03-18T12:00:00+01:00"
* insert AddBundleEntry(mii-exa-test-data-kardiologie-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-kardiologie-encounter-1, Encounter)
// Conditions
* insert AddBundleEntry(mii-exa-test-data-kardiologie-diagnose-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-kardiologie-diagnose-2, Condition)
* insert AddBundleEntry(mii-exa-test-data-kardiologie-klappenvitium-1, Condition)
// Observations
* insert AddBundleEntry(mii-exa-test-data-kardiologie-lvef-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-kardiologie-nyha-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-kardiologie-mrs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-kardiologie-kh-aufenthalte-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-kardiologie-erstereignis-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-kardiologie-htx-nein-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-kardiologie-rauchen-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-kardiologie-geraeteprogrammierung-1, Observation)
// Device + DeviceMetric + Prozedur
* insert AddBundleEntry(mii-exa-test-data-kardiologie-device-1, Device)
* insert AddBundleEntry(mii-exa-test-data-kardiologie-devicemetric-1, DeviceMetric)
* insert AddBundleEntry(mii-exa-test-data-kardiologie-deviceimplantation-1, Procedure)
