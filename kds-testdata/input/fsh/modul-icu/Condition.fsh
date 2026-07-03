// Aufnahme-/Hauptdiagnose fuer den ICU-Fall (Sepsis mit Beatmung und Nierenersatzverfahren)
Instance: mii-exa-test-data-icu-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Usage: #example
Description: "Condition: Sepsis (ICU-Aufnahmediagnose) fuer ICU-Patient 1"
* insert TestDataLabel
* insert AddDiagnose(A41.9, 2024, mii-exa-test-data-icu-patient-1, 2024-02-15, Sepsis nicht naeher bezeichnet)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
