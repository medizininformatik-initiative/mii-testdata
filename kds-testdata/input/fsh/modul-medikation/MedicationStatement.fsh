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

Instance: mii-exa-test-data-patient-2-medstatement-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationStatements"
* identifier[0].value = "MS_0000005"
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
