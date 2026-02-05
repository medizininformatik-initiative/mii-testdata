// ============================================================================
// MII Onkologie Test Data - Tumorkonferenz & Therapieempfehlung (oBDS Chapters 18-19)
// ============================================================================

// Tumorkonferenz (Tumor Board - Chapter 18)
Instance: mii-exa-test-data-onko-tumorkonferenz-1
InstanceOf: MII_PR_Onko_Tumorkonferenz
Usage: #example
Description: "Onkologie Test Tumorkonferenz - Prätherapeutisch mit OP + Chemo Empfehlung"
* insert TestDataLabel
* identifier.value = "TK-2021-001"
* status = #active
* intent = #plan
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* category = $mii-cs-onko-therapieplanung-typ#praeth "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
* created = "2021-06-20"
* addresses = Reference(mii-exa-test-data-onko-diagnose-1)
* supportingInfo = Reference(mii-exa-test-data-onko-befund-1)
* activity[obds][+].detail.code = $mii-cs-onko-therapie-typ#OP "Operation"
* activity[obds][=].detail.status = #scheduled
* activity[obds][+].detail.code = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
* activity[obds][=].detail.status = #scheduled

// Second Tumorkonferenz - completed with therapy deviation
Instance: mii-exa-test-data-onko-tumorkonferenz-2
InstanceOf: MII_PR_Onko_Tumorkonferenz
Usage: #example
Description: "Onkologie Test Tumorkonferenz - Postoperativ mit Therapieabweichung"
* insert TestDataLabel
* identifier.value = "TK-2021-002"
* status = #completed
* intent = #plan
* subject = Reference(mii-exa-test-data-onko-patient-1)
* category = $mii-cs-onko-therapieplanung-typ#postop "postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)"
* created = "2021-10-15"
* addresses = Reference(mii-exa-test-data-onko-diagnose-1)
* activity[obds][+].detail.code = $mii-cs-onko-therapie-typ#ST "Strahlentherapie"
* activity[obds][=].detail.status = #completed
* activity[obds][+].detail.code = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
* activity[obds][=].detail.status = #cancelled
* activity[obds][=].detail.statusReason = $mii-cs-onko-therapieabweichung#J "ja"

// Therapieempfehlung Operation (ServiceRequest)
Instance: mii-exa-test-data-onko-therapieempfehlung-op-1
InstanceOf: MII_PR_Onko_Therapieempfehlung_Operation
Usage: #example
Description: "Onkologie Test Therapieempfehlung Operation - Debulking"
* insert TestDataLabel
* identifier.value = "TE-OP-2021-001"
* status = #active
* intent = #proposal
* category = $SCT#387713003 "Surgical procedure"
* code = $OPS#5-547.0 "Resektion von Gewebe in der Bauchregion ohne sichere Organzuordnung: Intraperitoneal"
* code.coding.version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* authoredOn = "2021-06-20"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* basedOn = Reference(mii-exa-test-data-onko-tumorkonferenz-1)
* supportingInfo = Reference(mii-exa-test-data-onko-befund-1)

// Therapieempfehlung Medikation (MedicationRequest)
Instance: mii-exa-test-data-onko-therapieempfehlung-medikation-1
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Description: "Onkologie Test Therapieempfehlung Medikation - Carboplatin"
* insert TestDataLabel
* status = #active
* intent = #proposal
* subject = Reference(mii-exa-test-data-onko-patient-1)
* authoredOn = "2021-06-20"
* reasonReference[Primaertumor] = Reference(mii-exa-test-data-onko-diagnose-1)
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01XA02 "Carboplatin"
* supportingInformation = Reference(mii-exa-test-data-onko-genetische-variante-1)

// Second Therapieempfehlung Medikation
Instance: mii-exa-test-data-onko-therapieempfehlung-medikation-2
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Description: "Onkologie Test Therapieempfehlung Medikation - Paclitaxel"
* insert TestDataLabel
* status = #active
* intent = #proposal
* subject = Reference(mii-exa-test-data-onko-patient-1)
* authoredOn = "2021-06-20"
* reasonReference[Primaertumor] = Reference(mii-exa-test-data-onko-diagnose-1)
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01CD01 "Paclitaxel"

// Therapieempfehlung Kombinationstherapie (RequestGroup)
Instance: mii-exa-test-data-onko-therapieempfehlung-kombi-1
InstanceOf: MII_PR_Onko_Therapieempfehlung_Kombinationstherapie
Usage: #example
Description: "Onkologie Test Therapieempfehlung Kombinationstherapie - CarboTax Schema"
* insert TestDataLabel
* identifier.value = "TE-KOMBI-2021-001"
* status = #active
* intent = #proposal
* code = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
* code.text = "Carboplatin + Paclitaxel (CarboTax)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* authoredOn = "2021-06-20"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* action[+].title = "CarboTax Chemotherapie"
* action[=].resource = Reference(mii-exa-test-data-onko-tumorkonferenz-1)
* action[=].action[+].title = "Carboplatin"
* action[=].action[=].resource = Reference(mii-exa-test-data-onko-therapieempfehlung-medikation-1)
* action[=].action[+].title = "Paclitaxel"
* action[=].action[=].resource = Reference(mii-exa-test-data-onko-therapieempfehlung-medikation-2)

// Alternative Tumorkonferenz with molecular board features
Instance: mii-exa-test-data-onko-tumorkonferenz-molekular-1
InstanceOf: MII_PR_Onko_Tumorkonferenz
Usage: #example
Description: "Onkologie Test Molekulares Tumorboard - mit erweiterter Therapieempfehlung"
* insert TestDataLabel
* identifier.value = "MTB-2022-001"
* status = #active
* intent = #plan
* subject = Reference(mii-exa-test-data-onko-patient-1)
* category = $mii-cs-onko-therapieplanung-typ#praeth "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
* category.text = "Molekulares Tumorboard"
* created = "2022-03-10"
* addresses = Reference(mii-exa-test-data-onko-diagnose-1)
* activity[obds][+].detail.code = $mii-cs-onko-therapie-typ#ZS "Zielgerichtete Substanzen"
* activity[obds][=].detail.status = #scheduled
* activity[extended][+].reference = Reference(mii-exa-test-data-onko-therapieempfehlung-parp-1)
* activity[extended][=].progress.text = "BRCA1 mutation detected - PARP inhibitor recommended"

// PARP inhibitor therapy recommendation for molecular board
Instance: mii-exa-test-data-onko-therapieempfehlung-parp-1
InstanceOf: MII_PR_Onko_Therapieempfehlung_Kombinationstherapie
Usage: #example
Description: "Onkologie Test Therapieempfehlung - PARP-Inhibitor Erhaltung"
* insert TestDataLabel
* status = #active
* intent = #proposal
* code = $mii-cs-onko-therapie-typ#ZS "Zielgerichtete Substanzen"
* code.text = "PARP-Inhibitor Erhaltungstherapie"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* authoredOn = "2022-03-10"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* action[+].title = "Niraparib Erhaltung"
* action[=].description = "PARP-Inhibitor basierend auf BRCA1 Mutationsstatus"
* action[=].resource = Reference(mii-exa-test-data-onko-therapieempfehlung-niraparib)

// Niraparib medication recommendation
Instance: mii-exa-test-data-onko-therapieempfehlung-niraparib
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Description: "Onkologie Test Therapieempfehlung Medikation - Niraparib"
* insert TestDataLabel
* status = #active
* intent = #option
* subject = Reference(mii-exa-test-data-onko-patient-1)
* authoredOn = "2022-03-10"
* reasonReference[Primaertumor] = Reference(mii-exa-test-data-onko-diagnose-1)
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01XK02 "Niraparib"
* note.text = "Erhaltungstherapie bei BRCA1-positivem Ovarialkarzinom"

