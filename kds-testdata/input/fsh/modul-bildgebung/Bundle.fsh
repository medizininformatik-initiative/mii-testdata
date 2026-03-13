// ============================================================================
// Bildgebung Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-bildgebung-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Bildgebung Testdaten Patient-1"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-1-encounter-1, Encounter)
// Imaging Resources
* insert AddBundleEntry(mii-exa-test-data-anforderung, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-bildgebungsprozedur, Procedure)
* insert AddBundleEntry(mii-exa-test-data-koerperstruktur, BodyStructure)
* insert AddBundleEntry(mii-exa-test-data-radiologische-beobachtung, Observation)
* insert AddBundleEntry(mii-exa-test-data-befundbericht, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-geraet, Device)
* insert AddBundleEntry(mii-exa-test-data-befundungsprozedur, Procedure)
* insert AddBundleEntry(mii-exa-test-data-behandlungsempfehlung, CarePlan)
* insert AddBundleEntry(mii-exa-test-data-bildgebungsstudie, ImagingStudy)
* insert AddBundleEntry(mii-exa-test-data-kontrastmittelgabe, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-semistrukt-befundbericht, Composition)
