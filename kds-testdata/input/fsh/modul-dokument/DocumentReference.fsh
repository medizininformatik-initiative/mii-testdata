// ============================================================================
// Dokument - DocumentReference
// Klinisches Dokument (Arztbrief) fuer Patient-1
// Maximum MS element coverage
// ============================================================================

Alias: $kdl = http://dvmd.de/fhir/CodeSystem/kdl
Alias: $ihe-d-type = http://ihe-d.de/CodeSystems/IHEXDStypeCode
Alias: $ihe-d-class = http://ihe-d.de/CodeSystems/IHEXDSclassCode
Alias: $ihe-d-event = http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung
Alias: $ihe-d-facility = http://ihe-d.de/CodeSystems/PatientBezogenenGesundheitsversorgung
Alias: $ihe-d-practice = http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen
Alias: $ihe-formatcode = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode
Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality
Alias: $nlp-status-cs = https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status

// =============================================================================
// DocumentReference 1: Arztbrief mit eingebetteten Binaerdaten - all MS elements
// =============================================================================
Instance: mii-exa-test-data-patient-1-dokument-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument
Usage: #example
Description: "DocumentReference: Entlassbrief Innere Medizin - alle MS-Elemente"
* insert TestDataLabel
// NLP Processing Status Extension
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status"
* extension[=].valueCodeableConcept.coding = $nlp-status-cs#unprocessed
// Identifiers
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.99901"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:a1b2c3d4-e5f6-7890-abcd-ef1234567890"
* identifier[=].use = #official
// Status
* status = #current
* docStatus = #final
// Type with KDL and IHE-D slices
* type.coding[+] = $kdl#AD010110 "Aerztlicher Verlaufsbericht"
* type.coding[+] = $ihe-d-type#BERI "Arztberichte"
* type.text = "Entlassbrief Innere Medizin"
// Category with IHE-D class code
* category[+].coding = $ihe-d-class#BRI "Brief"
* category[=].text = "Brief"
// Subject and Encounter
* subject = Reference(mii-exa-test-data-patient-1)
// relatesTo
* relatesTo[+].code = #replaces
* relatesTo[=].target = Reference(mii-exa-test-data-patient-1-dokument-2)
// Description
* description = "Entlassbrief der Klinik fuer Innere Medizin nach stationaerem Aufenthalt wegen ambulant erworbener Pneumonie"
// Security Label
* securityLabel[+].coding = $v3-Confidentiality#N "normal"
// Content - Binaerdaten slice (embedded base64)
* content[+].attachment.contentType = #text/plain
* content[=].attachment.language = #de
* content[=].attachment.data = "U2VociBnZWVocnRlciBIZXJyIEtvbGxlZ2UsIHdpciBiZXJpY2h0ZW4gdWViZXIgdW5zZXJlbiBnZW1laW5zYW1lbiBQYXRpZW50ZW4uIERpYWdub3NlOiBBbWJ1bGFudCBlcndvcmJlbmUgUG5ldW1vbmllLiBUaGVyYXBpZTogQW50aWJpb3Rpa2F0aGVyYXBpZSBtaXQgQW1veGljaWxsaW4vQ2xhdnVsYW5zYWV1cmUuIFZlcmxhdWY6IEtvbXBsaWthdGlvbnNsb3MsIEVudGxhc3N1bmcgaW4gZ3V0ZW0gQVou"
* content[=].attachment.title = "Entlassbrief_Patient1.txt"
* content[=].attachment.creation = "2024-02-20"
* content[=].format = $ihe-formatcode#urn:ihe:iti:xds:2017:mimeTypeSufficient "mimeType Sufficient"
// Context
* context.encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* context.event[+].coding = $ihe-d-event#E100 "stationaerer Aufenthalt"
* context.period.start = "2024-02-10"
* context.period.end = "2024-02-20"
* context.facilityType.coding = $ihe-d-facility#KHS "Krankenhaus"
* context.practiceSetting.coding = $ihe-d-practice#INNE "Innere Medizin"

// =============================================================================
// DocumentReference 2: Verweis auf externes Dokument (URL-basiert)
// =============================================================================
Instance: mii-exa-test-data-patient-1-dokument-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument
Usage: #example
Description: "DocumentReference: Befundbericht Radiologie (URL-Verweis) - alle MS-Elemente"
* insert TestDataLabel
// NLP Processing Status Extension - annotated
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status"
* extension[=].valueCodeableConcept.coding = $nlp-status-cs#annotated
// Identifiers
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.99902"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901"
* identifier[=].use = #official
// Status
* status = #current
* docStatus = #final
// Type with KDL and IHE-D slices
* type.coding[+] = $kdl#AD030101 "Radiologischer Befundbericht"
* type.coding[+] = $ihe-d-type#BERI "Arztberichte"
* type.text = "Radiologischer Befundbericht Roentgen-Thorax"
// Category
* category[+].coding = $ihe-d-class#BEF "Befundbericht"
* category[=].text = "Befundbericht"
// Subject and Encounter
* subject = Reference(mii-exa-test-data-patient-1)
// Description
* description = "Roentgen-Thorax Befundbericht mit Nachweis eines Infiltrats im rechten Unterlappen"
// Security Label
* securityLabel[+].coding = $v3-Confidentiality#N "normal"
// Content - Verweis slice (URL reference)
* content[+].attachment.contentType = #application/pdf
* content[=].attachment.language = #de
* content[=].attachment.url = "https://fhir.example.org/Binary/radiologie-befund-patient1-20240215"
* content[=].attachment.title = "Roentgen_Thorax_Befund.pdf"
* content[=].attachment.creation = "2024-02-15"
* content[=].format = $ihe-formatcode#urn:ihe:iti:xds:2017:mimeTypeSufficient "mimeType Sufficient"
// Context
* context.encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* context.event[+].coding = $ihe-d-event#E100 "stationaerer Aufenthalt"
* context.period.start = "2024-02-15"
* context.period.end = "2024-02-15"
* context.facilityType.coding = $ihe-d-facility#KHS "Krankenhaus"
* context.practiceSetting.coding = $ihe-d-practice#RADI "Radiologie"
