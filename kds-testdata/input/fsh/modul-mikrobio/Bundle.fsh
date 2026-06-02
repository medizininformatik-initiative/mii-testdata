// ============================================================================
// MII Mikrobio Test Data — Transaction Bundle (self-contained)
// ============================================================================

Instance: mii-exa-test-data-bundle-mikrobio-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Mikrobiologie Testdaten (Sepsis-Patient mit MRSA)"
* insert TestDataLabel
* type = #transaction
* timestamp = "2026-04-05T16:00:00+02:00"
// Infrastructure
* insert AddBundleEntry(mii-exa-test-data-mikrobio-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-organization-lab-1, Organization)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-specimen-2, Specimen)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-device-1, Device)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-servicerequest-1, ServiceRequest)
// Mikrobio Observations (all 18 Observation profiles)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-allgemeine-kultur-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-allgemeine-kultur-dar-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-spezifische-bestimmung-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-allgemeine-bestimmung-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-mikroskopie-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-keimzahl-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-empfindlichkeit-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-mre-klasse-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-mrgn-klasse-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-resistenzmechanismen-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-virulenzfaktor-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-antigen-antikoerper-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-aviditaet-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-titer-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-ct-wert-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-molekulare-pathogenlast-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-barlett-score-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-nugent-score-1, Observation)
// DiagnosticReport (binds it all together)
* insert AddBundleEntry(mii-exa-test-data-mikrobio-diagnostic-report-1, DiagnosticReport)
