Instance: mii-exa-patho-gleason-pattern-a
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category[+] = http://loinc.org#22635-7
* status = #final
* code = http://loinc.org#44641-9
* valueCodeableConcept = http://snomed.info/sct#369772003
* specimen = Reference(mii-exa-patho-prostate-biopsy-schnitt-HE)