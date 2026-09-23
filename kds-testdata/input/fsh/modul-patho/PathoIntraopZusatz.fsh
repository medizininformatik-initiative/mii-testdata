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
* meta.lastUpdated = "2024-01-20T16:00:00+01:00"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Intraoperativer Grouper: Schnellschnitt-Befund Stanze 01</div>"
* identifier.system = "https://www.charite.de/fhir/sid/patho/befund"
* identifier.value = "E_24_001_INTRAOP"
* method = $sct#20135006 "Frozen section procedure (procedure)"
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-01-part)
* bodySite = $sct#41216001 "Prostate"
* derivedFrom[attached-image] = Reference(mii-exa-test-data-patho-image-1)
* derivedFrom[dicom-image] = Reference(mii-exa-test-data-patho-imaging-study-1)

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
* meta.lastUpdated = "2024-01-20T16:00:00+01:00"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Zusatzbefund-Grouper: Immunhistochemie p63</div>"
* identifier.system = "https://www.charite.de/fhir/sid/patho/befund"
* identifier.value = "E_24_001_ZUSATZ"
* method = $sct#117617002 "Immunohistochemistry procedure (procedure)"
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)
* bodySite = $sct#41216001 "Prostate"
* derivedFrom[attached-image] = Reference(mii-exa-test-data-patho-image-1)
* derivedFrom[dicom-image] = Reference(mii-exa-test-data-patho-imaging-study-1)

// ImagingStudy (Ziel der dicom-image-Referenzen der Grouper und des Reports)
Instance: mii-exa-test-data-patho-imaging-study-1
InstanceOf: ImagingStudy
Usage: #example
Title: "Patho Whole-Slide-Imaging Studie"
Description: "Whole-Slide-Imaging (DICOM) des HE-Schnitts der Prostatastanze 01"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #available
* subject = Reference(mii-exa-test-data-patho-patient-1)
* started = "2024-01-17T10:30:00+01:00"
* modality = http://dicom.nema.org/resources/ontology/DCM#SM "Slide Microscopy"
* numberOfSeries = 1
* description = "Whole Slide Imaging HE-Schnitt Stanze 01"
