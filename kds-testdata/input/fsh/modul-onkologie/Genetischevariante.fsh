Instance: mii-exa-test-data-onko-mamma-genetische-variante
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante
Usage: #example
Description: "Observation: Genetische Variante für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* focus = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* status = $observation-status#final
* code.coding = $loinc#69548-6
* effectiveDateTime = "2022-02-08"
* interpretation.coding = $mii-cs-onko-gv-auspraegung#M
* note.text = "BRAF1 Class II Mutation"
* category = $observation-category#laboratory