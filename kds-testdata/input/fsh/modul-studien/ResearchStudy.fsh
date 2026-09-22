// ============================================================================
// MII Studien Test Data - Studie (ResearchStudy)
// Adaptiert aus dem Paket-Beispiel ResearchStudy-mii-exa-studie-studie
// (de.medizininformatikinitiative.kerndatensatz.studie 2027.0.0-ballot)
// und den historischen 2025er-Testdaten (git 00b7374c^).
// Akronym MII-BIOMARKER-2024 verdrahtet die Studie mit der bestehenden
// Studieneinschluss-Anfrage (mii-exa-test-data-studie-einschluss-anfrage-1).
// ============================================================================

Instance: mii-exa-test-data-studien-studie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie
Usage: #example
Description: "ResearchStudy: MII-BIOMARKER-2024 - Biomarker bei endokrinen Erkrankungen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
// Extensions
* extension[Label].extension[value].valueString = "Biomarker-basierte Verlaufsprognose endokriner Erkrankungen (MII-BIOMARKER-2024)"
* extension[Label].extension[type].valueCodeableConcept = $title-type#scientific
* extension[AssociatedParty].extension[role].valueCodeableConcept = $research-study-party-role#sponsor
* extension[AssociatedParty].extension[party].valueReference = Reference(mii-exa-test-data-organization-charite)
* extension[Ethikvotum].extension[status].valueString = "Zustimmende Bewertung"
* extension[Ethikvotum].extension[kommission].valueString = "Ethikkommission der Charité - Universitätsmedizin Berlin"
* extension[Ethikvotum].extension[ethiknummer].valueString = "EA1/123/24"
* extension[Studienregister].valueReference = Reference(mii-exa-test-data-studien-register-1)
* extension[Eligibility].valueReference = Reference(mii-exa-test-data-studien-group-1)
* extension[Akronym].valueString = "MII-BIOMARKER-2024"
* extension[Rekrutierung].extension[rekrutierungsstart].valueDate = "2024-01-15"
* extension[Rekrutierung].extension[rekrutierungsziel].valueInteger = 200
* extension[Rekrutierung].extension[rekrutierungsstand].valueInteger = 87
* extension[Rekrutierung].extension[rekrutierungsstand-genauigkeit].valueString = "exakt"
* extension[Rekrutierung].extension[rekrutierungsstand-datum].valueDate = "2024-07-01"
* extension[Finanzierung].valueString = "Öffentliche Förderinstitutionen, aus Steuermitteln getragene Institutionen (DFG, BMBF u. a.)"
// Identifier
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/drks"
* identifier.value = "DRKS00034567"
// Kernattribute
* title = "Biomarker-basierte Verlaufsprognose endokriner Erkrankungen"
* status = #active
* category = $research-study-phase#phase-2
* focus = $sct#362969004 "Disorder of endocrine system (disorder)"
* focus.text = "Endokrine Erkrankungen"
* keyword.text = "Biomarker"
// Arme
* arm[0].name = "Interventionsarm"
* arm[0].description = "Biomarker-gesteuerte Therapieanpassung"
* arm[1].name = "Kontrollarm"
* arm[1].description = "Standardtherapie"
