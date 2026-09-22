Instance: mii-exa-patho-prostate-biopsy-schnitt-HE
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen
Usage: #example
* type = http://snomed.info/sct#430856003 "Tissue section"
* processing.extension.valueRange.low = 0 'Cel' "°C"
* processing.extension.valueRange.high = 30 'Cel' "°C"
* processing.extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing.procedure = http://snomed.info/sct#104210008 "Hematoxylin and eosin stain method"
* processing.additive[0] = Reference(mii-exa-patho-hematoxylin-stain)
* processing.additive[+] = Reference(mii-exa-patho-eosin-y)
* status = #available
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Narrative skipped for better readability</b></p></div>"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* identifier.value = "E12345_21-A1-HE"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E12345_21"
* accessionIdentifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* subject = Reference(mii-exa-patho-patient-12345)
* parent = Reference(mii-exa-patho-prostate-biopsy-block)
* request = Reference(mii-exa-patho-request)
* collection.collector = Reference(mii-exa-patho-practitioner-2346545)
* collection.collectedDateTime = "2021-01-29T06:15:00Z"
* collection.method = http://snomed.info/sct#40923002 "Tissue processing technique, routine, embed, cut and stain, per surgical specimen"
* collection.bodySite = http://snomed.info/sct#716917000 "Right lateral middle peripheral zone of prostate"
* container.type = http://snomed.info/sct#433466003 "Microscope slide"
* container.additiveReference = Reference(mii-exa-patho-canadabalsam)