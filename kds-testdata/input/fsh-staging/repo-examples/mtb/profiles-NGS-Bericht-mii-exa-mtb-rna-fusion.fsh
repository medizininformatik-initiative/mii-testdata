Instance: MII-EXA-MTB-RNA-Fusion-1
InstanceOf: MII_PR_MTB_RNA_Fusion
Usage: #example
Title: "Beispiel RNA-Fusion"
Description: "Beispiel fuer eine RNA-Fusion (EML4-ALK) in Tumorzellen."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-fusion)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"

* subject = Reference(Patient/mii-exa-mtb-patient)

// 5' Partner (EML4)
* component[five-prime-gene].code = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker#five-prime-gene
* component[five-prime-gene].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:1316 "EML4"
* component[five-prime-transcript-id].code = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker#five-prime-transcript-id
* component[five-prime-transcript-id].valueCodeableConcept = https://www.ncbi.nlm.nih.gov/refseq/#NM_019063.4
* component[five-prime-exon-id].code = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker#five-prime-exon-id
* component[five-prime-exon-id].valueCodeableConcept.text = "Exon 13"
* component[five-prime-position].code = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker#five-prime-position
* component[five-prime-position].valueRange.low.value = 42396490
* component[five-prime-position].valueRange.high.value = 42396490
* component[five-prime-strand].code = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker#five-prime-strand
* component[five-prime-strand].valueCodeableConcept = http://www.sequenceontology.org#SO:0002262 "Watson_strand"

// 3' Partner (ALK)
* component[three-prime-gene].code = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker#three-prime-gene
* component[three-prime-gene].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:427 "ALK"
* component[three-prime-transcript-id].code = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker#three-prime-transcript-id
* component[three-prime-transcript-id].valueCodeableConcept = https://www.ncbi.nlm.nih.gov/refseq/#NM_004304.5
* component[three-prime-exon-id].code = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker#three-prime-exon-id
* component[three-prime-exon-id].valueCodeableConcept.text = "Exon 20"
* component[three-prime-position].code = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker#three-prime-position
* component[three-prime-position].valueRange.low.value = 29446394
* component[three-prime-position].valueRange.high.value = 29446394
* component[three-prime-strand].code = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker#three-prime-strand
* component[three-prime-strand].valueCodeableConcept = http://www.sequenceontology.org#SO:0002262 "Watson_strand"

// COSMIC ID
* component[variation-code].valueCodeableConcept = https://cancer.sanger.ac.uk/cosmic#COSF1171 "EML4-ALK fusion"

// Read depth
* component[allelic-read-depth].valueQuantity = 250 http://unitsofmeasure.org#1 "reads"
