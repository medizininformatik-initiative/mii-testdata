// ============================================================================
// MII Lungenfunktion Test Data - Methacholin (Medication) und Dosisgaben
// (MedicationAdministration) fuer den Provokationstest
// ============================================================================

Instance: mii-exa-test-data-lungenfunktion-methacholine-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-methacholine
Usage: #example
Description: "Lungenfunktion Medication: Methacholin-Provokationsloesung (Provokit 0,33%)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/lungenfunktion-messplatz"
* code.coding[Pharmazentralnummer] = $pzn#00171345 "Provokit® 0,33%"
* code.coding[atcClassDe] = http://fhir.de/CodeSystem/bfarm/atc#V04CX03 "Methacholin"
* code.coding[atcClassDe].version = "2026"
* ingredient[Wirkstoff].itemCodeableConcept.coding[SNOMED] = $sct20260701#109196007 "Methacholine chloride (substance)"
* ingredient[Wirkstoff].isActive = true
* ingredient[Wirkstoff].strength.numerator = 33 'mg' "mg"
* ingredient[Wirkstoff].strength.denominator = 10 'ml' "ml"
* ingredient[Loesung].itemCodeableConcept.coding[SNOMED] = $sct20260701#11713004 "Water (substance)"
* ingredient[Loesung].isActive = false
* code.text = "Methacholinchlorid 0,33% Loesung zur Inhalation (Provokit)"
* form.coding[EDQM] = $standardterms#11101000 "Nebuliser solution"
* form.text = "Loesung fuer einen Vernebler"
* ingredient[Wirkstoff].extension[Wirkstofftyp].valueCoding = https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp#IN "ingredient"
* ingredient[Wirkstoff].itemCodeableConcept.text = "Methacholinchlorid"
// Wirkstoffrelation: Bezug auf die Substanz, auf die sich die Staerkeangabe
// bezieht (hier identisch mit dem angegebenen Wirkstoff selbst) - gleiches
// Muster wie mii-exa-test-data-medication-dalbavancin im Medikationsmodul
* ingredient[Wirkstoff].extension[Wirkstoffrelation].extension[ingredientUri].valueUri = "http://snomed.info/sct#109196007"
* ingredient[Loesung].extension[Wirkstofftyp].valueCoding = https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp#IN "ingredient"
* ingredient[Loesung].itemCodeableConcept.text = "Wasser fuer Injektionszwecke"
* ingredient[Loesung].extension[Wirkstoffrelation].extension[ingredientUri].valueUri = "http://snomed.info/sct#11713004"

// Erste Dosisstufe
Instance: mii-exa-test-data-lungenfunktion-dosis-gabe-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-dosis-gabe
Usage: #example
Description: "Lungenfunktion Dosisgabe 1: 0.04 mg Methacholin inhalativ"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/lungenfunktion-messplatz"
* status = #completed
* partOf = Reference(mii-exa-test-data-lungenfunktion-provokationstest-messung-1)
* medicationReference = Reference(mii-exa-test-data-lungenfunktion-methacholine-1)
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* effectiveDateTime = "2025-02-18T11:05:00+01:00"
* dosage.dose = 0.04 'mg' "mg"
* identifier.system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier.value = "lufu-dosis-gabe-1"
* category = $medication-admin-category#inpatient
* context = Reference(mii-exa-test-data-lungenfunktion-encounter-1)
* dosage.text = "0,04 mg Methacholin inhalativ ueber Dosimeter-Vernebler"
* dosage.route = $sct#447694001 "Respiratory tract route (qualifier value)"
* dosage.site = $sct#123851003 "Mouth region structure (body structure)"
* dosage.rateQuantity = 0.5 'mL/min' "mL/min"
* performer.actor.display = "MTA Lungenfunktionslabor"
* reasonCode = $sct#252520007 "Methacholine challenge (procedure)"
// Indikation: der erniedrigte Tiffeneau-Index der Ausgangsspirometrie.
* reasonReference = Reference(mii-exa-test-data-lungenfunktion-fev-fvc-1)
* request = Reference(mii-exa-test-data-lungenfunktion-methacholine-anordnung-1)
* note.text = "Erste Dosisstufe des Provokationsprotokolls."

// Zweite Dosisstufe (Abbruchdosis, PD20 erreicht)
Instance: mii-exa-test-data-lungenfunktion-dosis-gabe-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-dosis-gabe
Usage: #example
Description: "Lungenfunktion Dosisgabe 2: 0.30 mg Methacholin inhalativ"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/lungenfunktion-messplatz"
* status = #completed
* partOf[+] = Reference(mii-exa-test-data-lungenfunktion-provokationstest-messung-1)
* partOf[+] = Reference(mii-exa-test-data-lungenfunktion-dosis-gabe-1)
* medicationReference = Reference(mii-exa-test-data-lungenfunktion-methacholine-1)
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* effectiveDateTime = "2025-02-18T11:25:00+01:00"
* dosage.dose = 0.30 'mg' "mg"
* identifier.system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier.value = "lufu-dosis-gabe-2"
* category = $medication-admin-category#inpatient
* context = Reference(mii-exa-test-data-lungenfunktion-encounter-1)
* dosage.text = "0,30 mg Methacholin inhalativ ueber Dosimeter-Vernebler (Abbruchdosis)"
* dosage.route = $sct#447694001 "Respiratory tract route (qualifier value)"
* dosage.site = $sct#123851003 "Mouth region structure (body structure)"
* dosage.rateRatio.numerator = 0.3 'mg' "mg"
* dosage.rateRatio.denominator = 2 'min' "min"
* performer.actor.display = "MTA Lungenfunktionslabor"
* reasonCode = $sct#252520007 "Methacholine challenge (procedure)"
* request = Reference(mii-exa-test-data-lungenfunktion-methacholine-anordnung-1)
* note.text = "Abbruchdosis: PD20 erreicht (FEV1-Abfall 26 %)."
// medication[x]-Variante: medicationCodeableConcept statt medicationReference
// (beide MS-Alternativen koennen nicht in derselben Instanz koexistieren)
Instance: mii-exa-test-data-lungenfunktion-dosis-gabe-var-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-dosis-gabe
Usage: #example
Description: "Lungenfunktion Dosisgabe (Variante): medicationCodeableConcept 0.10 mg Methacholin"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/lungenfunktion-messplatz"
* status = #completed
* partOf = Reference(mii-exa-test-data-lungenfunktion-provokationstest-messung-1)
* medicationCodeableConcept.coding[Pharmazentralnummer] = $pzn#00171345 "Provokit® 0,33%"
* medicationCodeableConcept.coding[atcClassDe] = http://fhir.de/CodeSystem/bfarm/atc#V04CX03 "Methacholin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
* medicationCodeableConcept.text = "Methacholinchlorid 0,33% Loesung zur Inhalation"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* effectiveDateTime = "2025-02-18T11:15:00+01:00"
* dosage.dose = 0.10 'mg' "mg"
// Anordnung des Provokationsprotokolls (request-Ziel der Dosisgaben)
Instance: mii-exa-test-data-lungenfunktion-methacholine-anordnung-1
InstanceOf: MedicationRequest
Usage: #example
Description: "Lungenfunktion MedicationRequest: Anordnung Methacholin-Provokationsprotokoll"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* intent = #order
* medicationReference = Reference(mii-exa-test-data-lungenfunktion-methacholine-1)
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* encounter = Reference(mii-exa-test-data-lungenfunktion-encounter-1)
* authoredOn = "2025-02-18T10:50:00+01:00"
