// ============================================================================
// Seltene Erkrankungen - Perinataldaten und Konsanguinitaet
// Geburtsgewicht, Geburtslaenge, Gestationsalter, Consanguinity
// Adaptiert aus den Beispielen des Pakets
// de.medizininformatikinitiative.kerndatensatz.seltene 2027.0.0-ballot
// (Observation-mii-exa-seltene-geburtsgewicht/-geburtslaenge/-gestationsalter/
//  -consanguinity)
//
// Hinweis Schichtenmodell (Testdaten-Architektur): Die Modul-Bundles bilden
// die TECHNISCHE Schicht (Profil-Abdeckung). Geburtsmasse/Gestationsalter fuer
// die erwachsene Patientin Luisa Seltenfall (geb. 1995) sind klinisch als
// retrospektive Anamnese-Angaben zur Geburt zu lesen (effectiveDateTime =
// Geburtsdatum); die Einzelwerte sind jeweils realistisch.
// ============================================================================

// --- Geburtsgewicht ---
Instance: mii-exa-test-data-patient-3-seltene-geburtsgewicht-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geburtsgewicht
Usage: #example
Description: "Geburtsgewicht Observation - retrospektive Angabe zur Geburt (technische Schicht)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[vitalSigns] = $observation-category#vital-signs
* code = $loinc#8339-4 "Birth weight Measured"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* effectiveDateTime = "1995-02-10"
* valueQuantity = 3240 'g' "Gramm"

// --- Geburtslaenge ---
Instance: mii-exa-test-data-patient-3-seltene-geburtslaenge-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geburtslaenge
Usage: #example
Description: "Geburtslaenge Observation - retrospektive Angabe zur Geburt (technische Schicht)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[vitalSigns] = $observation-category#vital-signs
* code = $loinc#89269-5 "Body height Measured --at birth"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* effectiveDateTime = "1995-02-10"
* valueQuantity = 53 'cm' "Zentimeter"

// --- Gestationsalter ---
Instance: mii-exa-test-data-patient-3-seltene-gestationsalter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-gestationsalter
Usage: #example
Description: "Gestationsalter Observation - retrospektive Angabe zur Geburt (technische Schicht)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $loinc#76516-4 "Gestational age--at birth"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* effectiveDateTime = "1995-02-10"
* valueQuantity = 39 'wk' "Wochen"

// --- Consanguinity (Blutsverwandtschaft der Eltern) ---
Instance: mii-exa-test-data-patient-3-seltene-consanguinity-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-consanguinity
Usage: #example
Description: "Consanguinity Observation: keine Blutsverwandtschaft der Eltern (Marfan-Syndrom, autosomal-dominant)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[socialHistory] = $observation-category#social-history
* code = $sct#842009 "Consanguinity"
* subject = Reference(mii-exa-test-data-seltene-patient-1)
* effectiveDateTime = "2024-03-05"
* valueCodeableConcept = $sct#373067005 "No"
* valueCodeableConcept.text = "Eltern nicht blutsverwandt"
