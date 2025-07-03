RuleSet: AddBundleEntry(resource, url)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/{url}/{resource}"
* entry[=].resource = {resource}
* entry[=].request.method = #POST
* entry[=].request.url = "{url}"

Instance: mii-exa-test-data-bundle-pat-1
InstanceOf: Bundle
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

// Patient-2
Instance: mii-exa-test-data-bundle-pat-2
InstanceOf: Bundle
* type = #transaction
* timestamp = "2025-06-18T13:53:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-patient-2, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-2-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-2-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-2-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-2-vitalstatus-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-2-todesursache-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)

// Patient-3
Instance: mii-exa-test-data-bundle-pat-3
InstanceOf: Bundle
* type = #transaction
* timestamp = "2025-06-18T13:51:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-patient-3, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-3-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-3-encounter-1, Encounter)
* insert AddBundleEntry(mii-exa-test-data-patient-3-diagnose-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-medication-metamizol, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-rezeptur-doxorubicin, Medication)
* insert AddBundleEntry(mii-exa-test-data-medication-glucoseloesung, Medication)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medadmin-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medrequest-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-befundbericht-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-medikationsempfehlung-1, Task)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-folgemassnahme-1, Task)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-family-member-history-1, FamilyMemberHistory)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-anforderung-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-3-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-ergebnis-zusammenfassung-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-diagnostische-implikation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-variante-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-untersuchte-region-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-genotyp-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-mutationslast-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-3-molgen-msi-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-molgen-device-sequencer, Device)
* insert AddBundleEntry(mii-exa-test-data-organization-charite, Organization)

// Patient-4
Instance: mii-exa-test-data-bundle-pat-4
InstanceOf: Bundle
* type = #transaction
* timestamp = "2025-06-18T13:54:00+02:00"
* insert AddBundleEntry(mii-exa-test-data-patient-4, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-4-diagnose-1, Condition)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-anforderung-1, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-practitioner-physician-2, Practitioner)
* insert AddBundleEntry(mii-exa-test-data-patient-4-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-4-specimen-2, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-family-member-history-1, FamilyMemberHistory)
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
* insert AddBundleEntry(mii-exa-test-data-patient-4-molgen-befundbericht-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-molgen-device-sequencer, Device)