Instance: mii-exa-onko-histologie-icdo3
InstanceOf: mii-pr-onko-histologie-icdo3
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-histologie-icdo3)
* status = #final
* code.coding = http://loinc.org#59847-4
* valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/icd-o-3#8500/3 "Infiltrating duct carcinoma, NOS"
* valueCodeableConcept.text = "Invasives duktales Karzinom o.n.A."
* subject = Reference(Patient/example)
* specimen = Reference(mii-exa-onko-specimen-1)
* bodySite.coding = http://terminology.hl7.org/CodeSystem/icd-o-3#C50.4 "Oberer äußerer Quadrant der Brust"
