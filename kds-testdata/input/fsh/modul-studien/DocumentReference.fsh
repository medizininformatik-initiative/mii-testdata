// ============================================================================
// MII Studien Test Data - Studiendokument (DocumentReference)
// Adaptiert aus dem Paket-Beispiel DocumentReference-mii-exa-studie-dokument
// (de.medizininformatikinitiative.kerndatensatz.studie 2027.0.0-ballot)
// und den historischen 2025er-Testdaten (git 00b7374c^).
// ============================================================================

Instance: mii-exa-test-data-studien-dokument-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument
Usage: #example
Description: "DocumentReference: Studienprotokoll MII-BIOMARKER-2024"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #current
* author = Reference(mii-exa-test-data-practitioner-physician-1)
* custodian = Reference(mii-exa-test-data-organization-charite)
* content.attachment.contentType = #application/pdf
* content.attachment.url = "https://www.charite.de/studien/mii-biomarker-2024/Studienprotokoll_v2.pdf"
* content.attachment.size = 1548576
* content.attachment.title = "Studienprotokoll MII-BIOMARKER-2024 v2.0"
* context.related = Reference(mii-exa-test-data-studien-studie-1)
