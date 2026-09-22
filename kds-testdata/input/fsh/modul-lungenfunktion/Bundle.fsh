// ============================================================================
// Lungenfunktion Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-lungenfunktion-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Lungenfunktion Testdaten Patient-1 (Spirometrie, Bodyplethysmographie, Diffusionsmessung und Methacholin-Provokationstest bei V.a. Asthma bronchiale)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* type = #transaction
* timestamp = "2025-02-18T13:00:00+01:00"
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-umgebung-1, Location)
// Messungen (Procedures)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-spirometrie-messung-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-diffusion-messung-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-provokationstest-messung-1, Procedure)
// Befunde (DiagnosticReports)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-spirometrie-befund-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-bodyplethysmografie-befund-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-diffusion-befund-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-provokationstest-befund-1, DiagnosticReport)
// Spirometrie-Observations
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-bf-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-fev-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-fvc-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-fev-fvc-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-ic-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-irv-erv-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-mef-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-pef-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-vc-1, Observation)
// Bodyplethysmographie-Observations
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-frc-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-r-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-sr-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-sr-eff-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-sg-total-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-tlc-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-rv-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-rv-tlc-1, Observation)
// Diffusions-Observations
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-dlco-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-dlcoc-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-kco-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-kcoc-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-va-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-hb-1, Observation)
// Provokationstest-Observations
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-fev-prov-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-fev-prov-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-pef-prov-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-r-prov-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-sr-prov-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-frc-prov-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-dosis-schwellwert-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-dosis-kumuliert-1, Observation)
// Umgebungs- und Koerpermass-Observations
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-co2-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-lufttemperatur-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-luftfeuchtigkeit-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-gewicht-1, Observation)
// Methacholin (Medication + Dosisgaben)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-methacholine-1, Medication)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-dosis-gabe-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-lungenfunktion-dosis-gabe-2, MedicationAdministration)
