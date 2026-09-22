// DiagnosticReport - Hauptbericht
Instance: mii-exa-test-data-patho-report-1
InstanceOf: $mii-patho-report
Usage: #example
Title: "Pathologiebericht Prostatastanzen"
Description: "Umfangreicher Pathologiebericht für Core Needle Biopsys"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[Set-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* identifier[Set-ID].system = "https://www.charite.de/fhir/sid/patho/befundbericht"
* identifier[Set-ID].value = "E_24_001"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#SP "Surgical Pathology"
* code = $loinc#60568-3 "Pathology Synoptic report"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* encounter = Reference(mii-exa-test-data-patho-encounter-1)
* basedOn = Reference(mii-exa-test-data-patho-request-1)
* effectiveDateTime = "2024-01-20T15:00:00+01:00"
* issued = "2024-01-20T15:30:00+01:00"
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
// Alle 12 Prostatastanzen - Part, Block, Slide
// Stanze 01
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-01-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-01-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-01-slide)
// Stanze 02
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-02-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-02-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-02-slide)
// Stanze 03
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-03-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-03-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-03-slide)
// Stanze 04
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-04-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-04-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-04-slide)
// Stanze 05
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-05-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-05-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-05-slide)
// Stanze 06
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-06-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-06-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-06-slide)
// Stanze 07
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-07-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-07-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-07-slide)
// Stanze 08
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-08-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-08-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-08-slide)
// Stanze 09
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-09-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-09-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-09-slide)
// Stanze 10
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-10-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-10-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-10-slide)
// Stanze 11
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-11-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-11-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-11-slide)
// Stanze 12
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-12-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-12-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-12-slide)

// Pathologische Befunde - nur Grouper
* result[intraoperative-observations] = Reference(mii-exa-test-data-patho-intraop-grouper-1)
* result[macroscopic-observations] = Reference(mii-exa-test-data-patho-macro-grouper-1)
* result[microscopic-observations] = Reference(mii-exa-test-data-patho-micro-grouper-1)
* result[additional-observations] = Reference(mii-exa-test-data-patho-zusatz-grouper-1)
* result[diagnostic-conclusion] = Reference(mii-exa-test-data-patho-conclusion-grouper-1)

// Fotodokumentation (Media / Attached Image)
* media.link = Reference(mii-exa-test-data-patho-image-1)
* media.comment = "HE-Schnitt der Stanze 01, infiltriert durch Karzinomverbände, fotodokumentiert"

// Verweis auf die zugehörige Composition (R5-Backport-Extension)
* extension[composition].valueReference = Reference(mii-exa-test-data-patho-composition-1)

* conclusion = "Adenokarzinom der Prostata, Gleason-Score 7a (3+4) in 7 von 12 Stanzen, mit perineuralem Befall."
* conclusionCode = $sct#399068003 "Malignant tumor of prostate (disorder)"
