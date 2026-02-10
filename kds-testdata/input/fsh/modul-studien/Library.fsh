Instance: mii-exa-test-data-studie-register-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register
Usage: #example
Description: "Library: DRKS – Deutsches Register Klinischer Studien (Quell-Register für MII-BIOMARKER-2024)"
* insert TestDataLabel
// Quell-Register Extension
* extension[quellRegister].valueBoolean = true
// Identifier (MS)
* identifier[0].system = "https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/studienregister"
* identifier[0].value = "DRKS00029123"
// Name (MS)
* name = "DRKS - Deutsches Register Klinischer Studien"
// Type (MS, fixed to asset-collection)
* type = $library-type#asset-collection "Asset Collection"
// Status (required)
* status = #active
// RelatedArtifact (MS)
* relatedArtifact[0].type = #documentation
* relatedArtifact[0].document.url = "https://drks.de/search/de/trial/DRKS00029123"
