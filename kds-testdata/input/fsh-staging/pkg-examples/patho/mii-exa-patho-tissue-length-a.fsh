Instance: mii-exa-patho-tissue-length-a
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
Usage: #example
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category[+] = http://loinc.org#22634-0
* status = #final
* code = http://loinc.org#44619-5 "Length of tissue core(s)"
* valueQuantity = 1.2 'cm' "cm"
* specimen = Reference(mii-exa-patho-prostate-tru-cut-biopsy-sample)
* derivedFrom = Reference(mii-exa-patho-attached-image)