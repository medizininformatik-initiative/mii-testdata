// ============================================================================
// MTB Bundle (Molekulares Tumorboard)
// ============================================================================

Instance: mii-exa-test-data-bundle-mtb-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: MTB Testdaten Patient-1"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-1-encounter-1, Encounter)
// Behandlungsepisode
* insert AddBundleEntry(mii-exa-test-data-mtb-behandlungsepisode-1, ClinicalImpression)
* insert AddBundleEntry(mii-exa-test-data-mtb-consent-given-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-diagnose-primaertumor-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-mtb-oncotree-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-systemische-vortherapie-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-mtb-tumorausbreitung-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-who-grad-tumor-zns-1, Observation)
// NGS Bericht
* insert AddBundleEntry(mii-exa-test-data-mtb-ngs-bericht-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-mtb-genomic-study-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-mtb-genomic-study-analysis-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-mtb-einfache-variante-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-copy-number-variant-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-dna-fusion-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-rna-fusion-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-rna-seq-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-diagnostische-implikation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-therapeutische-implikation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-molekularer-biomarker-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-mutationslast-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-mikrosatelliteninstabilitaet-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-hrd-score-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-brcaness-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-ploidie-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-biomarker-her2-status-1, Observation)
// Molecular Pathology
* insert AddBundleEntry(mii-exa-test-data-mtb-molecular-pathology-report-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-mtb-immunohistochemistry-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-immunohistochemistry-her2-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-immunohistochemistry-pdl1-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-ihc-phosphorylation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-ihc-mmr-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-ihc-msi-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-insituhybridization-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-insituhybridization-her2-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-tumorzellgehalt-1, Observation)
// Therapieplan
* insert AddBundleEntry(mii-exa-test-data-mtb-therapieplan-1, CarePlan)
* insert AddBundleEntry(mii-exa-test-data-mtb-therapieempfehlung-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-mtb-therapieempfehlung-2, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-mtb-therapieempfehlung-3, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-mtb-therapieempfehlung-kombination-1, RequestGroup)
* insert AddBundleEntry(mii-exa-test-data-mtb-studieneinschluss-anfrage-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-mtb-studie-1, ResearchStudy)
* insert AddBundleEntry(mii-exa-test-data-mtb-humangenetische-beratung-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-mtb-histologie-evaluation-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-mtb-biopsie-auftrag-1, ServiceRequest)
// Follow-Up
* insert AddBundleEntry(mii-exa-test-data-mtb-follow-up-1, ClinicalImpression)
* insert AddBundleEntry(mii-exa-test-data-mtb-systemische-therapie-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-mtb-systemische-therapie-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-mtb-response-befund-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-mtb-antrag-kostenuebernahme-1, Claim)
* insert AddBundleEntry(mii-exa-test-data-mtb-antwort-kostenuebernahme-1, ClaimResponse)
