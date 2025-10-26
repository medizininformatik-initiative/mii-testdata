Instance: mii-exa-test-data-onko-mamma-grading
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-grading
Usage: #example
Description: "Observation: Grading für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* focus = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* specimen = Reference(mii-exa-test-data-onko-mamma-specimen)
* effectiveDateTime = "2022-04-21"
* category = $observation-category#laboratory
* code.coding = $loinc#33732-9 "Histology grade [Identifier] in Cancer specimen"