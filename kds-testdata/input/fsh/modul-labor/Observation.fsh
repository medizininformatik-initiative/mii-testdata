// Patient-1
Instance: mii-exa-test-data-patient-1-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab|1.0.7-alpha1"
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
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab|1.0.7-alpha1"
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
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab|1.0.7-alpha1"
* insert AddLabObservation(LO_000003, 20570-8, Hematocrit [Volume Fraction] of Blood by calculation, mii-exa-test-data-patient-1, mii-exa-test-data-patient-1-encounter-1, 2024-02-15T12:00:00+01:00, 2024-02-15T12:00:00+01:00)
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
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab|1.0.7-alpha1"
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
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab|1.0.7-alpha1"
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
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab|1.0.7-alpha1"
* insert AddLabObservation(LO_000006, 788-0, Erythrocyte [DistWidth] in Red Blood Cells by Automated count, mii-exa-test-data-patient-1, mii-exa-test-data-patient-1-encounter-1, 2024-02-15T12:00:00+01:00, 2024-02-15T12:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-1-labrequest-1)
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"

// Patient-2 Labor-Observations
Instance: mii-exa-test-data-patient-2-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000007, 26464-8, Leukocytes [#/volume] in Blood, mii-exa-test-data-patient-2, mii-exa-test-data-patient-2-encounter-1, 2024-03-04T07:30:00+01:00, 2024-03-04T09:15:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-2-labrequest-1)
* valueQuantity = 3.2 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* note.text = "Leukopenie bei Tumorpatient"
* specimen = Reference(mii-exa-test-data-patient-2-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)
* referenceRange.low = 3.9 $ucum#/nL "/nanoliter"
* referenceRange.high = 10.5 $ucum#/nL "/nanoliter"

Instance: mii-exa-test-data-patient-2-labobs-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000008, 26453-1, Erythrocytes [#/volume] in Blood, mii-exa-test-data-patient-2, mii-exa-test-data-patient-2-encounter-1, 2024-03-04T07:30:00+01:00, 2024-03-04T09:15:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-2-labrequest-1)
* valueQuantity = 3.8 $ucum#/pL "/picoliter"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-2-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-2-labobs-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000009, 718-7, Hemoglobin [Mass/volume] in Blood, mii-exa-test-data-patient-2, mii-exa-test-data-patient-2-encounter-1, 2024-03-04T07:30:00+01:00, 2024-03-04T09:15:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-2-labrequest-1)
* valueQuantity = 9.2 $ucum#g/dL "gram per deciliter"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-2-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-2-labobs-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000010, 26515-7, Platelets [#/volume] in Blood, mii-exa-test-data-patient-2, mii-exa-test-data-patient-2-encounter-1, 2024-03-04T07:30:00+01:00, 2024-03-04T09:15:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-2-labrequest-1)
* valueQuantity = 120 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-2-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

// Patient-3 Labor-Observations
Instance: mii-exa-test-data-patient-3-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000011, 26464-8, Leukocytes [#/volume] in Blood, mii-exa-test-data-patient-3, mii-exa-test-data-patient-3-encounter-1, 2022-04-05T08:00:00+02:00, 2022-04-05T10:30:00+02:00)
* basedOn = Reference(mii-exa-test-data-patient-3-labrequest-1)
* valueQuantity = 12.5 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-3-labobs-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000012, 6768-6, Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma, mii-exa-test-data-patient-3, mii-exa-test-data-patient-3-encounter-1, 2022-04-05T08:00:00+02:00, 2022-04-05T10:30:00+02:00)
* basedOn = Reference(mii-exa-test-data-patient-3-labrequest-1)
* valueQuantity = 156 $ucum#U/L "unit per liter"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-3-labobs-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000013, 1975-2, Bilirubin.total [Mass/volume] in Serum or Plasma, mii-exa-test-data-patient-3, mii-exa-test-data-patient-3-encounter-1, 2022-04-05T08:00:00+02:00, 2022-04-05T10:30:00+02:00)
* basedOn = Reference(mii-exa-test-data-patient-3-labrequest-1)
* valueQuantity = 2.8 $ucum#mg/dL "milligram per deciliter"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

// Patient-4 Labor-Observations
Instance: mii-exa-test-data-patient-4-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000014, 26464-8, Leukocytes [#/volume] in Blood, mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-encounter-1, 2020-09-17T07:15:00+02:00, 2020-09-17T09:00:00+02:00)
* basedOn = Reference(mii-exa-test-data-patient-4-labrequest-1)
* valueQuantity = 8.2 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-4-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-4-labobs-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000015, 2160-0, Creatinine [Mass/volume] in Serum or Plasma, mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-encounter-1, 2020-09-17T07:15:00+02:00, 2020-09-17T09:00:00+02:00)
* basedOn = Reference(mii-exa-test-data-patient-4-labrequest-1)
* valueQuantity = 0.9 $ucum#mg/dL "milligram per deciliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-4-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-4-labobs-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000016, 14647-2, Cholesterol [Moles/volume] in Serum or Plasma, mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-encounter-1, 2020-09-17T07:15:00+02:00, 2020-09-17T09:00:00+02:00)
* basedOn = Reference(mii-exa-test-data-patient-4-labrequest-1)
* valueQuantity = 6.2 $ucum#mmol/L "millimole per liter"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-4-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

// Patient-5 Labor-Observations
Instance: mii-exa-test-data-patient-5-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000017, 26464-8, Leukocytes [#/volume] in Blood, mii-exa-test-data-patient-5, mii-exa-test-data-patient-5-encounter-1, 2023-07-12T06:45:00+02:00, 2023-07-12T08:30:00+02:00)
* basedOn = Reference(mii-exa-test-data-patient-5-labrequest-1)
* valueQuantity = 7.8 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-5-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-5-labobs-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000018, 718-7, Hemoglobin [Mass/volume] in Blood, mii-exa-test-data-patient-5, mii-exa-test-data-patient-5-encounter-1, 2023-07-12T06:45:00+02:00, 2023-07-12T08:30:00+02:00)
* basedOn = Reference(mii-exa-test-data-patient-5-labrequest-1)
* valueQuantity = 11.8 $ucum#g/dL "gram per deciliter"
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-5-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-5-labobs-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000019, 1558-6, Fasting glucose [Mass/volume] in Serum or Plasma, mii-exa-test-data-patient-5, mii-exa-test-data-patient-5-encounter-1, 2023-07-12T06:45:00+02:00, 2023-07-12T08:30:00+02:00)
* basedOn = Reference(mii-exa-test-data-patient-5-labrequest-1)
* valueQuantity = 92 $ucum#mg/dL "milligram per deciliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-5-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

// Patient-6 Labor-Observations
Instance: mii-exa-test-data-patient-6-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000020, 26464-8, Leukocytes [#/volume] in Blood, mii-exa-test-data-patient-6, mii-exa-test-data-patient-6-encounter-1, 2022-03-14T07:00:00+01:00, 2022-03-14T09:30:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-6-labrequest-1)
* valueQuantity = 9.1 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-6-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-6-labobs-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000021, 1742-6, Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma, mii-exa-test-data-patient-6, mii-exa-test-data-patient-6-encounter-1, 2022-03-14T07:00:00+01:00, 2022-03-14T09:30:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-6-labrequest-1)
* valueQuantity = 45 $ucum#U/L "unit per liter"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-6-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-6-labobs-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000022, 1920-8, Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma, mii-exa-test-data-patient-6, mii-exa-test-data-patient-6-encounter-1, 2022-03-14T07:00:00+01:00, 2022-03-14T09:30:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-6-labrequest-1)
* valueQuantity = 38 $ucum#U/L "unit per liter"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-6-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

// Patient-7 Labor-Observations
Instance: mii-exa-test-data-patient-7-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000023, 26464-8, Leukocytes [#/volume] in Blood, mii-exa-test-data-patient-7, mii-exa-test-data-patient-7-encounter-1, 2024-01-10T08:15:00+01:00, 2024-01-10T10:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-7-labrequest-1)
* valueQuantity = 15.2 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* note.text = "Erhöhte Leukozyten bei Infektion"
* specimen = Reference(mii-exa-test-data-patient-7-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-7-labobs-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000024, 718-7, Hemoglobin [Mass/volume] in Blood, mii-exa-test-data-patient-7, mii-exa-test-data-patient-7-encounter-1, 2024-01-10T08:15:00+01:00, 2024-01-10T10:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-7-labrequest-1)
* valueQuantity = 13.2 $ucum#g/dL "gram per deciliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-7-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-7-labobs-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000025, 1988-5, C reactive protein [Mass/volume] in Serum or Plasma, mii-exa-test-data-patient-7, mii-exa-test-data-patient-7-encounter-1, 2024-01-10T08:15:00+01:00, 2024-01-10T10:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-7-labrequest-1)
* valueQuantity = 25.6 $ucum#mg/L "milligram per liter"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-7-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

// Patient-8 Labor-Observations
Instance: mii-exa-test-data-patient-8-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000026, 26464-8, Leukocytes [#/volume] in Blood, mii-exa-test-data-patient-8, mii-exa-test-data-patient-8-encounter-1, 2023-11-12T06:30:00+01:00, 2023-11-12T08:15:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-8-labrequest-1)
* valueQuantity = 13.8 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-8-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-8-labobs-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000027, 6598-7, Troponin T.cardiac [Mass/volume] in Serum or Plasma, mii-exa-test-data-patient-8, mii-exa-test-data-patient-8-encounter-1, 2023-11-12T06:30:00+01:00, 2023-11-12T08:15:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-8-labrequest-1)
* valueQuantity = 2.8 $ucum#ng/mL "nanogram per milliliter"
* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* note.text = "Stark erhöhtes Troponin T bei Myokardinfarkt"
* specimen = Reference(mii-exa-test-data-patient-8-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-8-labobs-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000028, 2157-6, Creatine kinase.MB [Enzymatic activity/volume] in Serum or Plasma, mii-exa-test-data-patient-8, mii-exa-test-data-patient-8-encounter-1, 2023-11-12T06:30:00+01:00, 2023-11-12T08:15:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-8-labrequest-1)
* valueQuantity = 85 $ucum#U/L "unit per liter"
* interpretation = $v3-ObservationInterpretation#H "High"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-8-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

// Patient-9 Labor-Observations
Instance: mii-exa-test-data-patient-9-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000029, 26464-8, Leukocytes [#/volume] in Blood, mii-exa-test-data-patient-9, mii-exa-test-data-patient-9-encounter-1, 2024-02-22T07:15:00+01:00, 2024-02-22T09:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-9-labrequest-1)
* valueQuantity = 6.8 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-9-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-9-labobs-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000030, 718-7, Hemoglobin [Mass/volume] in Blood, mii-exa-test-data-patient-9, mii-exa-test-data-patient-9-encounter-1, 2024-02-22T07:15:00+01:00, 2024-02-22T09:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-9-labrequest-1)
* valueQuantity = 12.8 $ucum#g/dL "gram per deciliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-9-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-9-labobs-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000031, 33747-0, Estradiol [Moles/volume] in Serum or Plasma, mii-exa-test-data-patient-9, mii-exa-test-data-patient-9-encounter-1, 2024-02-22T07:15:00+01:00, 2024-02-22T09:00:00+01:00)
* basedOn = Reference(mii-exa-test-data-patient-9-labrequest-1)
* valueQuantity = 285 $ucum#pmol/L "picomole per liter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-9-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

// Patient-10 Labor-Observations
Instance: mii-exa-test-data-patient-10-labobs-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000032, 26464-8, Leukocytes [#/volume] in Blood, mii-exa-test-data-patient-10, mii-exa-test-data-patient-10-encounter-1, 2019-05-16T08:30:00+02:00, 2019-05-16T10:45:00+02:00)
* basedOn = Reference(mii-exa-test-data-patient-10-labrequest-1)
* valueQuantity = 8.9 $ucum#/nL "/nanoliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#703452004 "Electrical impedance technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-10-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-10-labobs-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000033, 718-7, Hemoglobin [Mass/volume] in Blood, mii-exa-test-data-patient-10, mii-exa-test-data-patient-10-encounter-1, 2019-05-16T08:30:00+02:00, 2019-05-16T10:45:00+02:00)
* basedOn = Reference(mii-exa-test-data-patient-10-labrequest-1)
* valueQuantity = 14.2 $ucum#g/dL "gram per deciliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-10-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)

Instance: mii-exa-test-data-patient-10-labobs-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
* insert AddLabObservation(LO_000034, 2160-0, Creatinine [Mass/volume] in Serum or Plasma, mii-exa-test-data-patient-10, mii-exa-test-data-patient-10-encounter-1, 2019-05-16T08:30:00+02:00, 2019-05-16T10:45:00+02:00)
* basedOn = Reference(mii-exa-test-data-patient-10-labrequest-1)
* valueQuantity = 1.1 $ucum#mg/dL "milligram per deciliter"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* method = $sct#83561000052101 "Photometry technique (qualifier value)"
* specimen = Reference(mii-exa-test-data-patient-10-specimen-1)
* device = Reference(mii-exa-test-data-device-roche-cobas-c303)