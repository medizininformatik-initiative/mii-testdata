Instance: mii-exa-patho-report
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report
Usage: #example
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* identifier.value = "E21.12345"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* code = http://loinc.org#60568-3 "Pathology synoptic report"
* basedOn = Reference(mii-exa-patho-request)
* status = #final
* subject = Reference(mii-exa-patho-patient-12345)
* performer = Reference(mii-exa-patho-practitioner-2346545)
* specimen = Reference(mii-exa-patho-prostate-tru-cut-biopsy-sample)
* encounter = Reference(mii-exa-patho-encounter-12345)
* result[0] = Reference(mii-exa-patho-macro-grouper-a)
* result[+] = Reference(mii-exa-patho-micro-grouper-a)
* result[+] = Reference(mii-exa-patho-diagnostic-conclusion-grouper)
* conclusion = "Gut differenziertes azinäres Adenokarzinom der Prostata, ISUP-Gradgruppe 1"
* conclusionCode = http://snomed.info/sct#1525761000004109
* effectiveDateTime = "2021-06-01"
* media.link = Reference(mii-exa-patho-attached-image)
* media.comment = "HE-Schnitt einer Prostatastanze, infiltriert durch Karzinomverbände, fotodokumentiert"