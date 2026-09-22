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

* hasMember[+] = Reference(mii-exa-test-data-patho-histo-typ-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-morph-text-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-primaer-gleason-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-sekundaer-gleason-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-gleason-grading-01)
* hasMember[+] = Reference(mii-exa-test-data-patho-tumoranteil-01)


* hasMember[+] = Reference(mii-exa-test-data-patho-histo-typ-03)
* hasMember[+] = Reference(mii-exa-test-data-patho-morph-text-03)

