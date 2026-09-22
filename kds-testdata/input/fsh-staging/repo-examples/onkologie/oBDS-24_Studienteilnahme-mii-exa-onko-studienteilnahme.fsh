Instance: mii-exa-onko-studienteilnahme
InstanceOf: mii-pr-onko-studienteilnahme
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme)
* status = #final
* code.coding = http://snomed.info/sct#709491003 
* subject = Reference(Patient/example)
* focus = Reference(primaertumor-example)

* effectiveDateTime = "2024-01-02"
* valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-studienteilnahme#J "Ja"
