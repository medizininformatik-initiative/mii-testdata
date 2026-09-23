// ============================================================================
// MII Patho Test Data - Befunddokument-Bundle (mii-pr-patho-bundle)
// Dokument-Bundle nach ISiKBerichtBundle: Composition als erster Entry,
// alle Ressourcen der Befundkette als weitere Entries.
// Hinweis: Das Patho-Modul 2027.0.0-ballot liefert selbst KEIN Bundle-Beispiel;
// dies ist die erste vollstaendig verkettete Bundle-Instanz.
// TNM-Observations und die gesicherte Diagnose sind bewusst NICHT Teil des
// Dokuments (von keiner Dokument-Ressource referenziert); sie stehen nur im
// Transaction-Bundle mii-exa-test-data-bundle-patho-1.
// ============================================================================

RuleSet: PathoDocEntrySliced(resource, type, slice)
* entry[{slice}][+].fullUrl = "https://www.medizininformatik-initiative.de/{type}/{resource}"
* entry[{slice}][=].resource = {resource}

RuleSet: PathoDocEntryPlain(resource, type)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/{type}/{resource}"
* entry[=].resource = {resource}

Instance: mii-exa-test-data-patho-befund-bundle-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-bundle
Usage: #example
Title: "Befunddokument Prostatabiopsie"
Description: "Dokument-Bundle: vollstaendiger Prostatabiopsie-Befundbericht (2 Stanzen) nach mii-pr-patho-bundle"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.lastUpdated = "2024-01-20T16:00:00+01:00"
* identifier.system = "https://www.charite.de/fhir/sid/patho/befundbericht"
* identifier.value = "E_24_001-DOC"
* type = #document
* timestamp = "2024-01-20T15:30:00+01:00"
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2024-01-20T15:30:00+01:00"
* signature.who = Reference(mii-exa-test-data-patho-organization-1)

// Entry 0: Composition (muss erster Entry sein)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-composition-1, Composition, Composition)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-patient-1, Patient, Patient)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-encounter-1, Encounter, Encounter)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-request-1, ServiceRequest, ServiceRequest)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-specimen-01-block, Specimen, Specimen)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-specimen-01-part, Specimen, Specimen)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-specimen-01-slide, Specimen, Specimen)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-specimen-03-block, Specimen, Specimen)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-specimen-03-part, Specimen, Specimen)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-specimen-03-slide, Specimen, Specimen)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-report-1, DiagnosticReport, DiagnosticReport)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-asap, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-conclusion-grouper-1, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-gleason-grading-01, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-gleason-score-total, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-grading-group-isup, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-granulomatous-prostatitis, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-high-grade-pin, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-histo-typ-01, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-histo-typ-03, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-histological-grade-who, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-histological-type-icdo-3, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-icdo-version, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-intraductal-carcinoma, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-intraop-befund-1, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-intraop-grouper-1, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-lymphovascular-invasion, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-macro-grouper-1, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-macroscopic-cylinder-count-01, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-macroscopic-cylinder-count-03, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-macroscopic-laterality-01, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-macroscopic-laterality-03, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-macroscopic-length-01, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-macroscopic-length-03, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-micro-grouper-1, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-morph-text-01, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-morph-text-03, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-morphology-free-text, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-p63-befund-1, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-percentage-gleason-45, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-percentage-tumor-total, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-perineural-infiltration, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-periprostatatic-fat-invasion, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-positive-cores-left, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-positive-cores-right, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-primaer-gleason-01, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-primary-gleason-pattern, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-psa-1, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-ratio-positive-cores, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-secondary-gleason-pattern, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-sekundaer-gleason-01, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-seminal-vesicle-invasion, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-tumor-length-total, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-tumoranteil-01, Observation, Observations)
* insert PathoDocEntrySliced(mii-exa-test-data-patho-zusatz-grouper-1, Observation, Observations)
* insert PathoDocEntryPlain(mii-exa-test-data-patho-diagnose-verdacht-1, Condition)
* insert PathoDocEntryPlain(mii-exa-test-data-patho-image-1, Media)
* insert PathoDocEntryPlain(mii-exa-test-data-patho-organization-1, Organization)
* insert PathoDocEntryPlain(mii-exa-test-data-patho-practitioner-1, Practitioner)
* insert PathoDocEntryPlain(mii-exa-test-data-patho-practitioner-2, Practitioner)
* insert PathoDocEntryPlain(mii-exa-test-data-patient-1-patho-active-problems-1, List)
* insert PathoDocEntryPlain(mii-exa-test-data-patient-1-patho-hopi-1, List)
* insert PathoDocEntryPlain(mii-exa-test-data-patient-1-patho-problem-list-item-1, Condition)
