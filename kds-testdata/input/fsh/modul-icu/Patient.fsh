// ============================================================================
// MII ICU Test Data - Patient and Infrastructure Resources
// ============================================================================

// Dieselbe Person wie mii-exa-test-data-onko-patient-1 (Standort A), verknüpft
// über die gemeinsame KVNR. Standort B führt eine eigene lokale Patienten-ID.
Instance: mii-exa-test-data-icu-patient-1
InstanceOf: Patient
Usage: #example
Description: "ICU Test Patient (Standort B). Identisch mit Onko-Patient an Standort A (gemeinsame KVNR)."
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
// Standort-lokale Patienten-ID (Standort B)
* identifier[+].system = "https://www.medizininformatik-initiative.de/fhir/sid/standort-b"
* identifier[=].value = "ICU-TEST-001"
// Standortübergreifende Verknüpfung: gemeinsame gesetzliche Versichertennummer (KVNR)
* identifier[+].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "K220635158"
* name.family = "Musterperson"
* name.given = "Kim"
* birthDate = 1956-03-14
* gender = #female

Instance: mii-exa-test-data-icu-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "ICU Test Encounter (Standort B) - Aufnahme wegen COVID-19"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* period.start = "2024-05-01"
* period.end = "2024-05-14"
// Aufnahme-/Hauptdiagnose: COVID-19
* diagnosis[+].condition = Reference(mii-exa-test-data-icu-diagnose-1)
* diagnosis[=].use = $diagnosis-role#AD "Admission diagnosis"
* diagnosis[=].rank = 1
// Hinweis: Das standortuebergreifende Crossmodul-Szenario (Onko-Nebendiagnose,
// Organization Standort B) ist auf Branch wip/icu2026-crossmodul geparkt.
// Dokumentierende aerztliche Person der Intensivstation (performer/recorder)
Instance: mii-exa-test-data-icu-practitioner-1
InstanceOf: Practitioner
Usage: #example
Description: "ICU Practitioner: Intensivmedizinerin (Dokumentation der Scores und Prozeduren)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/practitioner-identifier"
* identifier.value = "ICU-ARZT-001"
* name.family = "Weber"
* name.given = "Katharina"
* name.prefix = "Dr. med."

// Anordnung des kontinuierlichen Monitorings (Observation.basedOn der
// Monitoring-und-Vitaldaten-Profile)
Instance: mii-exa-test-data-icu-servicerequest-monitoring-1
InstanceOf: ServiceRequest
Usage: #example
Description: "ICU ServiceRequest: Anordnung kontinuierliches Vitaldaten-Monitoring und taegliche Koerpermasse"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/icu-servicerequest-id"
* identifier.value = "icu-sr-monitoring-1"
* status = #active
* intent = #order
* category = $sct#182777000 "Monitoring of patient"
* code = $sct#304495004 "Monitoring of blood pressure, temperature, pulse rate and respiratory rate"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* authoredOn = "2024-05-01T12:00:00+02:00"
* requester = Reference(mii-exa-test-data-icu-practitioner-1)
* occurrencePeriod.start = "2024-05-01T12:00:00+02:00"
* occurrencePeriod.end = "2024-05-14T12:00:00+02:00"
