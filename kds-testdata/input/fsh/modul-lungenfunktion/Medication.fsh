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
