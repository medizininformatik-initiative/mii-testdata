Instance: mii-exa-onko-prostata-bundle-patient
InstanceOf: Patient
Usage: #example
* name.given = "Peter"
* name.family = "ProstataCa"

Instance: mii-exa-onko-prostata-bundle-encounter
InstanceOf: Encounter
Usage: #example  
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)

Instance: mii-exa-onko-prostata-diagnose
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C61 "Bösartige Neubildung der Prostata"
* code.coding[icd10-gm].version = "2024"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* recordedDate = "2024-01-02"
* extension[Feststellungsdatum].valueDateTime = "2020-03-07"

//=========================
// Transaction Bundle
//=========================

Instance: mii-exa-onko-prostata-example-bundle-1
InstanceOf: Bundle
Usage: #example
Title: "MII EXA Onko Prostata Bundle"
Description: "Beispiel-Bundle für Prostata-Karzinom mit allen spezifischen Profilen"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Bundle"

* identifier.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
* identifier.value = "prostata-example-bundle-2024-001"

* type = #transaction
* timestamp = "2024-03-25T10:00:00+01:00"

// Core Resources
* entry[0].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-prostata-bundle-patient"
* entry[=].resource = mii-exa-onko-prostata-bundle-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-prostata-diagnose"
* entry[=].resource = mii-exa-onko-prostata-diagnose
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-prostata-bundle-encounter"
* entry[=].resource = mii-exa-onko-prostata-bundle-encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

// Prostata-Specific Examples (using existing individual examples)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-psa-diagnose-1"
* entry[=].resource = mii-exa-onko-prostata-psa-diagnose-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-anzahl-stanzen-1"
* entry[=].resource = mii-exa-onko-prostata-anzahl-stanzen-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-anzahl-positiver-stanzen-1"
* entry[=].resource = mii-exa-onko-prostata-anzahl-positiver-stanzen-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-ca-befall-stanze-1"
* entry[=].resource = mii-exa-onko-prostata-ca-befall-stanze-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-gleason-pattern-grade-group-1"
* entry[=].resource = mii-exa-onko-prostata-gleason-pattern-grade-group-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-gleason-pattern-primary-1"
* entry[=].resource = mii-exa-onko-prostata-gleason-pattern-primary-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-gleason-pattern-secondary-1"
* entry[=].resource = mii-exa-onko-prostata-gleason-pattern-secondary-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-surgical-complication-1"
* entry[=].resource = mii-exa-onko-prostata-surgical-complication-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-prostata-surgery-1"
* entry[=].resource = mii-exa-onko-prostata-surgery-1
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"
