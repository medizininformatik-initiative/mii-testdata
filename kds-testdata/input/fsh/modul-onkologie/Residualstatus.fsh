Instance: mii-exa-test-data-onko-mamma-residualstatus
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-residualstatus
Usage: #example
Description: "Observation: Residualstatus für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* focus = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* status = $observation-status#final
* code.coding = $sct#445200009
* valueCodeableConcept = $mii-cs-onko-residualstatus#R0
* effectiveDateTime = "2024-02-08"