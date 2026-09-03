// ============================================================================
// Seltene Erkrankungen - Therapieplan (CarePlan)
// Maximum MS element coverage for Patient-3
// ============================================================================

Alias: $seltene-cs-status-begruendung = https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-empfehlung-status-begruendung

Instance: mii-exa-test-data-patient-3-seltene-therapieplan-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan
Usage: #example
Description: "Therapieplan: Marfan syndrome care plan - all activity slices and MS elements"
* insert TestDataLabel
* status = #draft
* intent = #proposal
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* created = "2025-03-10"
* description = "Therapieplan fuer Patient mit Marfan-Syndrom: Medikamentoese Therapie mit Losartan, kardiologische Frueherkennung und Studieneinschluss"
* supportingInfo = Reference(mii-exa-test-data-seltene-molgen-befundbericht-1)
// Activity 1: MedikamentoesTherapie with detail
* activity[+].detail.status = #not-started
* activity[=].detail.statusReason = $seltene-cs-status-begruendung#no-target "Keine therapeutische Konsequenz"
// Activity 2: NichtMedikamentoesTherapie with detail
* activity[+].detail.status = #scheduled
// Activity 3: Studieneinschlussempfehlung with reference
* activity[+].reference = Reference(mii-exa-test-data-patient-3-seltene-studieneinschluss-1)
