Instance: mii-exa-test-data-onko-mamma-ecog
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog
Usage: #example
Description: "Observation: Leistungszustand ECOG für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* focus = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* status = $observation-status#final
* code.coding = $sct#423740007
* valueCodeableConcept = $lz-ecog#0
* effectiveDateTime = "2024-02-08"