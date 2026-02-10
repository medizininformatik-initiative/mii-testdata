// Principal Investigator for MII-BIOMARKER-2024
// NOTE: The profile mii-pr-studie-beteiligte-person has a missing snapshot in the upstream package.
// Instances are created regardless; if SUSHI validation fails on snapshot resolution, this is an upstream issue.
Instance: mii-exa-test-data-studie-beteiligte-person-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person
Usage: #example
Description: "PractitionerRole: Studienleiter (Principal Investigator) der MII-BIOMARKER-2024 Studie"
* insert TestDataLabel
* active = true
// Practitioner (MS)
* practitioner = Reference(mii-exa-test-data-practitioner-physician-1)
// Organization (MS)
* organization = Reference(mii-exa-test-data-organization-charite)
// Code (MS)
* code = $sct#309343006 "Physician (occupation)"
// Telecom (MS)
* telecom[0].system = #email
* telecom[0].value = "rahel.hirsch@charite.de"
* telecom[0].use = #work

// Study Coordinator for MII-BIOMARKER-2024
Instance: mii-exa-test-data-studie-beteiligte-person-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person
Usage: #example
Description: "PractitionerRole: Studienkoordinator der MII-BIOMARKER-2024 Studie"
* insert TestDataLabel
* active = true
// Practitioner (MS)
* practitioner = Reference(mii-exa-test-data-practitioner-physician-2)
// Organization (MS)
* organization = Reference(mii-exa-test-data-organization-charite)
// Code (MS)
* code = $sct#224588003 "Research nurse (occupation)"
// Telecom (MS)
* telecom[0].system = #email
* telecom[0].value = "robert.koch@charite.de"
* telecom[0].use = #work
* telecom[+].system = #phone
* telecom[=].value = "+49 30 450-123456"
* telecom[=].use = #work
