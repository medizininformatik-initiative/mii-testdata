Instance: mii-exa-test-data-radiologische-beobachtung
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung
Usage: #example
Description: "Observation: Radiologische Beobachtung"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid].valueId = "1.2.34.5.6789.1.2.34.5678912.34567891234567891234"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid].valueId = "1.2.34.5.6789.1.2.3.45678.9123456789123456789123456789"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure].valueReference = Reference(mii-exa-test-data-koerperstruktur)
* partOf = Reference(mii-exa-test-data-befundungsprozedur)
* status = #final
* category = $observation-category#imaging "Imaging"
* code = $loinc#32422-8 "Physical findings of Breast"
* subject = Reference(mii-exa-test-data-patient-1)
* issued = "2024-07-19T12:03:30+02:00"
* valueString = "microcalcifications in the upper outer quadrant in the left breast"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* hasMember = Reference(mii-exa-test-data-patient-1-labobs-1)
* derivedFrom = Reference(mii-exa-test-data-bildgebungsstudie)
* component.code = $loinc#10157-6 "History of family member diseases Narrative"
* component.valueBoolean = true