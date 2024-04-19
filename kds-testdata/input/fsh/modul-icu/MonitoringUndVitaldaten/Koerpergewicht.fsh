Instance: mii-exa-test-data-patient-1-icu-muv-koerpergewicht
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/koerpergewicht
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/koerpergewicht"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#29463-7 "Body weight"
* code.coding[sct] = $sct#27113001 "Body weight (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-20T10:00:00+01:00"
* valueQuantity = 70 'kg' "kilogram"