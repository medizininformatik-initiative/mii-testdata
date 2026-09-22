Instance: mii-exa-onko-tnm-synth-patient
InstanceOf: Patient
Usage: #example
* name.given = "Tobias"
* name.family = "TNMSynth"
* gender = #male
* birthDate = "1962-04-18"

Instance: mii-exa-onko-tnm-synth-diagnose
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C20 "Bösartige Neubildung des Rektums"
* code.coding[icd10-gm].version = "2024"
* subject = Reference(mii-exa-onko-tnm-synth-patient)
* recordedDate = "2024-01-11"
* extension[Feststellungsdatum].valueDateTime = "2024-01-11"

// =============================================================================
// MELDUNG 1 — Diagnose-Meldung (initial clinical staging) — 2024-01-11
// =============================================================================

Instance: mii-exa-onko-tnm-synth-meldung1-t-cT3
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399504009 "cT category (observable entity)"
* subject = Reference(mii-exa-onko-tnm-synth-patient)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#T3 "T3"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352966002 "Union for International Cancer Control cT3 (qualifier value)"

Instance: mii-exa-onko-tnm-synth-meldung1-n-cN2
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399534004 "cN category (observable entity)"
* subject = Reference(mii-exa-onko-tnm-synth-patient)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#N2 "N2"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1353044001 "Union for International Cancer Control cN2 (qualifier value)"

// cM0 is reused later by the synthesized stage (M not reassessed at OP)

Instance: mii-exa-onko-tnm-synth-meldung1-m-cM0
InstanceOf: mii-pr-onko-tnm-m-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399387003 "cM category (observable entity)"
* subject = Reference(mii-exa-onko-tnm-synth-patient)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#M0 "M0"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352512001 "Union for International Cancer Control cM0 (qualifier value)"

Instance: mii-exa-onko-tnm-synth-meldung1-klassifikation
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation)
* status = #final
* code = http://snomed.info/sct#399537006 "Clinical TNM stage grouping"
* subject = Reference(mii-exa-onko-tnm-synth-patient)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-tnm-synth-diagnose)
* hasMember[0] = Reference(mii-exa-onko-tnm-synth-meldung1-t-cT3)
* hasMember[1] = Reference(mii-exa-onko-tnm-synth-meldung1-n-cN2)
* hasMember[2] = Reference(mii-exa-onko-tnm-synth-meldung1-m-cM0)
* valueCodeableConcept = https://www.uicc.org/resources/tnm#IIIB "Stadium IIIB"

// =============================================================================
// MELDUNG 2 — OP-Meldung (pathological staging) — 2024-03-15
// =============================================================================
// Surgery downstages: pT2 confirmed smaller than imaged cT3, pN1 confirmed
// fewer involved nodes than cN2. M not reassessed.

Instance: mii-exa-onko-tnm-synth-meldung2-t-pT2
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#p "p"
* code = http://snomed.info/sct#384625004 "pT category (observable entity)"
* subject = Reference(mii-exa-onko-tnm-synth-patient)
* effectiveDateTime = "2024-03-15"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#T2 "T2"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352545001 "Union for International Cancer Control pT2 (qualifier value)"

Instance: mii-exa-onko-tnm-synth-meldung2-n-pN1
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#p "p"
* code = http://snomed.info/sct#371494008 "pN category (observable entity)"
* subject = Reference(mii-exa-onko-tnm-synth-patient)
* effectiveDateTime = "2024-03-15"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#N1 "N1"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352614009 "Union for International Cancer Control pN1 (qualifier value)"

Instance: mii-exa-onko-tnm-synth-meldung2-klassifikation
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation)
* status = #final
* code = http://snomed.info/sct#399588009 "Pathologic TNM stage grouping"
* subject = Reference(mii-exa-onko-tnm-synth-patient)
* effectiveDateTime = "2024-03-15"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-tnm-synth-diagnose)
* hasMember[0] = Reference(mii-exa-onko-tnm-synth-meldung2-t-pT2)
* hasMember[1] = Reference(mii-exa-onko-tnm-synth-meldung2-n-pN1)
* valueCodeableConcept = https://www.uicc.org/resources/tnm#IIIA "Stadium IIIA"

// =============================================================================
// SYNTHESIZED STAGE at Tumorkonferenz — 2024-04-02
// =============================================================================
// Decision-time view derived from both Meldungen by UICC merge rules.
// hasMember reuses the WINNING per-category observations:
//   - T: pT2 from Meldung 2 (pTNM trumps cTNM)
//   - N: pN1 from Meldung 2 (pTNM trumps cTNM)
//   - M: cM0 from Meldung 1 (carried forward, not reassessed)

Instance: mii-exa-onko-tnm-synth-klassifikation
InstanceOf: mii-pr-onko-tnm-klassifikation-synthetisiert
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert)
* status = #final
* code = http://snomed.info/sct#399703000 "Integrated TNM category"
* subject = Reference(mii-exa-onko-tnm-synth-patient)
* effectiveDateTime = "2024-04-02"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-tnm-synth-diagnose)
// derivedFrom: provenance back to the source Meldungs-Klassifikationen
* derivedFrom[0] = Reference(mii-exa-onko-tnm-synth-meldung1-klassifikation)
* derivedFrom[1] = Reference(mii-exa-onko-tnm-synth-meldung2-klassifikation)
// hasMember: the winning per-category observations selected by UICC rules
* hasMember[0] = Reference(mii-exa-onko-tnm-synth-meldung2-t-pT2)
* hasMember[1] = Reference(mii-exa-onko-tnm-synth-meldung2-n-pN1)
* hasMember[2] = Reference(mii-exa-onko-tnm-synth-meldung1-m-cM0)
* valueCodeableConcept = https://www.uicc.org/resources/tnm#IIIA "Stadium IIIA"
// Generierte Gesamtformel (aus den hasMember-Gewinnern: pT2 + pN1 + cM0)
* component[tnmFormel].code = MII_CS_Onko_TNM_Formel#tnm-formel "TNM-Formel"
* component[tnmFormel].valueString = "pT2 pN1 cM0"

// =============================================================================
// TUMORKONFERENZ — 2024-04-02 (postoperative Tumorkonferenz)
// =============================================================================
// Links the synthesized stage via supportingInfo as the basis for treatment
// recommendations.

Instance: mii-exa-onko-tnm-synth-tumorkonferenz
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "TK_synth_2024-04-02"
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/request-intent#plan
* subject = Reference(mii-exa-onko-tnm-synth-patient)
* category.coding.code = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ#postop
* created = "2024-04-02"
* addresses = Reference(mii-exa-onko-tnm-synth-diagnose)
* supportingInfo = Reference(mii-exa-onko-tnm-synth-klassifikation)
* activity[obds].detail.code.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ#CH "Chemotherapie"
* activity[obds].detail.status = http://hl7.org/fhir/care-plan-activity-status#scheduled

// =============================================================================
// Transaction Bundle
// =============================================================================

Instance: mii-exa-onko-tnm-bundle-synthesized
InstanceOf: Bundle
Usage: #example
Title: "MII EXA Onko TNM Bundle (synthesized stage at Tumorkonferenz)"
Description: "Beispiel-Bundle: zwei Meldungs-bezogene TNM-Klassifikationen (Diagnose-Meldung cT3cN2cM0, OP-Meldung pT2pN1) plus eine synthetisierte Klassifikation pT2 pN1 cM0 (Stadium IIIA) zum Zeitpunkt der postoperativen Tumorkonferenz. Die Tumorkonferenz verlinkt die synthetisierte Klassifikation via supportingInfo."
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Bundle"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
* identifier.value = "tnm-bundle-synthesized-2024-001"
* type = #transaction
* timestamp = "2024-04-02T10:00:00+01:00"

* entry[0].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-tnm-synth-patient"
* entry[=].resource = mii-exa-onko-tnm-synth-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-tnm-synth-diagnose"
* entry[=].resource = mii-exa-onko-tnm-synth-diagnose
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

// Meldung 1
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung1-t-cT3"
* entry[=].resource = mii-exa-onko-tnm-synth-meldung1-t-cT3
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung1-n-cN2"
* entry[=].resource = mii-exa-onko-tnm-synth-meldung1-n-cN2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung1-m-cM0"
* entry[=].resource = mii-exa-onko-tnm-synth-meldung1-m-cM0
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung1-klassifikation"
* entry[=].resource = mii-exa-onko-tnm-synth-meldung1-klassifikation
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Meldung 2
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung2-t-pT2"
* entry[=].resource = mii-exa-onko-tnm-synth-meldung2-t-pT2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung2-n-pN1"
* entry[=].resource = mii-exa-onko-tnm-synth-meldung2-n-pN1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung2-klassifikation"
* entry[=].resource = mii-exa-onko-tnm-synth-meldung2-klassifikation
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Synthesized + Tumorkonferenz
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-klassifikation"
* entry[=].resource = mii-exa-onko-tnm-synth-klassifikation
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CarePlan/mii-exa-onko-tnm-synth-tumorkonferenz"
* entry[=].resource = mii-exa-onko-tnm-synth-tumorkonferenz
* entry[=].request.method = #POST
* entry[=].request.url = "CarePlan"
