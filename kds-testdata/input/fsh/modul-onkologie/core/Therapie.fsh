// ============================================================================
// MII Onkologie Test Data - Therapy Profiles (oBDS Chapters 13-16)
// ============================================================================

// Operation (Chapter 13)
Instance: mii-exa-test-data-onko-operation-1
InstanceOf: MII_PR_Onko_Operation
Usage: #example
Description: "Onkologie Test Operation - Debulking Ovarialkarzinom"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* code.coding[ops].extension[Seitenlokalisation].valueCoding = $icd-seitenlokalisation#L "links"
* extension[Dokumentationsdatum].valueDateTime = "2021-10-01"
* extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000 "Therapeutic"
* extension[Intention].valueCodeableConcept.text = "kurativ"
* extension[Urgency].valueCodeableConcept.text = "Elektiveingriff"
* bodySite.coding[snomed-ct] = $SCT#15497006 "Ovarian structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* note.text = "Debulking-Operation mit vollständiger makroskopischer Tumorentfernung."

// Strahlentherapie (Chapter 14)
Instance: mii-exa-test-data-onko-strahlentherapie-1
InstanceOf: MII_PR_Onko_Strahlentherapie
Usage: #example
Description: "Onkologie Test Strahlentherapie - Adjuvante Bestrahlung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* code.coding[ops].extension[Seitenlokalisation].valueCoding = $icd-seitenlokalisation#T "trifft nicht zu"
* extension[Dokumentationsdatum].valueDateTime = "2022-03-16"
* extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000 "Therapeutic"
* extension[Intention].valueCodeableConcept.text = "kurativ"
* extension[StellungZurOp].valueCodeableConcept.text = "adjuvant"
* bodySite.coding[snomed-ct] = $SCT#12921003 "Pelvic structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* note.text = "Adjuvante Bestrahlung des Beckens nach Operation."

// Systemische Therapie (Chapter 16)
Instance: mii-exa-test-data-onko-systemische-therapie-1
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Description: "Onkologie Test Systemische Therapie - Neoadjuvante Chemotherapie CarboTax"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* code.coding[ops].extension[Seitenlokalisation].valueCoding = $icd-seitenlokalisation#T "trifft nicht zu"
* extension[Dokumentationsdatum].valueDateTime = "2021-09-06"
* extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000 "Therapeutic"
* extension[Intention].valueCodeableConcept.text = "kurativ"
* extension[StellungZurOp].valueCodeableConcept.text = "neoadjuvant"
* bodySite.coding[snomed-ct] = $SCT#15497006 "Ovarian structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* note.text = "Neoadjuvante Chemotherapie nach CarboTax-Schema."

// Systemische Therapie Medikation - Paclitaxel
Instance: mii-exa-test-data-onko-medikation-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Description: "Onkologie Test Medikation - Paclitaxel"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01CD01 "Paclitaxel"
* medicationCodeableConcept.coding[atcClassDe].version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* effectivePeriod.start = "2021-07-05"
* effectivePeriod.end = "2021-09-05"
* partOf[systemischeTherapie] = Reference(mii-exa-test-data-onko-systemische-therapie-1)
* note.text = "CarboTax Schema"
* basedOn[tumorkonferenz] = Reference(mii-exa-test-data-onko-tumorkonferenz-1)
* basedOn[therapieempfehlung] = Reference(mii-exa-test-data-onko-therapieempfehlung-medikation-2)
* category = $med-statement-category#inpatient "Inpatient"
* context = Reference(mii-exa-test-data-onko-encounter-1)
* dateAsserted = "2021-07-05"
* identifier.system = "https://www.charite.de/fhir/sid/onko-medikation"
* identifier.value = "ONKO-MED-2021-001"
* informationSource = Reference(mii-exa-test-data-onko-patient-1)
* medicationCodeableConcept.text = "Paclitaxel 175 mg/m2 i.v."
* reasonCode = $ICD10GM|2021#C56 "Bösartige Neubildung des Ovars"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* dosage.sequence = 1
* dosage.text = "175 mg/m2 i.v. über 3 Stunden, Tag 1 des 21-Tage-Zyklus"
* dosage.site = $SCT#368049005 "Structure of vein of upper extremity (body structure)"
* dosage.route = $SCT#47625008 "Intravenous route (qualifier value)"
* dosage.asNeededBoolean = false
* dosage.timing.event = "2021-07-05T09:00:00+02:00"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 21
* dosage.timing.repeat.periodUnit = #d
* dosage.timing.repeat.periodMax = 28
* dosage.timing.repeat.boundsPeriod.start = "2021-07-05"
* dosage.timing.repeat.boundsPeriod.end = "2021-09-05"
* dosage.timing.repeat.count = 3
* dosage.timing.repeat.countMax = 6
* dosage.timing.repeat.duration = 180
* dosage.timing.repeat.durationMax = 240
* dosage.timing.repeat.durationUnit = #min
* dosage.timing.repeat.frequencyMax = 1
* dosage.timing.repeat.dayOfWeek[+] = #mon
* dosage.timing.repeat.timeOfDay[+] = "09:00:00"
* dosage.doseAndRate[0].doseQuantity = 300 'mg'
* dosage.doseAndRate[0].doseQuantity.unit = "mg"
* dosage.doseAndRate[0].rateRatio.numerator = 100 'mg'
* dosage.doseAndRate[0].rateRatio.numerator.unit = "mg"
* dosage.doseAndRate[0].rateRatio.denominator = 1 'h'
* dosage.doseAndRate[0].rateRatio.denominator.unit = "Stunde"
* dosage.doseAndRate[1].doseRange.low = 250 'mg'
* dosage.doseAndRate[1].doseRange.low.unit = "mg"
* dosage.doseAndRate[1].doseRange.high.value = 300
* dosage.doseAndRate[1].doseRange.high.unit = "mg"
* dosage.doseAndRate[1].doseRange.high.system = $UCUM
* dosage.doseAndRate[1].doseRange.high.code = #mg
* dosage.doseAndRate[1].rateQuantity = 100 'mg/h'
* dosage.doseAndRate[1].rateQuantity.unit = "mg/h"
* dosage.doseAndRate[2].rateRange.low = 80 'mg/h'
* dosage.doseAndRate[2].rateRange.low.unit = "mg/h"
* dosage.doseAndRate[2].rateRange.high = 120 'mg/h'
* dosage.doseAndRate[2].rateRange.high.unit = "mg/h"
* dosage.maxDosePerAdministration = 300 'mg'
* dosage.maxDosePerAdministration.unit = "mg"
* dosage.maxDosePerPeriod.numerator = 300 'mg'
* dosage.maxDosePerPeriod.numerator.unit = "mg"
* dosage.maxDosePerPeriod.denominator = 21 'd'
* dosage.maxDosePerPeriod.denominator.unit = "Tage"

// Systemische Therapie Medikation - Carboplatin
Instance: mii-exa-test-data-onko-medikation-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Description: "Onkologie Test Medikation - Carboplatin"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01XA02 "Carboplatin"
* medicationCodeableConcept.coding[atcClassDe].version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* effectivePeriod.start = "2021-07-05"
* effectivePeriod.end = "2021-09-05"
* partOf[systemischeTherapie] = Reference(mii-exa-test-data-onko-systemische-therapie-1)
* note.text = "CarboTax Schema"
* dosage.text = "AUC5 i.v. bei Bedarfsanpassung nach Nierenfunktion"
* dosage.asNeededCodeableConcept = $SCT#428165003 "Renal impairment (disorder)"
* dosage.timing.repeat.boundsDuration = 8 'wk'
* dosage.timing.repeat.boundsDuration.unit = "Wochen"
* dosage.timing.repeat.when[+] = #MORN
* dosage.timing.repeat.offset = 30

// Systemische Therapie Medikation mit UNII (for drugs without ATC)
Instance: mii-exa-test-data-onko-medikation-3
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Description: "Onkologie Test Medikation - Niraparib (PARP-Inhibitor)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01XK02 "Niraparib"
* medicationCodeableConcept.coding[atcClassDe].version = "2022"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* effectivePeriod.start = "2022-01-25"
* partOf[systemischeTherapie] = Reference(mii-exa-test-data-onko-systemische-therapie-1)
* note.text = "Erhaltungstherapie mit PARP-Inhibitor"
* dosage.text = "Einschleichen über 2-4 Wochen"
* dosage.timing.repeat.boundsRange.low = 2 'wk'
* dosage.timing.repeat.boundsRange.low.unit = "Wochen"
* dosage.timing.repeat.boundsRange.high = 4 'wk'
* dosage.timing.repeat.boundsRange.high.unit = "Wochen"

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
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* bodySite.coding[snomed-ct] = $SCT#12921003 "Pelvic structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* code.coding[ops].extension[Seitenlokalisation].valueCoding = $icd-seitenlokalisation#T "trifft nicht zu"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* extension[Dokumentationsdatum].valueDateTime = "2022-03-16"
* extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000 "Therapeutic"
* note.text = "Perkutane Bestrahlung des Beckens, 25 Fraktionen à 2 Gy."

// ============================================================================
// Nuklearmedizinische Bestrahlung (Radionuklidtherapie)
// Covers: mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin
// ============================================================================
Instance: mii-exa-test-data-onko-bestrahlung-nuklearmedizin-1
InstanceOf: MII_PR_Onko_Strahlentherapie_Bestrahlung_Nuklearmedizin
Usage: #example
Description: "Onkologie Test Nuklearmedizinische Bestrahlung - Radiojod-Therapie Schilddrüse"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* bodySite.coding[snomed-ct] = $SCT#69748006 "Thyroid structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* code.coding[ops].extension[Seitenlokalisation].valueCoding = $icd-seitenlokalisation#T "trifft nicht zu"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* extension[Dokumentationsdatum].valueDateTime = "2022-04-04"
* extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000 "Therapeutic"
* note.text = "Radiojodtherapie mit 3700 MBq I-131."
