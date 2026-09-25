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
* characteristic[0].definitionCodeableConcept.coding = $sct#424144002 "Current chronological age (observable entity)"
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
* characteristic[2].definitionCodeableConcept.coding = $sct#263495000 "Gender (observable entity)"
* characteristic[2].definitionCodeableConcept.text = "Alle"
* characteristic[2].exclude = false
// Ausschluss: Schwangerschaft
* characteristic[3].description = "Bestehende Schwangerschaft"
* characteristic[3].definitionCodeableConcept = $sct#77386006 "Pregnancy (finding)"
* characteristic[3].exclude = true
// Einschluss: Kombination der beiden oben per linkId benannten Kriterien
// (definitionByCombination-Backport, any-of). Die Sub-Extensions werden per
// expliziter URL gesetzt: SUSHI kann den Slice-Namen nicht ueber die
// Cross-Version-URL aufloesen, das Ergebnis-JSON entspricht aber exakt dem
// Modul-Beispiel EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.
* characteristic[4].extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByCombination"
* characteristic[4].extension[=].extension[0].url = "code"
* characteristic[4].extension[=].extension[0].valueCode = #any-of
* characteristic[4].extension[=].extension[1].url = "characteristic"
* characteristic[4].extension[=].extension[1].valueId = "krit-alter"
* characteristic[4].extension[=].extension[2].url = "characteristic"
* characteristic[4].extension[=].extension[2].valueId = "krit-endokrin"
* characteristic[4].description = "Weitere Einschlusskriterien: Mindestalter ODER gesicherte endokrine Erkrankung"
* characteristic[4].definitionCodeableConcept = $data-absent-reason#unknown "Unknown"
* characteristic[4].exclude = false
// Einschluss: vordefinierte Eligibility-Population als Referenz
// (definitionReference-Backport, Ziel ist die Group im selben Bundle)
* characteristic[5].extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionReference"
* characteristic[5].extension[=].valueReference = Reference(mii-exa-test-data-studien-group-1)
* characteristic[5].description = "Zugehoerigkeit zur definierten Eligibility-Population der Studie"
* characteristic[5].definitionCodeableConcept = $sct#116154003 "Patient (person)"
* characteristic[5].exclude = false
