// ============================================================================
// Seltene Erkrankungen - Registerteilnahme
// Adaptiert aus den Beispielen des Pakets
// de.medizininformatikinitiative.kerndatensatz.seltene 2027.0.0-ballot
// (ResearchSubject-mii-exa-seltene-registerteilnahme,
//  Library-mii-exa-seltene-register-katalog-euro-nmd,
//  ResearchStudy-mii-exa-seltene-register-euro-nmd,
//  Consent-mii-exa-seltene-register-einwilligung)
// EURO-NMD (neuromuskulaer) -> ERN ReCONNET (seltene Bindegewebserkrankungen),
// passend zur Marfan-Diagnose von Luisa Seltenfall
// ============================================================================

// --- Registerteilnahme (ResearchSubject) ---
Instance: mii-exa-test-data-patient-3-seltene-registerteilnahme-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme
Usage: #example
Description: "Registerteilnahme: Einschluss in das ERN ReCONNET Register (Marfan-Syndrom)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[register].valueReference = Reference(mii-exa-test-data-seltene-register-katalog-1)
* identifier.system = "https://reconnet.ern-net.eu/fhir/sid/subject"
* identifier.value = "RCN-DE-001358"
* status = #on-study
* period.start = "2024-04-02"
* study = Reference(mii-exa-test-data-seltene-register-study-1)
* individual = Reference(mii-exa-test-data-seltene-patient-1)
* consent = Reference(mii-exa-test-data-seltene-register-consent-1)

// --- Register-Katalogeintrag (Library) ---
Instance: mii-exa-test-data-seltene-register-katalog-1
InstanceOf: Library
Usage: #example
Description: "Library: Katalogeintrag ERN ReCONNET Register fuer seltene Bindegewebserkrankungen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://reconnet.ern-net.eu/fhir/sid/registry"
* identifier.value = "RECONNET-REG"
* name = "ERNReCONNETRegistry"
* title = "ERN ReCONNET Registry - Katalogeintrag"
* status = #active
* type = $library-type#asset-collection
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://reconnet.ern-net.eu/"
* relatedArtifact.document.url = "https://reconnet.ern-net.eu/"

// --- Register als ResearchStudy (Ziel von ResearchSubject.study) ---
Instance: mii-exa-test-data-seltene-register-study-1
InstanceOf: ResearchStudy
Usage: #example
Description: "ResearchStudy: ERN ReCONNET Register fuer seltene Bindegewebserkrankungen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://reconnet.ern-net.eu/fhir/sid/registry"
* identifier.value = "RECONNET-REG"
* title = "ERN ReCONNET Registry - Rare Connective Tissue and Musculoskeletal Diseases"
* status = #active
* description = "Register des Europaeischen Referenznetzwerks fuer seltene Bindegewebs- und Muskel-Skelett-Erkrankungen."

// --- Einwilligung in die Registerteilnahme (Consent) ---
Instance: mii-exa-test-data-seltene-register-consent-1
InstanceOf: Consent
Usage: #example
Description: "Consent: Einwilligung in die Teilnahme am ERN ReCONNET Register"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* scope = $consentscope#research
* category = $consentcategorycodes#research
* patient = Reference(mii-exa-test-data-seltene-patient-1)
* dateTime = "2024-04-02"
* policyRule = $consentpolicycodes#cric
