Instance: mii-exa-onko-folfox-patient
InstanceOf: Patient
Usage: #example
Title: "FOLFOX Patient - 65-jähriger mit Kolonkarzinom"
Description: "Patient for FOLFOX colorectal cancer treatment example"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/patienten"
* identifier.value = "FOLFOX-2024-001"
* name.family = "Schmidt"
* name.given = "Hans"
* gender = #male
* birthDate = "1959-03-15"

// Kontakte des Behandlungsverlaufs — als eigene Instanzen, damit das
// FOLFOX-Bundle vollständig aus sich heraus auflösbar bleibt.

Instance: mii-exa-onko-folfox-encounter-diagnosis
InstanceOf: Encounter
Usage: #example
Title: "FOLFOX Kontakt Diagnosestellung"
Description: "Ambulanter Kontakt, in dem die Kolonkarzinom-Diagnose gestellt und gestaged wurde"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(mii-exa-onko-folfox-patient)

Instance: mii-exa-onko-folfox-encounter-surgery
InstanceOf: Encounter
Usage: #example
Title: "FOLFOX Kontakt Sigmaresektion"
Description: "Stationärer Kontakt der Sigmaresektion samt zugehöriger Teilprozeduren"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-onko-folfox-patient)

Instance: mii-exa-onko-folfox-encounter-chemo
InstanceOf: Encounter
Usage: #example
Title: "FOLFOX Kontakt Chemotherapie"
Description: "Ambulanter Kontakt, unter dem die FOLFOX-Chemotherapie appliziert wurde"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(mii-exa-onko-folfox-patient)

// Primary Diagnosis - Stage III Sigmoid Colon Cancer

Instance: mii-exa-onko-colorectal-cancer-diagnosis
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Title: "Kolonkarzinom Primärdiagnose"
Description: "Stage III sigmoid colon adenocarcinoma, diagnosed January 2024"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
// QA-Fix: Der Pflicht-Slice category:onkologie (Breaking Change v2027) fehlte;
// stattdessen klebte das Display "Neoplastic disease" am encounter-diagnosis-
// Coding. Jetzt beides korrekt als getrennte category-Eintraege.
* category[+] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[+] = http://snomed.info/sct#55342001 "Neoplastic disease"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C18.7 "Bösartige Neubildung: Colon sigmoideum"
* code.coding[icd10-gm].version = "2024"
* extension[Feststellungsdatum].valueDateTime = "2024-01-15"
* subject = Reference(mii-exa-onko-folfox-patient)
* encounter = Reference(mii-exa-onko-folfox-encounter-diagnosis)
* onsetDateTime = "2024-01-15"
* recordedDate = "2024-01-15"
* note.text = "Adenokarzinom des Colon sigmoideum, Stadium III (T3N1M0)"

// -----------------------------------------------------
// Multi-part Surgery - Hierarchical Structure
// Main procedure with SNOMED code + component procedures with OPS codes
// -----------------------------------------------------

// Main Surgical Procedure - Colorectal tumor resection (parent procedure)

Instance: mii-exa-onko-sigmoid-resection
InstanceOf: MII_PR_Onko_Operation
Usage: #example
Title: "Sigmaresektion - Haupteingriff"
Description: "Main surgical procedure: Laparoscopic sigmoid resection with lymph node dissection - using SNOMED code"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
* status = #completed
* category = http://snomed.info/sct#387713003 "Surgical procedure"

// Main procedure uses OPS code
* code.coding[ops].system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[ops].version = "2024"
* code.coding[ops].code = #5-484.5
* code.coding[ops].display = "Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion"
* code.text = "Laparoskopische Sigmaresektion mit TME und Lymphknotendissektion"

* subject = Reference(mii-exa-onko-folfox-patient)
* encounter = Reference(mii-exa-onko-folfox-encounter-surgery)
* performedDateTime = "2024-02-15"
* reasonReference = Reference(mii-exa-onko-colorectal-cancer-diagnosis)

// Intention Extension
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* extension[Intention].valueCodeableConcept.coding.display = "Kurativ"

// Residual status (R0)
* outcome.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus"
* outcome.coding.code = #R0
* outcome.coding.display = "Kein Residualtumor"
* note.text = "Laparoscopic sigmoid resection with TME and lymphadenectomy. No intraoperative complications. Tumor completely resected with clear margins (R0). 18 lymph nodes removed, 3 positive. Surgery performed in 3 components: resection, anastomosis, and lymph node dissection."

// Component Procedure 1 - Sigmoid resection with anastomosis (OPS code)

Instance: mii-exa-onko-sigmoid-resection-part1
InstanceOf: MII_PR_Onko_Operation
Usage: #example
Title: "Sigmaresektion Teil 1 - Resektion und Anastomose"
Description: "Component procedure 1: Sigmoid resection with anastomosis"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
* status = #completed
* category = http://snomed.info/sct#387713003 "Surgical procedure"

// Component uses OPS code
* code.coding[ops].system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[ops].version = "2024"
* code.coding[ops].code = #5-484.5
* code.coding[ops].display = "Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion"

* subject = Reference(mii-exa-onko-folfox-patient)
* encounter = Reference(mii-exa-onko-folfox-encounter-surgery)
* performedDateTime = "2024-02-15"
* reasonReference = Reference(mii-exa-onko-colorectal-cancer-diagnosis)

// Links to parent procedure
* partOf = Reference(mii-exa-onko-sigmoid-resection)

// Intention Extension
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* extension[Intention].valueCodeableConcept.coding.display = "Kurativ"

* note.text = "Sigmoid colon resected including tumor. End-to-end anastomosis created."

// Component Procedure 2 - Lymph node dissection (OPS code)

Instance: mii-exa-onko-sigmoid-resection-part2
InstanceOf: MII_PR_Onko_Operation
Usage: #example
Title: "Sigmaresektion Teil 2 - Lymphknotendissektion"
Description: "Component procedure 2: Regional lymph node dissection"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
* status = #completed
* category = http://snomed.info/sct#387713003 "Surgical procedure"

// Component uses OPS code
* code.coding[ops].system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[ops].version = "2024"
* code.coding[ops].code = #5-407.0
* code.coding[ops].display = "Radikale (systematische) Lymphadenektomie im Rahmen einer anderen Operation: Axillär"

* subject = Reference(mii-exa-onko-folfox-patient)
* encounter = Reference(mii-exa-onko-folfox-encounter-surgery)
* performedDateTime = "2024-02-15"
* reasonReference = Reference(mii-exa-onko-colorectal-cancer-diagnosis)

// Links to parent procedure
* partOf = Reference(mii-exa-onko-sigmoid-resection)

// Intention Extension
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* extension[Intention].valueCodeableConcept.coding.display = "Kurativ"

* note.text = "Regional lymph node dissection performed. 18 lymph nodes removed from mesenteric and para-aortic regions."

// Component Procedure 3 - Port placement (OPS code)

Instance: mii-exa-onko-sigmoid-resection-part3
InstanceOf: MII_PR_Onko_Operation
Usage: #example
Title: "Sigmaresektion Teil 3 - Port-Anlage"
Description: "Component procedure 3: Laparoscopic port placement"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
* status = #completed
* category = http://snomed.info/sct#387713003 "Surgical procedure"

// Component uses OPS code
* code.coding[ops].system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[ops].version = "2024"
* code.coding[ops].code = #5-986.x
* code.coding[ops].display = "Minimalinvasive Technik: Sonstige"

* subject = Reference(mii-exa-onko-folfox-patient)
* encounter = Reference(mii-exa-onko-folfox-encounter-surgery)
* performedDateTime = "2024-02-15"
* reasonReference = Reference(mii-exa-onko-colorectal-cancer-diagnosis)

// Links to parent procedure
* partOf = Reference(mii-exa-onko-sigmoid-resection)

// Intention Extension
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* extension[Intention].valueCodeableConcept.coding.display = "Kurativ"

* note.text = "Four laparoscopic ports placed for minimally invasive approach."

// TNM Classification - T Category (pathological)

Instance: mii-exa-onko-colorectal-tnm-t
InstanceOf: MII_PR_Onko_TNM_T_Kategorie
Usage: #example
Title: "TNM T-Kategorie - pT3"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)
* status = #final
* code = http://snomed.info/sct#384625004 "pT category (observable entity)"
* code.extension[cpPraefix].valueCodeableConcept.coding.system = "https://www.uicc.org/resources/tnm"
* code.extension[cpPraefix].valueCodeableConcept.coding.code = #p
* subject = Reference(mii-exa-onko-folfox-patient)
* focus = Reference(mii-exa-onko-colorectal-cancer-diagnosis)
* effectiveDateTime = "2024-02-20"
* method.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version"
* method.coding.code = #8
* valueCodeableConcept.coding.system = "https://www.uicc.org/resources/tnm"
* valueCodeableConcept.coding.code = #T3

// TNM Classification - N Category (pathological)

Instance: mii-exa-onko-colorectal-tnm-n
InstanceOf: MII_PR_Onko_TNM_N_Kategorie
Usage: #example
Title: "TNM N-Kategorie - pN1"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie)
* status = #final
* code = http://snomed.info/sct#371494008 "pN category (observable entity)"
* code.extension[cpPraefix].valueCodeableConcept.coding.system = "https://www.uicc.org/resources/tnm"
* code.extension[cpPraefix].valueCodeableConcept.coding.code = #p
* subject = Reference(mii-exa-onko-folfox-patient)
* focus = Reference(mii-exa-onko-colorectal-cancer-diagnosis)
* effectiveDateTime = "2024-02-20"
* method.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version"
* method.coding.code = #8
* valueCodeableConcept.coding.system = "https://www.uicc.org/resources/tnm"
* valueCodeableConcept.coding.code = #N1

// TNM Classification - M Category (clinical)

Instance: mii-exa-onko-colorectal-tnm-m
InstanceOf: MII_PR_Onko_TNM_M_Kategorie
Usage: #example
Title: "TNM M-Kategorie - cM0"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie)
* status = #final
* code = http://snomed.info/sct#399387003 "cM category (observable entity)"
* code.extension[cpPraefix].valueCodeableConcept.coding.system = "https://www.uicc.org/resources/tnm"
* code.extension[cpPraefix].valueCodeableConcept.coding.code = #c
* subject = Reference(mii-exa-onko-folfox-patient)
* focus = Reference(mii-exa-onko-colorectal-cancer-diagnosis)
* effectiveDateTime = "2024-02-20"
* method.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version"
* method.coding.code = #8
* valueCodeableConcept.coding.system = "https://www.uicc.org/resources/tnm"
* valueCodeableConcept.coding.code = #M0

// TNM Classification - Overall staging (groups T, N, M)

Instance: mii-exa-onko-colorectal-tnm
InstanceOf: MII_PR_Onko_TNM_Klassifikation
Usage: #example
Title: "TNM Klassifikation - pT3 pN1 cM0, UICC Stage IIIB"
Description: "Postoperative pathological TNM staging with UICC stage group IIIB"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
* status = #final
* code.coding = http://snomed.info/sct#399588009 "Pathologic TNM stage grouping"
* subject = Reference(mii-exa-onko-folfox-patient)
* focus = Reference(mii-exa-onko-colorectal-cancer-diagnosis)
* effectiveDateTime = "2024-02-20"
* method.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version"
* method.coding.code = #8
* valueCodeableConcept.coding.system = "https://www.uicc.org/resources/tnm"
* valueCodeableConcept.coding.code = #IIIB
* hasMember[0] = Reference(mii-exa-onko-colorectal-tnm-t)
* hasMember[1] = Reference(mii-exa-onko-colorectal-tnm-n)
* hasMember[2] = Reference(mii-exa-onko-colorectal-tnm-m)

// -----------------------------------------------------
// STEP 1: TUMOR BOARD RECOMMENDATION
// -----------------------------------------------------

// CarePlan - Tumor Board Meeting

Instance: mii-exa-onko-tumorkonferenz-folfox
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
Title: "Tumorkonferenz - FOLFOX Empfehlung bei Kolorektalkarzinom"
Description: "Tumor board recommends FOLFOX protocol for colorectal cancer patient"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "Tumorkonferenz_FOLFOX_001"
* status = #active
* intent = #plan
* category.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ"
* category.coding.code = #praeth // Prätherapeutische Tumorkonferenz
* category.coding.display = "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
* subject = Reference(mii-exa-onko-folfox-patient)
* created = "2024-03-10"
* addresses = Reference(mii-exa-onko-colorectal-cancer-diagnosis)
* activity[extended].reference = Reference(mii-exa-onko-folfox-requestgroup)
* activity[extended].progress.text = "Tumor board recommends FOLFOX chemotherapy protocol for stage III colon cancer, adjuvant setting"

// RequestGroup - FOLFOX Combination Therapy Recommendation

Instance: mii-exa-onko-folfox-requestgroup
InstanceOf: MII_PR_Onko_Therapieempfehlung_Kombinationstherapie
Usage: #example
Title: "FOLFOX Therapieempfehlung (RequestGroup)"
Description: "Tumor board recommendation for FOLFOX protocol with therapy type and protocol coding"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie)
* status = #active
* intent = #proposal
* subject = Reference(mii-exa-onko-folfox-patient)
* authoredOn = "2024-03-10"
* reasonReference = Reference(mii-exa-onko-colorectal-cancer-diagnosis)

// Code: Therapy type (category)
* code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* code.coding.code = #CH
* code.coding.display = "Chemotherapie"
* code.text = "Chemotherapie"

// Action: FOLFOX4 Protocol with sub-actions for individual medications
* action.title = "FOLFOX4 Protocol"
* action.description = "FOLFOX4 chemotherapy protocol: Fluorouracil + Folinsäure + Oxaliplatin"
* action.code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle"
* action.code.coding.code = #FOLFOX4
* action.code.coding.display = "FOLFOX4"

// Sub-action 1: Fluorouracil
* action.action[0].title = "Fluorouracil (5-FU)"
* action.action[0].description = "5-Fluorouracil - pyrimidine analog, antineoplastic"
* action.action[0].resource = Reference(mii-exa-onko-folfox-5fu-request)

// Sub-action 2: Folinsäure
* action.action[1].title = "Folinsäure (Leucovorin)"
* action.action[1].description = "Folinic acid - enhances 5-FU efficacy"
* action.action[1].resource = Reference(mii-exa-onko-folfox-leucovorin-request)

// Sub-action 3: Oxaliplatin
* action.action[2].title = "Oxaliplatin"
* action.action[2].description = "Platinum-based chemotherapy agent"
* action.action[2].resource = Reference(mii-exa-onko-folfox-oxaliplatin-request)

// MedicationRequest 1: Fluorouracil (5-FU)

Instance: mii-exa-onko-folfox-5fu-request
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Title: "FOLFOX - Fluorouracil MedicationRequest"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #active
* intent = #proposal
* subject = Reference(mii-exa-onko-folfox-patient)
* authoredOn = "2024-03-10"
* reasonReference[Primaertumor] = Reference(mii-exa-onko-colorectal-cancer-diagnosis)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01BC02
* medicationCodeableConcept.coding[atcClassDe].display = "Fluorouracil"
* medicationCodeableConcept.text = "5-Fluorouracil (5-FU)"

// MedicationRequest 2: Folinsäure (Leucovorin)

Instance: mii-exa-onko-folfox-leucovorin-request
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Title: "FOLFOX - Folinsäure MedicationRequest"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #active
* intent = #proposal
* subject = Reference(mii-exa-onko-folfox-patient)
* authoredOn = "2024-03-10"
* reasonReference[Primaertumor] = Reference(mii-exa-onko-colorectal-cancer-diagnosis)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #V03AF03
* medicationCodeableConcept.coding[atcClassDe].display = "Calciumfolinat"
* medicationCodeableConcept.text = "Leucovorin (Folinsäure)"

// MedicationRequest 3: Oxaliplatin

Instance: mii-exa-onko-folfox-oxaliplatin-request
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Title: "FOLFOX - Oxaliplatin MedicationRequest"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #active
* intent = #proposal
* subject = Reference(mii-exa-onko-folfox-patient)
* authoredOn = "2024-03-10"
* reasonReference[Primaertumor] = Reference(mii-exa-onko-colorectal-cancer-diagnosis)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01XA03
* medicationCodeableConcept.coding[atcClassDe].display = "Oxaliplatin"
* medicationCodeableConcept.text = "Oxaliplatin"

// -----------------------------------------------------
// STEP 2: ACTUAL TREATMENT GIVEN
// -----------------------------------------------------

// Systemische Therapie Procedure - FOLFOX actually administered

Instance: mii-exa-onko-folfox-procedure
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Title: "FOLFOX Systemische Therapie (tatsächlich durchgeführt)"
Description: "Actual FOLFOX chemotherapy given, linked back to tumor board recommendation"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
* status = #completed
* subject = Reference(mii-exa-onko-folfox-patient)
* encounter = Reference(mii-exa-onko-folfox-encounter-chemo)
* reasonReference = Reference(mii-exa-onko-colorectal-cancer-diagnosis)

// Links back to tumor board recommendation
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox)

// Intention - Kurativ
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* extension[Intention].valueCodeableConcept.coding.display = "Kurativ"

// Stellung zur OP - Adjuvant (nach Operation)
* extension[StellungZurOp].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop"
* extension[StellungZurOp].valueCodeableConcept.coding.code = #A
* extension[StellungZurOp].valueCodeableConcept.coding.display = "Adjuvant"

* category = http://snomed.info/sct#277132007	"Therapeutic procedure"

// Art der systemischen Therapie - Chemotherapie
* code.coding[systemische_therapie_art].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art"
* code.coding[systemische_therapie_art].code = #CH
* code.coding[systemische_therapie_art].display = "Chemotherapie"

// Optional: OPS Code for chemotherapy
* code.coding[ops].system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[ops].version = "2024"
* code.coding[ops].code = #8-542
* code.coding[ops].display = "Nicht komplexe Chemotherapie"

// Protocol used - SAME as recommended!
* usedCode.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle"
* usedCode.coding.code = #FOLFOX4
* usedCode.coding.display = "FOLFOX4"

// Treatment period - 6 months adjuvant chemotherapy
* performedPeriod.start = "2024-03-20"
* performedPeriod.end = "2024-09-15"

// Outcome - Reguläres Ende (completed as planned)
* outcome.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund"
* outcome.coding.code = #E
* outcome.coding.display = "Reguläres Ende"

// Note
* note.text = "Patient received 12 cycles of adjuvant FOLFOX4 chemotherapy for stage III colon cancer. Treatment completed without major complications."

// -----------------------------------------------------
// Individual MedicationStatements for the actual drugs given
// These reference the Procedure via partOf
// -----------------------------------------------------

// MedicationStatement 1: Fluorouracil (5-FU) actually given

Instance: mii-exa-onko-folfox-5fu-statement
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "FOLFOX - Fluorouracil tatsächlich verabreicht"
Description: "5-Fluorouracil medication statement as part of FOLFOX4 protocol"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #completed
* subject = Reference(mii-exa-onko-folfox-patient)

// Links to the systemic therapy procedure
* partOf[systemischeTherapie] = Reference(mii-exa-onko-folfox-procedure)

// Links back to the original CarePlan recommendation
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox)

// Medication coding with ATC
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01BC02
* medicationCodeableConcept.coding[atcClassDe].display = "Fluorouracil"
* medicationCodeableConcept.text = "5-Fluorouracil (5-FU)"

// Treatment period
* effectivePeriod.start = "2024-03-20"
* effectivePeriod.end = "2024-09-15"

// Protocol name in note
* note.text = "FOLFOX4"

// MedicationStatement 2: Folinsäure (Leucovorin) actually given

Instance: mii-exa-onko-folfox-leucovorin-statement
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "FOLFOX - Folinsäure tatsächlich verabreicht"
Description: "Folinic acid (Leucovorin) medication statement as part of FOLFOX4 protocol"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #completed
* subject = Reference(mii-exa-onko-folfox-patient)

// Links to the systemic therapy procedure
* partOf[systemischeTherapie] = Reference(mii-exa-onko-folfox-procedure)

// Links back to the original CarePlan recommendation
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox)

// Medication coding with ATC
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #V03AF03
* medicationCodeableConcept.coding[atcClassDe].display = "Calciumfolinat"
* medicationCodeableConcept.text = "Leucovorin (Folinsäure)"

// Treatment period
* effectivePeriod.start = "2024-03-20"
* effectivePeriod.end = "2024-09-15"

// Protocol name in note
* note.text = "FOLFOX4"

// MedicationStatement 3: Oxaliplatin actually given

Instance: mii-exa-onko-folfox-oxaliplatin-statement
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "FOLFOX - Oxaliplatin tatsächlich verabreicht"
Description: "Oxaliplatin medication statement as part of FOLFOX4 protocol"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #completed
* subject = Reference(mii-exa-onko-folfox-patient)

// Links to the systemic therapy procedure
* partOf[systemischeTherapie] = Reference(mii-exa-onko-folfox-procedure)

// Links back to the original CarePlan recommendation
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox)

// Medication coding with ATC
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01XA03
* medicationCodeableConcept.coding[atcClassDe].display = "Oxaliplatin"
* medicationCodeableConcept.text = "Oxaliplatin"

// Treatment period
* effectivePeriod.start = "2024-03-20"
* effectivePeriod.end = "2024-09-15"

// Protocol name in note
* note.text = "FOLFOX4"

// -----------------------------------------------------
// STEP 3: FOLLOW-UP (VERLAUF)
// -----------------------------------------------------

// Verlauf Observation - 6-month follow-up after completing chemotherapy

Instance: mii-exa-onko-folfox-verlauf-6months
InstanceOf: MII_PR_Onko_Verlauf
Usage: #example
Title: "Verlauf - 6 Monate nach FOLFOX"
Description: "6-month follow-up examination showing no evidence of disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"
* status = #final
* code.coding = http://snomed.info/sct#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(mii-exa-onko-folfox-patient)
* focus = Reference(mii-exa-onko-colorectal-cancer-diagnosis)
* effectiveDateTime = "2025-03-15"

// Gesamtbeurteilung Tumorstatus - Complete Response
* valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung"
* valueCodeableConcept.coding.code = #V
* valueCodeableConcept.coding.display = "Vollremission (complete remission, CR)"

// Component: Local tumor status
* component[Tumor_Verlauf].code.coding = http://snomed.info/sct#445200009 "Status of residual neoplasm (observable entity)"
* component[Tumor_Verlauf].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor"
* component[Tumor_Verlauf].valueCodeableConcept.coding.code = #K
* component[Tumor_Verlauf].valueCodeableConcept.coding.display = "Kein Tumor nachweisbar"

// Component: Lymph node status
* component[Lymphknoten_Verlauf].code.coding = http://snomed.info/sct#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten"
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding.code = #K
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding.display = "kein Lymphknotenbefall nachweisbar"

// Component: Distant metastases status
* component[Fernmetastasen_Verlauf].code.coding = http://snomed.info/sct#399608002 "Status of distant metastasis (observable entity)"
* component[Fernmetastasen_Verlauf].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen"
* component[Fernmetastasen_Verlauf].valueCodeableConcept.coding.code = #K
* component[Fernmetastasen_Verlauf].valueCodeableConcept.coding.display = "Keine Fernmetastasen nachweisbar"

// Note
* note.text = "Patient completed 12 cycles of adjuvant FOLFOX4. CT scan and colonoscopy show no evidence of recurrence. CEA level normal (2.1 ng/mL). Patient is disease-free at 6-month follow-up. Plan: Continue surveillance with CEA and imaging every 3-6 months."
