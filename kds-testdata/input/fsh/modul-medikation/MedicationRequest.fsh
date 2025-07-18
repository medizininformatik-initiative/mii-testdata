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

// Patient-2 MedicationRequests
Instance: mii-exa-test-data-patient-2-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000006"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-morphin)
* subject = Reference(mii-exa-test-data-patient-2)
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* authoredOn = "2024-03-06T08:00:00+01:00"
* dosageInstruction.text = "Morphin 10mg alle 6 Stunden bei Bedarf"
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 10 $ucum#mg "mg"
* dosageInstruction.timing.repeat.frequency = 4
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.asNeededBoolean = true
* substitution.allowedBoolean = true

Instance: mii-exa-test-data-patient-2-medrequest-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000007"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-carboplatin)
* subject = Reference(mii-exa-test-data-patient-2)
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* authoredOn = "2024-03-07T10:00:00+01:00"
* dosageInstruction.text = "Carboplatin 450mg IV über 1 Stunde"
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.doseAndRate.doseQuantity = 450 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.numerator = 450 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 $ucum#h "h"
* substitution.allowedBoolean = false

Instance: mii-exa-test-data-patient-2-medrequest-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000008"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-paclitaxel)
* subject = Reference(mii-exa-test-data-patient-2)
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* authoredOn = "2024-03-07T10:30:00+01:00"
* dosageInstruction.text = "Paclitaxel 175mg IV über 3 Stunden"
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.doseAndRate.doseQuantity = 175 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.numerator = 175 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.denominator = 3 $ucum#h "h"
* substitution.allowedBoolean = false

// Patient-3 MedicationRequests
Instance: mii-exa-test-data-patient-3-medrequest-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000009"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-5-fluorouracil)
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* authoredOn = "2022-04-25T09:00:00+02:00"
* dosageInstruction.text = "5-FU 1000mg/m² IV über 46 Stunden"
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.doseAndRate.doseQuantity = 1000 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1000 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.denominator = 46 $ucum#h "h"
* substitution.allowedBoolean = false

Instance: mii-exa-test-data-patient-3-medrequest-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000010"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-oxaliplatin)
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* authoredOn = "2022-04-25T09:30:00+02:00"
* dosageInstruction.text = "Oxaliplatin 85mg/m² IV über 2 Stunden"
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.doseAndRate.doseQuantity = 85 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.numerator = 85 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.denominator = 2 $ucum#h "h"
* substitution.allowedBoolean = false

// Patient-4 MedicationRequests
Instance: mii-exa-test-data-patient-4-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000011"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-cisplatin)
* subject = Reference(mii-exa-test-data-patient-4)
* encounter = Reference(mii-exa-test-data-patient-4-encounter-1)
* authoredOn = "2020-09-17T14:00:00+02:00"
* dosageInstruction.text = "Cisplatin 75mg/m² IV über 2 Stunden"
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.doseAndRate.doseQuantity = 75 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.numerator = 75 $ucum#mg "mg"
* dosageInstruction.doseAndRate.rateRatio.denominator = 2 $ucum#h "h"
* substitution.allowedBoolean = false

Instance: mii-exa-test-data-patient-4-medrequest-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000012"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-omeprazol)
* subject = Reference(mii-exa-test-data-patient-4)
* encounter = Reference(mii-exa-test-data-patient-4-encounter-1)
* authoredOn = "2020-09-16T10:00:00+02:00"
* dosageInstruction.text = "Omeprazol 20mg 1x täglich morgens"
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 20 $ucum#mg "mg"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.when = #MORN
* substitution.allowedBoolean = true

// Patient-5 MedicationRequests
Instance: mii-exa-test-data-patient-5-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000013"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-leuprorelin)
* subject = Reference(mii-exa-test-data-patient-5)
* encounter = Reference(mii-exa-test-data-patient-5-encounter-1)
* authoredOn = "2023-07-11T09:00:00+02:00"
* dosageInstruction.text = "Leuprorelin 3,75mg s.c. alle 4 Wochen"
* dosageInstruction.route = $standardterms#20066000 "Subcutaneous use"
* dosageInstruction.doseAndRate.doseQuantity = 3.75 $ucum#mg "mg"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 4
* dosageInstruction.timing.repeat.periodUnit = #wk
* substitution.allowedBoolean = false

Instance: mii-exa-test-data-patient-5-medrequest-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000014"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-ibuprofen)
* subject = Reference(mii-exa-test-data-patient-5)
* encounter = Reference(mii-exa-test-data-patient-5-encounter-1)
* authoredOn = "2023-07-11T09:30:00+02:00"
* dosageInstruction.text = "Ibuprofen 400mg bis zu 3x täglich bei Bedarf"
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 400 $ucum#mg "mg"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.asNeededBoolean = true
* substitution.allowedBoolean = true

// Patient-6 MedicationRequests
Instance: mii-exa-test-data-patient-6-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000015"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-pantoprazol)
* subject = Reference(mii-exa-test-data-patient-6)
* encounter = Reference(mii-exa-test-data-patient-6-encounter-1)
* authoredOn = "2022-03-13T08:00:00+01:00"
* dosageInstruction.text = "Pantoprazol 40mg 1x täglich morgens"
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 40 $ucum#mg "mg"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.when = #MORN
* substitution.allowedBoolean = true

Instance: mii-exa-test-data-patient-6-medrequest-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000016"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-amoxicillin)
* subject = Reference(mii-exa-test-data-patient-6)
* encounter = Reference(mii-exa-test-data-patient-6-encounter-1)
* authoredOn = "2022-03-13T08:30:00+01:00"
* dosageInstruction.text = "Amoxicillin 500mg 3x täglich"
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 500 $ucum#mg "mg"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* substitution.allowedBoolean = true

Instance: mii-exa-test-data-patient-6-medrequest-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000017"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-clarithromycin)
* subject = Reference(mii-exa-test-data-patient-6)
* encounter = Reference(mii-exa-test-data-patient-6-encounter-1)
* authoredOn = "2022-03-13T08:30:00+01:00"
* dosageInstruction.text = "Clarithromycin 250mg 2x täglich"
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 250 $ucum#mg "mg"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* substitution.allowedBoolean = true

// Patient-7 MedicationRequests
Instance: mii-exa-test-data-patient-7-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000018"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-amoxicillin-clavulansaeure)
* subject = Reference(mii-exa-test-data-patient-7)
* encounter = Reference(mii-exa-test-data-patient-7-encounter-1)
* authoredOn = "2024-01-10T16:00:00+01:00"
* dosageInstruction.text = "Amoxicillin/Clavulansäure 1,2g IV alle 8 Stunden"
* dosageInstruction.route = $standardterms#20045000 "Intravenous use"
* dosageInstruction.doseAndRate.doseQuantity = 1.2 $ucum#g "g"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* substitution.allowedBoolean = false

Instance: mii-exa-test-data-patient-7-medrequest-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000019"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-salbutamol)
* subject = Reference(mii-exa-test-data-patient-7)
* encounter = Reference(mii-exa-test-data-patient-7-encounter-1)
* authoredOn = "2024-01-10T16:30:00+01:00"
* dosageInstruction.text = "Salbutamol 2 Hubs inhalativ bei Bedarf"
* dosageInstruction.route = $standardterms#20020000 "Inhalation use"
* dosageInstruction.doseAndRate.doseQuantity = 200 $ucum#ug "μg"
* dosageInstruction.asNeededBoolean = true
* substitution.allowedBoolean = true

// Patient-8 MedicationRequests
Instance: mii-exa-test-data-patient-8-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000020"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-heparin)
* subject = Reference(mii-exa-test-data-patient-8)
* encounter = Reference(mii-exa-test-data-patient-8-encounter-1)
* authoredOn = "2023-11-12T08:00:00+01:00"
* dosageInstruction.text = "Heparin 5000 IE s.c. alle 12 Stunden"
* dosageInstruction.route = $standardterms#20066000 "Subcutaneous use"
* dosageInstruction.doseAndRate.doseQuantity = 5000 $ucum#[iU] "IU"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* substitution.allowedBoolean = false

Instance: mii-exa-test-data-patient-8-medrequest-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000021"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-metoprolol)
* subject = Reference(mii-exa-test-data-patient-8)
* encounter = Reference(mii-exa-test-data-patient-8-encounter-1)
* authoredOn = "2023-11-12T08:30:00+01:00"
* dosageInstruction.text = "Metoprolol 50mg 2x täglich"
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 50 $ucum#mg "mg"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* substitution.allowedBoolean = true

Instance: mii-exa-test-data-patient-8-medrequest-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000022"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-atorvastatin)
* subject = Reference(mii-exa-test-data-patient-8)
* encounter = Reference(mii-exa-test-data-patient-8-encounter-1)
* authoredOn = "2023-11-12T09:00:00+01:00"
* dosageInstruction.text = "Atorvastatin 40mg 1x täglich abends"
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 40 $ucum#mg "mg"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.when = #EVE
* substitution.allowedBoolean = true

// Patient-9 MedicationRequests
Instance: mii-exa-test-data-patient-9-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000023"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-ethinylestradiol-levonorgestrel)
* subject = Reference(mii-exa-test-data-patient-9)
* encounter = Reference(mii-exa-test-data-patient-9-encounter-1)
* authoredOn = "2024-02-21T10:00:00+01:00"
* dosageInstruction.text = "Verhütungspille 1 Tablette täglich"
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 1 '1' "1"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* substitution.allowedBoolean = true

Instance: mii-exa-test-data-patient-9-medrequest-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000020"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-paracetamol)
* subject = Reference(mii-exa-test-data-patient-9)
* encounter = Reference(mii-exa-test-data-patient-9-encounter-1)
* authoredOn = "2024-02-22T16:00:00+01:00"
* dosageInstruction.text = "Paracetamol 500mg bis zu 4x täglich bei Bedarf"
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 500 $ucum#mg "mg"
* dosageInstruction.timing.repeat.frequency = 4
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.asNeededBoolean = true
* substitution.allowedBoolean = true

// Patient-10 MedicationRequests
Instance: mii-exa-test-data-patient-10-medrequest-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000024"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-sumatriptan)
* subject = Reference(mii-exa-test-data-patient-10)
* encounter = Reference(mii-exa-test-data-patient-10-encounter-1)
* authoredOn = "2019-05-15T14:00:00+02:00"
* dosageInstruction.text = "Sumatriptan 50mg bei Migräne-Attacke"
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 50 $ucum#mg "mg"
* dosageInstruction.asNeededBoolean = true
* substitution.allowedBoolean = true

Instance: mii-exa-test-data-patient-10-medrequest-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationOrders"
* identifier[0].value = "MO_0000025"
* status = #active
* intent = #order
* medicationReference = Reference(mii-exa-test-data-medication-topiramat)
* subject = Reference(mii-exa-test-data-patient-10)
* encounter = Reference(mii-exa-test-data-patient-10-encounter-1)
* authoredOn = "2019-05-16T09:00:00+02:00"
* dosageInstruction.text = "Topiramat 50mg 2x täglich zur Prophylaxe"
* dosageInstruction.route = $standardterms#20053000 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 50 $ucum#mg "mg"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* substitution.allowedBoolean = true