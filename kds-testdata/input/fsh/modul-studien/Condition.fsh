// Studienrelevante Grunddiagnose (endokriner Fokus der Studie)
Instance: mii-exa-test-data-studien-diagnose-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Usage: #example
Description: "Condition: Diabetes mellitus Typ 2 fuer Studien-Patient 1"
* insert TestDataLabel
* insert AddDiagnose(E11.90, 2024, mii-exa-test-data-studien-patient-1, 2024-06-01, Diabetes mellitus Typ 2 ohne Komplikationen)
* encounter = Reference(mii-exa-test-data-studien-encounter-1)
