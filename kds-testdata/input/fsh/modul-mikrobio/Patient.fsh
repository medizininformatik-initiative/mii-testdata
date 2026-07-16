// ============================================================================
// MII Mikrobiologie Test Data - Patient & Encounter
// Klinisches Szenario: Sepsis-Patient mit positiver Blutkultur (S. aureus MRSA)
// ============================================================================

Instance: mii-exa-test-data-mikrobio-patient-1
InstanceOf: Patient
Usage: #example
Description: "Mikrobio Test Patient: Sepsis-Fall"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "MIKROBIO-TEST-001"
* name.family = "Sepsis"
* name.given = "Sigmund"
* birthDate = 1957-08-14
* gender = #male

Instance: mii-exa-test-data-mikrobio-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Mikrobio Test Encounter: Stationärer Sepsis-Aufenthalt"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* identifier.value = "MIKROBIO-ENC-001"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* period.start = "2026-04-01"
* period.end = "2026-04-14"

Instance: mii-exa-test-data-mikrobio-organization-lab-1
InstanceOf: Organization
Usage: #example
Description: "Mikrobio Lab Organization: Mikrobiologisches Labor Charité"
* insert TestDataLabel
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier.value = "DIZ-CHA"
* name = "Mikrobiologisches Labor Charité"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
