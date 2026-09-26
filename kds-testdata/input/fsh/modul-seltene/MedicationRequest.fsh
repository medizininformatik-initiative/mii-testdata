// ============================================================================
// Seltene Erkrankungen - Therapieempfehlung (MedicationRequest)
// Maximum MS element coverage for Patient-3
// ============================================================================

Instance: mii-exa-test-data-patient-3-seltene-therapieempfehlung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung
Usage: #example
Description: "Therapieempfehlung: Losartan for Marfan - all MS elements including extensions"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
// Prioritaet extension (decimal/positiveInt)
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet"
* extension[=].valuePositiveInt = 1
// Evidenzgraduierung extension (CodeableConcept with Evidenzgrad coding)
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung"
// Oxford CEBM Levels of Evidence als System (Extension selbst ist unbindet)
* extension[=].valueCodeableConcept.coding[+].system = "https://www.cebm.ox.ac.uk/resources/levels-of-evidence"
* extension[=].valueCodeableConcept.coding[=].code = #1A
* extension[=].valueCodeableConcept.coding[=].display = "Evidenzgrad 1A"
// Publikation extension (Identifier with DOI)
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation"
* extension[=].valueIdentifier.system = "https://doi.org"
* extension[=].valueIdentifier.value = "10.1016/j.ejphar.2015.03.048"
* identifier.system = "https://www.charite.de/fhir/sid/therapieempfehlungen"
* identifier.value = "SE-TE-2025-0001"
* status = #active
* intent = #proposal
// Both category slices: strategy + type
* category[+] = $seltene-cs-strategie#prevention-medication "Präventive Medikation"
* category[+] = $seltene-cs-typ#symptomatic "Symptomatisch"
* medicationCodeableConcept = $atc#C09CA01 "Losartan"
* medicationCodeableConcept.coding[0].version = "2025"
* medicationCodeableConcept.text = "Losartan 50 mg Filmtabletten"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* encounter = Reference(mii-exa-test-data-seltene-encounter-1)
* authoredOn = "2025-03-10"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* basedOn = Reference(mii-exa-test-data-patient-3-seltene-therapieplan-1)
* reasonCode = $sct#19346006 "Marfan syndrome"
* reasonReference = Reference(mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1)
// Vorverordnung als logische Referenz (Aufdosierungsphase 25 mg)
* priorPrescription.identifier.system = "https://www.charite.de/fhir/sid/therapieempfehlungen"
* priorPrescription.identifier.value = "SE-TE-2024-0117"
* priorPrescription.display = "Losartan 25 mg Aufdosierungsphase"
* note.text = "Zieldosis 50 mg erreicht; Blutdruck- und Aortenwurzel-Kontrolle alle 6 Monate."
// Dosierung 1: Dauertherapie (deckt u.a. bounds, timeOfDay, doseRange, rate,
// maxDosePerAdministration/-Period, route, site, asNeeded ab)
* dosageInstruction[+].sequence = 1
* dosageInstruction[=].text = "50mg 1x taeglich morgens"
* dosageInstruction[=].timing.event = "2025-03-10T08:00:00+01:00"
* dosageInstruction[=].timing.repeat.boundsDuration = 12 'mo' "Monate"
* dosageInstruction[=].timing.repeat.count = 365
* dosageInstruction[=].timing.repeat.countMax = 400
* dosageInstruction[=].timing.repeat.duration = 5
* dosageInstruction[=].timing.repeat.durationMax = 10
* dosageInstruction[=].timing.repeat.durationUnit = #min
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.frequencyMax = 2
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.timeOfDay = "08:00:00"
* dosageInstruction[=].asNeededBoolean = false
* dosageInstruction[=].site = $sct#123851003 "Mouth region structure (body structure)"
* dosageInstruction[=].route = $sct#26643006 "Oral route (qualifier value)"
* dosageInstruction[=].doseAndRate[+].doseQuantity.value = 50
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mg"
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = $ucum
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #mg
* dosageInstruction[=].doseAndRate[=].rateQuantity = 50 'mg/d' "mg/Tag"
* dosageInstruction[=].doseAndRate[+].doseRange.low = 25 'mg' "mg"
* dosageInstruction[=].doseAndRate[=].doseRange.high = 50 'mg' "mg"
* dosageInstruction[=].doseAndRate[=].rateRange.low = 25 'mg/d' "mg/Tag"
* dosageInstruction[=].doseAndRate[=].rateRange.high = 50 'mg/d' "mg/Tag"
* dosageInstruction[=].maxDosePerPeriod.numerator = 100 'mg' "mg"
* dosageInstruction[=].maxDosePerPeriod.denominator = 1 'd' "Tag"
* dosageInstruction[=].maxDosePerAdministration = 100 'mg' "mg"
// Dosierung 2: Wochenschema mit when/offset, dayOfWeek, periodMax,
// asNeededCodeableConcept (tim-10: timeOfDay und when in getrennten Dosierungen)
* dosageInstruction[+].sequence = 2
* dosageInstruction[=].text = "Zusaetzliche Einnahme montags 30 Minuten vor dem Fruehstueck bei Blutdruckspitzen, max. alle 1-2 Wochen"
* dosageInstruction[=].timing.repeat.dayOfWeek = #mon
* dosageInstruction[=].timing.repeat.when = #ACM
* dosageInstruction[=].timing.repeat.offset = 30
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodMax = 2
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].asNeededCodeableConcept = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* dosageInstruction[=].route = $sct#26643006 "Oral route (qualifier value)"
* dosageInstruction[=].doseAndRate[+].doseQuantity = 25 'mg' "mg"
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator = 25 'mg' "mg"
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator = 1 'wk' "Woche"
// Dosierung 3: Ausschleichschema (boundsPeriod- und boundsRange-Varianten)
* dosageInstruction[+].sequence = 3
* dosageInstruction[=].text = "Ausschleichen bei Therapieende: 25 mg taeglich ueber 1-2 Wochen"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsRange.low = 1 'wk' "Woche"
* dosageInstruction[=].timing.repeat.boundsRange.high = 2 'wk' "Wochen"
* dosageInstruction[=].doseAndRate[+].doseQuantity = 25 'mg' "mg"
// Dosierung 4: befristeter Anwendungszeitraum (boundsPeriod)
* dosageInstruction[+].sequence = 4
* dosageInstruction[=].text = "Begleitende Einnahme im Beobachtungszeitraum der Studie"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2025-03-10"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2026-03-09"
* dosageInstruction[=].doseAndRate[+].doseQuantity = 50 'mg' "mg"
* substitution.allowedBoolean = true
