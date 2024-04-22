Instance: mii-exa-test-data-patient-1-muv-spo2-pulsoxymetrie
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/sauerstoffsaettigung-im-blut-preduktal-durch-pulsoxymetrie
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/sauerstoffsaettigung-im-blut-preduktal-durch-pulsoxymetrie"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#59407-7 "Oxygen saturation in Blood Preductal by Pulse oximetry"
* code.coding[IEEE-11073] = urn:iso:std:iso:11073:10101#160296 "Preductal SpO2"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-20T10:00:00+01:00"
* valueQuantity = 96 '%' "percent"