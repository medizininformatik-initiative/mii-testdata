// =============================================================================
// Media: Bildmaterial zum molekulargenetischen Befund
// Ziel von DiagnosticReport.media.link bzw. Observation.derivedFrom
// =============================================================================

// IGV-Screenshot der BRAF-Variante, dem Befundbericht beigefuegt
Instance: mii-exa-test-data-patient-3-molgen-media-igv-1
InstanceOf: Media
Usage: #example
Description: "Media: IGV-Screenshot der BRAF p.V600E Variante"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/molgen-bilddaten"
* identifier.value = "MG_IMG_0000001"
* status = #completed
* type = $media-type-cs#image "Image"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* encounter = Reference(mii-exa-test-data-molgen-encounter-1)
* createdDateTime = "2022-04-12T09:45:00+02:00"
* operator = Reference(mii-exa-test-data-practitioner-physician-1)
* content.contentType = #image/png
* content.url = "https://dms.charite.de/kds-testdata/molgen/patient-3/igv-braf-v600e.png"
* content.title = "IGV-Screenshot BRAF Exon 15, c.1799T>A"
* content.creation = "2022-04-12T09:45:00+02:00"
* note.text = "Alignment-Darstellung der BRAF-Zielregion mit der nachgewiesenen Variante."

// Uebersichtsaufnahme der PD-L1-Immunhistochemie, aus der der TPS bestimmt wurde
Instance: mii-exa-test-data-patient-3-molgen-media-ihc-1
InstanceOf: Media
Usage: #example
Description: "Media: Uebersichtsaufnahme der PD-L1-Immunhistochemie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/molgen-bilddaten"
* identifier.value = "MG_IMG_0000002"
* status = #completed
* type = $media-type-cs#image "Image"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* encounter = Reference(mii-exa-test-data-molgen-encounter-1)
* createdDateTime = "2022-04-11T15:20:00+02:00"
* operator = Reference(mii-exa-test-data-practitioner-physician-1)
* content.contentType = #image/jpeg
* content.url = "https://dms.charite.de/kds-testdata/molgen/patient-3/pdl1-22c3-uebersicht.jpg"
* content.title = "PD-L1 (Klon 22C3), Uebersichtsaufnahme 10x"
* content.creation = "2022-04-11T15:20:00+02:00"
* note.text = "Grundlage der Auszaehlung des PD-L1 Tumor Proportion Score."
