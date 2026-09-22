Instance: MII-EXA-MTB-DNA-Fusion-1
InstanceOf: MII_PR_MTB_DNA_Fusion
Usage: #example
Title: "Beispiel DNA-Fusion"
Description: "Beispiel fuer eine DNA-Fusion in Tumorzellen."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-dna-fusion)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"

* subject = Reference(Patient/mii-exa-mtb-patient)

* component[five-prime-chromosome].valueCodeableConcept = http://loinc.org#LA21255-7 "Chromosome 2"

* component[three-prime-chromosome].valueCodeableConcept = http://loinc.org#LA21258-1 "Chromosome 5"

* component[five-prime-position].valueRange.low.value = 12345678
* component[five-prime-position].valueRange.high.value = 12345680

* component[three-prime-position].valueRange.low.value = 87654321
* component[three-prime-position].valueRange.high.value = 87654323

* component[five-prime-gene].valueCodeableConcept = #HGNC:1100 "BRCA1"

* component[three-prime-gene].valueCodeableConcept = #HGNC:9967 "RET"

* component[allelic-read-depth].valueQuantity = 150 http://unitsofmeasure.org#1 "Number of reported reads"
* component[allelic-read-depth].code = http://loinc.org#82121-5
