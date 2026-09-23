Instance: mii-exa-test-data-kontrastmittelgabe
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe
Usage: #example
Description: "MedicationAdministration: kontrastmittelgabe"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe"
* partOf = Reference(mii-exa-test-data-bildgebungsprozedur)
* identifier.system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier.value = "MA_KM_0000001"
* status = #completed
* category = $medication-admin-category#inpatient "Inpatient"
* subject = Reference(mii-exa-test-data-bildgebung-patient-1)
// medicationCodeableConcept-Variante: Kontrastmittel mit PZN- und ATC-Codings
* medicationCodeableConcept.coding[Pharmazentralnummer] = $pzn#01309008 "Ultravist 300 Injektionsloesung"
* medicationCodeableConcept.coding[atcClassDe] = $atc|2024#V08AB05 "Iopromid"
* medicationCodeableConcept.coding[atcClassEn] = $atc-who#V08AB05 "iopromide"
* medicationCodeableConcept.text = "Iopromid 300 mg Iod/mL Injektionsloesung"
* context = Reference(mii-exa-test-data-bildgebung-encounter-1)
* effectivePeriod.end = "2024-07-19T12:22:45+02:00"
* effectivePeriod.start = "2024-07-19T12:21:45+02:00"
* performer.actor = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = http://terminology.hl7.org/CodeSystem/reason-medication-given#b "Given as Ordered"
* reasonReference = Reference(mii-exa-test-data-bildgebung-diagnose-1)
* request = Reference(mii-exa-test-data-bildgebung-medrequest-1)
* note.text = "Kontrastmittelgabe"
* dosage.text = "111 mL Iopromid intravenoes als Bolus ueber 1 Minute"
* dosage.site = $sct#368208006 "Left upper arm structure (body structure)"
* dosage.route = $sct#47625008 "Intravenous route (qualifier value)"
* dosage.dose = 111 $ucum#mL "milliliter"
// rate[x] ist eine Choice: rateQuantity (4 MS-Kinder) statt rateRatio (2) —
// die rateRatio-Kinder bleiben mangels zweiter Instanz offen
* dosage.rateQuantity = 111 $ucum#mL/min "mL/min"