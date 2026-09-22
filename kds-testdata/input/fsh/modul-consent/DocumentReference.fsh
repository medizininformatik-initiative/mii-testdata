// ============================================================================
// MII Consent - DocumentReference (gescannter Einwilligungsbogen)
// Covers: mii-pr-consent-documentreference
// ============================================================================

Instance: mii-exa-test-data-patient-1-consent-docref-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference
Usage: #example
Description: "DocumentReference: Gescannter, unterschriebener Einwilligungsbogen zu Consent von Patient 1"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #current
* subject = Reference(mii-exa-test-data-patient-1)
* date = "2024-02-23T12:05:00+01:00"
* content.attachment.contentType = #application/pdf
* content.attachment.data = "YmFzZTY0Q29kaWVydGVzUERGRGVzVW50ZXJzY2hyaWViZW5lblBhdGllbnRlbkVpbndpbGxpZ3VuZ3Nib2dlbnM="
* content.attachment.title = "Patienteneinwilligung MII Broad Consent (unterschrieben, Scan)"
* content.attachment.creation = "2024-02-23T12:00:00+01:00"
