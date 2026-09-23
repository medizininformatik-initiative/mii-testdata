// DiagnosticReport - Hauptbericht
Instance: mii-exa-test-data-patho-report-1
InstanceOf: $mii-patho-report
Usage: #example
Title: "Pathologiebericht Prostatastanzen"
Description: "Pathologiebericht für die 2-Stanzen-Prostatabiopsie (Stanze 01 positiv, Stanze 03 benigne)"
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
// Beide Prostatastanzen - Part, Block, Slide
// Stanze 01
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-01-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-01-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-01-slide)
// Stanze 02
// Stanze 03
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-03-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-03-block)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-03-slide)
// Stanze 04
// Stanze 05
// Stanze 06
// Stanze 07
// Stanze 08
// Stanze 09
// Stanze 10
// Stanze 11
// Stanze 12

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

* conclusion = "Azinäres Adenokarzinom der Prostata, Gleason-Score 7a (3+4), ISUP-Gradgruppe 2, Nachweis in 1 von 2 Stanzen (Stanze 01, rechts lateral basal), perineurale Infiltration. Stanze 03 tumorfrei."
* conclusionCode = $sct#399068003 "Malignant tumor of prostate (disorder)"
* meta.lastUpdated = "2024-01-20T16:00:00+01:00"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pathologiebericht Prostatastanzen E_24_001: Azinäres Adenokarzinom, Gleason 3+4=7, ISUP 2</div>"
* imagingStudy = Reference(mii-exa-test-data-patho-imaging-study-1)
* presentedForm.contentType = #application/pdf
* presentedForm.language = #de
* presentedForm.url = "https://www.charite.de/fhir/sid/patho/report/E_24_001.pdf"
* presentedForm.title = "Histopathologischer Befundbericht E_24_001 (PDF)"
