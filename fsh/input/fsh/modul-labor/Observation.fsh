// Patient-1
Instance: mii-exa-test-data-patient-1-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000001, 26464-8, Leukocytes [#/volume] in Blood, mii-exa-test-data-patient-1, mii-exa-test-data-patient-1-encounter-1, 2024-02-15T12:00:00+01:00, 2024-02-15T12:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-1-labrequest-1)
* valueQuantity = 17.0 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* note.text = "Leukozyten EDTA-Blut Impedanzmessung"
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)
* referenceRange.low = 3.9 $ucum#/nL "/nanoliter"
* referenceRange.high = 10.5 $ucum#/nL "/nanoliter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.appliesTo = $sct#248153007 "Male (finding)"
* referenceRange.age.low = 18 $ucum#a "year"
* referenceRange.age.high = 65 $ucum#a "year"

Instance: mii-exa-test-data-patient-1-labobs-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000002, 26453-1, Erythrocytes [#/volume] in Blood, mii-exa-test-data-patient-1, mii-exa-test-data-patient-1-encounter-1, 2024-02-15T12:00:00+01:00, 2024-02-15T12:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-1-labrequest-1)
* valueQuantity = 5.0 $ucum#/pL "/nanoLiters"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* note.text = "Erythrozyten EDTA-Blut Impedanzmessung"
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)
* referenceRange.low = 4.3 $ucum#/pL "/picoliter"
* referenceRange.high = 5.8 $ucum#/pL "/picoliter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.appliesTo = $sct#248153007 "Male (finding)"
* referenceRange.age.low = 18 $ucum#a "year"
* referenceRange.age.high = 65 $ucum#a "year"

Instance: mii-exa-test-data-patient-1-labobs-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000003, 20570-8, Hematocrit [Volume Fraction] of Blood, mii-exa-test-data-patient-1, mii-exa-test-data-patient-1-encounter-1, 2024-02-15T12:00:00+01:00, 2024-02-15T12:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-1-labrequest-1)
* valueQuantity = 45 $ucum#% "percent"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* note.text = "Hämatokrit EDTA-Blut Impedanzmessung"
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)
* referenceRange.low = 40 $ucum#% "percent"
* referenceRange.high = 51 $ucum#% "percent"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.appliesTo = $sct#248153007 "Male (finding)"
* referenceRange.age.low = 18 $ucum#a "year"
* referenceRange.age.high = 65 $ucum#a "year"

Instance: mii-exa-test-data-patient-1-labobs-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000004, 718-7, Hemoglobin [Mass/volume] in Blood, mii-exa-test-data-patient-1, mii-exa-test-data-patient-1-encounter-1, 2024-02-15T12:00:00+01:00, 2024-02-15T12:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-1-labrequest-1)
* valueQuantity = 45 $ucum#g/dL "gram per deciliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* note.text = "Hämoglobin EDTA-Blut Photometrie"
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)
* referenceRange.low = 13.5 $ucum#g/dL "gram per deciliter"
* referenceRange.high = 17 $ucum#g/dL "gram per deciliter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.appliesTo = $sct#248153007 "Male (finding)"
* referenceRange.age.low = 18 $ucum#a "year"
* referenceRange.age.high = 65 $ucum#a "year"

Instance: mii-exa-test-data-patient-1-labobs-5
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000005, 26515-7, Platelets [#/volume] in Blood, mii-exa-test-data-patient-1, mii-exa-test-data-patient-1-encounter-1, 2024-02-15T12:00:00+01:00, 2024-02-15T12:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-1-labrequest-1)
* valueQuantity = 355 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* note.text = "Thrombozyten EDTA-Blut Impedanzmessung"
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)
* referenceRange.low = 150 $ucum#/nL "/nanoliter"
* referenceRange.high = 370 $ucum#/nL "/nanoliter"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.appliesTo = $sct#248153007 "Male (finding)"
* referenceRange.age.low = 18 $ucum#a "year"
* referenceRange.age.high = 65 $ucum#a "year"

Instance: mii-exa-test-data-patient-1-labobs-6
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000006, 788-0, Erythrocyte distribution width [Ratio] by Automated count, mii-exa-test-data-patient-1, mii-exa-test-data-patient-1-encounter-1, 2024-02-15T12:00:00+01:00, 2024-02-15T12:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-1-labrequest-1)
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"