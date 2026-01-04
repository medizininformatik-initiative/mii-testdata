// ============================================================================
// MII Onkologie Test Data - Therapy Profiles (oBDS Chapters 13-16)
// ============================================================================

// Operation (Chapter 13)
Instance: mii-exa-test-data-onko-operation-1
InstanceOf: MII_PR_Onko_Operation
Usage: #example
Description: "Onkologie Test Operation - Debulking Ovarialkarzinom"
* insert TestDataLabel
* status = #completed
* category = $SCT#387713003 "Surgical procedure"
* code = $SCT#86481000 "Laparotomy"
* code.coding[ops] = $OPS#5-547.0 "Resektion von Gewebe in der Bauchregion ohne sichere Organzuordnung: Intraperitoneal"
* code.coding[ops].version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* performedDateTime = "2021-09-30"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"
* extension[Urgency].valueCodeableConcept = $mii-cs-onko-operation-urgency#E "Elektiv"
* outcome = $mii-cs-onko-residualstatus#R0 "Kein Residualtumor"
* complication[compl_obds].coding = $mii-cs-onko-operation-komplikation#N "Nein"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* basedOn = Reference(mii-exa-test-data-onko-tumorkonferenz-1)

// Strahlentherapie (Chapter 14)
Instance: mii-exa-test-data-onko-strahlentherapie-1
InstanceOf: MII_PR_Onko_Strahlentherapie
Usage: #example
Description: "Onkologie Test Strahlentherapie - Adjuvante Bestrahlung"
* insert TestDataLabel
* status = #completed
* category = $SCT#108290001 "Radiation oncology AND/OR radiotherapy"
* code = $SCT#33195004 "External beam radiation therapy"
* code.coding[ops] = $OPS#8-522 "Hochvoltstrahlentherapie"
* code.coding[ops].version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* performedPeriod.start = "2022-02-01"
* performedPeriod.end = "2022-03-15"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"
* extension[StellungZurOp].valueCodeableConcept.coding.code = #A
* extension[StellungZurOp].valueCodeableConcept.coding.display = "adjuvant"
* outcome.coding = $mii-cs-onko-therapie-ende-grund#E "reguläres Ende"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)

// Systemische Therapie (Chapter 16)
Instance: mii-exa-test-data-onko-systemische-therapie-1
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Description: "Onkologie Test Systemische Therapie - Neoadjuvante Chemotherapie CarboTax"
* insert TestDataLabel
* status = #completed
* category = $SCT#18629005 "Administration of drug or medicament"
* code.coding[systemische_therapie_art] = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
* code.coding[ops] = $OPS#8-54 "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
* code.coding[ops].version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* performedPeriod.start = "2021-07-05"
* performedPeriod.end = "2021-09-05"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"
* extension[StellungZurOp].valueCodeableConcept.coding.code = #N
* extension[StellungZurOp].valueCodeableConcept.coding.display = "neoadjuvant"
* outcome.coding = $mii-cs-onko-therapie-ende-grund#E "reguläres Ende"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* basedOn = Reference(mii-exa-test-data-onko-tumorkonferenz-1)

// Systemische Therapie Medikation - Paclitaxel
Instance: mii-exa-test-data-onko-medikation-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Description: "Onkologie Test Medikation - Paclitaxel"
* insert TestDataLabel
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01CD01 "Paclitaxel"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* effectivePeriod.start = "2021-07-05"
* effectivePeriod.end = "2021-09-05"
* partOf[systemischeTherapie] = Reference(mii-exa-test-data-onko-systemische-therapie-1)
* note.text = "CarboTax Schema"

// Systemische Therapie Medikation - Carboplatin
Instance: mii-exa-test-data-onko-medikation-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Description: "Onkologie Test Medikation - Carboplatin"
* insert TestDataLabel
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01XA02 "Carboplatin"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* effectivePeriod.start = "2021-07-05"
* effectivePeriod.end = "2021-09-05"
* partOf[systemischeTherapie] = Reference(mii-exa-test-data-onko-systemische-therapie-1)
* note.text = "CarboTax Schema"

// Systemische Therapie Medikation mit UNII (for drugs without ATC)
Instance: mii-exa-test-data-onko-medikation-3
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Description: "Onkologie Test Medikation - Niraparib (PARP-Inhibitor)"
* insert TestDataLabel
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01XK02 "Niraparib"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* effectivePeriod.start = "2022-01-25"
* partOf[systemischeTherapie] = Reference(mii-exa-test-data-onko-systemische-therapie-1)
* note.text = "Erhaltungstherapie mit PARP-Inhibitor"
