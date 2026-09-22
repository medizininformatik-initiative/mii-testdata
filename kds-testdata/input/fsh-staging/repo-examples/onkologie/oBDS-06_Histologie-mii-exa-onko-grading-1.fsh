Instance: mii-exa-onko-grading-1
InstanceOf: mii-pr-onko-grading
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-grading)
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.coding[loinc] = http://loinc.org#33732-9 "Histology grade [Identifier] in Cancer specimen"
* effectiveDateTime = 2022-04-21
* valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading"
* valueCodeableConcept.coding.code = #3 "schlecht differenziert"

* subject = Reference(Patient/example)
* specimen = Reference(mii-exa-onko-specimen-1)
