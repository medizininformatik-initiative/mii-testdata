// ============================================================================
// MII Biobank Test Data - Protokoll-Dokumente fuer Zelllinie/Organoid
// Adaptiert aus den Beispielen des Pakets
// de.medizininformatikinitiative.kerndatensatz.biobank 2027.0.0-ballot
// (DocumentReference-Kulturprotokoll, DocumentReference-ProtocolCRISPRTP53)
// ============================================================================

Instance: mii-exa-test-data-biobank-kulturprotokoll-1
InstanceOf: DocumentReference
Usage: #example
Description: "DocumentReference: Kulturprotokoll fuer Kolon-Tumor-Organoide"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #current
* date = "2022-03-20T09:00:00+01:00"
* description = "Standardprotokoll zur Kultivierung von Kolon-Tumor-Organoiden"
* content.attachment.contentType = #application/pdf
* content.attachment.url = "https://www.charite.de/biobank/protocols/KolonOrganoidKultur_v1.pdf"
* content.attachment.title = "Kolon-Organoid Kulturprotokoll v1"

Instance: mii-exa-test-data-biobank-crispr-protokoll-1
InstanceOf: DocumentReference
Usage: #example
Description: "DocumentReference: CRISPR Knockout-Protokoll fuer TP53 in Kolon-Tumor-Organoiden"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #current
* date = "2022-03-19T09:00:00+01:00"
* description = "CRISPR Knockout-Protokoll fuer TP53 in Kolon-Tumor-Organoiden"
* content.attachment.contentType = #application/pdf
* content.attachment.url = "https://www.charite.de/biobank/protocols/CRISPR_TP53_KO_v1.pdf"
* content.attachment.title = "CRISPR TP53 Knockout Protokoll v1"
