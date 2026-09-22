// ============================================================================
// MII Patho Test Data - Intraoperative Befunde und zusätzliche Beobachtungen
// Ergänzt den portierten ProstateCancerSpec-Fall (dort nicht vorhanden), um die
// Profile mii-pr-patho-intraoperative-grouper und
// mii-pr-patho-additional-specified-grouper abzudecken.
// ============================================================================

// ----------------------------------------------------------------------------
// Intraoperative Beobachtung (Schnellschnitt) + Grouper
// ----------------------------------------------------------------------------

Instance: mii-exa-test-data-patho-intraop-befund-1
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Schnellschnitt-Befund Stanze 01"
Description: "Intraoperative Beobachtung (Schnellschnitt): Nachweis eines azinären Adenokarzinoms in Stanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#83321-0
* code = $sct#371441004 "Histologic type"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-15T11:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $sct#45410002 "Acinar adenocarcinoma"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-part)
* note.text = "Schnellschnittdiagnose: Nachweis eines azinären Adenokarzinoms, endgültige Gradierung am Paraffinmaterial."

Instance: mii-exa-test-data-patho-intraop-grouper-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-intraoperative-grouper
Usage: #example
Title: "Intraoperative Befunde Grouper"
Description: "Gruppierung der intraoperativen Beobachtungen (Schnellschnitt)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#83321-0
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-15T11:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* hasMember[pathology-finding][+] = Reference(mii-exa-test-data-patho-intraop-befund-1)

// ----------------------------------------------------------------------------
// Zusätzliche Beobachtung (Immunhistochemie p63) + Grouper
// ----------------------------------------------------------------------------

Instance: mii-exa-test-data-patho-p63-befund-1
InstanceOf: $mii-patho-finding
Usage: #example
Title: "Immunhistochemie p63 Stanze 01"
Description: "Zusätzliche Beobachtung: p63-Immunhistochemie der Prostatastanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* category[section-type] = $loinc#100969-5
* code = $loinc#101548-6
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-18T09:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueCodeableConcept = $loinc#LA11883-8
* valueCodeableConcept.text = "Die Tumorzellen sind negativ für p63"
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)
* derivedFrom[attached-image] = Reference(mii-exa-test-data-patho-image-1)

Instance: mii-exa-test-data-patho-zusatz-grouper-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-additional-specified-grouper
Usage: #example
Title: "Zusätzliche Beobachtungen Grouper"
Description: "Gruppierung der zusätzlichen Beobachtungen (Immunhistochemie)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#100969-5
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-18T09:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* hasMember[pathology-finding][+] = Reference(mii-exa-test-data-patho-p63-befund-1)
