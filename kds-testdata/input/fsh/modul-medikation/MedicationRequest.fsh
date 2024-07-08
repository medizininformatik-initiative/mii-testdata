// Patient-1
Instance: mii-exa-test-data-patient-1-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000001"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-dalbavancin)
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* authoredOn = "2024-02-16T08:37:00+01:00"
* dosageInstruction.text = "Dalbavancin 1500 mg als 30-minütige Infusion"
* dosageInstruction.timing.event = "2024-02-16"
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.doseAndRate.doseQuantity = 1500 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1500 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.denominator = 30 $ucum#min "Minuten"
* dosageInstruction.maxDosePerAdministration = 1500 $ucum#mg "mg"
* substitution.allowedBoolean = false 

Instance: mii-exa-test-data-patient-1-medrequest-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000002"
* status = #active
* intent = #option
* medicationReference = Reference(mii-exa-test-data-medication-dalbavancin)
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* authoredOn = "2024-02-16T08:37:00+01:00"
* dosageInstruction.text = "Dalbavancin 1500 mg als 30-minütige Infusion"
* dosageInstruction.timing.event = "2024-02-16"
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.doseAndRate.doseQuantity = 1500 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRange.low = 60 $ucum#mL/h 
* dosageInstruction.doseAndRate.rateRange.high = 120 $ucum#mL/h
* priorPrescription = Reference(mii-exa-test-data-patient-1-medrequest-1)

Instance: mii-exa-test-data-patient-1-medrequest-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000003"
* status = #cancelled
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-propofol)
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-2)
* authoredOn = "2024-02-20T09:55:00+01:00"
* dosageInstruction.text = "Propofol 6.5 mg/min IV via Perfusor"
* dosageInstruction.timing.event = "2024-02-20T10:00:00+01:00"
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.method = $sct#129331004 "Perfusion - action (qualifier value)"
* dosageInstruction.doseAndRate.rateQuantity = 5 $ucum#mg/min

Instance: mii-exa-test-data-patient-1-medrequest-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000004"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-propofol)
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-2)
* authoredOn = "2024-02-20T10:00:00+01:00"
* dosageInstruction.text = "Propofol 6.5 mg/min IV via Perfusor"
* dosageInstruction.timing.event = "2024-02-20T10:00:00+01:00"
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.method = $sct#129331004 "Perfusion - action (qualifier value)"
* dosageInstruction.doseAndRate.rateRatio.numerator = 6.5 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 $ucum#min "Minuten"
* priorPrescription = Reference(mii-exa-test-data-patient-1-medrequest-2)

//Patient-3
Instance: mii-exa-test-data-patient-3-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000005"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-metamizol)
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* authoredOn = "2022-04-12T11:32:00+01:00"
* dosageInstruction.text = "Die Einzeldosis 500-1000 mg, Tageshöchstdosis 5000 mg"
* dosageInstruction.asNeededBoolean = true
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseRange.low = 500 $ucum#mg "mg"
* dosageInstruction.doseAndRate.doseRange.high = 1000 $ucum#mg "mg"
* dosageInstruction.maxDosePerPeriod.numerator = 5000 $ucum#mg "mg"
* dosageInstruction.maxDosePerPeriod.denominator = 24 $ucum#h "Stunden"
* dosageInstruction.maxDosePerAdministration = 1000 $ucum#mg "mg"
* substitution.allowedBoolean = true