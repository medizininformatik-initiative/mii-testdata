Instance: mii-exa-onko-krk-bundle-patient
InstanceOf: Patient
Usage: #example
* name.given = "Klaus"
* name.family = "KolorektalCa"

Instance: mii-exa-onko-krk-bundle-encounter
InstanceOf: Encounter
Usage: #example  
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-onko-krk-bundle-patient)

Instance: mii-exa-onko-krk-diagnose
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C18 "Bösartige Neubildung des Kolons"
* code.coding.version = "2024"
* subject = Reference(mii-exa-onko-krk-bundle-patient)
* recordedDate = "2024-01-02"
* extension[Feststellungsdatum].valueDateTime = "2020-03-07"

//=========================
// Transaction Bundle
//=========================

Instance: mii-exa-onko-krk-bundle
InstanceOf: Bundle
Usage: #example
Title: "MII EXA Onko KRK Bundle"
Description: "Beispiel-Bundle für Kolorektales Karzinom mit allen spezifischen Profilen"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Bundle"

* identifier.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
* identifier.value = "krk-example-bundle-2024-001"

* type = #transaction
* timestamp = "2024-03-25T10:00:00+01:00"

// Core Resources
* entry[0].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-krk-bundle-patient"
* entry[=].resource = mii-exa-onko-krk-bundle-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-krk-diagnose"
* entry[=].resource = mii-exa-onko-krk-diagnose
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-krk-bundle-encounter"
* entry[=].resource = mii-exa-onko-krk-bundle-encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

// KRK-Specific Examples (using existing individual examples)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-krk-abstand-tumor-anokutanlinie"
* entry[=].resource = mii-exa-onko-krk-abstand-tumor-anokutanlinie
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-krk-abstand-circumferelle-resektionsebene"
* entry[=].resource = mii-exa-onko-krk-abstand-circumferelle-resektionsebene
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-krk-abstand-resektionsrand-aboral"
* entry[=].resource = mii-exa-onko-krk-abstand-resektionsrand-aboral
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-krk-abstand-mesorektale-fascie"
* entry[=].resource = mii-exa-onko-krk-abstand-mesorektale-fascie
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-krk-anastomoseninsuffizienz"
* entry[=].resource = mii-exa-onko-krk-anastomoseninsuffizienz
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-asa-klassifikation"
* entry[=].resource = mii-exa-onko-asa-klassifikation
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-krk-stoma-markierung"
* entry[=].resource = mii-exa-onko-krk-stoma-markierung
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-krk-operation"
* entry[=].resource = mii-exa-onko-krk-operation
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Specimen/mii-exa-onko-krk-specimen"
* entry[=].resource = mii-exa-onko-krk-specimen
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"
