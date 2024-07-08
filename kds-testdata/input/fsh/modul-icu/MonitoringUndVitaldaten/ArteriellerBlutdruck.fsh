Instance: mii-exa-test-data-patient-1-muv-arterieller-blutdruck
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutdruck
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutdruck"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[sct] = $sct#75367002
* code.coding[loinc] = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-20T10:00:00+01:00"
* component[SystolicBP].code.coding[loinc] = $loinc#8480-6 "Systolic blood pressure"
* component[SystolicBP].code.coding[sct] = $sct#271649006 "Systolic blood pressure (observable entity)"
* component[SystolicBP].code.coding[IEEE-11073] = urn:iso:std:iso:11073:10101#150017 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 120 'mm[Hg]' "millimeter Mercury column"
* component[SystolicBP].interpretation = $v3-ObservationInterpretation#N "Normal"
* component[SystolicBP].referenceRange.low = 120 'mm[Hg]' "millimeter Mercury column"
* component[SystolicBP].referenceRange.high = 129 'mm[Hg]' "millimeter Mercury column"
* component[SystolicBP].referenceRange.type = $referencerange-meaning#normal "Normal Range"
* component[SystolicBP].referenceRange.appliesTo = $sex-parameter-for-clinical-use#male-typical "Apply male-typical setting or reference range"
* component[SystolicBP].referenceRange.age.low = 18 'a' "years"
* component[meanBP].code.coding[loinc] = $loinc#8478-0 "Mean blood pressure"
* component[meanBP].code.coding[sct] = $sct#6797001 "Mean blood pressure (observable entity)"
* component[meanBP].code.coding[IEEE-11073] = urn:iso:std:iso:11073:10101#150019 "Mean blood pressure"
* component[meanBP].valueQuantity = 90 'mm[Hg]' "millimeter Mercury column"
* component[DiastolicBP].code.coding[loinc] = $loinc#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].code.coding[sct] = $sct#271650006 "Diastolic blood pressure (observable entity)"
* component[DiastolicBP].code.coding[IEEE-11073] = urn:iso:std:iso:11073:10101#150018 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 80 'mm[Hg]' "millimeter Mercury column"
* component[DiastolicBP].interpretation = $v3-ObservationInterpretation#N "Normal"
* component[DiastolicBP].referenceRange.low = 80 'mm[Hg]' "millimeter Mercury column"
* component[DiastolicBP].referenceRange.high = 84 'mm[Hg]' "millimeter Mercury column"
* component[DiastolicBP].referenceRange.type = $referencerange-meaning#normal "Normal Range"
* component[DiastolicBP].referenceRange.appliesTo = $sex-parameter-for-clinical-use#male-typical "Apply male-typical setting or reference range"
* component[DiastolicBP].referenceRange.age.low = 18 'a' "years"