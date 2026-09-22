// ============================================================================
// Studien Bundle
// ============================================================================

Instance: mii-exa-test-data-bundle-studien-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Studien Testdaten Patient-1"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-studien-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-studien-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-studien-diagnose-1, Condition)
// * insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
// Studieneinschluss
* insert AddBundleEntry(mii-exa-test-data-studie-einschluss-anfrage-1, ServiceRequest)
// Studie + Register + Proband + Dokument + Kriterien (Profilluecken-Abdeckung)
* insert AddBundleEntry(mii-exa-test-data-studien-studie-1, ResearchStudy)
* insert AddBundleEntry(mii-exa-test-data-studien-register-1, Library)
* insert AddBundleEntry(mii-exa-test-data-studien-proband-1, ResearchSubject)
* insert AddBundleEntry(mii-exa-test-data-studien-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-studien-dokument-1, DocumentReference)
* insert AddBundleEntry(mii-exa-test-data-studien-kriterium-1, EvidenceVariable)
* insert AddBundleEntry(mii-exa-test-data-studien-group-1, Group)
// Infrastructure
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
