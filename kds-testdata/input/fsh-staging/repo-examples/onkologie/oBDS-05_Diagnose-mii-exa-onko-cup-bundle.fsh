Instance: mii-exa-onko-cup-patient
InstanceOf: Patient
Usage: #example
* name.family = "Musterfall"
* name.given = "CUP"
* gender = #male
* birthDate = "1958-11-02"

Instance: mii-exa-onko-cup-diagnose
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "MII EXA Onkologie Diagnose CUP (C80.0)"
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
// Tumor-ID: bleibt bei späterer CUP-Auflösung IDENTISCH (gleiche Tumor-Entität)
* identifier.system = "https://dizmusterstadt.example.org/fhir/sid/tumor-id"
* identifier.value = "TUMOR-CUP-0815"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus.coding[condition-ver-status] = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C80.0 "Bösartige Neubildung, primäre Lokalisation unbekannt, so bezeichnet"
* code.coding[icd10-gm].version = "2026"
// Morphologie aus der Leber-Metastasen-Biopsie, auf den Primarius attribuiert
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/icd-o-3#8140/3 "Adenokarzinom o.n.A."
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version = "2019"
* subject = Reference(mii-exa-onko-cup-patient)
* recordedDate = "2026-02-11"
// ICD-O-Topographie C80.9 — bewusst ≠ ICD-10-Code C80.0 (Asymmetrie korrekt, s.o.)
* bodySite.coding[icd-o-3] = http://terminology.hl7.org/CodeSystem/icd-o-3#C80.9 "Unbekannte Primärlokalisation"
* extension[Feststellungsdatum].valueDateTime = 2026-02-11

// ── TNM: cTX cNX cM1 ─────────────────────────────────────────────────────────

Instance: mii-exa-onko-cup-tnm-t-cTX
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399504009 "cT category (observable entity)"
* subject = Reference(mii-exa-onko-cup-patient)
* focus = Reference(mii-exa-onko-cup-diagnose)
* effectiveDateTime = "2026-02-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#TX "TX"

Instance: mii-exa-onko-cup-tnm-n-cNX
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399534004 "cN category (observable entity)"
* subject = Reference(mii-exa-onko-cup-patient)
* focus = Reference(mii-exa-onko-cup-diagnose)
* effectiveDateTime = "2026-02-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#NX "Nx"

Instance: mii-exa-onko-cup-tnm-m-cM1
InstanceOf: mii-pr-onko-tnm-m-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399387003 "cM category (observable entity)"
* subject = Reference(mii-exa-onko-cup-patient)
* focus = Reference(mii-exa-onko-cup-diagnose)
* effectiveDateTime = "2026-02-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#M1 "M1"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352513006 "Union for International Cancer Control cM1 (qualifier value)"

// Klinisches Panel OHNE Stadium: CUP hat kein entitätsspezifisches
// UICC-Stadien-Schema → value bleibt leer (0..1), Members tragen die Aussage.

Instance: mii-exa-onko-cup-tnm-klassifikation
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
Title: "MII EXA Onkologie TNM Klassifikation CUP (cTX cNX cM1, ohne Stadium)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation)
* status = #final
* code = http://snomed.info/sct#399537006 "Clinical TNM stage grouping"
* subject = Reference(mii-exa-onko-cup-patient)
* effectiveDateTime = "2026-02-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-cup-diagnose)
* hasMember[0] = Reference(mii-exa-onko-cup-tnm-t-cTX)
* hasMember[1] = Reference(mii-exa-onko-cup-tnm-n-cNX)
* hasMember[2] = Reference(mii-exa-onko-cup-tnm-m-cM1)

// ── Fernmetastasen (Befundlage, die zum CUP führte) ──────────────────────────

Instance: mii-exa-onko-cup-fernmetastase-hep
InstanceOf: mii-pr-onko-fernmetastasen
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen)
* status = #final
* code = http://snomed.info/sct#385421009
* subject = Reference(mii-exa-onko-cup-patient)
* focus = Reference(mii-exa-onko-cup-diagnose)
* valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen#HEP "Leber"
* effectiveDateTime = "2026-02-11"

Instance: mii-exa-onko-cup-fernmetastase-pul
InstanceOf: mii-pr-onko-fernmetastasen
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen)
* status = #final
* code = http://snomed.info/sct#385421009
* subject = Reference(mii-exa-onko-cup-patient)
* focus = Reference(mii-exa-onko-cup-diagnose)
* valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen#PUL "Lunge"
* effectiveDateTime = "2026-02-11"

// ── Transaction-Bundle: der CUP-Zustand ──────────────────────────────────────

Instance: mii-exa-onko-cup-bundle
InstanceOf: Bundle
Usage: #example
Title: "MII EXA Onkologie CUP Bundle (cTX cNX cM1)"
* type = #transaction
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-cup-patient"
* entry[=].resource = mii-exa-onko-cup-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-cup-diagnose"
* entry[=].resource = mii-exa-onko-cup-diagnose
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-cup-tnm-t-cTX"
* entry[=].resource = mii-exa-onko-cup-tnm-t-cTX
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-cup-tnm-n-cNX"
* entry[=].resource = mii-exa-onko-cup-tnm-n-cNX
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-cup-tnm-m-cM1"
* entry[=].resource = mii-exa-onko-cup-tnm-m-cM1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-cup-tnm-klassifikation"
* entry[=].resource = mii-exa-onko-cup-tnm-klassifikation
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-cup-fernmetastase-hep"
* entry[=].resource = mii-exa-onko-cup-fernmetastase-hep
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-cup-fernmetastase-pul"
* entry[=].resource = mii-exa-onko-cup-fernmetastase-pul
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// =============================================================================
// CUP-AUFLÖSUNG (Best-Of-Regel, Manual Kap. 6.2) — illustrativ
// -----------------------------------------------------------------------------
// Wird der Primärtumor später identifiziert (hier: Pankreas), wird DIESELBE
// Condition AKTUALISIERT (registerkonform, KEINE zweite Diagnose, KEIN
// transformationVon): ICD-10, Topographie und ggf. Histologie werden geändert,
// Tumor-ID und ursprüngliches Diagnosedatum BLEIBEN. Die folgende Instanz
// zeigt den Zustand NACH der Auflösung — in Produktion ist das eine neue
// VERSION der Ressource mii-exa-onko-cup-diagnose (Update), hier aus
// technischen Gründen als eigene Beispiel-Instanz dargestellt.
// =============================================================================

Instance: mii-exa-onko-cup-diagnose-aufgeloest
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "MII EXA Onkologie Diagnose CUP aufgelöst → Pankreaskarzinom (Zustand nach Update derselben Ressource)"
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
// Tumor-ID: UNVERÄNDERT — dieselbe Tumor-Entität
* identifier.system = "https://dizmusterstadt.example.org/fhir/sid/tumor-id"
* identifier.value = "TUMOR-CUP-0815"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus.coding[condition-ver-status] = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
// GEÄNDERT: ICD-10 auf den identifizierten Primärtumor
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C25.9 "Bösartige Neubildung: Pankreas, nicht näher bezeichnet"
* code.coding[icd10-gm].version = "2026"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/icd-o-3#8140/3 "Adenokarzinom o.n.A."
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version = "2019"
* subject = Reference(mii-exa-onko-cup-patient)
// UNVERÄNDERT: das ursprüngliche CUP-Diagnosedatum (Manual: Datum bleibt!)
* recordedDate = "2026-02-11"
// GEÄNDERT: Topographie auf den identifizierten Primärtumor
* bodySite.coding[icd-o-3] = http://terminology.hl7.org/CodeSystem/icd-o-3#C25.9 "Pankreas o.n.A."
* extension[Feststellungsdatum].valueDateTime = 2026-02-11
