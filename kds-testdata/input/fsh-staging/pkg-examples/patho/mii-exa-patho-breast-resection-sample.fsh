Instance: mii-exa-patho-breast-resection-sample
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen
Usage: #example
* type = http://snomed.info/sct#397199005 "Specimen from breast obtained by excision"
* collection.bodySite.extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.collection.bodySite"
* collection.bodySite.extension.valueReference = Reference(mii-exa-patho-left-breast-body-structure)
* collection.bodySite = http://snomed.info/sct#33564002 "Structure of lower outer quadrant of breast"
* collection.collector = Reference(mii-exa-patho-practitioner-2346545)
* collection.collectedDateTime = "2025-02-05T10:00:00+01:00"
* collection.method = http://snomed.info/sct#237371007 "Wide local excision of breast lesion"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* identifier[=].system = "https://senologie.example-hospital.de/fhir/specimen/placer"
* identifier[=].value = "OP25_210_A"
* identifier[+].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* identifier[=].system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* identifier[=].value = "E_25_210_A"
* accessionIdentifier.system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E_25_210"
* status = #available
* subject = Reference(mii-exa-patho-patient-34545)
* request = Reference(mii-exa-patho-request)
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[0].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://snomed.info/sct#735083009 "Part of left breast"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Praeoperative radiologische Drahtmarkierung der Biopsiestelle"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[0].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://snomed.info/sct#3680001000004109 "Anterior surgical margin"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Fadenmarkierung lang anterior"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[=].extension[0].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://snomed.info/sct#880001000004108 "Distal surgical margin"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "Fadenmarkierung 2x kurz distal"
* container.type = http://snomed.info/sct#434746001 "Specimen vial"
* container.additiveReference = Reference(mii-exa-patho-neutral-buffered-formalin)
* note.text = "BET-Exzisionspraeparat Mamma links, unterer aeusserer Quadrant, 5 Uhr, 50 mm von der Mamille. Drahthaekchen und zwei Fadenmarkierungen."