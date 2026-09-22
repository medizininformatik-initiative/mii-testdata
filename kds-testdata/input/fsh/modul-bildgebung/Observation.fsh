Instance: mii-exa-test-data-radiologische-beobachtung
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung
Usage: #example
Description: "Observation: Radiologische Beobachtung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid].valueId = "1.2.34.5.6789.1.2.34.5678912.34567891234567891234"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid].valueId = "1.2.34.5.6789.1.2.3.45678.9123456789123456789123456789"
* bodySite.extension[bodyStructure].valueReference = Reference(mii-exa-test-data-koerperstruktur)
* partOf = Reference(mii-exa-test-data-befundungsprozedur)
* status = #final
* category = $observation-category#imaging "Imaging"
* code = $loinc#32422-8 "Physical findings of Breast"
* subject = Reference(mii-exa-test-data-bildgebung-patient-1)
* issued = "2024-07-19T12:03:30+02:00"
* valueString = "microcalcifications in the upper outer quadrant in the left breast"
* bodySite = $sct#76752008 "Breast structure (body structure)"
* hasMember = Reference(mii-exa-test-data-bildgebung-labobs-1)
* derivedFrom = Reference(mii-exa-test-data-bildgebungsstudie)
* component.code = $loinc#10157-6 "History of family member diseases note"
* component.valueBoolean = true

// ----------------------------------------------------------------------------
// Radiologische Messung (mii-pr-bildgebung-radiologische-messung):
// Groesster Durchmesser des Mikrokalk-Areals in der Mammographie
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-radiologische-messung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-messung
Usage: #example
Description: "Observation: Radiologische Messung (Durchmesser des Herdbefunds, 4.2 mm)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid].valueId = "1.2.34.5.6789.1.2.34.5678912.34567891234567891234"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid].valueId = "1.2.34.5.6789.1.2.3.45678.9123456789123456789123456789"
* partOf = Reference(mii-exa-test-data-befundungsprozedur)
* status = #final
* category = $sct#122869004 "Measurement procedure (procedure)"
* code = $sct#439984002 "Diameter of structure by imaging measurement (observable entity)"
* subject = Reference(mii-exa-test-data-bildgebung-patient-1)
* issued = "2024-07-19T12:03:30+02:00"
* valueQuantity.value = 4.2
* valueQuantity.unit = "millimeter"
* valueQuantity.system = $ucum
* valueQuantity.code = #mm
* bodySite = $sct#76752008 "Breast structure (body structure)"
* bodySite.extension[bodyStructure].valueReference = Reference(mii-exa-test-data-koerperstruktur)
* method = $sct#272391002 "Measurement technique (qualifier value)"
* hasMember = Reference(mii-exa-test-data-radiologische-beobachtung)
* derivedFrom = Reference(mii-exa-test-data-bildgebungsstudie)