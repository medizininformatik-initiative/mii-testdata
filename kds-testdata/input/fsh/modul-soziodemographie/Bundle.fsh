// ============================================================================
// Soziodemographie Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-soziodemographie-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Soziodemographie Testdaten Patient-1"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-patient-1, Patient)
// Datenerhebung (Klammer-Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-datenerhebung-1, Observation)
// Lebenssituation
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-geburtsland-mutter-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-geburtsland-vater-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-partnerschaft-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-vertrauensperson-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-haushaltsgroesse-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-betreuungssituation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-schwerbehindertenausweis-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-schwerbehindertenausweis-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-schwerbehindertenausweis-3, Observation)
// Soziooekonomische Faktoren
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-soziooekonomische-faktoren-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-ausbildung-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-beschaeftigungsstatus-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-beschaeftigungsstatus-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-berufliche-stellung-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-berufliche-stellung-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-einkommen-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-schulabschluss-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-soziodemographie-schuljahre-1, Observation)
