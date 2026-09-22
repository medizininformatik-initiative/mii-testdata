// ============================================================================
// MII Consent - Provenance (Herkunft der Consent-Ressource aus dem
// gescannten Einwilligungsbogen, inkl. Signaturen)
// Covers: mii-pr-consent-provenance
// ============================================================================

Instance: mii-exa-test-data-patient-1-consent-provenance-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-provenance
Usage: #example
Description: "Provenance: Herkunft der Einwilligung von Patient 1 (aus gescanntem Einwilligungsbogen)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* target = Reference(mii-exa-test-data-patient-1-consent-1)
* recorded = "2024-02-23T12:10:00+01:00"
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#assembler
* agent.who.display = "Charite Consent Management System"
* entity.role = #source
* entity.what = Reference(mii-exa-test-data-patient-1-consent-docref-1)
* signature[+].type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.7 "Consent Signature"
* signature[=].when = "2024-02-23T12:00:00+01:00"
* signature[=].who = Reference(mii-exa-test-data-patient-1)
* signature[=].data = "RGllcyBpc3QgZWluIFBsYXR6aGFsdGVyIGZ1ZXIgZWluZSBnZXNjYW5udGUgVW50ZXJzY2hyaWZ0Lg=="
* signature[+].type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.11 "Consent Witness Signature"
* signature[=].when = "2024-02-23T12:00:00+01:00"
* signature[=].who.display = "Dr. med. Julia Beispiel"
* signature[=].onBehalfOf.display = "Charite - Universitaetsmedizin Berlin"
* signature[=].data = "WmV1Z2VuLVVudGVyc2NocmlmdCAoUGxhdHpoYWx0ZXIp"
