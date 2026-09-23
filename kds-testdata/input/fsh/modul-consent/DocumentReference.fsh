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
// Extension ueber expliziten url statt Slice-Name: das Extension-Profil in
// de.einwilligungsmanagement hat keinen Snapshot, SUSHI kann es nicht importieren.
* content.attachment.extension[0].url = "http://fhir.de/ConsentManagement/StructureDefinition/PhysicalDocumentLocation"
* content.attachment.extension[0].valueString = "Patientenaktenarchiv Charité, Campus Mitte, Schrank 12, Fach 3"
* content.attachment.url = "https://dms.charite.de/kds-testdata/consent/patient-1/einwilligungsbogen-1.pdf"
* content.attachment.data = "YmFzZTY0Q29kaWVydGVzUERGRGVzVW50ZXJzY2hyaWViZW5lblBhdGllbnRlbkVpbndpbGxpZ3VuZ3Nib2dlbnM="
* content.attachment.title = "Patienteneinwilligung MII Broad Consent (unterschrieben, Scan)"
* content.attachment.creation = "2024-02-23T12:00:00+01:00"

// QuestionnaireResponse als Quelle der strukturierten Consent-Ressource
// (Consent.source[x] ist im Profil auf Reference(QuestionnaireResponse) beschränkt)
Instance: mii-exa-test-data-patient-1-consent-qr-1
InstanceOf: QuestionnaireResponse
Usage: #example
Description: "QuestionnaireResponse: Erfassung des Einwilligungsbogens zu Consent von Patient 1"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* questionnaire = "https://www.medizininformatik-initiative.de/fhir/modul-consent/Questionnaire/MiiBroadConsentBogen"
* status = #completed
* subject = Reference(mii-exa-test-data-patient-1)
* authored = "2024-02-23T12:00:00+01:00"
* item.linkId = "einwilligung-mdat"
* item.text = "Einwilligung in Erhebung und Nutzung medizinischer Daten"
* item.answer.valueBoolean = true
