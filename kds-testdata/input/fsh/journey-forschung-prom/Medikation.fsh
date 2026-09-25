// ============================================================================
// JOURNEY Patient-11 — Modul Medikation
// HFrEF-Standardtherapie: Sacubitril/Valsartan + SGLT2-Inhibitor (der bei der
// Komorbidität Diabetes mellitus Typ 2 doppelt indiziert ist).
// Bewusst OHNE PZN/ASK/UNII/CAS: für diese Fertigarzneimittel liegen keine
// verifizierten Codes vor, und erfundene Codes würden die Coding-Qualitäts-
// prüfung (scripts/check-coding-quality.py) mit Scheinwerten füttern.
// ATC (DE + WHO) und die SNOMED-Wirkstoffe sind gegen den Terminologieserver
// geprüft.
// ============================================================================

Instance: mii-exa-test-data-medication-sacubitril-valsartan
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Sacubitril/Valsartan 49 mg/51 mg Tabletten"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* code.coding[atcClassDe] = $atc|2023#C09DX04 "Valsartan und Sacubitril"
* code.text = "Sacubitril/Valsartan 49 mg/51 mg"
* form.coding[EDQM] = $standardterms#10219000 "Tablet"
* ingredient[0].itemCodeableConcept.coding[SNOMED] = $sct#716072000 "Sacubitril (substance)"
* ingredient[0].itemCodeableConcept.text = "Sacubitril"
* ingredient[0].strength.numerator = 49 'mg' "milligram"
* ingredient[0].strength.denominator = 1 $standardterms#10219000 "Tablet"
* ingredient[1].itemCodeableConcept.coding[SNOMED] = $sct#386876001 "Valsartan (substance)"
* ingredient[1].itemCodeableConcept.text = "Valsartan"
* ingredient[1].strength.numerator = 51 'mg' "milligram"
* ingredient[1].strength.denominator = 1 $standardterms#10219000 "Tablet"

Instance: mii-exa-test-data-medication-empagliflozin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Empagliflozin 10 mg Tabletten"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* code.coding[atcClassDe] = $atc|2023#A10BK03 "Empagliflozin"
* code.text = "Empagliflozin 10 mg"
* form.coding[EDQM] = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept.coding[SNOMED] = $sct#703894008 "Empagliflozin (substance)"
* ingredient.itemCodeableConcept.text = "Empagliflozin"
* ingredient.strength.numerator = 10 'mg' "milligram"
* ingredient.strength.denominator = 1 $standardterms#10219000 "Tablet"

// ----------------------------------------------------------------------------
// Entlassmedikation (Verordnungen am Ende des Index-Aufenthalts)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
Usage: #example
Description: "MedicationRequest: Sacubitril/Valsartan 49/51 mg 2x täglich oral"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000021"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-sacubitril-valsartan)
* subject = Reference(mii-exa-test-data-patient-11)
* encounter = Reference(mii-exa-test-data-patient-11-encounter-1)
* authoredOn = "2025-01-28T09:40:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-11-diagnose-1)
* note.text = "Auftitration auf 97/103 mg nach vier Wochen bei stabilem Blutdruck vorgesehen."
* dosageInstruction.sequence = 1
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-01-28"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $standardterms#10219000 "Tablet"
* substitution.allowedBoolean = true

Instance: mii-exa-test-data-patient-11-medrequest-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
Usage: #example
Description: "MedicationRequest: Empagliflozin 10 mg 1x täglich oral"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000022"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-empagliflozin)
* subject = Reference(mii-exa-test-data-patient-11)
* encounter = Reference(mii-exa-test-data-patient-11-encounter-1)
* authoredOn = "2025-01-28T09:42:00+01:00"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-11-diagnose-1)
* note.text = "Indikation sowohl Herzinsuffizienz als auch Diabetes mellitus Typ 2."
* dosageInstruction.sequence = 1
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-01-28"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.when = #MORN
* dosageInstruction.doseAndRate.doseQuantity = 1 $standardterms#10219000 "Tablet"
* substitution.allowedBoolean = true

// ----------------------------------------------------------------------------
// Selbstauskunft zur Baseline-Visite: Einnahme wird bestätigt
// informationSource = Patientin — der Studienkontext lebt von Selbstangaben.
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-medstatement-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
Usage: #example
Description: "MedicationStatement: Sacubitril/Valsartan Dauermedikation (Selbstauskunft T0)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000021"
* status = #active
* category.coding[usageCategory] = $medication-statement-category#outpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E100 "ambulanter Kontakt"
* medicationReference = Reference(mii-exa-test-data-medication-sacubitril-valsartan)
* subject = Reference(mii-exa-test-data-patient-11)
* context = Reference(mii-exa-test-data-patient-11-encounter-2)
* effectivePeriod.start = "2025-01-28"
* dateAsserted = "2025-02-10"
* informationSource = Reference(mii-exa-test-data-patient-11)
* reasonReference = Reference(mii-exa-test-data-patient-11-diagnose-1)
* basedOn = Reference(mii-exa-test-data-patient-11-medrequest-1)
* note.text = "Patientin berichtet regelmäßige Einnahme; keine symptomatische Hypotonie."
* dosage.sequence = 1
* dosage.route = $standardterms#20053000 "Oral use"
* dosage.timing.repeat.frequency = 2
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.doseAndRate.doseQuantity = 1 $standardterms#10219000 "Tablet"

// ----------------------------------------------------------------------------
// Entlassmedikation als Medikationsangaben
// Das Profil medikationsliste erlaubt bei entry.item NUR
// Reference(MedicationStatement) — die Verordnungen (MedicationRequest) können
// dort also nicht stehen. Die Liste führt daher die beiden Entlass-Statements,
// die über basedOn auf ihre jeweilige Verordnung zeigen.
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-11-medstatement-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
Usage: #example
Description: "MedicationStatement: Sacubitril/Valsartan zur Entlassung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000022"
* status = #active
* category.coding[usageCategory] = $medication-statement-category#outpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E230 "stationäre Entlassung"
* medicationReference = Reference(mii-exa-test-data-medication-sacubitril-valsartan)
* subject = Reference(mii-exa-test-data-patient-11)
* context = Reference(mii-exa-test-data-patient-11-encounter-1)
* effectivePeriod.start = "2025-01-28"
* dateAsserted = "2025-01-28"
* informationSource = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-11-diagnose-1)
* basedOn = Reference(mii-exa-test-data-patient-11-medrequest-1)
* dosage.sequence = 1
* dosage.route = $standardterms#20053000 "Oral use"
* dosage.timing.repeat.frequency = 2
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.doseAndRate.doseQuantity = 1 $standardterms#10219000 "Tablet"

Instance: mii-exa-test-data-patient-11-medstatement-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
Usage: #example
Description: "MedicationStatement: Empagliflozin zur Entlassung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000023"
* status = #active
* category.coding[usageCategory] = $medication-statement-category#outpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E230 "stationäre Entlassung"
* medicationReference = Reference(mii-exa-test-data-medication-empagliflozin)
* subject = Reference(mii-exa-test-data-patient-11)
* context = Reference(mii-exa-test-data-patient-11-encounter-1)
* effectivePeriod.start = "2025-01-28"
* dateAsserted = "2025-01-28"
* informationSource = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-11-diagnose-1)
* basedOn = Reference(mii-exa-test-data-patient-11-medrequest-2)
* dosage.sequence = 1
* dosage.route = $standardterms#20053000 "Oral use"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.timing.repeat.when = #MORN
* dosage.doseAndRate.doseQuantity = 1 $standardterms#10219000 "Tablet"

Instance: mii-exa-test-data-patient-11-list-entlassmedikation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste
Usage: #example
Description: "List: Entlassmedikation für Patient 11"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* code.coding[medCode] = $list-example-use-codes#medications
* code.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E230 "stationäre Entlassung"
* identifier.system = "https://www.charite.de/fhir/sid/Medikationslisten"
* identifier.value = "ML_0000021"
* status = #current
* mode = #snapshot
* title = "Entlassmedikation"
* date = "2025-01-28T10:00:00+01:00"
* subject = Reference(mii-exa-test-data-patient-11)
* encounter = Reference(mii-exa-test-data-patient-11-encounter-1)
* entry[0].item = Reference(mii-exa-test-data-patient-11-medstatement-2)
* entry[1].item = Reference(mii-exa-test-data-patient-11-medstatement-3)
