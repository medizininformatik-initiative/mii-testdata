Instance: MII-EXA-MTB-Copy-Number-Variant-1
InstanceOf: MII_PR_MTB_Copy_Number_Variant
Usage: #example
Title: "Beispiel fuer Copy Number Variant"
Description: "Beispiel fuer eine Copy Number Variant (CNV)."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"

* subject = Reference(Patient/mii-exa-mtb-patient)

* component[chromosome-identifier].code = http://loinc.org#48000-4
* component[chromosome-identifier].valueCodeableConcept = http://loinc.org#LA21270-6 "Chromosome 17"

* component[exact-start-end].code = http://loinc.org#81254-5
* component[exact-start-end].valueRange.low.value = 43044295
* component[exact-start-end].valueRange.high.value = 43125364

* component[copy-number].code = http://loinc.org#82155-3
* component[copy-number].valueQuantity.value = 3
* component[copy-number].valueQuantity.code = #1
* component[copy-number].valueQuantity.system = http://unitsofmeasure.org


* component[relative-copy-number].valueQuantity.value = 1.5 
* component[relative-copy-number].valueQuantity.code = #1
* component[relative-copy-number].valueQuantity.system = http://unitsofmeasure.org


* component[cna].valueQuantity.value = 1  
* component[cna].valueQuantity.code = #1 
* component[cna].valueQuantity.system = http://unitsofmeasure.org


* component[cnb].valueQuantity.value = 2 
* component[cnb].valueQuantity.code = #1
* component[cnb].valueQuantity.system = http://unitsofmeasure.org

* component[gene-studied].code = http://loinc.org#48018-6
* component[gene-studied].valueCodeableConcept = #HGNC:1100 "BRCA1"

* component[reported-focality].valueQuantity.value = 100 
* component[reported-focality].valueQuantity.code = #%
* component[reported-focality].valueQuantity.system = http://unitsofmeasure.org


* component[cnv-type].code = http://bwhc.de/mtb/genetics-copy-number-variant#type
* component[cnv-type].valueCodeableConcept = http://bwhc.de/mtb/genetics-copy-number-variant#high-level-gain "high-level-gain"

* component[copy-number-neutral-loh].valueCodeableConcept = http://loinc.org#LA33-6
