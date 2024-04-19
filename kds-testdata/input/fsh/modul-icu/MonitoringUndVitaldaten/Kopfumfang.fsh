Instance: mii-exa-test-data-patient-1-muv-kopfumfang
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/kopfumfang
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/kopfumfang"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#9843-4 "Head Occipital-frontal circumference"
* code.coding[sct] = $sct#363811000 "Head circumference measure (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* valueQuantity = 55 'cm' "centimeter"
* effectiveDateTime = "2024-02-20T10:00:00+01:00"