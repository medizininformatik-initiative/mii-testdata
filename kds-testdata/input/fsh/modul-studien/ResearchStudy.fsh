// Instance: mii-exa-test-data-researchstudy-1
// InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie
// // Extensions
// * extension[Label].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.label"
// * extension[Label].extension[value].valueString = "Label Example"
// * extension[AssociatedParty].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.associatedParty"
// * extension[AssociatedParty].extension[role].valueCodeableConcept = $research-study-party-role#collaborator
// * extension[AssociatedParty].extension[party].valueReference = Reference(mii-exa-test-data-organization-charite)
// * extension[Ethikvotum].url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-ethikvotum"
// * extension[Ethikvotum].extension[status].valueString = "genehmigt"
// * extension[Ethikvotum].extension[kommission].valueString = "Ethikkommission der Charité"
// * extension[Ethikvotum].extension[ethiknummer].valueString = "C40036730"
// * extension[Studienregister].url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-studienregister"
// * extension[Studienregister].valueReference = Reference(mii-exa-test-data-register-1)
// * extension[Eligibility].url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-eligibility"
// * extension[Eligibility].valueReference = Reference(mii-exa-test-data-group-1)
// * extension[Akronym].url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-akronym"
// * extension[Akronym].valueString = "Akronym Example"
// * extension[Rekrutierung].url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung"
// * extension[Rekrutierung].extension[rekrutierungsstand-datum].valueDate = "2024-07-01"
// * extension[Rekrutierung].extension[rekrutierungsstand-genauigkeit].valueString = "Genauigkeit Example"
// * extension[Rekrutierung].extension[rekrutierungsstand].valueInteger = 200
// * extension[Rekrutierung].extension[rekrutierungsziel].valueInteger = 200
// * extension[Rekrutierung].extension[rekrutierungsstart].valueDate = "2024-01-01"
// * extension[Finanzierung].url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-finanzierung"
// * extension[Finanzierung].valueString = "Haushalt"
// // Identifiers
// * identifier[0].system = "https://www.medizininformatik-initiative.de/fhir/studien"
// * identifier[0].value = "81021291"
// // Required Attributes
// * title = "Example Research Study"
// * status = #active
// * category = $research-study-phase#phase-3
// * focus[0] = $sct#362969004 "Disorder of endocrine system (disorder)"
// * focus[0].text = "Focus Example"
// * keyword[0].text = "Keyword Example"
// // Arms
// * arm[0].name = "Arm 1"
// * arm[0].description = "Description for Arm 1"
// * arm[1].name = "Arm 2"
// * arm[1].description = "Description for Arm 2"