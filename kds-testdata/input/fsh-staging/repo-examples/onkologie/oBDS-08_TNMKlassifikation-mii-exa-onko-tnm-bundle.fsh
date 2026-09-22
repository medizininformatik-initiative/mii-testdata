Instance: mii-exa-onko-tnm-bundle-patient
InstanceOf: Patient
Usage: #example
* name.given = "Tobias"
* name.family = "TNMBeispiel"
* gender = #male
* birthDate = "1962-04-18"

Instance: mii-exa-onko-tnm-bundle-diagnose
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C20 "Bösartige Neubildung des Rektums"
* code.coding[icd10-gm].version = "2024"
* subject = Reference(mii-exa-onko-tnm-bundle-patient)
* recordedDate = "2024-01-11"
* extension[Feststellungsdatum].valueDateTime = "2024-01-11"

// -------------------------
// Per-category Observations
// -------------------------

// T-Kategorie: cT2

Instance: mii-exa-onko-tnm-bundle-t-kategorie-cT2
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399504009 "cT category (observable entity)"
* subject = Reference(mii-exa-onko-tnm-bundle-patient)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#T2 "T2"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352993004 "Union for International Cancer Control cT2 (qualifier value)"

// N-Kategorie: cN3

Instance: mii-exa-onko-tnm-bundle-n-kategorie-cN3
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399534004 "cN category (observable entity)"
* subject = Reference(mii-exa-onko-tnm-bundle-patient)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#N3 "N3"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1353045000 "Union for International Cancer Control cN3 (qualifier value)"

// M-Kategorie: cM0

Instance: mii-exa-onko-tnm-bundle-m-kategorie-cM0
InstanceOf: mii-pr-onko-tnm-m-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399387003 "cM category (observable entity)"
* subject = Reference(mii-exa-onko-tnm-bundle-patient)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#M0 "M0"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352512001 "Union for International Cancer Control cM0 (qualifier value)"

// -------------------------
// TNM-Klassifikation (grouper)
// -------------------------

Instance: mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation)
* status = #final
* code = http://snomed.info/sct#399537006 "Clinical TNM stage grouping"
* subject = Reference(mii-exa-onko-tnm-bundle-patient)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-tnm-bundle-diagnose)
* hasMember[0] = Reference(mii-exa-onko-tnm-bundle-t-kategorie-cT2)
* hasMember[1] = Reference(mii-exa-onko-tnm-bundle-n-kategorie-cN3)
* hasMember[2] = Reference(mii-exa-onko-tnm-bundle-m-kategorie-cM0)
* valueCodeableConcept = https://www.uicc.org/resources/tnm#IIIB "Stadium IIIB"

// -------------------------
// Transaction Bundle
// -------------------------

Instance: mii-exa-onko-tnm-bundle
InstanceOf: Bundle
Usage: #example
Title: "MII EXA Onko TNM Bundle (cT2 cN3 cM0)"
Description: "Beispiel-Bundle: ein TNM-Staging-Ereignis (cT2 cN3 cM0, UICC IIIB), zusammengehalten durch die TNM-Klassifikation als hasMember-Grouper. Demonstriert, wie T und N eindeutig demselben Staging zugeordnet werden können."
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Bundle"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
* identifier.value = "tnm-bundle-2024-001"
* type = #transaction
* timestamp = "2024-01-11T10:00:00+01:00"

* entry[0].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-tnm-bundle-patient"
* entry[=].resource = mii-exa-onko-tnm-bundle-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-tnm-bundle-diagnose"
* entry[=].resource = mii-exa-onko-tnm-bundle-diagnose
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-bundle-t-kategorie-cT2"
* entry[=].resource = mii-exa-onko-tnm-bundle-t-kategorie-cT2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-bundle-n-kategorie-cN3"
* entry[=].resource = mii-exa-onko-tnm-bundle-n-kategorie-cN3
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-bundle-m-kategorie-cM0"
* entry[=].resource = mii-exa-onko-tnm-bundle-m-kategorie-cM0
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0"
* entry[=].resource = mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
