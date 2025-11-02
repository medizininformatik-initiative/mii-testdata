Instance: mii-exa-test-data-onko-mamma-verlaufshistologie
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-histologie-icdo3
Usage: #example
Description: "Observation: Verlaufshistologie für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* focus = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* specimen = Reference(mii-exa-test-data-onko-mamma-specimen)
* code.coding = $loinc#59847-4
* status = $observation-status#final
* bodySite.coding[icd-o-3] = $icd-o-3#C50.4 "Oberer äußerer Quadrant der Brust"
* valueCodeableConcept = $icd-o-3#8500/3 "Invasives duktales Karzinom o.n.A."