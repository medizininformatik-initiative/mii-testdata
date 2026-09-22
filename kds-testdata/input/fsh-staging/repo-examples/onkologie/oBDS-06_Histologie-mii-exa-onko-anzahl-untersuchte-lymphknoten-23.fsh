Instance: mii-exa-onko-anzahl-untersuchte-lymphknoten-23
InstanceOf: mii-pr-onko-anzahl-untersuchte-lymphknoten
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-untersuchte-lymphknoten)
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.coding[loinc] = http://loinc.org#21894-1 "Regional lymph nodes examined [#] Specimen"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* valueQuantity = 23 http://unitsofmeasure.org#1 "#"
