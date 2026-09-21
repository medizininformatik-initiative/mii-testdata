// Aufnahme-/Hauptdiagnose fuer den ICU-Fall (COVID-19 mit Beatmung und Nierenersatzverfahren)
Instance: mii-exa-test-data-icu-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Usage: #example
Description: "Condition: COVID-19 (ICU-Aufnahmediagnose, Standort B) fuer ICU-Patient 1"
* insert TestDataLabel
* insert AddDiagnose(U07.1, 2024, mii-exa-test-data-icu-patient-1, 2024-05-01, COVID-19 Virus nachgewiesen)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
