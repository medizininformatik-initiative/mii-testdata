// Patient-1
Instance: mii-exa-test-data-patient-1-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: Einwilligung für Patient 1"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung|1.0.7"
* insert AddConsent(mii-exa-test-data-patient-1, 2024-02-23T12:00:00+01:00, mii-exa-test-data-organization-charite)
* provision.period.start = "2024-02-23"
* provision.period.end = "2054-01-31"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2024-02-23"
* provision.provision[=].period.end = "2054-01-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-02-23"
* provision.provision[=].period.end = "2054-01-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-02-23"
* provision.provision[=].period.end = "2054-01-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen EU DSGVO NIVEAU"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-02-23"
* provision.provision[=].period.end = "2054-01-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-02-23"
* provision.provision[=].period.end = "2054-01-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.9 "MDAT zusammenfuehren Dritte"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-02-23"
* provision.provision[=].period.end = "2054-01-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.20 "BIOMAT lagern verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-02-23"
* provision.provision[=].period.end = "2054-01-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT wissenschaftlich nutzen EU DSGVO NIVEAU"

// Patient-2
Instance: mii-exa-test-data-patient-2-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: Einwilligung für Patient 2"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung|1.0.7"
* insert AddConsent(mii-exa-test-data-patient-2, 2024-03-14T11:00:00+01:00, mii-exa-test-data-organization-charite)
* provision.period.start = "2024-03-14"
* provision.period.end = "2054-02-28"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2024-03-14"
* provision.provision[=].period.end = "2054-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-03-14"
* provision.provision[=].period.end = "2054-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-03-14"
* provision.provision[=].period.end = "2054-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen EU DSGVO NIVEAU"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-03-14"
* provision.provision[=].period.end = "2054-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-03-14"
* provision.provision[=].period.end = "2054-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.20 "BIOMAT lagern verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-03-14"
* provision.provision[=].period.end = "2054-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT wissenschaftlich nutzen EU DSGVO NIVEAU"

// Patient-3
Instance: mii-exa-test-data-patient-3-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: Einwilligung für Patient 3"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung|1.0.7"
* insert AddConsent(mii-exa-test-data-patient-3, 2022-04-14T12:00:00+01:00, mii-exa-test-data-organization-charite)
* provision.period.start = "2022-04-14"
* provision.period.end = "2052-02-28"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2022-04-14"
* provision.provision[=].period.end = "2052-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-04-14"
* provision.provision[=].period.end = "2052-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-04-14"
* provision.provision[=].period.end = "2052-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen EU DSGVO NIVEAU"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-04-14"
* provision.provision[=].period.end = "2052-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-04-14"
* provision.provision[=].period.end = "2052-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.20 "BIOMAT lagern verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-04-14"
* provision.provision[=].period.end = "2052-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT wissenschaftlich nutzen EU DSGVO NIVEAU"

// Patient-4
Instance: mii-exa-test-data-patient-4-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: Einwilligung für Patient 4"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung|1.0.7"
* insert AddConsent(mii-exa-test-data-patient-4, 2020-09-10T14:30:00+02:00, mii-exa-test-data-organization-charite)
* provision.period.start = "2020-09-10"
* provision.period.end = "2050-09-30"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2020-09-10"
* provision.provision[=].period.end = "2050-09-30"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2020-09-10"
* provision.provision[=].period.end = "2050-09-30"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2020-09-10"
* provision.provision[=].period.end = "2050-09-30"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen EU DSGVO NIVEAU"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2020-09-10"
* provision.provision[=].period.end = "2050-09-30"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2020-09-10"
* provision.provision[=].period.end = "2050-09-30"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.20 "BIOMAT lagern verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2020-09-10"
* provision.provision[=].period.end = "2050-09-30"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT wissenschaftlich nutzen EU DSGVO NIVEAU"

// Patient-5
Instance: mii-exa-test-data-patient-5-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: Einwilligung für Patient 5"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung|1.0.7"
* insert AddConsent(mii-exa-test-data-patient-5, 2023-07-05T09:15:00+02:00, mii-exa-test-data-organization-charite)
* provision.period.start = "2023-07-05"
* provision.period.end = "2053-07-31"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2023-07-05"
* provision.provision[=].period.end = "2053-07-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2023-07-05"
* provision.provision[=].period.end = "2053-07-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2023-07-05"
* provision.provision[=].period.end = "2053-07-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen EU DSGVO NIVEAU"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2023-07-05"
* provision.provision[=].period.end = "2053-07-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2023-07-05"
* provision.provision[=].period.end = "2053-07-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.9 "MDAT zusammenfuehren Dritte"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2023-07-05"
* provision.provision[=].period.end = "2053-07-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.20 "BIOMAT lagern verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2023-07-05"
* provision.provision[=].period.end = "2053-07-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT wissenschaftlich nutzen EU DSGVO NIVEAU"

// Patient-6
Instance: mii-exa-test-data-patient-6-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: Einwilligung für Patient 6"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung|1.0.7"
* insert AddConsent(mii-exa-test-data-patient-6, 2022-03-08T11:45:00+01:00, mii-exa-test-data-organization-charite)
* provision.period.start = "2022-03-08"
* provision.period.end = "2052-03-31"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2022-03-08"
* provision.provision[=].period.end = "2052-03-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-03-08"
* provision.provision[=].period.end = "2052-03-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-03-08"
* provision.provision[=].period.end = "2052-03-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen EU DSGVO NIVEAU"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-03-08"
* provision.provision[=].period.end = "2052-03-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-03-08"
* provision.provision[=].period.end = "2052-03-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.20 "BIOMAT lagern verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-03-08"
* provision.provision[=].period.end = "2052-03-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT wissenschaftlich nutzen EU DSGVO NIVEAU"

// Patient-7
Instance: mii-exa-test-data-patient-7-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: Einwilligung für Patient 7"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung|1.0.7"
* insert AddConsent(mii-exa-test-data-patient-7, 2024-01-03T16:20:00+01:00, mii-exa-test-data-organization-charite)
* provision.period.start = "2024-01-03"
* provision.period.end = "2054-01-31"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2024-01-03"
* provision.provision[=].period.end = "2054-01-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-01-03"
* provision.provision[=].period.end = "2054-01-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-01-03"
* provision.provision[=].period.end = "2054-01-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen EU DSGVO NIVEAU"

// Patient-8 (verstorben)
Instance: mii-exa-test-data-patient-8-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: Einwilligung für Patient 8"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung|1.0.7"
* insert AddConsent(mii-exa-test-data-patient-8, 2023-11-05T08:30:00+01:00, mii-exa-test-data-organization-charite)
* provision.period.start = "2023-11-05"
* provision.period.end = "2023-11-15"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2023-11-05"
* provision.provision[=].period.end = "2023-11-15"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2023-11-05"
* provision.provision[=].period.end = "2023-11-15"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2023-11-05"
* provision.provision[=].period.end = "2023-11-15"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen EU DSGVO NIVEAU"

// Patient-9
Instance: mii-exa-test-data-patient-9-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: Einwilligung für Patient 9"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung|1.0.7"
* insert AddConsent(mii-exa-test-data-patient-9, 2024-02-15T13:10:00+01:00, mii-exa-test-data-organization-charite)
* provision.period.start = "2024-02-15"
* provision.period.end = "2054-02-28"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2024-02-15"
* provision.provision[=].period.end = "2054-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-02-15"
* provision.provision[=].period.end = "2054-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-02-15"
* provision.provision[=].period.end = "2054-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen EU DSGVO NIVEAU"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-02-15"
* provision.provision[=].period.end = "2054-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-02-15"
* provision.provision[=].period.end = "2054-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.20 "BIOMAT lagern verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2024-02-15"
* provision.provision[=].period.end = "2054-02-28"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT wissenschaftlich nutzen EU DSGVO NIVEAU"

// Patient-10
Instance: mii-exa-test-data-patient-10-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
Usage: #example
Description: "Consent: Einwilligung für Patient 10"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung|1.0.7"
* insert AddConsent(mii-exa-test-data-patient-10, 2019-05-10T10:00:00+02:00, mii-exa-test-data-organization-charite)
* provision.period.start = "2019-05-10"
* provision.period.end = "2049-05-31"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2019-05-10"
* provision.provision[=].period.end = "2049-05-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2019-05-10"
* provision.provision[=].period.end = "2049-05-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2019-05-10"
* provision.provision[=].period.end = "2049-05-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen EU DSGVO NIVEAU"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2019-05-10"
* provision.provision[=].period.end = "2049-05-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.9 "MDAT zusammenfuehren Dritte"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2019-05-10"
* provision.provision[=].period.end = "2049-05-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2019-05-10"
* provision.provision[=].period.end = "2049-05-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.20 "BIOMAT lagern verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2019-05-10"
* provision.provision[=].period.end = "2049-05-31"
* provision.provision[=].code = $mii-cs-consent-policy#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT wissenschaftlich nutzen EU DSGVO NIVEAU"