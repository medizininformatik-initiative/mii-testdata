Instance: mii-exa-test-data-onko-mamma-tod
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod
Usage: #example
Description: "Observation: Tod für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* focus = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* status = $observation-status#final
* effectiveDateTime = "2024-02-08"
* interpretation.coding = $mii-cs-onko-tod#N "Nein, die Person ist nicht an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben."
* code.coding = $sct#184305005
* valueCodeableConcept = $icd-10-gm#C50.3 "Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse"
* valueCodeableConcept.coding.version = "2022"