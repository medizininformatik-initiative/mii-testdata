RuleSet: AddBundleEntry(resource, url)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/{url}/{resource}"
* entry[=].resource = {resource}
* entry[=].request.method = #POST
* entry[=].request.url = "{url}"

// RuleSet: AddBundleEntryConditional(resource, url, ifNoneExist)
// * entry[+].fullUrl = "https://www.medizininformatik-initiative.de/{url}/{resource}"
// * entry[=].resource = {resource}
// * entry[=].request.method = #POST
// * entry[=].request.url = "{url}"
// * entry[=].request.ifNoneExist = "{ifNoneExist}"
// 
// Instance: mii-exa-test-data-bundle-pat-1-conditional
// InstanceOf: Bundle
// * type = #transaction
// * timestamp = "2025-07-03T10:55:00+02:00"
// * insert AddBundleEntryConditional(mii-exa-test-data-patient-1, Patient, identifier=https://www.charite.de/fhir/sid/patientenidentifikation%7C808439625)


// =============================================================================
// Patient-1
// =============================================================================
Instance: mii-exa-test-data-bundle-pat-1
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Patient-1"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-patient-1, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-1-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-1-vitalstatus-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-todesursache-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-patient-1-diagnose-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-patient-1-diagnose-2, Condition)
* insert AddBundleEntry(mii-exa-test-data-patient-1-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-patient-1-encounter-2, Encounter)
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)
* insert AddBundleEntry(mii-exa-test-data-patient-1-prozedur-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-1-prozedur-2, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-1-list-aufnahmemedikation, List)
* insert AddBundleEntry(mii-exa-test-data-patient-1-list-stat-aufenthalt, List)
* insert AddBundleEntry(mii-exa-test-data-medication-ass-100, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-propofol, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-dalbavancin, Medication)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medadmin-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medadmin-2, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medrequest-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medrequest-2, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medrequest-3, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medrequest-4, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medstatement-3, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-1-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-1-substance-1, Substance)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-c303, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-e402, Device)
* insert AddBundleEntry(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobas)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-c303, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-e402, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasE402)
// * insert AddBundleEntryConditional(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303-160192)
* insert AddBundleEntry(mii-exa-test-data-organization-biobank-charite, Organization)
* insert AddBundleEntry(mii-exa-test-data-patient-1-labreport-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-1-labrequest-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-organization-labor-berlin, Organization)
* insert AddBundleEntry(mii-exa-test-data-patient-1-labobs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-labobs-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-labobs-3, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-labobs-4, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-labobs-5, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-labobs-6, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-1-labobs-7, Observation)
* insert AddBundleEntry(mii-exa-test-data-practitioner-role-physician-1, PractitionerRole)
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-2, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-koerperstruktur, BodyStructure)
* insert AddBundleEntry(mii-exa-test-data-behandlungsempfehlung, CarePlan)
* insert AddBundleEntry(mii-exa-test-data-semistrukt-befundbericht, Composition)
* insert AddBundleEntry(mii-exa-test-data-geraet, Device)
* insert AddBundleEntry(mii-exa-test-data-befundbericht, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-bildgebungsprozedur, Procedure)
* insert AddBundleEntry(mii-exa-test-data-bildgebungsstudie, ImagingStudy)
* insert AddBundleEntry(mii-exa-test-data-radiologische-beobachtung, Observation)
* insert AddBundleEntry(mii-exa-test-data-befundungsprozedur, Procedure)
* insert AddBundleEntry(mii-exa-test-data-anforderung, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-kontrastmittelgabe, MedicationAdministration)

// =============================================================================
// Patient-2
// =============================================================================
Instance: mii-exa-test-data-bundle-pat-2
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Patient-2"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:53:00+02:00"

// Basis-Module
* insert AddBundleEntry(mii-exa-test-data-patient-2, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-2-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-2-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-patient-2-diagnose-1, Condition)

// Person-Module (verstorbener Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-2-vitalstatus-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-2-todesursache-1, Condition)

// Prozedur-Module
* insert AddBundleEntry(mii-exa-test-data-patient-2-prozedur-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-2-prozedur-2, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-2-prozedur-3, Procedure)

// Labor-Module
* insert AddBundleEntry(mii-exa-test-data-patient-2-labrequest-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-2-labreport-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-2-labobs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-2-labobs-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-2-labobs-3, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-2-labobs-4, Observation)

// Medikations-Module
* insert AddBundleEntry(mii-exa-test-data-patient-2-medrequest-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-2-medrequest-2, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-2-medrequest-3, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-2-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-2-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-2-medstatement-3, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-2-medstatement-4, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-2-medstatement-5, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-2-medadmin-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-2-medadmin-2, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-2-medadmin-3, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-2-list-stat-aufenthalt, List)

// Medication-Ressourcen
* insert AddBundleEntry(mii-exa-test-data-medication-morphin, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-carboplatin, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-paclitaxel, Medication)

// Biobank-Module
* insert AddBundleEntry(mii-exa-test-data-patient-2-specimen-1, Specimen)

// Organisationen
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-labor-berlin, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-biobank-charite, Organization)

// Practitioner/PractitionerRole
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-practitioner-role-physician-1, PractitionerRole)

// Devices
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-c303, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-e402, Device)
* insert AddBundleEntry(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobas)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-c303, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-e402, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasE402)
// * insert AddBundleEntryConditional(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303-160192)

// =============================================================================
// Patient-3
// =============================================================================
Instance: mii-exa-test-data-bundle-pat-3
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Patient-3"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"

// Basis-Module
* insert AddBundleEntry(mii-exa-test-data-patient-3, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-3-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-3-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-patient-3-diagnose-1, Condition)

// Prozedur-Module
* insert AddBundleEntry(mii-exa-test-data-patient-3-prozedur-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-3-prozedur-2, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-3-prozedur-3, Procedure)

// Labor-Module
* insert AddBundleEntry(mii-exa-test-data-patient-3-labrequest-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-labreport-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-3-labobs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-labobs-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-labobs-3, Observation)

// Medikations-Module
* insert AddBundleEntry(mii-exa-test-data-patient-3-medrequest-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medrequest-2, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medrequest-3, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medstatement-3, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medstatement-4, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medadmin-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medadmin-2, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medadmin-3, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-3-list-stat-aufenthalt, List)

// Medication-Ressourcen
* insert AddBundleEntry(mii-exa-test-data-medication-metamizol, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-rezeptur-doxorubicin, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-glucoseloesung, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-5-fluorouracil, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-oxaliplatin, Medication)

// Molekulargenetik-Module (bereits vorhanden, aber vollständig)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-anforderung-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-befundbericht-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-ergebnis-zusammenfassung-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-diagnostische-implikation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-variante-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-untersuchte-region-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-genotyp-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-mutationslast-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-msi-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-medikationsempfehlung-1, Task)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-folgemassnahme-1, Task)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-family-member-history-1, FamilyMemberHistory)

// Biobank-Module
* insert AddBundleEntry(mii-exa-test-data-patient-3-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-3-specimen-2, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-3-specimen-3, Specimen)

// Organisationen
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-labor-berlin, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-biobank-charite, Organization)

// Practitioner/PractitionerRole
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-practitioner-role-physician-1, PractitionerRole)

// Devices
* insert AddBundleEntry(mii-exa-test-data-molgen-device-sequencer, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-c303, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-e402, Device)
* insert AddBundleEntry(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric)
//* insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobas)
//* insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-c303, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303)
//* insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-e402, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasE402)
//* insert AddBundleEntryConditional(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303-160192)

// =============================================================================
// Patient-4
// =============================================================================
Instance: mii-exa-test-data-bundle-pat-4
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Patient-4"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:54:00+02:00"

// Basis-Module
* insert AddBundleEntry(mii-exa-test-data-patient-4, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-4-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-4-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-patient-4-diagnose-1, Condition)

// Prozedur-Module
* insert AddBundleEntry(mii-exa-test-data-patient-4-prozedur-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-4-prozedur-2, Procedure)

// Labor-Module
* insert AddBundleEntry(mii-exa-test-data-patient-4-labrequest-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-4-labreport-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-4-labobs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-labobs-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-labobs-3, Observation)

// Medikations-Module
* insert AddBundleEntry(mii-exa-test-data-patient-4-medrequest-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-4-medrequest-2, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-4-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-4-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-4-medadmin-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-4-medadmin-2, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-4-list-stat-aufenthalt, List)

// Medication-Ressourcen
* insert AddBundleEntry(mii-exa-test-data-medication-cisplatin, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-omeprazol, Medication)

// Molekulargenetik-Module (bereits vorhanden, aber vollständig)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-anforderung-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-befundbericht-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-variante-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-diagnostische-implikation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-3, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-4, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-5, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-6, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-7, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-8, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-9, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-10, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-11, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-12, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-13, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-14, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-15, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-16, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-17, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-untersuchte-region-18, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-family-member-history-1, FamilyMemberHistory)

// Biobank-Module
* insert AddBundleEntry(mii-exa-test-data-patient-4-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-4-specimen-2, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-4-specimen-3, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-4-specimen-4, Specimen)

// Organisationen
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-labor-berlin, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-biobank-charite, Organization)

// Practitioner/PractitionerRole
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-2, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-practitioner-role-physician-1, PractitionerRole)

// Devices
* insert AddBundleEntry(mii-exa-test-data-molgen-device-sequencer, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-c303, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-e402, Device)
* insert AddBundleEntry(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobas)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-c303, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-e402, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasE402)
// * insert AddBundleEntryConditional(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303-160192)

// =============================================================================
// Patient-5
// =============================================================================
Instance: mii-exa-test-data-bundle-pat-5
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Patient-5"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:55:00+02:00"

// Basis-Module
* insert AddBundleEntry(mii-exa-test-data-patient-5, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-5-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-5-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-patient-5-diagnose-1, Condition)

// Person-Module
* insert AddBundleEntry(mii-exa-test-data-patient-5-vitalstatus-1, Observation)

// Prozedur-Module
* insert AddBundleEntry(mii-exa-test-data-patient-5-prozedur-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-5-prozedur-2, Procedure)

// Labor-Module
* insert AddBundleEntry(mii-exa-test-data-patient-5-labrequest-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-5-labreport-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-5-labobs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-5-labobs-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-5-labobs-3, Observation)

// Medikations-Module
* insert AddBundleEntry(mii-exa-test-data-patient-5-medrequest-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-5-medrequest-2, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-5-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-5-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-5-medadmin-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-5-medadmin-2, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-5-list-aufnahmemedikation, List)
* insert AddBundleEntry(mii-exa-test-data-patient-5-list-stat-aufenthalt, List)

// Medication-Ressourcen
* insert AddBundleEntry(mii-exa-test-data-medication-leuprorelin, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-ibuprofen, Medication)

// Biobank-Module
* insert AddBundleEntry(mii-exa-test-data-patient-5-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-5-specimen-2, Specimen)

// Organisationen
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-labor-berlin, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-biobank-charite, Organization)

// Practitioner/PractitionerRole
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-practitioner-role-physician-1, PractitionerRole)

// Devices
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-c303, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-e402, Device)
* insert AddBundleEntry(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobas)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-c303, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-e402, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasE402)
// * insert AddBundleEntryConditional(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303-160192)

// =============================================================================
// Patient-6
// =============================================================================
Instance: mii-exa-test-data-bundle-pat-6
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Patient-6"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:56:00+02:00"

// Basis-Module
* insert AddBundleEntry(mii-exa-test-data-patient-6, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-6-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-6-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-patient-6-diagnose-1, Condition)

// Person-Module
* insert AddBundleEntry(mii-exa-test-data-patient-6-vitalstatus-1, Observation)

// Prozedur-Module
* insert AddBundleEntry(mii-exa-test-data-patient-6-prozedur-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-6-prozedur-2, Procedure)

// Labor-Module
* insert AddBundleEntry(mii-exa-test-data-patient-6-labrequest-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-6-labreport-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-6-labobs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-6-labobs-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-6-labobs-3, Observation)

// Medikations-Module
* insert AddBundleEntry(mii-exa-test-data-patient-6-medrequest-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-6-medrequest-2, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-6-medrequest-3, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-6-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-6-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-6-medstatement-3, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-6-medadmin-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-6-medadmin-2, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-6-list-aufnahmemedikation, List)
* insert AddBundleEntry(mii-exa-test-data-patient-6-list-stat-aufenthalt, List)
* insert AddBundleEntry(mii-exa-test-data-patient-6-list-entlassmedikation, List)

// Medication-Ressourcen
* insert AddBundleEntry(mii-exa-test-data-medication-pantoprazol, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-amoxicillin, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-clarithromycin, Medication)

// Biobank-Module
* insert AddBundleEntry(mii-exa-test-data-patient-6-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-6-specimen-2, Specimen)

// Organisationen
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-labor-berlin, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-biobank-charite, Organization)

// Practitioner/PractitionerRole
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-practitioner-role-physician-1, PractitionerRole)

// Devices
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-c303, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-e402, Device)
* insert AddBundleEntry(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobas)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-c303, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-e402, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasE402)
// * insert AddBundleEntryConditional(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303-160192)

// =============================================================================
// Patient-7
// =============================================================================
Instance: mii-exa-test-data-bundle-pat-7
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Patient-7"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:57:00+02:00"

// Basis-Module
* insert AddBundleEntry(mii-exa-test-data-patient-7, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-7-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-7-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-patient-7-diagnose-1, Condition)

// Person-Module
* insert AddBundleEntry(mii-exa-test-data-patient-7-vitalstatus-1, Observation)

// Prozedur-Module
* insert AddBundleEntry(mii-exa-test-data-patient-7-prozedur-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-7-prozedur-2, Procedure)

// Labor-Module
* insert AddBundleEntry(mii-exa-test-data-patient-7-labrequest-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-7-labreport-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-7-labobs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-7-labobs-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-7-labobs-3, Observation)

// Medikations-Module
* insert AddBundleEntry(mii-exa-test-data-patient-7-medrequest-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-7-medrequest-2, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-7-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-7-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-7-medadmin-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-7-medadmin-2, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-7-list-stat-aufenthalt, List)
* insert AddBundleEntry(mii-exa-test-data-patient-7-list-entlassmedikation, List)

// Medication-Ressourcen
* insert AddBundleEntry(mii-exa-test-data-medication-amoxicillin-clavulansaeure, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-salbutamol, Medication)

// Biobank-Module
* insert AddBundleEntry(mii-exa-test-data-patient-7-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-7-specimen-2, Specimen)

// Organisationen
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-labor-berlin, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-biobank-charite, Organization)

// Practitioner/PractitionerRole
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-practitioner-role-physician-1, PractitionerRole)

// Devices
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-c303, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-e402, Device)
* insert AddBundleEntry(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobas)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-c303, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-e402, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasE402)
// * insert AddBundleEntryConditional(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303-160192)

// =============================================================================
// Patient-8
// =============================================================================
Instance: mii-exa-test-data-bundle-pat-8
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Patient-8"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:58:00+02:00"

// Basis-Module
* insert AddBundleEntry(mii-exa-test-data-patient-8, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-8-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-8-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-patient-8-diagnose-1, Condition)

// Person-Module (verstorbener Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-8-vitalstatus-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-8-todesursache-1, Condition)

// Prozedur-Module
* insert AddBundleEntry(mii-exa-test-data-patient-8-prozedur-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-8-prozedur-2, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-8-prozedur-3, Procedure)

// Labor-Module
* insert AddBundleEntry(mii-exa-test-data-patient-8-labrequest-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-8-labreport-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-8-labobs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-8-labobs-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-8-labobs-3, Observation)

// Medikations-Module
* insert AddBundleEntry(mii-exa-test-data-patient-8-medrequest-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-8-medrequest-2, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-8-medrequest-3, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-8-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-8-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-8-medstatement-3, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-8-medadmin-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-8-medadmin-2, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-8-medadmin-3, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-8-list-stat-aufenthalt, List)

// Medication-Ressourcen
* insert AddBundleEntry(mii-exa-test-data-medication-heparin, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-metoprolol, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-atorvastatin, Medication)

// Biobank-Module
* insert AddBundleEntry(mii-exa-test-data-patient-8-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-8-specimen-2, Specimen)

// Organisationen
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-labor-berlin, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-biobank-charite, Organization)

// Practitioner/PractitionerRole
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-practitioner-role-physician-1, PractitionerRole)

// Devices
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-c303, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-e402, Device)
* insert AddBundleEntry(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobas)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-c303, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-e402, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasE402)
// * insert AddBundleEntryConditional(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303-160192)

// =============================================================================
// Patient-9
// =============================================================================
Instance: mii-exa-test-data-bundle-pat-9
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Patient-9"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T13:59:00+02:00"

// Basis-Module
* insert AddBundleEntry(mii-exa-test-data-patient-9, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-9-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-9-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-patient-9-diagnose-1, Condition)

// Person-Module
* insert AddBundleEntry(mii-exa-test-data-patient-9-vitalstatus-1, Observation)

// Prozedur-Module
* insert AddBundleEntry(mii-exa-test-data-patient-9-prozedur-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-9-prozedur-2, Procedure)

// Labor-Module
* insert AddBundleEntry(mii-exa-test-data-patient-9-labrequest-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-9-labreport-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-9-labobs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-9-labobs-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-9-labobs-3, Observation)

// Medikations-Module
* insert AddBundleEntry(mii-exa-test-data-patient-9-medrequest-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-9-medrequest-2, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-9-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-9-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-9-medadmin-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-9-medadmin-2, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-9-list-aufnahmemedikation, List)
* insert AddBundleEntry(mii-exa-test-data-patient-9-list-entlassmedikation, List)

// Medication-Ressourcen
* insert AddBundleEntry(mii-exa-test-data-medication-ethinylestradiol-levonorgestrel, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-paracetamol, Medication)

// Biobank-Module
* insert AddBundleEntry(mii-exa-test-data-patient-9-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-9-specimen-2, Specimen)

// Organisationen
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-labor-berlin, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-biobank-charite, Organization)

// Practitioner/PractitionerRole
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-practitioner-role-physician-1, PractitionerRole)

// Devices
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-c303, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-e402, Device)
* insert AddBundleEntry(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobas)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-c303, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-e402, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasE402)
// * insert AddBundleEntryConditional(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303-160192)

// =============================================================================
// Patient-10
// =============================================================================
Instance: mii-exa-test-data-bundle-pat-10
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Patient-10"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T14:00:00+02:00"

// Basis-Module
* insert AddBundleEntry(mii-exa-test-data-patient-10, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-10-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-10-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-patient-10-diagnose-1, Condition)

// Person-Module
* insert AddBundleEntry(mii-exa-test-data-patient-10-vitalstatus-1, Observation)

// Prozedur-Module
* insert AddBundleEntry(mii-exa-test-data-patient-10-prozedur-1, Procedure)
* insert AddBundleEntry(mii-exa-test-data-patient-10-prozedur-2, Procedure)

// Labor-Module
* insert AddBundleEntry(mii-exa-test-data-patient-10-labrequest-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-10-labreport-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-10-labobs-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-10-labobs-2, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-10-labobs-3, Observation)

// Medikations-Module
* insert AddBundleEntry(mii-exa-test-data-patient-10-medrequest-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-10-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-10-medadmin-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-10-medrequest-2, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-10-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-10-medadmin-2, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-10-list-aufnahmemedikation, List)
* insert AddBundleEntry(mii-exa-test-data-patient-10-list-entlassmedikation, List)

// Medication-Ressourcen
* insert AddBundleEntry(mii-exa-test-data-medication-sumatriptan, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-topiramat, Medication)

// Biobank-Module
* insert AddBundleEntry(mii-exa-test-data-patient-10-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-10-specimen-2, Specimen)

// Organisationen
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-labor-berlin, Organization)
* insert AddBundleEntry(mii-exa-test-data-organization-biobank-charite, Organization)

// Practitioner/PractitionerRole
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-1, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-practitioner-role-physician-1, PractitionerRole)

// Devices
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-c303, Device)
* insert AddBundleEntry(mii-exa-test-data-device-roche-cobas-e402, Device)
* insert AddBundleEntry(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobas)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-c303, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-e402, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasE402)
// * insert AddBundleEntryConditional(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303-160192)


// Instance: mii-exa-test-data-bundle-dev
// InstanceOf: Bundle
// Usage: #example
// Description: "Bundle: Dev"
// * insert TestDataLabel
// * type = #transaction
// * timestamp = "2025-07-25T19:13:00+02:00"
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobas)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-c303, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303)
// * insert AddBundleEntryConditional(mii-exa-test-data-device-roche-cobas-e402, Device, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasE402)
// * insert AddBundleEntryConditional(mii-exa-test-data-devicemetric-roche-cobas-c303-1, DeviceMetric, identifier=https://www.charite.de/fhir/sid/Laboratory-device-identifier%7CRocheCobasC303-160192)

Instance: mii-exa-test-data-bundle-onko-mamma
InstanceOf: Bundle
Usage: #example
Description: "Bundle: Onkologie Mamma Beispiel"
* insert TestDataLabel
* type = #transaction
* timestamp = "2025-06-18T14:00:00+02:00"

* insert AddBundleEntry(mii-exa-test-data-patient-onko-mamma, Patient)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-primaerdiagnose, Condition)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-fall, Encounter)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-specimen, Specimen)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-lymphknotenuntersuchung, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-genetische-variante, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-histologiebefund, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-tod, Observation)
* insert AddBundleEntry(mii-exa-test-data-onko-mamma-studienteilnahme, Observation)