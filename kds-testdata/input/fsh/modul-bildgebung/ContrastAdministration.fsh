Instance: mii-exa-test-data-kontrastmittelgabe
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe
Usage: #example
Description: "MedicationAdministration: kontrastmittelgabe"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe"
* partOf = Reference(mii-exa-test-data-bildgebungsprozedur)
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* subject = Reference(mii-exa-test-data-patient-1)
* medicationReference = Reference(mii-exa-test-data-medication-dalbavancin)
* effectivePeriod.end = "2024-07-19T12:22:45+02:00"
* effectivePeriod.start = "2024-07-19T12:21:45+02:00"
* performer.actor = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-1-diagnose-1)
* request = Reference(mii-exa-test-data-patient-1-medrequest-1)
* note.text = "Kontrastmittelgabe"
* dosage.dose = 111 $ucum#mL "milliliter"

// CT Thorax scenario
Instance: mii-exa-test-data-kontrastmittelgabe-ct
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe
Usage: #example
Description: "MedicationAdministration: CT Thorax Kontrastmittelgabe"
* insert TestDataLabel
* partOf = Reference(mii-exa-test-data-bildgebungsprozedur-ct)
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* medicationCodeableConcept.coding = $sct#385064004 "Iodinated contrast media (substance)"
* medicationCodeableConcept.text = "Iomeprol 400 mg/mL"
* subject = Reference(mii-exa-test-data-patient-2)
* context = Reference(mii-exa-test-data-patient-2-encounter-1)
* effectivePeriod.start = "2024-11-05T09:16:00+01:00"
* effectivePeriod.end = "2024-11-05T09:17:30+01:00"
* performer.actor = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-2-diagnose-1)
* note.text = "Kontrastmittelgabe Iomeprol 400 mg/mL, 80 mL, i.v., Bolus mit 3 mL/s"
* dosage.text = "80 mL Iomeprol 400 mg/mL i.v. Bolus"
* dosage.route = $sct#47625008 "Intravenous route (qualifier value)"
* dosage.dose = 80 $ucum#mL "milliliter"
* dosage.rateQuantity = 3 $ucum#mL/s "milliliter per second"