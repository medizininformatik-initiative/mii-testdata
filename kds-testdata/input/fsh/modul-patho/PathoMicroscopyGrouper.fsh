// =============================================================================
// MIKROSKOPISCHE BEFUNDE GROUPER - PROSTATA STANZEN
// =============================================================================

// Grouper für mikroskopische Befunde nach MII-Patho-Befund
Instance: mii-exa-test-data-patho-micro-grouper-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper
Usage: #example
Title: "Mikroskopische Befunde Grouper"
Description: "Gruppierung der mikroskopischen Befunde beider Prostatastanzen" 
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory-category] = $observation-category#laboratory
* code = $loinc#22635-7
* subject = Reference(mii-exa-test-data-patho-patient-1)
* effectiveDateTime = "2024-01-17T10:00:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* valueString = "Mikroskopische Befunde beider Prostatastanzen"
* bodySite = $sct#41216001 "Prostate"
* meta.lastUpdated = "2024-01-20T16:00:00+01:00"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Mikroskopie-Grouper: Befunde der Prostatastanzen 01 und 03</div>"
* identifier.system = "https://www.charite.de/fhir/sid/patho/befund"
* identifier.value = "E_24_001_MIKRO"
* method = $sct#104157003 "Light microscopy (procedure)"
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* specimen = Reference(mii-exa-test-data-patho-specimen-01-slide)
* derivedFrom[attached-image] = Reference(mii-exa-test-data-patho-image-1)
* derivedFrom[dicom-image] = Reference(mii-exa-test-data-patho-imaging-study-1)

* hasMember[+] = Reference(mii-exa-test-data-patho-histo-typ-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-morph-text-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-primaer-gleason-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-sekundaer-gleason-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-gleason-grading-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-tumoranteil-01)


* hasMember[+] = Reference(mii-exa-test-data-patho-histo-typ-03)
* hasMember[+] = Reference(mii-exa-test-data-patho-morph-text-03)

