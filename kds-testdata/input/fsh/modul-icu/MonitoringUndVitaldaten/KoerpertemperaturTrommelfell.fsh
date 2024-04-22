Instance: mii-exa-test-data-patient-1-temp-trommelfell
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/koerpertemperatur-trommelfell
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/koerpertemperatur-trommelfell"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8333-7 "Tympanic membrane temperature"
* code.coding[sct] = $sct#415974002 "Core body temperature measured at tympanic membrane (observable entity)"
* code.coding[loinc-fhir-core] = $loinc#8310-5 "Body temperature"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-20T10:00:00+01:00"
* valueQuantity = 37 'Cel' "Celsius"
* bodySite = $sct#42859004 "Tympanic membrane structure (body structure)"