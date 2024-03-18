RuleSet: AddBundleEntry(resource, url)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/{url}/{resource}"
* entry[=].resource = {resource}
* entry[=].request.method = #PUT
* entry[=].request.url = "{url}/{resource}"

Instance: mii-exa-test-data-bundle
InstanceOf: Bundle
* type = #transaction
* timestamp = "2024-03-14T10:58:00+01:00"
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
* insert AddBundleEntry(mii-exa-test-data-medication-dalbavancin, Medication)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medadmin-1, MedicationAdministration)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medrequest-1, MedicationRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medstatement-1, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-1-medstatement-2, MedicationStatement)
* insert AddBundleEntry(mii-exa-test-data-patient-1-specimen-1, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-1-substance-1, Substance)
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
* insert AddBundleEntry(mii-exa-test-data-patient-1-mibi-befund-1, DiagnosticReport)
* insert AddBundleEntry(mii-exa-test-data-patient-1-labrequest-2, ServiceRequest)
* insert AddBundleEntry(mii-exa-test-data-patient-1-specimen-2, Specimen)
* insert AddBundleEntry(mii-exa-test-data-patient-1-kulturnachweis-1, Observation)
// Patient-2
* insert AddBundleEntry(mii-exa-test-data-patient-2, Patient)
* insert AddBundleEntry(mii-exa-test-data-patient-2-consent-1, Consent)
* insert AddBundleEntry(mii-exa-test-data-patient-2-vitalstatus-1, Observation)
* insert AddBundleEntry(mii-exa-test-data-patient-2-todesursache-1, Condition)
