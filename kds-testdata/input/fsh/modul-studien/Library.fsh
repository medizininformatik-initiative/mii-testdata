// ============================================================================
// MII Studien Test Data - Studienregister (Library)
// Adaptiert aus dem Paket-Beispiel Library-mii-exa-studie-register
// (de.medizininformatikinitiative.kerndatensatz.studie 2027.0.0-ballot)
// und den historischen 2025er-Testdaten (git 00b7374c^).
// Library.name computerfreundlich gewaehlt (Invariante cnl-0), Klartext im title.
// ============================================================================

Instance: mii-exa-test-data-studien-register-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register
Usage: #example
Description: "Library: DRKS - Deutsches Register Klinischer Studien"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[0].url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-quell-register"
* extension[0].valueBoolean = true
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/drks"
* identifier.value = "DRKS"
* name = "DRKS"
* title = "DRKS - Deutsches Register Klinischer Studien"
* status = #active
* type = $library-type#asset-collection
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://drks.de/"
* relatedArtifact.document.url = "https://drks.de/"
