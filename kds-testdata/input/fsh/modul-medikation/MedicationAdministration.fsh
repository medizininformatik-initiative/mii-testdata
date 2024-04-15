// Patient-1
Instance: mii-exa-test-data-patient-1-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration|2.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000001"
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

