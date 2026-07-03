// Grunddiagnose zum PRO-Szenario (Depression: PHQ-9, PROMIS Depression, BDI-II)
Instance: mii-exa-test-data-pro-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Usage: #example
Description: "Condition: Mittelgradige depressive Episode fuer PRO-Patient 1"
* insert TestDataLabel
* insert AddDiagnose(F32.1, 2024, mii-exa-test-data-pro-patient-1, 2024-05-01, Mittelgradige depressive Episode)
* encounter = Reference(mii-exa-test-data-pro-encounter-1)
