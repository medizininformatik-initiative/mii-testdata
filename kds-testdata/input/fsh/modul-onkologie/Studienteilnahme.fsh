Instance: mii-exa-test-data-onko-mamma-studienteilnahme
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme
Usage: #example
Description: "Observation: Studienteilnahme für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* focus = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* code.coding = $sct#709491003
* status = $observation-status#final
* valueCodeableConcept = $mii-cs-onko-studienteilnahme#J "Ja"