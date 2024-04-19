Instance: mii-exa-test-data-patient-1-muv-atemfrequenz
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/atemfrequenz
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/atemfrequenz"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[sct] = $sct#86290005 "Respiratory rate (observable entity)"
* code.coding[loinc] = $loinc#9279-1 "Respiratory Rate"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectivePeriod.start = "2024-02-20T10:00:00+01:00"
* effectivePeriod.end = "2024-02-20T11:00:00+01:00"
* valueQuantity = 15 '/min' "breaths per minute"