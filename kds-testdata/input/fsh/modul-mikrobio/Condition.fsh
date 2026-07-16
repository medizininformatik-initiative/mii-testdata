// Hauptdiagnose zum Mikrobiologie-Szenario (Sepsis durch MRSA)
Instance: mii-exa-test-data-mikrobio-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Usage: #example
Description: "Condition: Sepsis durch MRSA fuer Mikrobio-Patient 1"
* insert TestDataLabel
* insert AddDiagnose(A41.02, 2024, mii-exa-test-data-mikrobio-patient-1, 2024-02-15, Sepsis durch MRSA)
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
