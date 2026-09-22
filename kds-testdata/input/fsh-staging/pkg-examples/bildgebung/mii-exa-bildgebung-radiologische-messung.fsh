Instance: mii-exa-bildgebung-radiologische-messung
InstanceOf: MII_PR_Bildgebung_Radiologische_Messung
Usage: #example
* extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid"
* extension[=].valueId = "example-series-uid"
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid"
* extension[=].valueId = "example-sop-instance-uid"
* bodySite.extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* bodySite.extension.valueReference = Reference(mii-exa-bildgebung-koerperstruktur)
* bodySite.coding = http://snomed.info/sct#76752008 "Breast structure (body structure)"
* bodySite.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* valueQuantity = 4.2 'mm' "millimeter"
* partOf = Reference(mii-exa-bildgebung-radiologische-befundungsprozedur)
* status = #final
* category.coding = http://snomed.info/sct#122869004 "Measurement procedure (procedure)"
* category.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.coding = http://snomed.info/sct#439984002 "Diameter of structure by imaging measurement (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-bildgebung-radiologischer-patient)
* issued = "2024-07-19T12:03:30+02:00"
* hasMember = Reference(mii-exa-bildgebung-radiologische-beobachtung)
* derivedFrom = Reference(mii-exa-bildgebung-bildgebungsstudie-ct)
* method = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20260701#272391002 "Measurement technique (qualifier value)"