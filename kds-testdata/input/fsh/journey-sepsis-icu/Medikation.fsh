// ============================================================================
// JOURNEY Patient-12 — Modul Medikation
//
// HIER LIEGT DER KERN DER JOURNEY: medrequest-2 (Meropenem) trägt
//   reasonReference -> mibi-mrgn-1  (3MRGN-Befund)
//   reasonReference -> mibi-ast-meropenem  (Meropenem empfindlich)
// und medrequest-1 (Piperacillin/Tazobactam) wird mit statusReason
// "ineffective" beendet, referenziert auf denselben Resistenzbefund.
//
// Damit ist die Frage "welche Antibiotikaumstellung folgte auf welchen
// Resistenzbefund, und wie viele Stunden lagen dazwischen?" allein aus den
// Daten beantwortbar — das ist die Kernabfrage von Antibiotic-Stewardship-
// Auswertungen und über getrennte Modulbundles nicht formulierbar.
//
// Wie in der Journey pat-11 bewusst ohne PZN/ASK/UNII/CAS: nur gegen den
// Terminologieserver geprüfte ATC- und SNOMED-Codes.
// ============================================================================

Instance: mii-exa-test-data-medication-piperacillin-tazobactam
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Piperacillin/Tazobactam 4 g/0,5 g Pulver für Infusionslösung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* code.coding[atcClassDe] = $atc|2023#J01CR05 "Piperacillin und Beta-Lactamase-Inhibitoren"
* code.text = "Piperacillin/Tazobactam 4 g/0,5 g"
* form.coding[EDQM] = $standardterms#50043000 "Powder for concentrate for solution for infusion"
* ingredient[0].itemCodeableConcept.coding[SNOMED] = $sct#372836004 "Piperacillin (substance)"
* ingredient[0].itemCodeableConcept.text = "Piperacillin"
* ingredient[0].strength.numerator = 4 'g' "gram"
* ingredient[0].strength.denominator = 1 $standardterms#50043000 "Powder for concentrate for solution for infusion"
* ingredient[1].itemCodeableConcept.coding[SNOMED] = $sct#96007008 "Tazobactam (substance)"
* ingredient[1].itemCodeableConcept.text = "Tazobactam"
* ingredient[1].strength.numerator = 500 'mg' "milligram"
* ingredient[1].strength.denominator = 1 $standardterms#50043000 "Powder for concentrate for solution for infusion"

Instance: mii-exa-test-data-medication-meropenem
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Meropenem 1 g Pulver für Injektions-/Infusionslösung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* code.coding[atcClassDe] = $atc|2023#J01DH02 "Meropenem"
* code.text = "Meropenem 1 g"
* form.coding[EDQM] = $standardterms#50043000 "Powder for concentrate for solution for infusion"
* ingredient.itemCodeableConcept.coding[SNOMED] = $sct#387540000 "Meropenem (substance)"
* ingredient.itemCodeableConcept.text = "Meropenem"
* ingredient.strength.numerator = 1 'g' "gram"
* ingredient.strength.denominator = 1 $standardterms#50043000 "Powder for concentrate for solution for infusion"

Instance: mii-exa-test-data-medication-noradrenalin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Noradrenalin 1 mg/mL Konzentrat zur Infusion"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* code.coding[atcClassDe] = $atc|2023#C01CA03 "Norepinephrin"
* code.text = "Noradrenalin 1 mg/mL"
* form.coding[EDQM] = $standardterms#50060000 "Concentrate for solution for infusion"
* ingredient.itemCodeableConcept.coding[SNOMED] = $sct#45555007 "Norepinephrine (substance)"
* ingredient.itemCodeableConcept.text = "Noradrenalin"
* ingredient.strength.numerator = 1 'mg' "milligram"
* ingredient.strength.denominator = 1 'mL' "milliliter"

// ----------------------------------------------------------------------------
// 08.03. 19:00 — empirische Therapie, noch ohne Erregernachweis
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
Usage: #example
Description: "MedicationRequest: Piperacillin/Tazobactam 4,5 g 3x täglich i.v. (empirisch, am 11.03. wegen Resistenz beendet)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000031"
* status = #stopped
// statusReason begründet den Abbruch terminologisch — ohne ihn wäre aus den
// Daten nicht erkennbar, WARUM die Therapie endete.
* statusReason = $sct#182840001 "Drug treatment stopped - medical advice"
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-piperacillin-tazobactam)
* subject = Reference(mii-exa-test-data-patient-12)
* encounter = Reference(mii-exa-test-data-patient-12-encounter-2)
* authoredOn = "2025-03-08T18:55:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-12-diagnose-2)
* note.text = "Kalkulierte Initialtherapie nach hausinternem Sepsis-Standard, begonnen 19:00 nach Abnahme der Blutkulturen. Beendet am 11.03. 11:00 nach Vorliegen des Antibiogramms (Erreger resistent)."
* dosageInstruction.sequence = 1
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-03-08T19:00:00+01:00"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-03-11T11:00:00+01:00"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 4.5 $ucum#g "g"
* substitution.allowedBoolean = false

// ----------------------------------------------------------------------------
// 11.03. 11:00 — Deeskalation/Eskalation AUF BASIS DES ANTIBIOGRAMMS
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-medrequest-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
Usage: #example
Description: "MedicationRequest: Meropenem 1 g 3x täglich i.v. — Umstellung auf Basis des 3MRGN-Befunds"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000032"
* status = #completed
* intent = #order
* priority = #urgent
* medicationReference = Reference(mii-exa-test-data-medication-meropenem)
* subject = Reference(mii-exa-test-data-patient-12)
* encounter = Reference(mii-exa-test-data-patient-12-encounter-2)
* authoredOn = "2025-03-11T10:45:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
// DIE KAUSALE KANTE: Indikation ist nicht nur die Diagnose, sondern der
// konkrete mikrobiologische Befund, der die Umstellung ausgelöst hat.
* reasonReference[0] = Reference(mii-exa-test-data-patient-12-diagnose-2)
* reasonReference[1] = Reference(mii-exa-test-data-patient-12-mibi-mrgn-1)
* reasonReference[2] = Reference(mii-exa-test-data-patient-12-mibi-ast-meropenem)
* priorPrescription = Reference(mii-exa-test-data-patient-12-medrequest-1)
* note.text = "Umstellung 1 h 45 min nach Freigabe des Antibiogramms (09:00 befundet, 11:00 erste Gabe). Dauer 7 Tage bis 18.03., gesteuert ueber den Procalcitonin-Verlauf."
* dosageInstruction.sequence = 1
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-03-11T11:00:00+01:00"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-03-18T11:00:00+01:00"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.duration = 180
* dosageInstruction.timing.repeat.durationUnit = #min
* dosageInstruction.doseAndRate.doseQuantity = 1 $ucum#g "g"
* dosageInstruction.maxDosePerAdministration = 2 $ucum#g "g"
* substitution.allowedBoolean = false

Instance: mii-exa-test-data-patient-12-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Erste Meropenem-Gabe (Patient 12, 11.03. 11:00)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000031"
* status = #completed
* category = $medication-admin-category#inpatient
* medicationReference = Reference(mii-exa-test-data-medication-meropenem)
* subject = Reference(mii-exa-test-data-patient-12)
* context = Reference(mii-exa-test-data-patient-12-encounter-2)
* effectivePeriod.start = "2025-03-11T11:00:00+01:00"
* effectivePeriod.end = "2025-03-11T14:00:00+01:00"
* request = Reference(mii-exa-test-data-patient-12-medrequest-2)
* performer.actor = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-12-mibi-mrgn-1)
* dosage.route = $standardterms#20045000 "Intravenous use"
* dosage.dose = 1 $ucum#g "g"
* dosage.rateRatio.numerator = 1 $ucum#g "g"
* dosage.rateRatio.denominator = 3 $ucum#h "Stunden"
* note.text = "Verlaengerte Infusion ueber 3 h (pharmakokinetisch optimiert bei septischem Patienten)."

// ----------------------------------------------------------------------------
// Kreislaufunterstützung während des septischen Schocks
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-medadmin-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Noradrenalin-Perfusor (Patient 12, septischer Schock)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000032"
* status = #completed
* category = $medication-admin-category#inpatient
* medicationReference = Reference(mii-exa-test-data-medication-noradrenalin)
* subject = Reference(mii-exa-test-data-patient-12)
* context = Reference(mii-exa-test-data-patient-12-encounter-2)
* effectivePeriod.start = "2025-03-08T18:10:00+01:00"
* effectivePeriod.end = "2025-03-14T06:00:00+01:00"
* performer.actor = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-12-diagnose-2)
* dosage.route = $standardterms#20045000 "Intravenous use"
* dosage.rateQuantity = 0.35 'ug/kg/min' "µg/kg/min"
* note.text = "Spitzendosis 0,35 µg/kg/min am 09.03.; ausgeschlichen bis 14.03. — begruendet den Kreislauf-Teilscore im SOFA-Verlauf."

// ----------------------------------------------------------------------------
// Medikationsliste des Intensivaufenthalts
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-12-medstatement-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
Usage: #example
Description: "MedicationStatement: Meropenem-Therapie während des Intensivaufenthalts"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000031"
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-meropenem)
* subject = Reference(mii-exa-test-data-patient-12)
* context = Reference(mii-exa-test-data-patient-12-encounter-2)
* effectivePeriod.start = "2025-03-11"
* effectivePeriod.end = "2025-03-18"
* dateAsserted = "2025-03-18"
* informationSource = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-12-diagnose-1)
* basedOn = Reference(mii-exa-test-data-patient-12-medrequest-2)
* dosage.sequence = 1
* dosage.route = $standardterms#20045000 "Intravenous use"
* dosage.timing.repeat.frequency = 3
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.doseAndRate.doseQuantity = 1 $ucum#g "g"

Instance: mii-exa-test-data-patient-12-list-stat-aufenthalt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
Usage: #example
Description: "List: Medikation während des Intensivaufenthalts für Patient 12"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* identifier.system = "https://www.charite.de/fhir/sid/Medikationslisten"
* identifier.value = "ML_0000031"
* status = #current
* mode = #snapshot
* title = "Antiinfektive Therapie Intensivaufenthalt"
* date = "2025-03-18T12:00:00+01:00"
* subject = Reference(mii-exa-test-data-patient-12)
* encounter = Reference(mii-exa-test-data-patient-12-encounter-2)
* entry.item = Reference(mii-exa-test-data-patient-12-medstatement-1)
