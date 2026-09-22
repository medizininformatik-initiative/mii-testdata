Instance: mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0
InstanceOf: mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten)
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.coding[loinc] = http://loinc.org#85347-3 "Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* valueQuantity = 2 http://unitsofmeasure.org#1 "#"
