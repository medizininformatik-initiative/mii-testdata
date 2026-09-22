// ============================================================================
// Seltene Erkrankungen - ICF-Assessment
// Adaptiert aus den Beispielen des Pakets
// de.medizininformatikinitiative.kerndatensatz.seltene 2027.0.0-ballot
// (Observation-mii-exa-seltene-icf-koerperfunktion)
// Marfan-Syndrom: b730 Funktionen der Muskelkraft (muskulaere Hypotonie),
// Beurteilungsmerkmal "Ausmass der Schaedigung" als Component
// ============================================================================

Instance: mii-exa-test-data-patient-3-seltene-icf-assessment-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment
Usage: #example
Description: "ICF-Assessment Observation: b730 Funktionen der Muskelkraft mit Ausmass der Schaedigung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[survey] = $observation-category#survey
* code = $icf#b730 "Muscle power functions"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* effectiveDateTime = "2024-03-12"
* performer = Reference(mii-exa-test-data-practitioner-physician-1)
* note.text = "Leichtgradig reduzierte Muskelkraft der unteren Extremitaet bei Marfan-Syndrom."
* component[extentOfImpairment].code = $icf-beurteilungsmerkmal#extent-of-impairment
* component[extentOfImpairment].valueCodeableConcept.coding = $icf-q-ausmass#.1
* component[extentOfImpairment].valueCodeableConcept.text = "Schaedigung leicht ausgepraegt (5-24 %)"
