Instance: mii-exa-test-data-onko-mamma-fernmetastasen
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen
Usage: #example
Description: "Observation: Fernmetastasen für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* focus = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* status = $observation-status#final
* code.coding = $sct#385421009
* valueCodeableConcept = $mii-cs-onko-fernmetastasen#PUL "Lunge"
* effectiveDateTime = "2024-02-08"