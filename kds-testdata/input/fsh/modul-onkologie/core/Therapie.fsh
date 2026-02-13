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
* extension[Urgency].valueCodeableConcept = $mii-cs-onko-operation-urgency#E "Elektiveingriff"
* outcome = $mii-cs-onko-residualstatus#R0 "Kein Residualtumor"
* complication[compl_obds].coding = $mii-cs-onko-operation-komplikation#N "Nein"
* complication[compl_icd10].coding = $ICD10GM|2021#T81.0 "Blutung und Hämatom als Komplikation eines Eingriffes, anderenorts nicht klassifiziert"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* basedOn = Reference(mii-exa-test-data-onko-tumorkonferenz-1)
* partOf = Reference(mii-exa-test-data-onko-systemische-therapie-1)

// Strahlentherapie (Chapter 14)
Instance: mii-exa-test-data-onko-strahlentherapie-1
InstanceOf: MII_PR_Onko_Strahlentherapie
Usage: #example
Description: "Onkologie Test Strahlentherapie - Adjuvante Bestrahlung"
* insert TestDataLabel
* status = #completed
* category = $SCT#108290001 "Radiation oncology AND/OR radiotherapy"
* code = $SCT#33195004 "External beam radiation therapy procedure"
* code.coding[ops] = $OPS#8-522 "Hochvoltstrahlentherapie"
* code.coding[ops].version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* performedPeriod.start = "2022-02-01"
* performedPeriod.end = "2022-03-15"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"
* extension[StellungZurOp].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop"
* extension[StellungZurOp].valueCodeableConcept.coding.code = #A
* extension[StellungZurOp].valueCodeableConcept.coding.display = "adjuvant"
* outcome.coding = $mii-cs-onko-therapie-ende-grund#E "reguläres Ende"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* basedOn = Reference(mii-exa-test-data-onko-tumorkonferenz-2)
* partOf = Reference(mii-exa-test-data-onko-verlauf-1)

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
* extension[StellungZurOp].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop"
* extension[StellungZurOp].valueCodeableConcept.coding.code = #N
* extension[StellungZurOp].valueCodeableConcept.coding.display = "neoadjuvant"
* outcome.coding = $mii-cs-onko-therapie-ende-grund#E "reguläres Ende"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* basedOn = Reference(mii-exa-test-data-onko-tumorkonferenz-1)
* partOf = Reference(mii-exa-test-data-onko-operation-1)
* usedCode.coding.system = $mii-cs-onko-systemische-therapie-protokolle
* usedCode.coding.code = #CarboTax
* usedCode.coding.display = "CarboTax"

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

// ============================================================================
// Strahlentherapie Bestrahlung (for SearchParameter coverage)
// Covers: bestrahlung-applikationsart, bestrahlung-strahlenart,
//         bestrahlung-gesamtdosis, bestrahlung-einzeldosis, bestrahlung-boost,
//         bestrahlung-zielgebiet-lateralitaet
// ============================================================================
Instance: mii-exa-test-data-onko-strahlentherapie-bestrahlung-1
InstanceOf: MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie
Usage: #example
Description: "Onkologie Test Strahlentherapie Bestrahlung - mit allen Dosisangaben"
* insert TestDataLabel
* status = #completed
* category = $SCT#1287742003 "Radiotherapy (procedure)"
* code.coding[ops] = $OPS#8-522.6 "Hochvoltstrahlentherapie: Linearbeschleuniger mehr als 6 MeV Photonen oder schnelle Elektronen, bis zu 2 Bestrahlungsfelder"
* code.coding[ops].version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* performedPeriod.start = "2022-02-01"
* performedPeriod.end = "2022-03-15"
* partOf = Reference(mii-exa-test-data-onko-strahlentherapie-1)
* basedOn = Reference(mii-exa-test-data-onko-tumorkonferenz-2)
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
// Zielgebiet mit Seitenlokalisation (covers bestrahlung-zielgebiet-lateralitaet)
* bodySite.coding = $mii-cs-onko-strahlentherapie-zielgebiet#5.12 "Becken sonstige"
* bodySite.extension[Seitenlokalisation].valueCodeableConcept = $mii-cs-onko-seitenlokalisation#L "links"
// Applikationsart (covers bestrahlung-applikationsart via extension)
* extension[Applikationsart].valueCodeableConcept = $mii-cs-onko-strahlentherapie-applikationsart#PRCJ "perkutan mit Chemotherapie/Sensitizer"
// Strahlenart (covers bestrahlung-strahlenart via usedCode)
* usedCode[Strahlenart] = $mii-cs-onko-strahlentherapie-strahlenart#UH "Photonen (ultraharte Röntgenstrahlen, inklusive Gamma-Strahler)"
// Gesamtdosis (covers bestrahlung-gesamtdosis)
* extension[Gesamtdosis].valueQuantity.value = 50.0
* extension[Gesamtdosis].valueQuantity.unit = "Gy"
* extension[Gesamtdosis].valueQuantity.system = $UCUM
* extension[Gesamtdosis].valueQuantity.code = #Gy
// Einzeldosis (covers bestrahlung-einzeldosis)
* extension[Einzeldosis].valueQuantity.value = 2.0
* extension[Einzeldosis].valueQuantity.unit = "Gy"
* extension[Einzeldosis].valueQuantity.system = $UCUM
* extension[Einzeldosis].valueQuantity.code = #Gy
// Boost (covers bestrahlung-boost)
* extension[Boost].valueCodeableConcept = $mii-cs-onko-strahlentherapie-boost#SIB "simultan integrierter Boost"

// ============================================================================
// Nuklearmedizinische Bestrahlung (Radionuklidtherapie)
// Covers: mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin
// ============================================================================
Instance: mii-exa-test-data-onko-bestrahlung-nuklearmedizin-1
InstanceOf: MII_PR_Onko_Strahlentherapie_Bestrahlung_Nuklearmedizin
Usage: #example
Description: "Onkologie Test Nuklearmedizinische Bestrahlung - Radiojod-Therapie Schilddrüse"
* insert TestDataLabel
* status = #completed
* category = $SCT#399315003 "Radionuclide therapy"
* code.coding[ops] = $OPS#8-531 "Radiojodtherapie"
* code.coding[ops].version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* performedPeriod.start = "2022-04-01"
* performedPeriod.end = "2022-04-03"
* partOf = Reference(mii-exa-test-data-onko-strahlentherapie-1)
* basedOn = Reference(mii-exa-test-data-onko-tumorkonferenz-1)
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
// Zielgebiet mit Seitenlokalisation
* bodySite.coding = $mii-cs-onko-strahlentherapie-zielgebiet#2.11 "Schilddrüse"
* bodySite.extension[Seitenlokalisation].valueCodeableConcept = $mii-cs-onko-seitenlokalisation#T "trifft nicht zu"
// Applikationsart - Radiojod-Therapie
* extension[Applikationsart].valueCodeableConcept = $mii-cs-onko-strahlentherapie-applikationsart#MRJT "Radiojod-Therapie"
// Strahlenart
* usedCode[Strahlenart] = $mii-cs-onko-strahlentherapie-strahlenart#UH "Photonen (ultraharte Röntgenstrahlen, inklusive Gamma-Strahler)"
// Gesamtdosis
* extension[Gesamtdosis].valueQuantity.value = 3700
* extension[Gesamtdosis].valueQuantity.unit = "MBq"
* extension[Gesamtdosis].valueQuantity.system = $UCUM
* extension[Gesamtdosis].valueQuantity.code = #MBq
// Einzeldosis
* extension[Einzeldosis].valueQuantity.value = 3700
* extension[Einzeldosis].valueQuantity.unit = "MBq"
* extension[Einzeldosis].valueQuantity.system = $UCUM
* extension[Einzeldosis].valueQuantity.code = #MBq
// Boost
* extension[Boost].valueCodeableConcept = $mii-cs-onko-strahlentherapie-boost#N "nein, ohne Boost"
