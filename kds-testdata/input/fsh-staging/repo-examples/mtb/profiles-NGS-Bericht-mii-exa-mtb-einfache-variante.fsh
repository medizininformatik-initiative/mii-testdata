Instance: MII-EXA-MTB-Einfache-Variante
InstanceOf: MII_PR_MTB_Einfache_Variante
Usage: #example
Title: "BRAF Variante"
Description: "Beispiel fuer einfache genetische Variante im BRAF Gen an Hand von NGS."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[geCategory] = http://terminology.hl7.org/CodeSystem/v2-0074#GE

* code = http://loinc.org#69548-6 "Genetic variant assessment"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* method = http://loinc.org#LA26398-0 "Sequencing"

* subject = Reference(Patient/mii-exa-mtb-patient)

* component[chromosome-identifier].valueCodeableConcept.coding = http://loinc.org#LA21270-6 "Chromosome 17"

* component[gene-studied].code.coding = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:1097 "BRAF"

* component[representative-transcript-ref-seq].valueCodeableConcept = https://www.ncbi.nlm.nih.gov/refseq/#NM_133433.4

* component[dna-region][+].code.coding = http://loinc.org#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Exon #15"
* component[dna-region][+].code = http://loinc.org#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Codon #582 - #612"

* component[exact-start-end].valueRange.low.value = 43044295
* component[exact-start-end].valueRange.high.value = 43125364

// ref-allele
// alt-allele

* component[representative-coding-hgvs].code = http://loinc.org#48004-6 "DNA change (c.HGVS)"
* component[representative-coding-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#NM_004333.4:c.1799T>A

* component[representative-protein-hgvs].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[representative-protein-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#NP_004324.2:p.(Val600Glu)

// allellic read-depth

* component[sample-allelic-frequency].code = http://loinc.org#81258-6 "Sample variant allelic frequency [NFr]"
* component[sample-allelic-frequency].valueQuantity = 30.25 '%'

* component[variation-code].code = http://loinc.org#81252-9 "Discrete genetic variant"
* component[variation-code].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/projects/SNP#rs113488022
