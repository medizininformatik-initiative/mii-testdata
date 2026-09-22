// ============================================================================
// MII Studien Test Data - Ein-/Ausschlusskriterium (EvidenceVariable)
// Adaptiert aus dem Paket-Beispiel
// EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium
// (de.medizininformatikinitiative.kerndatensatz.studie 2027.0.0-ballot).
// ACHTUNG: Der Profil-Name "mii-pr-studie-ein-auschluss-kriterium" enthaelt
// upstream einen Tippfehler ("auschluss" statt "ausschluss") - hier wird
// bewusst der tatsaechliche Canonical verwendet.
// ============================================================================

Instance: mii-exa-test-data-studien-kriterium-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium
Usage: #example
Description: "EvidenceVariable: Ein-/Ausschlusskriterien der Studie MII-BIOMARKER-2024"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
// Einschluss: Mindestalter 18 Jahre (definitionByTypeAndValue-Backport)
* characteristic[0].extension[linkId].valueId = "krit-alter"
* characteristic[0].extension[definitionByTypeAndValue].extension[type].valueCodeableConcept = $sct#424144002 "Current chronological age"
* characteristic[0].extension[definitionByTypeAndValue].extension[value].valueQuantity.value = 18
* characteristic[0].extension[definitionByTypeAndValue].extension[value].valueQuantity.comparator = #>=
* characteristic[0].extension[definitionByTypeAndValue].extension[value].valueQuantity.unit = "year"
* characteristic[0].extension[definitionByTypeAndValue].extension[value].valueQuantity.system = $ucum
* characteristic[0].extension[definitionByTypeAndValue].extension[value].valueQuantity.code = #a
* characteristic[0].description = "Alter mindestens 18 Jahre"
* characteristic[0].definitionCodeableConcept.text = "Mindestalter"
* characteristic[0].exclude = false
// Einschluss: gesicherte endokrine Grunderkrankung
* characteristic[1].extension[linkId].valueId = "krit-endokrin"
* characteristic[1].description = "Gesicherte Diagnose einer endokrinen Erkrankung (z. B. Diabetes mellitus Typ 2)"
* characteristic[1].definitionCodeableConcept = $sct#44054006 "Diabetes mellitus type 2 (disorder)"
* characteristic[1].exclude = false
// Einschluss: Geschlecht ohne Einschraenkung (definitionCanonical-Backport)
* characteristic[2].extension[definitionCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/EvidenceVariable/administrative-gender"
* characteristic[2].description = "Geschlecht: alle"
* characteristic[2].definitionCodeableConcept.text = "Alle"
* characteristic[2].exclude = false
// Ausschluss: Schwangerschaft
* characteristic[3].description = "Bestehende Schwangerschaft"
* characteristic[3].definitionCodeableConcept = $sct#77386006 "Pregnancy (finding)"
* characteristic[3].exclude = true
// Hinweis: Die definitionByCombination-Backport-Extension (0..1 MS) laesst sich
// mit SUSHI derzeit nicht abbilden: SUSHI loest http://hl7.org/fhir/5.0/...-URLs
// ueber seinen eigenen Cross-Version-Mechanismus auf; die Sub-Extension
// "characteristic" ist dort ein verschachteltes BackboneElement, sodass die
// valueId-Form des Modul-Backports (mii-ex-studie-backport-definition-by-
// combination) nicht adressierbar ist. Siehe docs/research-biobank-seltene-
// studie-gapfill.md.
