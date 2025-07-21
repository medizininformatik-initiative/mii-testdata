// Patient-1
Instance: mii-exa-test-data-patient-1-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Dalbavancin 1500 mg als 30-minütige Infusion"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000001"
* partOf = Reference(mii-exa-test-data-patient-1-prozedur-2)
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-dalbavancin)
* subject = Reference(mii-exa-test-data-patient-1)
* context = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectivePeriod.start = "2024-02-16T10:20:00.000+01:00"
* effectivePeriod.end = "2024-02-16T10:50:00.000+01:00"
* request = Reference(mii-exa-test-data-patient-1-medrequest-1)
* note.text = "wie angeordnet verabreicht"
* dosage.text = "Dalbavancin 1500 mg als 30-minütige Infusion"
* dosage.site.coding[SNOMED] = $sct#789218009 "Structure of dorsum of left hand (body structure)"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.route.coding[SNOMED] = $sct#47625008 "Intravenous route (qualifier value)"
* dosage.dose = 1500 $ucum#mg "mg"
* dosage.rateRatio.numerator = 1500 $ucum#mg "mg"
* dosage.rateRatio.denominator = 30 $ucum#min "Minuten"

Instance: mii-exa-test-data-patient-1-medadmin-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Abgebrochen - Dalbavancin 1500 mg als 30-minütige Infusion"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000002"
* partOf = Reference(mii-exa-test-data-patient-1-prozedur-2)
* status = #entered-in-error
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-dalbavancin)
* subject = Reference(mii-exa-test-data-patient-1)
* context = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectivePeriod.start = "2024-02-16T10:20:00.000+01:00"
* request = Reference(mii-exa-test-data-patient-1-medrequest-1)
* note.text = "abgebrochen fehlerhafte Eingabe"
* dosage.text = "Dalbavancin 1500 mg als 30-minütige Infusion"
* dosage.site.coding[SNOMED] = $sct#789218009 "Structure of dorsum of left hand (body structure)"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.route.coding[SNOMED] = $sct#47625008 "Intravenous route (qualifier value)"
* dosage.dose = 1500 $ucum#mg "mg"
* dosage.rateQuantity = 1500 $ucum#mg/h "mg/Stunde"

// Patient-2 MedicationAdministrations
Instance: mii-exa-test-data-patient-2-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Morphin 10 mg oral bei Schmerzen"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000003"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-morphin)
* subject = Reference(mii-exa-test-data-patient-2)
* context = Reference(mii-exa-test-data-patient-2-encounter-1)
* effectiveDateTime = "2024-03-06T14:00:00+01:00"
* request = Reference(mii-exa-test-data-patient-2-medrequest-1)
* dosage.text = "Morphin 10mg oral bei Schmerzen"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.dose = 10 $ucum#mg "mg"

Instance: mii-exa-test-data-patient-2-medadmin-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Carboplatin 450 mg IV über 1 Stunde"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000004"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-carboplatin)
* subject = Reference(mii-exa-test-data-patient-2)
* context = Reference(mii-exa-test-data-patient-2-encounter-1)
* effectivePeriod.start = "2024-03-07T10:00:00+01:00"
* effectivePeriod.end = "2024-03-07T11:00:00+01:00"
* request = Reference(mii-exa-test-data-patient-2-medrequest-2)
* dosage.text = "Carboplatin 450mg IV über 1 Stunde"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.dose = 450 $ucum#mg "mg"
* dosage.rateRatio.numerator = 450 $ucum#mg "mg"
* dosage.rateRatio.denominator = 1 $ucum#h "h"

Instance: mii-exa-test-data-patient-2-medadmin-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Paclitaxel 175 mg IV über 3 Stunden"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000005"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-paclitaxel)
* subject = Reference(mii-exa-test-data-patient-2)
* context = Reference(mii-exa-test-data-patient-2-encounter-1)
* effectivePeriod.start = "2024-03-07T10:30:00+01:00"
* effectivePeriod.end = "2024-03-07T13:30:00+01:00"
* request = Reference(mii-exa-test-data-patient-2-medrequest-3)
* dosage.text = "Paclitaxel 175mg IV über 3 Stunden"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.dose = 175 $ucum#mg "mg"
* dosage.rateRatio.numerator = 175 $ucum#mg "mg"
* dosage.rateRatio.denominator = 3 $ucum#h "h"

// Patient-3 MedicationAdministrations
Instance: mii-exa-test-data-patient-3-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Metamizol 500 mg oral bei Schmerzen"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000006"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-metamizol)
* subject = Reference(mii-exa-test-data-patient-3)
* context = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectiveDateTime = "2022-04-12T14:00:00+02:00"
* request = Reference(mii-exa-test-data-patient-3-medrequest-1)
* dosage.text = "Metamizol 500mg oral bei Schmerzen"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.dose = 500 $ucum#mg "mg"

Instance: mii-exa-test-data-patient-3-medadmin-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: 5-FU 1000 mg IV über 46 Stunden"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000007"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-5-fluorouracil)
* subject = Reference(mii-exa-test-data-patient-3)
* context = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectivePeriod.start = "2022-04-25T09:00:00+02:00"
* effectivePeriod.end = "2022-04-27T07:00:00+02:00"
* request = Reference(mii-exa-test-data-patient-3-medrequest-2)
* dosage.text = "5-FU 1000mg IV über 46 Stunden"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.dose = 1000 $ucum#mg "mg"
* dosage.rateRatio.numerator = 1000 $ucum#mg "mg"
* dosage.rateRatio.denominator = 46 $ucum#h "h"

Instance: mii-exa-test-data-patient-3-medadmin-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Oxaliplatin 85mg IV über 2 Stunden"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000008"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-oxaliplatin)
* subject = Reference(mii-exa-test-data-patient-3)
* context = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectivePeriod.start = "2022-04-25T09:30:00+02:00"
* effectivePeriod.end = "2022-04-25T11:30:00+02:00"
* request = Reference(mii-exa-test-data-patient-3-medrequest-3)
* dosage.text = "Oxaliplatin 85mg IV über 2 Stunden"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.dose = 85 $ucum#mg "mg"
* dosage.rateRatio.numerator = 85 $ucum#mg "mg"
* dosage.rateRatio.denominator = 2 $ucum#h "h"

// Patient-4 MedicationAdministrations
Instance: mii-exa-test-data-patient-4-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Cisplatin 75mg IV über 2 Stunden"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000009"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-cisplatin)
* subject = Reference(mii-exa-test-data-patient-4)
* context = Reference(mii-exa-test-data-patient-4-encounter-1)
* effectivePeriod.start = "2020-09-17T14:00:00+02:00"
* effectivePeriod.end = "2020-09-17T16:00:00+02:00"
* request = Reference(mii-exa-test-data-patient-4-medrequest-1)
* dosage.text = "Cisplatin 75mg IV über 2 Stunden"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.dose = 75 $ucum#mg "mg"
* dosage.rateRatio.numerator = 75 $ucum#mg "mg"
* dosage.rateRatio.denominator = 2 $ucum#h "h"

Instance: mii-exa-test-data-patient-4-medadmin-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Omeprazol 20mg oral morgens"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000010"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-omeprazol)
* subject = Reference(mii-exa-test-data-patient-4)
* context = Reference(mii-exa-test-data-patient-4-encounter-1)
* effectiveDateTime = "2020-09-16T10:00:00+02:00"
* request = Reference(mii-exa-test-data-patient-4-medrequest-2)
* dosage.text = "Omeprazol 20mg oral morgens"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.dose = 20 $ucum#mg "mg"

// Patient-5 MedicationAdministrations
Instance: mii-exa-test-data-patient-5-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Leuprorelin 3,75mg s.c."
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000011"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-leuprorelin)
* subject = Reference(mii-exa-test-data-patient-5)
* context = Reference(mii-exa-test-data-patient-5-encounter-1)
* effectiveDateTime = "2023-07-11T09:00:00+02:00"
* request = Reference(mii-exa-test-data-patient-5-medrequest-1)
* dosage.text = "Leuprorelin 3,75mg s.c."
* dosage.route.coding[EDQM] = $standardterms#20066000 "Subcutaneous use"
* dosage.dose = 3.75 $ucum#mg "mg"

Instance: mii-exa-test-data-patient-5-medadmin-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Ibuprofen 400mg oral bei Schmerzen"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000012"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-ibuprofen)
* subject = Reference(mii-exa-test-data-patient-5)
* context = Reference(mii-exa-test-data-patient-5-encounter-1)
* effectiveDateTime = "2023-07-11T15:00:00+02:00"
* request = Reference(mii-exa-test-data-patient-5-medrequest-2)
* dosage.text = "Ibuprofen 400mg oral bei Schmerzen"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.dose = 400 $ucum#mg "mg"

// Patient-6 MedicationAdministrations
Instance: mii-exa-test-data-patient-6-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Pantoprazol 40mg oral morgens"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000013"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-pantoprazol)
* subject = Reference(mii-exa-test-data-patient-6)
* context = Reference(mii-exa-test-data-patient-6-encounter-1)
* effectiveDateTime = "2022-03-13T08:00:00+01:00"
* request = Reference(mii-exa-test-data-patient-6-medrequest-1)
* dosage.text = "Pantoprazol 40mg oral morgens"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.dose = 40 $ucum#mg "mg"

Instance: mii-exa-test-data-patient-6-medadmin-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Amoxicillin 500mg oral"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000014"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-amoxicillin)
* subject = Reference(mii-exa-test-data-patient-6)
* context = Reference(mii-exa-test-data-patient-6-encounter-1)
* effectiveDateTime = "2022-03-13T09:00:00+01:00"
* request = Reference(mii-exa-test-data-patient-6-medrequest-2)
* dosage.text = "Amoxicillin 500mg oral"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.dose = 500 $ucum#mg "mg"

// Patient-7 MedicationAdministrations
Instance: mii-exa-test-data-patient-7-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Amoxicillin/Clavulansäure 1,2g IV"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000015"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-amoxicillin-clavulansaeure)
* subject = Reference(mii-exa-test-data-patient-7)
* context = Reference(mii-exa-test-data-patient-7-encounter-1)
* effectiveDateTime = "2024-01-10T16:00:00+01:00"
* request = Reference(mii-exa-test-data-patient-7-medrequest-1)
* dosage.text = "Amoxicillin/Clavulansäure 1,2g IV"
* dosage.route.coding[EDQM] = $standardterms#20045000 "Intravenous use"
* dosage.dose = 1.2 $ucum#g "g"

Instance: mii-exa-test-data-patient-7-medadmin-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Salbutamol 200μg inhalativ"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000016"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-salbutamol)
* subject = Reference(mii-exa-test-data-patient-7)
* context = Reference(mii-exa-test-data-patient-7-encounter-1)
* effectiveDateTime = "2024-01-10T18:00:00+01:00"
* request = Reference(mii-exa-test-data-patient-7-medrequest-2)
* dosage.text = "Salbutamol 2 Hubs inhalativ"
* dosage.route.coding[EDQM] = $standardterms#20020000 "Inhalation use"
* dosage.dose = 200 $ucum#ug "μg"

// Patient-8 MedicationAdministrations
Instance: mii-exa-test-data-patient-8-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Heparin 5000 IE s.c."
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000017"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-heparin)
* subject = Reference(mii-exa-test-data-patient-8)
* context = Reference(mii-exa-test-data-patient-8-encounter-1)
* effectiveDateTime = "2023-11-12T08:00:00+01:00"
* request = Reference(mii-exa-test-data-patient-8-medrequest-1)
* dosage.text = "Heparin 5000 IE s.c."
* dosage.route.coding[EDQM] = $standardterms#20066000 "Subcutaneous use"
* dosage.dose = 5000 $ucum#[iU] "IU"

Instance: mii-exa-test-data-patient-8-medadmin-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Metoprolol 50mg oral"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000018"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-metoprolol)
* subject = Reference(mii-exa-test-data-patient-8)
* context = Reference(mii-exa-test-data-patient-8-encounter-1)
* effectiveDateTime = "2023-11-12T09:00:00+01:00"
* request = Reference(mii-exa-test-data-patient-8-medrequest-2)
* dosage.text = "Metoprolol 50mg oral"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.dose = 50 $ucum#mg "mg"

Instance: mii-exa-test-data-patient-8-medadmin-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Atorvastatin 80mg oral zur Nacht"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000021"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-atorvastatin)
* subject = Reference(mii-exa-test-data-patient-8)
* context = Reference(mii-exa-test-data-patient-8-encounter-1)
* effectiveDateTime = "2023-11-12T20:00:00+01:00"
* request = Reference(mii-exa-test-data-patient-8-medrequest-3)
* dosage.text = "Atorvastatin 80mg oral zur Nacht"
* dosage.site.coding[SNOMED] = $sct#74262004 "Oral cavity structure (body structure)"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.dose.value = 80
* dosage.dose.unit = "mg"
* dosage.dose.system = $ucum
* dosage.dose.code = #mg

// Patient-9 MedicationAdministrations
Instance: mii-exa-test-data-patient-9-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Verhütungspille 1 Tablette oral"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000019"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-ethinylestradiol-levonorgestrel)
* subject = Reference(mii-exa-test-data-patient-9)
* context = Reference(mii-exa-test-data-patient-9-encounter-1)
* effectiveDateTime = "2024-02-21T08:00:00+01:00"
* request = Reference(mii-exa-test-data-patient-9-medrequest-1)
* dosage.text = "Verhütungspille 1 Tablette"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.dose = 1 '1' "1"

Instance: mii-exa-test-data-patient-9-medadmin-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Paracetamol 400mg oral bei Schmerzen"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000022"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-paracetamol)
* subject = Reference(mii-exa-test-data-patient-9)
* context = Reference(mii-exa-test-data-patient-9-encounter-1)
* effectiveDateTime = "2024-02-23T08:00:00+01:00"
* request = Reference(mii-exa-test-data-patient-9-medrequest-2)
* dosage.text = "Paracetamol 500mg oral bei postoperativen Schmerzen"
* dosage.site.coding[SNOMED] = $sct#74262004 "Oral cavity structure (body structure)"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.dose.value = 500
* dosage.dose.unit = "mg"
* dosage.dose.system = $ucum
* dosage.dose.code = #mg

// Patient-10 MedicationAdministrations
Instance: mii-exa-test-data-patient-10-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Sumatriptan 50mg oral bei Migräne"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000020"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-sumatriptan)
* subject = Reference(mii-exa-test-data-patient-10)
* context = Reference(mii-exa-test-data-patient-10-encounter-1)
* effectiveDateTime = "2019-05-15T16:00:00+02:00"
* request = Reference(mii-exa-test-data-patient-10-medrequest-1)
* dosage.text = "Sumatriptan 50mg oral bei Migräne"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.dose = 50 $ucum#mg "mg"

Instance: mii-exa-test-data-patient-10-medadmin-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Topiramat 50mg oral zur Prophylaxe"
* insert TestDataLabel
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000021"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationReference = Reference(mii-exa-test-data-medication-topiramat)
* subject = Reference(mii-exa-test-data-patient-10)
* context = Reference(mii-exa-test-data-patient-10-encounter-1)
* effectiveDateTime = "2019-05-16T09:00:00+02:00"
* request = Reference(mii-exa-test-data-patient-10-medrequest-2)
* dosage.text = "Topiramat 50mg oral zur Prophylaxe"
* dosage.route.coding[EDQM] = $standardterms#20053000 "Oral use"
* dosage.dose = 50 $ucum#mg "mg"