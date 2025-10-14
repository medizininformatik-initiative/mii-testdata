Instance: mii-exa-test-data-onko-mamma-lymphknotenuntersuchung
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-befallene-lymphknoten
Usage: #example
Description: "Observation: Lymphknotenuntersuchung für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* code.coding[loinc] = $loinc#21893-3
* focus = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* category[laboratory] = $observation-category#laboratory
* status = $observation-status#final
* effectiveDateTime = "2024-05-11"