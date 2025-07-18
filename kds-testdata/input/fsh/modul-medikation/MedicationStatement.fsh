// MedicationStatement Patient-1
Instance: mii-exa-test-data-patient-1-medstatement-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000001"
* status = #active
* category.coding[usageCategory] = $medication-statement-category#outpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E210 "stationäre Aufnahme"
* medicationReference = Reference(mii-exa-test-data-medication-ass-100)
* subject = Reference(mii-exa-test-data-patient-1)
* context = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectivePeriod.start = "2020-08-30"
* dateAsserted = "2024-02-14"
* informationSource = Reference(mii-exa-test-data-patient-1)
* reasonCode = $sct#787930001 "Direct thrombin inhibitor prophylaxis indicated (situation)"
* dosage.route = $standardterms#20053000 "Oral use"
* dosage.text = "ASS 100 mg 1x täglich mittags eine Tablette oral"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.timing.repeat.when = #CD

Instance: mii-exa-test-data-patient-1-medstatement-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000002"
* basedOn = Reference(mii-exa-test-data-patient-1-medrequest-1)
* partOf = Reference(mii-exa-test-data-patient-1-prozedur-2)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-dalbavancin)
* subject = Reference(mii-exa-test-data-patient-1)
* context = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectivePeriod.start = "2024-02-16T10:20:00.000+01:00"
* effectivePeriod.end = "2024-02-16T10:50:00.000+01:00"
* dateAsserted = "2024-02-16"
* reasonReference = Reference(mii-exa-test-data-patient-1-diagnose-1)
* dosage.text = "Dalbavancin 1500 mg als 30-minütige Infusion"
* dosage.site.coding[SNOMED] = $sct#789218009 "Structure of dorsum of left hand (body structure)"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.route.coding[SNOMED] = $sct#47625008 "Intravenous route (qualifier value)"
* dosage.doseAndRate.doseQuantity = 1500 $ucum#mg "mg"
* dosage.doseAndRate.rateRatio.numerator = 1500 $ucum#mg "mg"
* dosage.doseAndRate.rateRatio.denominator = 30 $ucum#min "Minuten"

Instance: mii-exa-test-data-patient-1-medstatement-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000003"
* basedOn = Reference(mii-exa-test-data-patient-1-medrequest-3)
* status = #entered-in-error
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-propofol)
* subject = Reference(mii-exa-test-data-patient-1)
* context = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectivePeriod.start = "2024-02-20T09:55:00+01:00"
* dateAsserted = "2024-02-20"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.route.coding[SNOMED] = $sct#47625008 "Intravenous route (qualifier value)"
* dosage.doseAndRate.rateQuantity = 5 $ucum#mg/min

//Patient-2
Instance: mii-exa-test-data-patient-2-medstatement-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000007"
* basedOn = Reference(mii-exa-test-data-patient-2-medrequest-1)
* status = #active
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-morphin)
* subject = Reference(mii-exa-test-data-patient-2)
* context = Reference(mii-exa-test-data-patient-2-encounter-1)
* effectivePeriod.start = "2024-03-06T08:00:00+01:00"
* effectivePeriod.end = "2024-03-13T10:00:00+01:00"
* dateAsserted = "2024-03-06"
* dosage.text = "Morphin 10mg alle 6 Stunden bei Bedarf"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseQuantity = 10 $ucum#mg "mg"
* dosage.timing.repeat.frequency = 4
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.asNeededBoolean = true

Instance: mii-exa-test-data-patient-2-medstatement-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000008"
* basedOn = Reference(mii-exa-test-data-patient-2-medrequest-2)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-carboplatin)
* subject = Reference(mii-exa-test-data-patient-2)
* context = Reference(mii-exa-test-data-patient-2-encounter-1)
* effectivePeriod.start = "2024-03-07T10:00:00+01:00"
* effectivePeriod.end = "2024-03-07T11:00:00+01:00"
* dateAsserted = "2024-03-07"
* dosage.text = "Carboplatin 450mg IV über 1 Stunde"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.doseAndRate.doseQuantity = 450 $ucum#mg "mg"
* dosage.doseAndRate.rateRatio.numerator = 450 $ucum#mg "mg"
* dosage.doseAndRate.rateRatio.denominator = 1 $ucum#h "h"

Instance: mii-exa-test-data-patient-2-medstatement-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000009"
* basedOn = Reference(mii-exa-test-data-patient-2-medrequest-3)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-paclitaxel)
* subject = Reference(mii-exa-test-data-patient-2)
* context = Reference(mii-exa-test-data-patient-2-encounter-1)
* effectivePeriod.start = "2024-03-07T10:30:00+01:00"
* effectivePeriod.end = "2024-03-07T13:30:00+01:00"
* dateAsserted = "2024-03-07"
* dosage.text = "Paclitaxel 175mg IV über 3 Stunden"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.doseAndRate.doseQuantity = 175 $ucum#mg "mg"
* dosage.doseAndRate.rateRatio.numerator = 175 $ucum#mg "mg"
* dosage.doseAndRate.rateRatio.denominator = 3 $ucum#h "h"

Instance: mii-exa-test-data-patient-2-medstatement-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000004"
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationCodeableConcept.coding[atcClassDe] = $atc|2023#B05AX01 "Erythrozyten"
* subject = Reference(mii-exa-test-data-patient-2)
* effectiveDateTime = "2022-08-01"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.route.coding[SNOMED] = $sct#47625008 "Intravenous route (qualifier value)"
* dosage.doseAndRate.rateRange.low = 150 $ucum#mL/h
* dosage.doseAndRate.rateRange.high = 300 $ucum#mL/h

Instance: mii-exa-test-data-patient-2-medstatement-5
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000028"
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationCodeableConcept.coding[atcClassDe] = $atc|2023#B05AX01 "Erythrozyten"
* subject = Reference(mii-exa-test-data-patient-2)
* effectiveDateTime = "2022-08-02"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.route.coding[SNOMED] = $sct#47625008 "Intravenous route (qualifier value)"
* dosage.doseAndRate.rateRatio.numerator = 150 $ucum#mL
* dosage.doseAndRate.rateRatio.denominator = 1 $ucum#h

// Patient-3
Instance: mii-exa-test-data-patient-3-medstatement-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000006"
* basedOn = Reference(mii-exa-test-data-patient-3-medrequest-1)
* status = #unknown
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-metamizol)
* subject = Reference(mii-exa-test-data-patient-3)
* context = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectivePeriod.start = "2022-04-12T11:32:00+01:00"
* dateAsserted = "2022-04-12"
* dosage.asNeededBoolean = true
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseRange.low = 500 $ucum#mg "mg"
* dosage.doseAndRate.doseRange.high = 1000 $ucum#mg "mg"
* dosage.maxDosePerPeriod.numerator = 5000 $ucum#mg "mg"
* dosage.maxDosePerPeriod.denominator = 24 $ucum#h "Stunden"
* dosage.maxDosePerAdministration = 1000 $ucum#mg "mg"

// Patient-3 MedicationStatements
Instance: mii-exa-test-data-patient-3-medstatement-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000010"
* basedOn = Reference(mii-exa-test-data-patient-3-medrequest-2)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-5-fluorouracil)
* subject = Reference(mii-exa-test-data-patient-3)
* context = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectivePeriod.start = "2022-04-25T09:00:00+02:00"
* effectivePeriod.end = "2022-04-27T07:00:00+02:00"
* dateAsserted = "2022-04-25"
* dosage.text = "5-FU 1000mg/m² IV über 46 Stunden"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.doseAndRate.doseQuantity = 1000 $ucum#mg "mg"
* dosage.doseAndRate.rateRatio.numerator = 1000 $ucum#mg "mg"
* dosage.doseAndRate.rateRatio.denominator = 46 $ucum#h "h"

Instance: mii-exa-test-data-patient-3-medstatement-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000011"
* basedOn = Reference(mii-exa-test-data-patient-3-medrequest-3)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-oxaliplatin)
* subject = Reference(mii-exa-test-data-patient-3)
* context = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectivePeriod.start = "2022-04-25T09:30:00+02:00"
* effectivePeriod.end = "2022-04-25T11:30:00+02:00"
* dateAsserted = "2022-04-25"
* dosage.text = "Oxaliplatin 85mg/m² IV über 2 Stunden"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.doseAndRate.doseQuantity = 85 $ucum#mg "mg"
* dosage.doseAndRate.rateRatio.numerator = 85 $ucum#mg "mg"
* dosage.doseAndRate.rateRatio.denominator = 2 $ucum#h "h"

Instance: mii-exa-test-data-patient-3-medstatement-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000026"
//* basedOn = Reference(mii-exa-test-data-patient-3-medrequest-1)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-rezeptur-doxorubicin)
* subject = Reference(mii-exa-test-data-patient-3)
* context = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectivePeriod.start = "2022-04-14T13:43:00+01:00"
* effectivePeriod.end = "2022-04-14T14:43:00+01:00"
* dateAsserted = "2022-04-14"
* dosage.doseAndRate.doseQuantity = 50 'mg/kg' "mg/kilogram"
* dosage.route = $standardterms#20045000 "Intravenous use"
* dosage.text = "Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 4
* dosage.timing.repeat.periodUnit = #wk

// Patient-4 MedicationStatements
Instance: mii-exa-test-data-patient-4-medstatement-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000012"
* basedOn = Reference(mii-exa-test-data-patient-4-medrequest-1)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-cisplatin)
* subject = Reference(mii-exa-test-data-patient-4)
* context = Reference(mii-exa-test-data-patient-4-encounter-1)
* effectivePeriod.start = "2020-09-17T14:00:00+02:00"
* effectivePeriod.end = "2020-09-17T16:00:00+02:00"
* dateAsserted = "2020-09-17"
* dosage.text = "Cisplatin 75mg/m² IV über 2 Stunden"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.doseAndRate.doseQuantity = 75 $ucum#mg "mg"
* dosage.doseAndRate.rateRatio.numerator = 75 $ucum#mg "mg"
* dosage.doseAndRate.rateRatio.denominator = 2 $ucum#h "h"

Instance: mii-exa-test-data-patient-4-medstatement-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000013"
* basedOn = Reference(mii-exa-test-data-patient-4-medrequest-2)
* status = #active
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-omeprazol)
* subject = Reference(mii-exa-test-data-patient-4)
* context = Reference(mii-exa-test-data-patient-4-encounter-1)
* effectivePeriod.start = "2020-09-16T10:00:00+02:00"
* effectivePeriod.end = "2020-09-25T10:00:00+02:00"
* dateAsserted = "2020-09-16"
* dosage.text = "Omeprazol 20mg 1x täglich morgens"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseQuantity = 20 $ucum#mg "mg"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.timing.repeat.when = #MORN

// Patient-5 MedicationStatements
Instance: mii-exa-test-data-patient-5-medstatement-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000014"
* basedOn = Reference(mii-exa-test-data-patient-5-medrequest-1)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-leuprorelin)
* subject = Reference(mii-exa-test-data-patient-5)
* context = Reference(mii-exa-test-data-patient-5-encounter-1)
* effectivePeriod.start = "2023-07-11T09:00:00+02:00"
* effectivePeriod.end = "2023-07-11T09:05:00+02:00"
* dateAsserted = "2023-07-11"
* dosage.text = "Leuprorelin 3,75mg s.c. alle 4 Wochen"
* dosage.route.coding[EDQM] = $standardterms#20066000 "Subcutaneous use"
* dosage.doseAndRate.doseQuantity = 3.75 $ucum#mg "mg"

Instance: mii-exa-test-data-patient-5-medstatement-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000015"
* basedOn = Reference(mii-exa-test-data-patient-5-medrequest-2)
* status = #active
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-ibuprofen)
* subject = Reference(mii-exa-test-data-patient-5)
* context = Reference(mii-exa-test-data-patient-5-encounter-1)
* effectivePeriod.start = "2023-07-11T09:30:00+02:00"
* effectivePeriod.end = "2023-07-18T10:00:00+02:00"
* dateAsserted = "2023-07-11"
* dosage.text = "Ibuprofen 400mg bis zu 3x täglich bei Bedarf"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseQuantity = 400 $ucum#mg "mg"
* dosage.timing.repeat.frequency = 3
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.asNeededBoolean = true

// Patient-6 MedicationStatements
Instance: mii-exa-test-data-patient-6-medstatement-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000016"
* basedOn = Reference(mii-exa-test-data-patient-6-medrequest-1)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-pantoprazol)
* subject = Reference(mii-exa-test-data-patient-6)
* context = Reference(mii-exa-test-data-patient-6-encounter-1)
* effectivePeriod.start = "2022-03-13T08:00:00+01:00"
* effectivePeriod.end = "2022-03-20T08:00:00+01:00"
* dateAsserted = "2022-03-13"
* dosage.text = "Pantoprazol 40mg 1x täglich morgens"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseQuantity = 40 $ucum#mg "mg"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.timing.repeat.when = #MORN

Instance: mii-exa-test-data-patient-6-medstatement-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000017"
* basedOn = Reference(mii-exa-test-data-patient-6-medrequest-2)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-amoxicillin)
* subject = Reference(mii-exa-test-data-patient-6)
* context = Reference(mii-exa-test-data-patient-6-encounter-1)
* effectivePeriod.start = "2022-03-13T08:30:00+01:00"
* effectivePeriod.end = "2022-03-20T08:30:00+01:00"
* dateAsserted = "2022-03-13"
* dosage.text = "Amoxicillin 500mg 3x täglich"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseQuantity = 500 $ucum#mg "mg"
* dosage.timing.repeat.frequency = 3
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d

Instance: mii-exa-test-data-patient-6-medstatement-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000018"
* basedOn = Reference(mii-exa-test-data-patient-6-medrequest-3)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-clarithromycin)
* subject = Reference(mii-exa-test-data-patient-6)
* context = Reference(mii-exa-test-data-patient-6-encounter-1)
* effectivePeriod.start = "2022-03-13T08:30:00+01:00"
* effectivePeriod.end = "2022-03-20T08:30:00+01:00"
* dateAsserted = "2022-03-13"
* dosage.text = "Clarithromycin 250mg 2x täglich"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseQuantity = 250 $ucum#mg "mg"
* dosage.timing.repeat.frequency = 2
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d

// Patient-7 MedicationStatements
Instance: mii-exa-test-data-patient-7-medstatement-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000019"
* basedOn = Reference(mii-exa-test-data-patient-7-medrequest-1)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-amoxicillin-clavulansaeure)
* subject = Reference(mii-exa-test-data-patient-7)
* context = Reference(mii-exa-test-data-patient-7-encounter-1)
* effectivePeriod.start = "2024-01-10T16:00:00+01:00"
* effectivePeriod.end = "2024-01-17T12:00:00+01:00"
* dateAsserted = "2024-01-10"
* dosage.text = "Amoxicillin/Clavulansäure 1,2g IV alle 8 Stunden"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.doseAndRate.doseQuantity = 1.2 $ucum#g "g"
* dosage.timing.repeat.frequency = 3
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d

Instance: mii-exa-test-data-patient-7-medstatement-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000020"
* basedOn = Reference(mii-exa-test-data-patient-7-medrequest-2)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-salbutamol)
* subject = Reference(mii-exa-test-data-patient-7)
* context = Reference(mii-exa-test-data-patient-7-encounter-1)
* effectivePeriod.start = "2024-01-10T16:30:00+01:00"
* effectivePeriod.end = "2024-01-15T12:00:00+01:00"
* dateAsserted = "2024-01-10"
* dosage.text = "Salbutamol 2 Hubs inhalativ bei Bedarf"
* dosage.route.coding[EDQM] = $standardterms#20020000 "Inhalation use"
* dosage.doseAndRate.doseQuantity = 200 $ucum#ug "μg"
* dosage.asNeededBoolean = true

// Patient-8 MedicationStatements
Instance: mii-exa-test-data-patient-8-medstatement-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000021"
* basedOn = Reference(mii-exa-test-data-patient-8-medrequest-1)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-heparin)
* subject = Reference(mii-exa-test-data-patient-8)
* context = Reference(mii-exa-test-data-patient-8-encounter-1)
* effectivePeriod.start = "2023-11-12T08:00:00+01:00"
* effectivePeriod.end = "2023-11-15T14:00:00+01:00"
* dateAsserted = "2023-11-12"
* dosage.text = "Heparin 5000 IE s.c. alle 12 Stunden"
* dosage.route.coding[EDQM] = $standardterms#20066000 "Subcutaneous use"
* dosage.doseAndRate.doseQuantity = 5000 $ucum#[iU] "IU"
* dosage.timing.repeat.frequency = 2
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d

Instance: mii-exa-test-data-patient-8-medstatement-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000022"
* basedOn = Reference(mii-exa-test-data-patient-8-medrequest-2)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-metoprolol)
* subject = Reference(mii-exa-test-data-patient-8)
* context = Reference(mii-exa-test-data-patient-8-encounter-1)
* effectivePeriod.start = "2023-11-12T08:30:00+01:00"
* effectivePeriod.end = "2023-11-15T14:00:00+01:00"
* dateAsserted = "2023-11-12"
* dosage.text = "Metoprolol 50mg 2x täglich"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseQuantity = 50 $ucum#mg "mg"
* dosage.timing.repeat.frequency = 2
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d

Instance: mii-exa-test-data-patient-8-medstatement-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000023"
* basedOn = Reference(mii-exa-test-data-patient-8-medrequest-3)
* status = #completed
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-atorvastatin)
* subject = Reference(mii-exa-test-data-patient-8)
* context = Reference(mii-exa-test-data-patient-8-encounter-1)
* effectivePeriod.start = "2023-11-12T09:00:00+01:00"
* effectivePeriod.end = "2023-11-15T14:00:00+01:00"
* dateAsserted = "2023-11-12"
* dosage.text = "Atorvastatin 40mg 1x täglich abends"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseQuantity = 40 $ucum#mg "mg"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.timing.repeat.when = #EVE

// Patient-9 MedicationStatements
Instance: mii-exa-test-data-patient-9-medstatement-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000024"
* basedOn = Reference(mii-exa-test-data-patient-9-medrequest-1)
* status = #active
* category.coding[usageCategory] = $medication-statement-category#outpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E210 "stationäre Aufnahme"
* medicationReference = Reference(mii-exa-test-data-medication-ethinylestradiol-levonorgestrel)
* subject = Reference(mii-exa-test-data-patient-9)
* context = Reference(mii-exa-test-data-patient-9-encounter-1)
* effectivePeriod.start = "2024-01-01T08:00:00+01:00"
* effectivePeriod.end = "2024-02-28T08:00:00+01:00"
* dateAsserted = "2024-02-21"
* dosage.text = "Verhütungspille 1 Tablette täglich"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseQuantity = 1 '1' "1"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d

Instance: mii-exa-test-data-patient-9-medstatement-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000019"
* status = #active
* category = $medication-statement-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-paracetamol)
* subject = Reference(mii-exa-test-data-patient-9)
* context = Reference(mii-exa-test-data-patient-9-encounter-1)
* effectiveDateTime = "2024-02-22T16:00:00+01:00"
* dosage.text = "Paracetamol 500mg bei Bedarf"
* dosage.route = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseQuantity = 500 $ucum#mg "mg"
* dosage.timing.repeat.frequency = 4
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.asNeededBoolean = true

// Patient-10 MedicationStatements
Instance: mii-exa-test-data-patient-10-medstatement-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000025"
* basedOn = Reference(mii-exa-test-data-patient-10-medrequest-1)
* status = #active
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-sumatriptan)
* subject = Reference(mii-exa-test-data-patient-10)
* context = Reference(mii-exa-test-data-patient-10-encounter-1)
* effectivePeriod.start = "2019-05-15T14:00:00+02:00"
* effectivePeriod.end = "2019-05-22T10:00:00+02:00"
* dateAsserted = "2019-05-15"
* dosage.text = "Sumatriptan 50mg bei Migräne-Attacke"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseQuantity = 50 $ucum#mg "mg"
* dosage.asNeededBoolean = true

Instance: mii-exa-test-data-patient-10-medstatement-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000026"
* basedOn = Reference(mii-exa-test-data-patient-10-medrequest-2)
* status = #active
* category.coding[usageCategory] = $medication-statement-category#inpatient
* category.coding[contextCode] = $FallkontextBeiDokumentenerstellung#E200 "stationärer Aufenthalt"
* medicationReference = Reference(mii-exa-test-data-medication-topiramat)
* subject = Reference(mii-exa-test-data-patient-10)
* context = Reference(mii-exa-test-data-patient-10-encounter-1)
* effectivePeriod.start = "2019-05-16T09:00:00+02:00"
* effectivePeriod.end = "2019-05-22T10:00:00+02:00"
* dateAsserted = "2019-05-16"
* dosage.text = "Topiramat 50mg 2x täglich zur Prophylaxe"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.doseQuantity = 50 $ucum#mg "mg"
* dosage.timing.repeat.frequency = 2
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
