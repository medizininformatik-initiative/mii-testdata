Instance: mii-exa-onko-melanom-bundle-patient
InstanceOf: Patient
Usage: #example
* name.given = "Maria"
* name.family = "Melanom"

Instance: mii-exa-onko-melanom-bundle-encounter
InstanceOf: Encounter
Usage: #example  
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-onko-melanom-bundle-patient)

Instance: mii-exa-onko-melanom-diagnose
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus.coding[condition-ver-status] = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung#7.1 "histologische Untersuchung eines Primärtumors"
* code.coding = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C43.9 "Bösartiges Melanom der Haut, nicht näher bezeichnet"
* code.coding.version = "2024"
* subject = Reference(mii-exa-onko-melanom-bundle-patient)
* encounter = Reference(mii-exa-onko-melanom-bundle-encounter)
* recordedDate = "2024-01-02"
* extension[Feststellungsdatum].valueDateTime = "2024-01-02"

//=========================
// Transaction Bundle
//=========================

Instance: mii-exa-onko-melanom-bundle
InstanceOf: Bundle
Usage: #example
Title: "MII EXA Onko Melanom Bundle"
Description: "Beispiel-Bundle für Malignes Melanom mit allen spezifischen Profilen"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Bundle"

* identifier.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
* identifier.value = "melanom-example-bundle-2024-001"

* type = #transaction
* timestamp = "2024-03-25T10:00:00+01:00"

// Core Resources
* entry[0].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-melanom-bundle-patient"
* entry[=].resource = mii-exa-onko-melanom-bundle-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-melanom-diagnose"
* entry[=].resource = mii-exa-onko-melanom-diagnose
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-melanom-bundle-encounter"
* entry[=].resource = mii-exa-onko-melanom-bundle-encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

// Melanom-Specific Examples (using existing individual examples)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-melanom-sicherheitsabstand"
* entry[=].resource = mii-exa-onko-melanom-sicherheitsabstand
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-melanom-breslow-tiefe"
* entry[=].resource = mii-exa-onko-melanom-breslow-tiefe
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-melanom-ulzeration"
* entry[=].resource = mii-exa-onko-melanom-ulzeration
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-melanom-ldh"
* entry[=].resource = mii-exa-onko-melanom-ldh
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Melanom Exzision Procedure
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-melanom-exzision-oberarm"
* entry[=].resource = mii-exa-onko-melanom-exzision-oberarm
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"
