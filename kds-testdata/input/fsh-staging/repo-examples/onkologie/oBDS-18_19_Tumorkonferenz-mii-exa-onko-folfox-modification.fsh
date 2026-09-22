Instance: mii-exa-onko-ascending-colon-cancer-diagnosis
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Title: "Kolonkarzinom Primärdiagnose - Colon ascendens"
Description: "Stage III ascending colon adenocarcinoma, diagnosed January 2024"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
// QA-Fix: seit dem BREAKING Pflicht-Slice (Migrationsseite Eintrag 3) braucht
// jede Primaertumor-Diagnose die onkologie-Kategorie. Fehlte hier — und liess
// per Domino auch die 3 reasonReference[Primaertumor]-Slices der FOLFOX-
// MedicationRequests scheitern (profile-Diskriminator mit resolve()).
// Explizite Indizes: Slice-Name + indexfreie Pfade verschmelzen in SUSHI
// sonst zu EINEM category-Element (encounter-diagnosis ging verloren).
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category[1] = http://snomed.info/sct#55342001 "Neoplastic disease"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C18.2 "Bösartige Neubildung: Colon ascendens"
* code.coding[icd10-gm].version = "2024"
* extension[Feststellungsdatum].valueDateTime = "2024-01-20"
* subject = Reference(Patient/example-modification)
* encounter = Reference(Encounter/example-diagnosis-modification)
* onsetDateTime = "2024-01-20"
* recordedDate = "2024-01-20"
* note.text = "Adenokarzinom des Colon ascendens, Stadium III (T3N1M0)"

// Main Surgical Procedure - Right hemicolectomy

Instance: mii-exa-onko-right-hemicolectomy
InstanceOf: MII_PR_Onko_Operation
Usage: #example
Title: "Hemikolektomie rechts"
Description: "Laparoscopic right hemicolectomy with lymph node dissection"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
* status = #completed
* category = http://snomed.info/sct#387713003 "Surgical procedure"
* code.coding[ops].system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[ops].version = "2024"
* code.coding[ops].code = #5-455.75
* code.coding[ops].display = "Partielle Resektion des Dickdarmes: Sigmaresektion: Laparoskopisch mit Anastomose"
* code.text = "Laparoskopische Hemikolektomie rechts mit Lymphknotendissektion"
* subject = Reference(Patient/example-modification)
* encounter = Reference(Encounter/example-surgery-modification)
* performedDateTime = "2024-02-20"
* reasonReference = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* extension[Intention].valueCodeableConcept.coding.display = "Kurativ"
* outcome.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus"
* outcome.coding.code = #R0
* outcome.coding.display = "Kein Residualtumor"
* note.text = "Laparoscopic right hemicolectomy performed. Tumor completely resected with clear margins (R0). 22 lymph nodes removed, 4 positive."

// TNM Classification - T Category (pathological)

Instance: mii-exa-onko-ascending-colon-tnm-t
InstanceOf: MII_PR_Onko_TNM_T_Kategorie
Usage: #example
Title: "TNM T-Kategorie - pT3"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)
* status = #final
* code = http://snomed.info/sct#384625004 "pT category (observable entity)"
* code.extension[cpPraefix].valueCodeableConcept.coding.system = https://www.uicc.org/resources/tnm
* code.extension[cpPraefix].valueCodeableConcept.coding.code = #p
* subject = Reference(Patient/example-modification)
* focus = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* effectiveDateTime = "2024-02-25"
* valueCodeableConcept.coding.system = https://www.uicc.org/resources/tnm
* valueCodeableConcept.coding.code = #T3

// TNM Classification - N Category (pathological)

Instance: mii-exa-onko-ascending-colon-tnm-n
InstanceOf: MII_PR_Onko_TNM_N_Kategorie
Usage: #example
Title: "TNM N-Kategorie - pN1"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie)
* status = #final
* code = http://snomed.info/sct#371494008 "pN category (observable entity)"
* code.extension[cpPraefix].valueCodeableConcept.coding.system = "https://www.uicc.org/resources/tnm"
* code.extension[cpPraefix].valueCodeableConcept.coding.code = #p
* subject = Reference(Patient/example-modification)
* focus = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* effectiveDateTime = "2024-02-25"
* valueCodeableConcept.coding.system = "https://www.uicc.org/resources/tnm"
* valueCodeableConcept.coding.code = #N1

// TNM Classification - M Category (clinical)

Instance: mii-exa-onko-ascending-colon-tnm-m
InstanceOf: MII_PR_Onko_TNM_M_Kategorie
Usage: #example
Title: "TNM M-Kategorie - cM0"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie)
* status = #final
* code = http://snomed.info/sct#399387003 "cM category (observable entity)"
* code.extension[cpPraefix].valueCodeableConcept.coding.system = "https://www.uicc.org/resources/tnm"
* code.extension[cpPraefix].valueCodeableConcept.coding.code = #c
* subject = Reference(Patient/example-modification)
* focus = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* effectiveDateTime = "2024-02-25"
* valueCodeableConcept.coding.system = "https://www.uicc.org/resources/tnm"
* valueCodeableConcept.coding.code = #M0

// TNM Classification - Overall staging (groups T, N, M)

Instance: mii-exa-onko-ascending-colon-tnm
InstanceOf: MII_PR_Onko_TNM_Klassifikation
Usage: #example
Title: "TNM Klassifikation - Stadium IIIB"
Description: "Postoperative pathological TNM staging for ascending colon cancer (pT3 pN1 cM0 = Stage IIIB)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
* status = #final
* subject = Reference(Patient/example-modification)
* focus = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* effectiveDateTime = "2024-02-25"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #399588009
* code.coding.display = "Pathologic TNM stage grouping"
* method.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version"
* method.coding.code = #8
* method.coding.display = "8. Auflage"
* valueCodeableConcept.coding.system = "https://www.uicc.org/resources/tnm"
* valueCodeableConcept.coding.code = #IIIB
* hasMember[0] = Reference(mii-exa-onko-ascending-colon-tnm-t)
* hasMember[1] = Reference(mii-exa-onko-ascending-colon-tnm-n)
* hasMember[2] = Reference(mii-exa-onko-ascending-colon-tnm-m)

// -----------------------------------------------------
// STEP 1: TUMOR BOARD RECOMMENDATION
// -----------------------------------------------------

// CarePlan - Tumor Board Meeting

Instance: mii-exa-onko-tumorkonferenz-folfox-modification
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
Title: "Tumorkonferenz - FOLFOX Empfehlung"
Description: "Tumor board recommends FOLFOX4 protocol for adjuvant treatment"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "Tumorkonferenz_FOLFOX_Modification_001"
* status = #active
* intent = #plan
* category.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ"
* category.coding.code = #praeth
* category.coding.display = "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
* subject = Reference(Patient/example-modification)
* created = "2024-03-05"
* addresses = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* activity[extended].reference = Reference(mii-exa-onko-folfox-requestgroup-modification)
* activity[extended].progress.text = "Tumor board recommends FOLFOX4 chemotherapy protocol for stage III colon cancer, adjuvant setting"

// RequestGroup - FOLFOX4 Combination Therapy Recommendation

Instance: mii-exa-onko-folfox-requestgroup-modification
InstanceOf: MII_PR_Onko_Therapieempfehlung_Kombinationstherapie
Usage: #example
Title: "FOLFOX4 Therapieempfehlung"
Description: "Original tumor board recommendation for FOLFOX4 protocol (later modified due to toxicity)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie)
* status = #active
* intent = #proposal
* subject = Reference(Patient/example-modification)
* authoredOn = "2024-03-05"
* reasonReference = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* code.coding.code = #CH
* code.coding.display = "Chemotherapie"
* code.text = "Chemotherapie"
* action.title = "FOLFOX4 Protocol"
* action.description = "FOLFOX4 chemotherapy protocol: Fluorouracil + Folinsäure + Oxaliplatin, 12 cycles planned"
* action.code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle"
* action.code.coding.code = #FOLFOX4
* action.code.coding.display = "FOLFOX4"
* action.action[0].title = "Fluorouracil (5-FU)"
* action.action[0].description = "5-Fluorouracil - pyrimidine analog"
* action.action[0].resource = Reference(mii-exa-onko-modification-5fu-request)
* action.action[1].title = "Folinsäure (Leucovorin)"
* action.action[1].description = "Folinic acid - enhances 5-FU efficacy"
* action.action[1].resource = Reference(mii-exa-onko-modification-leucovorin-request)
* action.action[2].title = "Oxaliplatin"
* action.action[2].description = "Platinum-based chemotherapy agent"
* action.action[2].resource = Reference(mii-exa-onko-modification-oxaliplatin-request)

// MedicationRequest 1: Fluorouracil - COMPLETED as planned

Instance: mii-exa-onko-modification-5fu-request
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Title: "MedicationRequest - Fluorouracil (vollständig verabreicht)"
Description: "Fluorouracil recommendation - completed for all 12 cycles"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #completed
* intent = #proposal
* subject = Reference(Patient/example-modification)
* authoredOn = "2024-03-05"
* reasonReference[Primaertumor] = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01BC02
* medicationCodeableConcept.coding[atcClassDe].display = "Fluorouracil"
* medicationCodeableConcept.text = "5-Fluorouracil (5-FU)"
* note.text = "Completed as planned for all 12 cycles"

// MedicationRequest 2: Leucovorin - COMPLETED as planned

Instance: mii-exa-onko-modification-leucovorin-request
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Title: "MedicationRequest - Folinsäure (vollständig verabreicht)"
Description: "Leucovorin recommendation - completed for all 12 cycles"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #completed
* intent = #proposal
* subject = Reference(Patient/example-modification)
* authoredOn = "2024-03-05"
* reasonReference[Primaertumor] = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #V03AF03
* medicationCodeableConcept.coding[atcClassDe].display = "Calciumfolinat"
* medicationCodeableConcept.text = "Leucovorin (Folinsäure)"
* note.text = "Completed as planned for all 12 cycles"

// MedicationRequest 3: Oxaliplatin - STOPPED due to adverse reaction

Instance: mii-exa-onko-modification-oxaliplatin-request
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Title: "MedicationRequest - Oxaliplatin (abgebrochen wegen Neuropathie)"
Description: "Oxaliplatin recommendation - stopped after cycle 6 due to grade 3 peripheral neuropathy"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #stopped
* statusReason.coding = http://snomed.info/sct#281647001 "Adverse reaction (disorder)"
* statusReason.text = "Oxaliplatin discontinued after cycle 6 due to grade 3 peripheral neuropathy (CTCAE). Patient continued with 5-FU + Leucovorin only for remaining 6 cycles."
* intent = #proposal
* subject = Reference(Patient/example-modification)
* authoredOn = "2024-03-05"
* reasonReference[Primaertumor] = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01XA03
* medicationCodeableConcept.coding[atcClassDe].display = "Oxaliplatin"
* medicationCodeableConcept.text = "Oxaliplatin"
* note.text = "Administered for cycles 1-6 only. Stopped due to cumulative neurotoxicity."

// -----------------------------------------------------
// STEP 2A: TREATMENT PHASE 1 - FOLFOX4 (Cycles 1-6)
// -----------------------------------------------------

// Systemische Therapie Procedure - Phase 1: Full FOLFOX4

Instance: mii-exa-onko-folfox-phase1
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Title: "FOLFOX4 Therapie - Phase 1 (Zyklen 1-6)"
Description: "First phase: Full FOLFOX4 protocol for 6 cycles before dose modification"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
* status = #completed
* subject = Reference(Patient/example-modification)
* encounter = Reference(Encounter/example-chemo-phase1)
* reasonReference = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* extension[Intention].valueCodeableConcept.coding.display = "Kurativ"
* extension[StellungZurOp].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop"
* extension[StellungZurOp].valueCodeableConcept.coding.code = #A
* extension[StellungZurOp].valueCodeableConcept.coding.display = "Adjuvant"
* category = http://snomed.info/sct#18629005	// Administration of drug or medicament
* code.coding[systemische_therapie_art].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art"
* code.coding[systemische_therapie_art].code = #CH
* code.coding[systemische_therapie_art].display = "Chemotherapie"
* code.coding[ops].system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[ops].version = "2024"
* code.coding[ops].code = #8-542
* code.coding[ops].display = "Nicht komplexe Chemotherapie"
* usedCode.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle"
* usedCode.coding.code = #FOLFOX4
* usedCode.coding.display = "FOLFOX4"
* performedPeriod.start = "2024-03-15"
* performedPeriod.end = "2024-06-10"
* outcome.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund"
* outcome.coding.code = #A
* outcome.coding.display = "Abbruch wegen Nebenwirkungen"
* note.text = "Patient received 6 cycles of FOLFOX4. Treatment modified after cycle 6 due to severe peripheral neuropathy. Continued with 5-FU/Leucovorin only."

// MedicationStatement - Phase 1: Fluorouracil (cycles 1-6)

Instance: mii-exa-onko-modification-5fu-phase1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "5-FU Phase 1 (Zyklen 1-6)"
Description: "Fluorouracil administered during FOLFOX4 phase"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #completed
* subject = Reference(Patient/example-modification)
* partOf[systemischeTherapie] = Reference(mii-exa-onko-folfox-phase1)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01BC02
* medicationCodeableConcept.coding[atcClassDe].display = "Fluorouracil"
* medicationCodeableConcept.text = "5-Fluorouracil (5-FU)"
* effectivePeriod.start = "2024-03-15"
* effectivePeriod.end = "2024-06-10"
* note.text = "FOLFOX4 - Cycles 1-6"

// MedicationStatement - Phase 1: Leucovorin (cycles 1-6)

Instance: mii-exa-onko-modification-leucovorin-phase1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Folinsäure Phase 1 (Zyklen 1-6)"
Description: "Leucovorin administered during FOLFOX4 phase"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #completed
* subject = Reference(Patient/example-modification)
* partOf[systemischeTherapie] = Reference(mii-exa-onko-folfox-phase1)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #V03AF03
* medicationCodeableConcept.coding[atcClassDe].display = "Calciumfolinat"
* medicationCodeableConcept.text = "Leucovorin (Folinsäure)"
* effectivePeriod.start = "2024-03-15"
* effectivePeriod.end = "2024-06-10"
* note.text = "FOLFOX4 - Cycles 1-6"

// MedicationStatement - Phase 1: Oxaliplatin (cycles 1-6, then STOPPED)

Instance: mii-exa-onko-modification-oxaliplatin-phase1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Oxaliplatin Phase 1 (Zyklen 1-6, dann abgebrochen)"
Description: "Oxaliplatin administered for 6 cycles, then discontinued due to neuropathy"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #stopped
* statusReason.coding = http://snomed.info/sct#281647001 "Adverse reaction (disorder)"
* statusReason.text = "Grade 3 peripheral neuropathy (CTCAE) - cumulative neurotoxicity from oxaliplatin"
* subject = Reference(Patient/example-modification)
* partOf[systemischeTherapie] = Reference(mii-exa-onko-folfox-phase1)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01XA03
* medicationCodeableConcept.coding[atcClassDe].display = "Oxaliplatin"
* medicationCodeableConcept.text = "Oxaliplatin"
* effectivePeriod.start = "2024-03-15"
* effectivePeriod.end = "2024-06-10"
* note.text = "FOLFOX4 - Cycles 1-6 only. Discontinued due to severe peripheral neuropathy. Patient experienced numbness and tingling in hands and feet (grade 3 CTCAE), interfering with daily activities."

// -----------------------------------------------------
// STEP 2B: ADVERSE EVENT DOCUMENTATION (Optional but Recommended)
// -----------------------------------------------------

// AdverseEvent - Oxaliplatin-induced neuropathy (FHIR R4)

Instance: mii-exa-onko-oxaliplatin-neuropathy
InstanceOf: AdverseEvent
Usage: #example
Title: "Unerwünschtes Ereignis - Oxaliplatin-induzierte Neuropathie"
Description: "Grade 3 peripheral neuropathy caused by oxaliplatin, leading to treatment modification"
* actuality = #actual
* subject = Reference(Patient/example-modification)
* date = "2024-06-10"
* detected = "2024-06-05"
* recordedDate = "2024-06-10"
* seriousness.coding.system = "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness"
* seriousness.coding.code = #non-serious
* severity.coding.system = "http://terminology.hl7.org/CodeSystem/adverse-event-severity"
* severity.coding.code = #severe
* severity.coding.display = "Severe"
* event.coding.system = "https://www.meddra.org"
* event.coding.code = #10034620
* event.coding.display = "Peripheral sensory neuropathy"
* event.text = "Oxaliplatin-induced peripheral neuropathy, grade 3 (CTCAE v5.0)"
* suspectEntity.instance = Reference(mii-exa-onko-modification-oxaliplatin-phase1)
* suspectEntity.causality.assessment.coding.system = "http://terminology.hl7.org/CodeSystem/adverse-event-causality-assess"
* suspectEntity.causality.assessment.coding.code = #certain
* suspectEntity.causality.assessment.coding.display = "Certain"

// -----------------------------------------------------
// STEP 3: TREATMENT PHASE 2 - Modified Protocol (Cycles 7-12)
// -----------------------------------------------------

// Systemische Therapie Procedure - Phase 2: LV5FU2 (5-FU + Leucovorin only)

Instance: mii-exa-onko-lv5fu2-phase2
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Title: "LV5FU2 Therapie - Phase 2 (Zyklen 7-12)"
Description: "Second phase: Modified protocol with 5-FU + Leucovorin only (no Oxaliplatin) for remaining 6 cycles"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
* status = #completed
* subject = Reference(Patient/example-modification)
* encounter = Reference(Encounter/example-chemo-phase2)
* reasonReference = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* partOf = Reference(mii-exa-onko-folfox-phase1)
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* extension[Intention].valueCodeableConcept.coding.display = "Kurativ"
* extension[StellungZurOp].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop"
* extension[StellungZurOp].valueCodeableConcept.coding.code = #A
* extension[StellungZurOp].valueCodeableConcept.coding.display = "Adjuvant"
* category = http://snomed.info/sct#18629005	// Administration of drug or medicament
* code.coding[systemische_therapie_art].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art"
* code.coding[systemische_therapie_art].code = #CH
* code.coding[systemische_therapie_art].display = "Chemotherapie"
* code.coding[ops].system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[ops].version = "2024"
* code.coding[ops].code = #8-542
* code.coding[ops].display = "Nicht komplexe Chemotherapie"
* usedCode.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle"
* usedCode.coding.code = #LV5FU2
* usedCode.coding.display = "LV5FU2"
* performedPeriod.start = "2024-06-17"
* performedPeriod.end = "2024-09-10"
* outcome.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund"
* outcome.coding.code = #E
* outcome.coding.display = "Reguläres Ende"
* note.text = "Modified protocol: LV5FU2 (5-FU/Leucovorin) for cycles 7-12. Oxaliplatin omitted due to persistent neuropathy. Patient tolerated modified regimen well. Completed all planned cycles."

// MedicationStatement - Phase 2: Fluorouracil (cycles 7-12)

Instance: mii-exa-onko-modification-5fu-phase2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "5-FU Phase 2 (Zyklen 7-12)"
Description: "Fluorouracil continued for cycles 7-12 as part of modified LV5FU2 protocol"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #completed
* subject = Reference(Patient/example-modification)
* partOf[systemischeTherapie] = Reference(mii-exa-onko-lv5fu2-phase2)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01BC02
* medicationCodeableConcept.coding[atcClassDe].display = "Fluorouracil"
* medicationCodeableConcept.text = "5-Fluorouracil (5-FU)"
* effectivePeriod.start = "2024-06-17"
* effectivePeriod.end = "2024-09-10"
* note.text = "LV5FU2 (modified protocol) - Cycles 7-12"

// MedicationStatement - Phase 2: Leucovorin (cycles 7-12)

Instance: mii-exa-onko-modification-leucovorin-phase2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Folinsäure Phase 2 (Zyklen 7-12)"
Description: "Leucovorin continued for cycles 7-12 as part of modified LV5FU2 protocol"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #completed
* subject = Reference(Patient/example-modification)
* partOf[systemischeTherapie] = Reference(mii-exa-onko-lv5fu2-phase2)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #V03AF03
* medicationCodeableConcept.coding[atcClassDe].display = "Calciumfolinat"
* medicationCodeableConcept.text = "Leucovorin (Folinsäure)"
* effectivePeriod.start = "2024-06-17"
* effectivePeriod.end = "2024-09-10"
* note.text = "LV5FU2 (modified protocol) - Cycles 7-12"

// -----------------------------------------------------
// STEP 4: FOLLOW-UP (VERLAUF)
// -----------------------------------------------------

// Verlauf Observation - 6-month follow-up

Instance: mii-exa-onko-modification-verlauf-6months
InstanceOf: MII_PR_Onko_Verlauf
Usage: #example
Title: "Verlauf - 6 Monate nach modifizierter Therapie"
Description: "6-month follow-up showing complete response despite protocol modification"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"
* status = #final
* code.coding = http://snomed.info/sct#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(Patient/example-modification)
* focus = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* effectiveDateTime = "2025-03-10"
* valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung"
* valueCodeableConcept.coding.code = #V
* valueCodeableConcept.coding.display = "Vollremission (complete remission, CR)"
* component[Tumor_Verlauf].code.coding = http://snomed.info/sct#445200009 "Status of residual neoplasm (observable entity)"
* component[Tumor_Verlauf].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor"
* component[Tumor_Verlauf].valueCodeableConcept.coding.code = #K
* component[Tumor_Verlauf].valueCodeableConcept.coding.display = "Kein Tumor nachweisbar"
* component[Lymphknoten_Verlauf].code.coding = http://snomed.info/sct#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten"
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding.code = #K
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding.display = "kein Lymphknotenbefall nachweisbar"
* component[Fernmetastasen_Verlauf].code.coding = http://snomed.info/sct#399608002 "Status of distant metastasis (observable entity)"
* component[Fernmetastasen_Verlauf].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen"
* component[Fernmetastasen_Verlauf].valueCodeableConcept.coding.code = #K
* component[Fernmetastasen_Verlauf].valueCodeableConcept.coding.display = "Keine Fernmetastasen nachweisbar"
* note.text = "Patient completed modified chemotherapy protocol (6 cycles FOLFOX4 + 6 cycles LV5FU2). Despite early discontinuation of oxaliplatin due to neuropathy, patient achieved complete response. CT scan and colonoscopy show no evidence of recurrence. CEA normal (1.8 ng/mL). Peripheral neuropathy has improved to grade 1 but persists. Patient is disease-free at 6-month follow-up."
