Instance: mii-exa-test-data-patient-1-muv-herzfrequenz
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/herzfrequenz
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/herzfrequenz"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart Rate"
* code.coding[sct] = $sct#364075005 "Heart rate (observable entity)"
* code.coding[IEEE-11073] = urn:iso:std:iso:11073:10101#147842 "Heart Rate"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-20T10:00:00+01:00"
* valueQuantity = 70 '/min' "beats per minute"