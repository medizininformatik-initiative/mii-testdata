// Patient-1
Instance: mii-exa-test-data-patient-1-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
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
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000002"
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