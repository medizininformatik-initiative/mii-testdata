// Patient-1
Instance: mii-exa-test-data-patient-1-icu-herzfrequenz-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-herzfrequenz
Usage: #example
Description: "ICU Observation: Herzfrequenz für Patient 1"
* insert TestDataLabel
* status = #final
* category[vs-cat] = $observation-category#vital-signs "Vital Signs"
* code.coding[sct] = $sct#364075005 "Heart rate (observable entity)"
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[IEEE-11073] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-15T14:30:00+01:00"
* valueQuantity.value = 78
* valueQuantity.unit = "beats per minute"
* valueQuantity.system = $ucum
* valueQuantity.code = #/min
