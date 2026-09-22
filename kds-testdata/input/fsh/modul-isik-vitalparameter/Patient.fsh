// ============================================================================
// ISiK Vitalparameter Test Data - Patient und Encounter
// Technisches Bundle fuer die ISiK-6.0.0-Vitalparameter-Profile (gematik).
// Szenario: Viktoria Vogel, 58 Jahre, stationaere Aufnahme nach Synkope;
// vollstaendiges Vitalparameter-Monitoring inkl. 12-Kanal-EKG und GCS.
// Die ISiK-Profile verlangen nur Reference(Patient)/Reference(Encounter),
// daher eigener KDS-Style-Patient statt ISiKPatient (siehe Research-Doku).
// ============================================================================

Instance: mii-exa-test-data-isik-vitalparameter-patient-1
InstanceOf: Patient
Usage: #example
Description: "ISiK Vitalparameter Test Patient: Viktoria Vogel (Synkope, Vitalparameter-Monitoring)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[+].system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier[=].value = "ISIK-VITAL-TEST-001"
* name.family = "Vogel"
* name.given = "Viktoria"
* birthDate = 1968-04-17
* gender = #female

Instance: mii-exa-test-data-isik-vitalparameter-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "ISiK Vitalparameter Test Encounter: stationaere Aufnahme zur Synkopenabklaerung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-isik-vitalparameter-patient-1)
* period.start = "2026-05-11"
* period.end = "2026-05-14"
