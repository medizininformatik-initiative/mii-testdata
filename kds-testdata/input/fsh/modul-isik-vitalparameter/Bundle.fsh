// ============================================================================
// ISiK Vitalparameter Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-isik-vitalparameter-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: ISiK 6.0.0 Vitalparameter Testdaten (Atemfrequenz, Blutdruck, EKG, GCS, Herzfrequenz, Koerpergewicht, Koerpergroesse, Koerperkerntemperatur, Kopfumfang, Sauerstoffsaettigung)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* type = #transaction
* timestamp = "2026-05-14T12:00:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-isik-vitalparameter-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-isik-vitalparameter-encounter-1, Encounter)
// Observations (ISiK 6.0.0 Vitalparameter)
* insert AddBundleEntry(mii-exa-test-data-isik-vitalparameter-atemfrequenz-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-isik-vitalparameter-herzfrequenz-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-isik-vitalparameter-blutdruck-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-isik-vitalparameter-sauerstoffsaettigung-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-isik-vitalparameter-koerpergewicht-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-isik-vitalparameter-koerpergroesse-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-isik-vitalparameter-koerperkerntemperatur-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-isik-vitalparameter-kopfumfang-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-isik-vitalparameter-gcs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-isik-vitalparameter-ekg-1, Observation)
