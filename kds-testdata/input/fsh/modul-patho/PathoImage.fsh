// ============================================================================
// MII Patho Test Data - Attached Image (Media)
// Ergänzt den portierten ProstateCancerSpec-Fall (dort nicht vorhanden),
// um das Profil mii-pr-patho-attached-image abzudecken.
// ============================================================================

Instance: mii-exa-test-data-patho-image-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image
Usage: #example
Title: "Fotodokumentation HE-Schnitt Stanze 01"
Description: "Attached Image: Fotodokumentation des HE-Schnitts der Prostatastanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* type.coding[image] = $media-type-cs#image
* modality = $sct#706821004
* subject = Reference(mii-exa-test-data-patho-specimen-01-slide)
* createdDateTime = "2024-01-17T10:30:00+01:00"
* operator = Reference(mii-exa-test-data-patho-practitioner-1)
* content.contentType = #image/png
* content.url = "https://www.charite.de/fhir/sid/patho/image/E_24_001_A_1_1HE"
* content.title = "HE-Schnitt Stanze 01"
* meta.lastUpdated = "2024-01-20T16:00:00+01:00"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Fotodokumentation des HE-Schnitts der Prostatastanze 01</div>"
* partOf = Reference(mii-exa-test-data-patho-image-2)

// Uebersichtsaufnahme (Ziel der partOf-Referenz; Media.partOf ist im Profil auf Media eingeschraenkt)
Instance: mii-exa-test-data-patho-image-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image
Usage: #example
Title: "Uebersichtsaufnahme HE-Schnitt Stanze 01"
Description: "Attached Image: Uebersichtsaufnahme (geringe Vergroesserung) des HE-Schnitts der Prostatastanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* type.coding[image] = $media-type-cs#image
* modality = $sct#706821004
* subject = Reference(mii-exa-test-data-patho-specimen-01-slide)
* createdDateTime = "2024-01-17T10:29:00+01:00"
* operator = Reference(mii-exa-test-data-patho-practitioner-1)
* content.contentType = #image/png
* content.url = "https://www.charite.de/fhir/sid/patho/image/E_24_001_A_1_1HE_overview"
* content.title = "HE-Schnitt Stanze 01 (Uebersicht)"
