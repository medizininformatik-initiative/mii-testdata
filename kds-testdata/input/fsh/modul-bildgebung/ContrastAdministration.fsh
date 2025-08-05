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
* dosage.dose.value = 111
* dosage.dose.unit = "milliliter"
* dosage.dose.code = #mm