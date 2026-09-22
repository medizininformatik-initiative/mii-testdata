Instance: mii-exa-patho-prostate-biopsy-block
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen
Usage: #example
* type = http://snomed.info/sct#1201985008 "Tissue block specimen"
* processing.extension.valueRange.low = 0 'Cel' "°C"
* processing.extension.valueRange.high = 30 'Cel' "°C"
* processing.extension.url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
* processing.procedure = http://snomed.info/sct#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen"
* status = #available
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Narrative skipped for better readability</b></p></div>"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* identifier.value = "E12345_21-A1"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E12345_21"
* accessionIdentifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* subject = Reference(mii-exa-patho-patient-12345)
* parent = Reference(mii-exa-patho-prostate-tru-cut-biopsy-sample)
* request = Reference(mii-exa-patho-request)
* collection.collector = Reference(mii-exa-patho-practitioner-21234)
* collection.collectedDateTime = "2021-01-29T06:15:00Z"
* collection.method = http://snomed.info/sct#168126000 "Sample macroscopy"
* collection.bodySite = http://snomed.info/sct#716917000 "Right lateral middle peripheral zone of prostate"
* container.type = http://snomed.info/sct#434464009 "Tissue cassette"
* container.additiveReference = Reference(mii-exa-patho-paraffin)