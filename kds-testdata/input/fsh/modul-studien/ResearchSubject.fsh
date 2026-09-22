// ============================================================================
// MII Studien Test Data - Proband (ResearchSubject) + Einwilligung (Consent)
// Adaptiert aus dem Paket-Beispiel ResearchSubject-mii-exa-studie-proband
// (de.medizininformatikinitiative.kerndatensatz.studie 2027.0.0-ballot)
// und den historischen 2025er-Testdaten (git 00b7374c^).
// ============================================================================

Instance: mii-exa-test-data-studien-proband-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband
Usage: #example
Description: "ResearchSubject: Proband Felix Proband in MII-BIOMARKER-2024"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[subjectIdentificationCode].type = $v2-0203#ANON
* identifier[subjectIdentificationCode].system = "https://www.medizininformatik-initiative.de/fhir/core/sid/SubjectIdentificationCode"
* identifier[subjectIdentificationCode].value = "123456789"
* status = #on-study
* period.start = "2024-03-15"
* period.end = "2025-03-15"
* study = Reference(mii-exa-test-data-studien-studie-1)
* individual = Reference(mii-exa-test-data-studien-patient-1)
* consent = Reference(mii-exa-test-data-studien-consent-1)

// Einwilligung in die Studienteilnahme (Ziel von ResearchSubject.consent, 1..1 im Proband-Profil)
Instance: mii-exa-test-data-studien-consent-1
InstanceOf: Consent
Usage: #example
Description: "Consent: Einwilligung in die Teilnahme an MII-BIOMARKER-2024"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* scope = $consentscope#research
* category = $consentcategorycodes#research
* patient = Reference(mii-exa-test-data-studien-patient-1)
* dateTime = "2024-03-15"
* policyRule = $consentpolicycodes#cric
