// Hauptdiagnose zum dokumentierten Fall (Entlassbrief Innere Medizin)
Instance: mii-exa-test-data-dokument-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Usage: #example
Description: "Condition: Pneumonie fuer Dokument-Patient 1"
* insert TestDataLabel
* insert AddDiagnose(J18.9, 2024, mii-exa-test-data-dokument-patient-1, 2024-04-01, Pneumonie nicht naeher bezeichnet)
* encounter = Reference(mii-exa-test-data-dokument-encounter-1)
