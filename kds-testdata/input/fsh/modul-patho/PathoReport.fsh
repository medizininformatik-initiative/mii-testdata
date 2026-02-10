// -------------------------------------------------------
// Patho DiagnosticReport for Patient-1: Prostate Biopsy
// -------------------------------------------------------

Instance: mii-exa-test-data-patient-1-patho-report-1
InstanceOf: mii-pr-patho-report
Usage: #example
Description: "Patho Befundbericht: Prostata-Stanzbiopsie Adenokarzinom Gleason 3+4=7"
* insert TestDataLabel
* identifier[Set-ID].type = $v2-0203#ACSN "Accession ID"
* identifier[Set-ID].system = "https://www.charite.de/fhir/sid/patho-befundnummern"
* identifier[Set-ID].value = "E24.00001"
* basedOn = Reference(mii-exa-test-data-patient-1-patho-request-1)
* status = #final
* category = $v2-0074#PAT "Pathology (gross & histopath, not surgical)"
* code.coding[pathology-report] = $loinc#60568-3 "Pathology Synoptic report"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16"
* performer = Reference(mii-exa-test-data-practitioner-physician-1)
* specimen[+] = Reference(mii-exa-test-data-patient-1-patho-specimen-1)
* specimen[+] = Reference(mii-exa-test-data-patient-1-patho-specimen-2)
* result[intraoperative-observations] = Reference(mii-exa-test-data-patient-1-patho-intraoperative-grouper-1)
* result[macroscopic-observations] = Reference(mii-exa-test-data-patient-1-patho-macroscopic-grouper-1)
* result[microscopic-observations] = Reference(mii-exa-test-data-patient-1-patho-microscopic-grouper-1)
* result[additional-observations] = Reference(mii-exa-test-data-patient-1-patho-additional-grouper-1)
* result[diagnostic-conclusion] = Reference(mii-exa-test-data-pat1-patho-diag-concl-grouper-1)
* conclusion = "Maessig differenziertes azinäres Adenokarzinom der Prostata (rechter Seitenlappen lateral), Gleason-Score 3+4=7, ISUP-Gradgruppe 2. Tumorinfiltration in ca. 40% der Schnittflaeche des Stanzzylinders."
* conclusionCode = $sct#399490008 "Adenocarcinoma of prostate (disorder)"
* media.link = Reference(mii-exa-test-data-patient-1-patho-image-1)
* media.comment = "Makroskopie Prostata-Stanzbiopsie, Probe A"
