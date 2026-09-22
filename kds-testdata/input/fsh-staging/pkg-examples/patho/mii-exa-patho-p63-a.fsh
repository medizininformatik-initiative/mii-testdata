Instance: mii-exa-patho-p63-a
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category[+] = http://loinc.org#22635-7
* status = #final
* code = http://loinc.org#101548-6
* valueCodeableConcept = http://loinc.org#LA11883-8
* valueCodeableConcept.text = "Die Tumorzellen sind negativ für p63"
* specimen = Reference(mii-exa-patho-prostate-biopsy-schnitt-p63)