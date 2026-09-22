Instance: mii-exa-patho-prostate-resection-sample
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen
Usage: #example
* type = http://snomed.info/sct#122725003 "Specimen from prostate obtained by radical prostatectomy"
* collection.bodySite.extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.collection.bodySite"
* collection.bodySite.extension.valueReference = Reference(mii-exa-patho-prostate-body-structure)
* collection.bodySite = http://snomed.info/sct#41216001 "Prostate"
* collection.collector = Reference(mii-exa-patho-practitioner-2346545)
* collection.collectedDateTime = "2025-02-05T10:00:00+01:00"
* collection.method = http://snomed.info/sct#26294005 "Radical prostatectomy"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* identifier[=].system = "https://urologie.example-hospital.de/fhir/specimen/placer"
* identifier[=].value = "OP25_311_A"
* identifier[+].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* identifier[=].system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier[=].value = "E_25_311_A"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_25_311"
* status = #available
* subject = Reference(mii-exa-patho-patient-12345)
* container.type = http://snomed.info/sct#434746001 "Specimen vial"
* container.additiveReference = Reference(mii-exa-patho-neutral-buffered-formalin)
* note.text = "Radikalprostatektomie-Praeparat, Tumorregion rechte apikale periphere Zone (posterior) markiert. In Formalin fixiert."