Instance: mii-exa-test-data-onko-mamma-operation
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation
Usage: #example
Description: "Procedure: Operation für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* reasonReference = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* extension[Intention].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention"
* extension[Intention].valueCodeableConcept.coding = $mii-cs-onko-intention#K
* code.coding[ops] = $ops|2021#5-870 "Partielle (brusterhaltende) Exzision der Mamma und Destruktion von Mammagewebe"
* status = $event-status#completed
* category.coding = $sct#387713003 "Surgical procedure (procedure)"
* performedDateTime = "2021-12-04"
* outcome.coding = $mii-cs-onko-residualstatus#R1 Mikroskopischer Residualtumor
* complication.coding = $mii-cs-onko-operation-komplikation#HNK "Hautnekrose im Operationsbereich"
