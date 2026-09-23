// ============================================================================
// MII Onkologie Test Data - Tumorkonferenz & Therapieempfehlung (oBDS Chapters 18-19)
// ============================================================================

// Tumorkonferenz (Tumor Board - Chapter 18)
Instance: mii-exa-test-data-onko-tumorkonferenz-1
InstanceOf: MII_PR_Onko_Tumorkonferenz
Usage: #example
Description: "Onkologie Test Tumorkonferenz - Prätherapeutisch mit OP + Chemo Empfehlung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Therapieempfehlung Medikation (MedicationRequest)
Instance: mii-exa-test-data-onko-therapieempfehlung-medikation-1
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Description: "Onkologie Test Therapieempfehlung Medikation - Carboplatin"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* intent = #proposal
* subject = Reference(mii-exa-test-data-onko-patient-1)
* authoredOn = "2021-06-20"
* reasonReference[Primaertumor] = Reference(mii-exa-test-data-onko-diagnose-1)
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01XA02 "Carboplatin"
* medicationCodeableConcept.coding[atcClassDe].version = "2021"
* medicationCodeableConcept.text = "Carboplatin AUC5 i.v."
* supportingInformation = Reference(mii-exa-test-data-onko-genetische-variante-1)
* basedOn = Reference(mii-exa-test-data-onko-tumorkonferenz-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* identifier.system = "https://www.charite.de/fhir/sid/onko-beschluss"
* identifier.value = "TE-MED-2021-001"
* dosageInstruction.text = "AUC5 i.v. Tag 1, alle 21 Tage"
* dosageInstruction.sequence = 1
* dosageInstruction.site = $SCT#368049005 "Structure of vein of upper extremity (body structure)"
* dosageInstruction.route = $SCT#47625008 "Intravenous route (qualifier value)"
* dosageInstruction.asNeededBoolean = false
* dosageInstruction.timing.event = "2021-07-05T09:00:00+02:00"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 21
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.periodMax = 28
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-05"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-09-05"
* dosageInstruction.timing.repeat.count = 3
* dosageInstruction.timing.repeat.countMax = 6
* dosageInstruction.timing.repeat.duration = 60
* dosageInstruction.timing.repeat.durationMax = 90
* dosageInstruction.timing.repeat.durationUnit = #min
* dosageInstruction.timing.repeat.frequencyMax = 1
* dosageInstruction.timing.repeat.dayOfWeek[+] = #mon
* dosageInstruction.timing.repeat.timeOfDay[+] = "09:00:00"
* dosageInstruction.doseAndRate[0].doseQuantity = 450 'mg'
* dosageInstruction.doseAndRate[0].doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate[0].rateRatio.numerator = 450 'mg'
* dosageInstruction.doseAndRate[0].rateRatio.numerator.unit = "mg"
* dosageInstruction.doseAndRate[0].rateRatio.denominator = 1 'h'
* dosageInstruction.doseAndRate[0].rateRatio.denominator.unit = "Stunde"
* dosageInstruction.doseAndRate[1].doseRange.low = 400 'mg'
* dosageInstruction.doseAndRate[1].doseRange.low.unit = "mg"
* dosageInstruction.doseAndRate[1].doseRange.high = 450 'mg'
* dosageInstruction.doseAndRate[1].doseRange.high.unit = "mg"
* dosageInstruction.doseAndRate[1].rateQuantity = 450 'mg/h'
* dosageInstruction.doseAndRate[1].rateQuantity.unit = "mg/h"
* dosageInstruction.doseAndRate[2].rateRange.low = 300 'mg/h'
* dosageInstruction.doseAndRate[2].rateRange.low.unit = "mg/h"
* dosageInstruction.doseAndRate[2].rateRange.high = 500 'mg/h'
* dosageInstruction.doseAndRate[2].rateRange.high.unit = "mg/h"
* dosageInstruction.maxDosePerAdministration = 450 'mg'
* dosageInstruction.maxDosePerAdministration.unit = "mg"
* dosageInstruction.maxDosePerPeriod.numerator = 450 'mg'
* dosageInstruction.maxDosePerPeriod.numerator.unit = "mg"
* dosageInstruction.maxDosePerPeriod.denominator = 21 'd'
* dosageInstruction.maxDosePerPeriod.denominator.unit = "Tage"
* reasonCode = $ICD10GM|2021#C56 "Bösartige Neubildung des Ovars"
* requester = Reference(mii-exa-test-data-organization-charite)
* substitution.allowedBoolean = false

// Second Therapieempfehlung Medikation
Instance: mii-exa-test-data-onko-therapieempfehlung-medikation-2
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Description: "Onkologie Test Therapieempfehlung Medikation - Paclitaxel"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* intent = #proposal
* subject = Reference(mii-exa-test-data-onko-patient-1)
* authoredOn = "2021-06-20"
* reasonReference[Primaertumor] = Reference(mii-exa-test-data-onko-diagnose-1)
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01CD01 "Paclitaxel"
* medicationCodeableConcept.coding[atcClassDe].version = "2021"
* priorPrescription = Reference(mii-exa-test-data-onko-therapieempfehlung-medikation-1)
* dosageInstruction.text = "175 mg/m2 i.v. bei Bedarf nach Vertraeglichkeit"
* dosageInstruction.asNeededCodeableConcept = $SCT#422587007 "Nausea (finding)"
* dosageInstruction.timing.repeat.boundsDuration = 8 'wk'
* dosageInstruction.timing.repeat.boundsDuration.unit = "Wochen"
* dosageInstruction.timing.repeat.when[+] = #MORN
* dosageInstruction.timing.repeat.offset = 30

// Therapieempfehlung Kombinationstherapie (RequestGroup)
Instance: mii-exa-test-data-onko-therapieempfehlung-kombi-1
InstanceOf: MII_PR_Onko_Therapieempfehlung_Kombinationstherapie
Usage: #example
Description: "Onkologie Test Therapieempfehlung Kombinationstherapie - CarboTax Schema"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* action[=].code = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
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
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* intent = #option
* subject = Reference(mii-exa-test-data-onko-patient-1)
* authoredOn = "2022-03-10"
* reasonReference[Primaertumor] = Reference(mii-exa-test-data-onko-diagnose-1)
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01XK02 "Niraparib"
* medicationCodeableConcept.coding[atcClassDe].version = "2022"
* note.text = "Erhaltungstherapie bei BRCA1-positivem Ovarialkarzinom"
* dosageInstruction.text = "Einschleichen über 2-4 Wochen"
* dosageInstruction.timing.repeat.boundsRange.low = 2 'wk'
* dosageInstruction.timing.repeat.boundsRange.low.unit = "Wochen"
* dosageInstruction.timing.repeat.boundsRange.high = 4 'wk'
* dosageInstruction.timing.repeat.boundsRange.high.unit = "Wochen"

