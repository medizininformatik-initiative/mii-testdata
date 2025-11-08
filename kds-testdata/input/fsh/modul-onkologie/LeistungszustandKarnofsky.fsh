Instance: mii-exa-test-data-onko-mamma-karnofsky
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky
Usage: #example
Description: "Observation: Leistungszustand Karnofsky für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* focus = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* status = $observation-status#final
* code.coding = $sct#761869008
* valueCodeableConcept = $lz-karnofsky#100%
* effectiveDateTime = "2024-02-08"
