Instance: mii-exa-test-data-studie-dokument-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument
Usage: #example
Description: "DocumentReference: Studienprotokoll für MII-BIOMARKER-2024"
* insert TestDataLabel
// Status (MS)
* status = #current
// Author (MS)
* author[0] = Reference(mii-exa-test-data-practitioner-physician-1)
// Custodian (MS)
* custodian = Reference(mii-exa-test-data-organization-charite)
// Content (MS)
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.url = "https://www.medizininformatik-initiative.de/sites/default/files/studienprotokoll-mii-biomarker-2024.pdf"
* content[0].attachment.size = 1245000
* content[0].attachment.title = "Studienprotokoll MII-BIOMARKER-2024 Version 1.2"
// Context (MS) – related to the ResearchStudy
* context.related[0] = Reference(mii-exa-test-data-studie-studie-1)
