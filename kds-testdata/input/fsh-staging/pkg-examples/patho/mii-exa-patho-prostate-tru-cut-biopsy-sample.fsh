Instance: mii-exa-patho-prostate-tru-cut-biopsy-sample
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen
Usage: #example
* type = http://snomed.info/sct#309134005 "Prostate tru-cut biopsy specimen"
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension.extension[0].url = "type"
* extension.extension[=].valueCodeableConcept = http://snomed.info/sct#251597001 "Structure of right lateral lobe of prostate"
* extension.extension[+].url = "description"
* extension.extension[=].valueString = "Marked by red ink"
* status = #available
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Narrative skipped for better readability</b></p></div>"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* identifier[=].value = "KHXX_ENDO_18.123451_A"
* identifier[=].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/untersuchungsauftrag"
* identifier[+].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* identifier[=].value = "E12345_21-A"
* identifier[=].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E12345_21"
* accessionIdentifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* subject = Reference(mii-exa-patho-patient-12345)
* request = Reference(mii-exa-patho-request)
* collection.collector = Reference(mii-exa-patho-practitioner-2346545)
* collection.collectedDateTime = "2021-01-29T06:15:00Z"
* collection.method = http://snomed.info/sct#301759007 "Tru-cut biopsy of prostate"
* collection.bodySite = http://snomed.info/sct#716917000 "Right lateral middle peripheral zone of prostate"
* container.type = http://snomed.info/sct#434746001 "Specimen vial"
* container.additiveReference = Reference(mii-exa-patho-neutral-buffered-formalin)