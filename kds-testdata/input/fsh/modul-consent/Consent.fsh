// Patient-1
Instance: mii-exa-test-data-patient-1-consent-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung
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