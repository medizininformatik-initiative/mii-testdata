Instance: mii-exa-onko-molecular-board-patient
InstanceOf: Patient
Usage: #example
Title: "Molecular Tumor Board Patient"
Description: "Patient for molecular tumor board examples"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/patienten"
* identifier.value = "MTB-2024-001"
* name.family = "Müller"
* name.given = "Maria"
* gender = #female
* birthDate = "1968-07-22"

// Primaertumor Condition

Instance: primaertumor-example
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Title: "Example Primaertumor Condition for Extended Examples"
Description: "Minimal primaertumor condition for referencing in molecular tumor board examples"
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C50.9 "Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet"
* code.coding.version = "2024"
* subject = Reference(mii-exa-onko-molecular-board-patient)
* recordedDate = "2024-01-10"
* extension[Feststellungsdatum].valueDateTime = "2024-01-10"

// =====================================================
// EXAMPLE 1: TRADITIONAL oBDS + EXTENDED MOLECULAR RECOMMENDATION
// Mixed approach: Standard oBDS categorization + detailed molecular protocol
// =====================================================

Instance: mii-exa-onko-tumorkonferenz-mixed-approach
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "Tumorkonferenz_Mixed_001"
* status = #active
* intent = #plan
* subject = Reference(mii-exa-onko-molecular-board-patient)
* category.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ"
* category.coding.code = #praeth // Molekulares Tumorboard
* category.text = "Molekulares Tumorboard"
* created = "2024-01-15"
* addresses = Reference(Condition/primaertumor-example)

// Activity 1: Traditional oBDS slice - general operation recommendation
* activity[obds][0].detail.code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* activity[obds][0].detail.code.coding.code = #OP
* activity[obds][0].detail.status = #scheduled

// Activity 2: Extended slice - detailed molecular protocol via RequestGroup
* activity[extended][0].reference = Reference(mii-exa-onko-molecular-cdk46-protocol)
* activity[extended][0].progress.text = "Molecular profiling shows HR+/HER2- status with PI3K pathway activation - CDK4/6 inhibitor combination recommended"

// =====================================================
// EXAMPLE 2: PURE EXTENDED SLICE APPROACH
// Only molecular tumor board recommendations without traditional oBDS categorization
// =====================================================

Instance: mii-exa-onko-tumorkonferenz-pure-molecular
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "Tumorkonferenz_Molecular_002"
* status = #active
* intent = #plan
* subject = Reference(mii-exa-onko-molecular-board-patient)
* category.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ"
* category.coding.code = #praeth
* category.text = "Molekulares Tumorboard - Precision Medicine"
* created = "2024-01-16"
* addresses = Reference(Condition/primaertumor-example)

// Only extended activities - no traditional oBDS categorization
* activity[extended][0].reference = Reference(mii-exa-onko-molecular-her2-alternatives)
* activity[extended][0].progress.text = "HER2+ with T790M mutation and brain metastases - specific agent sequence based on resistance profile"

* activity[extended][1].reference = Reference(mii-exa-onko-molecular-surgery-request)
* activity[extended][1].progress.text = "Neurosurgical consultation recommended for brain metastases management"

// =====================================================
// SUPPORTING REQUESTGROUP INSTANCES
// =====================================================

// RequestGroup for CDK4/6 inhibitor protocol (pharmaceutical class approach)

Instance: mii-exa-onko-molecular-cdk46-protocol
InstanceOf: mii-pr-onko-therapieempfehlung-kombinationstherapie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie)
* status = #active
* intent = #proposal
* code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* code.coding.code = #CZ // Chemotherapie + zielgerichtete Substanzen
* code.text = "CDK4/6 Inhibitor + Hormontherapie Kombination"
* subject = Reference(mii-exa-onko-molecular-board-patient)
* authoredOn = "2024-01-15"
* reasonReference = Reference(Condition/primaertumor-example)
* action[0].resource = Reference(mii-exa-onko-cdk46-class-medication)
* action[0].title = "CDK4/6 Inhibitor (pharmazeutische Klasse)"
* action[0].description = "Beliebiger CDK4/6 Inhibitor: Palbociclib, Ribociclib oder Abemaciclib je nach Verfügbarkeit und Patientenfaktoren"

// RequestGroup for HER2-targeted alternatives (specific medication choices)

Instance: mii-exa-onko-molecular-her2-alternatives
InstanceOf: mii-pr-onko-therapieempfehlung-kombinationstherapie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie)
* status = #active
* intent = #proposal
* code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* code.coding.code = #ZS // Zielgerichtete Substanzen
* code.text = "HER2-gerichtete Therapie - Resistenz-basierte Auswahl"
* subject = Reference(mii-exa-onko-molecular-board-patient)
* authoredOn = "2024-01-16"
* reasonReference = Reference(Condition/primaertumor-example)
* action[0].title = "HER2-Therapie Optionen"
* action[0].description = "Auswahl basierend auf Resistenzprofil und klinischer Situation"
* action[0].selectionBehavior = #any
* action[0].requiredBehavior = #must
* action[0].action[0].title = "Zweite Linie: T-DM1"
* action[0].action[0].resource = Reference(mii-exa-onko-tdm1-option)
* action[0].action[1].title = "Dritte Linie: Tucatinib-Kombination"
* action[0].action[1].resource = Reference(mii-exa-onko-tucatinib-option)

// ServiceRequest for surgical consultation (demonstrates ServiceRequest support)

Instance: mii-exa-onko-molecular-surgery-request
InstanceOf: ServiceRequest
Usage: #example
* status = #active
* intent = #proposal
* category.coding.system = "http://snomed.info/sct"
* category.coding.code = #387713003 "Surgical procedure"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #11429006 "Consultation"
* code.text = "Neurochirurgische Konsultation für Hirnmetastasen"
* subject = Reference(mii-exa-onko-molecular-board-patient)
* authoredOn = "2024-01-16"
* reasonReference = Reference(Condition/primaertumor-example)
* note.text = "Molekulares Tumorboard empfiehlt neurochirurgische Evaluation für stereotaktische Radiochirurgie bei oligometastatischen Hirnläsionen"

// =====================================================
// MEDICATIONREQUEST INSTANCES (used by RequestGroups above)
// Note: intent = #option because these are components of RequestGroups
// =====================================================

// MedicationRequest for CDK4/6 inhibitor class (pharmaceutical class approach)

Instance: mii-exa-onko-cdk46-class-medication
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #active
* intent = #option  // Part of RequestGroup, so use 'option' not 'proposal'
* subject = Reference(mii-exa-onko-molecular-board-patient)
* authoredOn = "2024-01-15"
* reasonReference[Primaertumor] = Reference(Condition/primaertumor-example)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01EF
* medicationCodeableConcept.coding[atcClassDe].display = "Cyclin-abhängige Kinasen (CDK)-Inhibitoren"
* medicationCodeableConcept.text = "CDK4/6 Inhibitor (Klasse L01EF) - Palbociclib, Ribociclib oder Abemaciclib"
* note.text = "Molekulares Tumorboard empfiehlt beliebigen CDK4/6 Inhibitor basierend auf HR+/HER2- Profil. Konkrete Wirkstoffauswahl nach Verfügbarkeit und Patientenfaktoren."

// MedicationRequest for T-DM1 (specific medication choice)

Instance: mii-exa-onko-tdm1-option
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #active
* intent = #option  // Part of RequestGroup, so use 'option' not 'proposal'
* subject = Reference(mii-exa-onko-molecular-board-patient)
* authoredOn = "2024-01-16"
* reasonReference[Primaertumor] = Reference(Condition/primaertumor-example)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01FD03
* medicationCodeableConcept.coding[atcClassDe].display = "Trastuzumab emtansin"
* medicationCodeableConcept.text = "Trastuzumab Emtansine (T-DM1)"
* note.text = "Zweitlinien-Option, empfohlen bei Progression unter Trastuzumab-basierter Therapie"

// MedicationRequest for Tucatinib combination (specific medication choice)

Instance: mii-exa-onko-tucatinib-option
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #active
* intent = #option  // Part of RequestGroup, so use 'option' not 'proposal'
* subject = Reference(mii-exa-onko-molecular-board-patient)
* authoredOn = "2024-01-16"
* reasonReference[Primaertumor] = Reference(Condition/primaertumor-example)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01EH03
* medicationCodeableConcept.coding[atcClassDe].display = "Tucatinib"
* medicationCodeableConcept.text = "Tucatinib + Trastuzumab + Capecitabin"
* note.text = "Drittlinien-Kombination für Hirnmetastasen oder mehrfach resistente HER2+ Erkrankung"
