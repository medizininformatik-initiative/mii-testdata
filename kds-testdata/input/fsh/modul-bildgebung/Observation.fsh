Instance: mii-exa-test-data-radiologische-beobachtung
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung
Usage: #example
Description: "Observation: Radiologische Beobachtung"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid].valueId = "1.2.34.5.6789.1.2.34.5678912.34567891234567891234"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid].valueId = "1.2.34.5.6789.1.2.3.45678.9123456789123456789123456789"
* bodySite.extension[bodyStructure].valueReference = Reference(mii-exa-test-data-koerperstruktur)
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

// CT Thorax scenario
Instance: mii-exa-test-data-radiologische-beobachtung-ct
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung
Usage: #example
Description: "Observation: CT Thorax Radiologische Beobachtung"
* insert TestDataLabel
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid].valueId = "2.16.840.1.113883.6.43.1.2.3456789.1234567890123456"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid].valueId = "2.16.840.1.113883.6.43.1.2.3456789.1234567890123456.153"
* bodySite.extension[bodyStructure].valueReference = Reference(mii-exa-test-data-koerperstruktur-ct)
* partOf = Reference(mii-exa-test-data-befundungsprozedur-ct)
* status = #final
* category = $observation-category#imaging "Imaging"
* code = $loinc#24627-2 "CT Chest"
* subject = Reference(mii-exa-test-data-patient-2)
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* effectiveDateTime = "2024-11-05T11:30:00+01:00"
* issued = "2024-11-05T13:45:00+01:00"
* valueString = "Solitaerer pulmonaler Rundherd im rechten Oberlappen, Segment 3, 18 mm Durchmesser, unregelmae\u00DFig begrenzt mit Spiculae, ohne Verkalkungen"
* bodySite = $sct#39743006 "Structure of anterior segment of right upper lobe of lung"
* derivedFrom = Reference(mii-exa-test-data-bildgebungsstudie-ct)
* component[0].code = $loinc#33999-4 "Diagnosis status"
* component[=].valueQuantity.value = 18
* component[=].valueQuantity.unit = "millimeter"
* component[=].valueQuantity.system = $ucum
* component[=].valueQuantity.code = #mm
* component[+].code = $loinc#10157-6 "History of family member diseases Narrative"
* component[=].valueBoolean = false