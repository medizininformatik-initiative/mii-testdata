// ============================================================================
// MII Onkologie Test Data - Transaction Bundle
// Contains all Onkologie test data instances for FHIR server upload
// ============================================================================

Instance: mii-exa-test-data-bundle-onkologie-1
InstanceOf: Bundle
Usage: #example
Title: "MII Onkologie Test Data Bundle"
Description: "Vollständiges Transaktionsbundle mit allen Onkologie-Testdaten für den Upload auf einen FHIR-Server"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-01-03T10:00:00+01:00"

// =====================================
// INFRASTRUCTURE RESOURCES
// =====================================

// Patient
* insert AddBundleEntry(mii-exa-test-data-onko-patient-1, Patient)

// Encounter
* insert AddBundleEntry(mii-exa-test-data-onko-encounter-1, Encounter)

// =====================================
// DIAGNOSE (Chapter 5)
// =====================================

* insert AddBundleEntry(mii-exa-test-data-onko-diagnose-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-onko-fruehere-tumorerkrankung-1, Condition)

// =====================================
// HISTOLOGIE (Chapter 6)
// =====================================

* insert AddBundleEntry(mii-exa-test-data-onko-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-onko-befund-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-onko-grading-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-tumorgroesse-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-histologie-icdo3-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-anzahl-untersuchte-lymphknoten-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-anzahl-befallene-lymphknoten-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-anzahl-untersuchte-sentinel-lymphknoten-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-anzahl-befallene-sentinel-lymphknoten-1, Observation)

// =====================================
// TNM KLASSIFIKATION (Chapter 8)
// =====================================

// TNM Categories
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-t-kategorie-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-n-kategorie-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-n-kategorie-sn-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-m-kategorie-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-l-kategorie-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-v-kategorie-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-pn-kategorie-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-s-kategorie-1, Observation)

// TNM Symbols
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-y-symbol-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-r-symbol-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-a-symbol-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-m-symbol-1, Observation)

// TNM Klassifikation Grouper
* insert AddBundleEntry(mii-exa-test-data-onko-tnm-klassifikation-1, Observation)

// =====================================
// STAGING (Chapter 9-12)
// =====================================

* insert AddBundleEntry(mii-exa-test-data-onko-figo-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-residualstatus-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-fernmetastasen-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-ecog-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-karnofsky-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-asa-1, Observation)

// =====================================
// THERAPIE (Chapters 13-16)
// =====================================

// Operation (Chapter 13)
* insert AddBundleEntry(mii-exa-test-data-onko-operation-1, Procedure)

// Strahlentherapie (Chapter 14)
* insert AddBundleEntry(mii-exa-test-data-onko-strahlentherapie-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-onko-strahlentherapie-bestrahlung-1, Procedure)

// Systemische Therapie (Chapter 16)
* insert AddBundleEntry(mii-exa-test-data-onko-systemische-therapie-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-onko-medikation-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-onko-medikation-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-onko-medikation-3, MedicationStatement)

// =====================================
// TUMORKONFERENZ (Chapters 18-19)
// =====================================

* insert AddBundleEntry(mii-exa-test-data-onko-tumorkonferenz-1, CarePlan)
* insert AddBundleEntry(mii-exa-test-data-onko-tumorkonferenz-2, CarePlan)
* insert AddBundleEntry(mii-exa-test-data-onko-tumorkonferenz-molekular-1, CarePlan)
* insert AddBundleEntry(mii-exa-test-data-onko-therapieempfehlung-op-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-onko-therapieempfehlung-medikation-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-onko-therapieempfehlung-medikation-2, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-onko-therapieempfehlung-kombi-1, RequestGroup)
* insert AddBundleEntry(mii-exa-test-data-onko-therapieempfehlung-parp-1, RequestGroup)
* insert AddBundleEntry(mii-exa-test-data-onko-therapieempfehlung-niraparib, MedicationRequest)

// =====================================
// OUTCOME (Chapters 15, 17, 20, 23, 24)
// =====================================

// Nebenwirkung (Chapter 15)
* insert AddBundleEntry(mii-exa-test-data-onko-nebenwirkung-1, AdverseEvent)
* insert AddBundleEntry(mii-exa-test-data-onko-nebenwirkung-2, AdverseEvent)

// Verlauf (Chapter 17)
* insert AddBundleEntry(mii-exa-test-data-onko-verlauf-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-verlauf-2, Observation)

// Tod (Chapter 20)
* insert AddBundleEntry(mii-exa-test-data-onko-tod-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-tod-2, Observation)

// Genetische Variante (Chapter 23)
* insert AddBundleEntry(mii-exa-test-data-onko-genetische-variante-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-genetische-variante-2, Observation)

// Studienteilnahme (Chapter 24)
* insert AddBundleEntry(mii-exa-test-data-onko-studienteilnahme-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-studienteilnahme-2, Observation)

// =====================================
// ORGAN-SPECIFIC: MAMMA
// =====================================

* insert AddBundleEntry(mii-exa-test-data-onko-mamma-menopause-status-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-rezeptorstatus-estrogen-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-rezeptorstatus-progesteron-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-her2neu-status-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-her2neu-status-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-praeop-markierung-1, Procedure)

// =====================================
// ORGAN-SPECIFIC: PROSTATA
// =====================================

* insert AddBundleEntry(mii-exa-test-data-onko-prostata-psa-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-prostata-anzahl-stanzen-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-prostata-positive-stanzen-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-prostata-ca-befall-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-prostata-gleason-primary-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-prostata-gleason-secondary-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-prostata-gleason-grade-group-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-prostata-surgery-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-onko-prostata-komplikation-1, Observation)

// =====================================
// ORGAN-SPECIFIC: KOLOREKTALES KARZINOM
// =====================================

* insert AddBundleEntry(mii-exa-test-data-onko-krk-abstand-anokutan-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-krk-abstand-crm-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-krk-abstand-aboral-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-krk-abstand-mesorektal-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-krk-anastomoseninsuffizienz-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-krk-stoma-markierung-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-onko-krk-operation-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-onko-krk-specimen-1, Specimen)

// =====================================
// ORGAN-SPECIFIC: MALIGNES MELANOM
// =====================================

* insert AddBundleEntry(mii-exa-test-data-onko-melanom-breslow-tiefe-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-melanom-ulzeration-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-melanom-ulzeration-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-melanom-sicherheitsabstand-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-melanom-ldh-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-melanom-ldh-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-melanom-exzision-1, Procedure)

