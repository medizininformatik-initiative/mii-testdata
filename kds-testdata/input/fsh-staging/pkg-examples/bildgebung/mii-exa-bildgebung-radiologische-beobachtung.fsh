Instance: mii-exa-bildgebung-radiologische-beobachtung
InstanceOf: MII_PR_Bildgebung_Radiologische_Beobachtung
Usage: #example
* extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid"
* extension[=].valueId = "example-series-uid"
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid"
* extension[=].valueId = "example-sop-instance-uid"
* bodySite.extension.url = "http://hl7.org/fhir/StructureDefinition/bodySite"
* bodySite.extension.valueReference = Reference(mii-exa-bildgebung-koerperstruktur)
* bodySite.coding = http://snomed.info/sct#76752008 "Breast structure (body structure)"
* bodySite.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* partOf = Reference(mii-exa-bildgebung-radiologische-befundungsprozedur)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging "Imaging"
* code = http://loinc.org#32422-8 "Physical findings of Breast"
* subject = Reference(mii-exa-bildgebung-radiologischer-patient)
* issued = "2024-07-19T12:03:30+02:00"
* valueString = "microcalcifications in the upper outer quadrant in the left breast"
* hasMember = Reference(Observation/ObsExample)
* derivedFrom = Reference(mii-exa-bildgebung-bildgebungsstudie-ct)
* component.code = http://loinc.org#10157-6 "History of family member diseases note"
* component.valueBoolean = true