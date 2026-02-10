Instance: mii-exa-test-data-studie-studie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie
Usage: #example
Description: "ResearchStudy: MII-BIOMARKER-2024 – Multizentrische interventionelle Studie zur Evaluierung eines neuen Biomarker-Panels"
* insert TestDataLabel
// Extensions
// Label (R5 backport)
* extension[Label].extension[value].valueString = "MII-BIOMARKER-2024 Biomarker Panel Study"
// AssociatedParty (R5 backport) - Sponsor
* extension[AssociatedParty][0].extension[role].valueCodeableConcept = $research-study-party-role#lead "Lead Sponsor"
* extension[AssociatedParty][0].extension[party].valueReference = Reference(mii-exa-test-data-organization-charite)
* extension[AssociatedParty][0].extension[name].valueString = "Charité – Universitätsmedizin Berlin"
// AssociatedParty - Collaborator
* extension[AssociatedParty][+].extension[role].valueCodeableConcept = $research-study-party-role#collaborator "Collaborator"
* extension[AssociatedParty][=].extension[party].valueReference = Reference(mii-exa-test-data-organization-charite)
// Ethikvotum
* extension[Ethikvotum].extension[status].valueString = "genehmigt"
* extension[Ethikvotum].extension[kommission].valueString = "Ethikkommission der Charité – Universitätsmedizin Berlin"
* extension[Ethikvotum].extension[ethiknummer].valueString = "EA4/123/2024"
// Studienregister
* extension[Studienregister].valueReference = Reference(mii-exa-test-data-studie-register-1)
// Eligibility
* extension[Eligibility].valueReference = Reference(mii-exa-test-data-studie-group-1)
// Akronym
* extension[Akronym].valueString = "MII-BIOMARKER-2024"
// Rekrutierung
* extension[Rekrutierung].extension[rekrutierungsstand-datum].valueDate = "2024-07-15"
* extension[Rekrutierung].extension[rekrutierungsstand-genauigkeit].valueString = "geschätzt"
* extension[Rekrutierung].extension[rekrutierungsstand].valueInteger = 142
* extension[Rekrutierung].extension[rekrutierungsziel].valueInteger = 500
* extension[Rekrutierung].extension[rekrutierungsstart].valueDate = "2024-01-15"
// Finanzierung
* extension[Finanzierung].valueString = "BMBF-Drittmittelförderung"
// Identifiers (MS)
* identifier[0].system = "https://drks.de/search/de/trial/"
* identifier[0].value = "DRKS00029123"
// Required / MS Attributes
* title = "Multizentrische interventionelle Studie zur Evaluierung eines neuen Biomarker-Panels für die Frühdiagnose entzündlicher Erkrankungen"
* status = #active
// Category (MS)
* category = $research-study-phase#phase-3 "Phase 3"
// Focus (MS)
* focus[0] = $sct#362969004 "Disorder of endocrine system (disorder)"
* focus[0].text = "Entzündliche Erkrankungen – Biomarker-Panel"
// Keyword (MS)
* keyword[0].text = "Biomarker"
* keyword[+].text = "Entzündungsdiagnostik"
* keyword[+].text = "Multizentrisch"
// Arms (MS)
* arm[0].name = "Interventionsgruppe"
* arm[0].description = "Patienten, bei denen das neue Biomarker-Panel zusätzlich zur Standarddiagnostik eingesetzt wird"
* arm[+].name = "Kontrollgruppe"
* arm[=].description = "Patienten, die ausschließlich die Standarddiagnostik erhalten"
