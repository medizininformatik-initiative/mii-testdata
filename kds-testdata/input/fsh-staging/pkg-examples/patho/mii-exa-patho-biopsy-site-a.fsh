Instance: mii-exa-patho-biopsy-site-a
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category[+] = http://loinc.org#22634-0
* status = #final
* code = http://loinc.org#94738-2 "Biopsy site [Anatomy]"
* valueCodeableConcept = http://snomed.info/sct#716917000 "Right lateral middle peripheral zone of prostate"
* specimen = Reference(mii-exa-patho-prostate-tru-cut-biopsy-sample)