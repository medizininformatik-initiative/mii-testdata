Instance: mii-exa-molgen-variante-1
InstanceOf: mii-pr-molgen-variante
Usage: #example
Title: "BRAF Variante"
Description: "Beispiel für genetische Variante im BRAF Gen an Hand von NGS."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant|3.0.0"
* basedOn = Reference(mii-exa-molgen-anforderung-1)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-molgen-patient)
* effectiveDateTime = "2022-04-07"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* method = http://loinc.org#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-molgen-specimen-1)
* device = Reference(mii-exa-molgen-device-sequencer)
//* derivedFrom = Reference(mii-exa-molgen-untersuchte-region-1)
* component[gene-studied].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:1097 "BRAF"
* component[genomic-ref-seq].code = http://loinc.org#48013-7 "Genomic reference sequence [ID]"
* component[genomic-ref-seq].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_004333.4
* component[dna-region][+].code = http://loinc.org#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Exon #15"
* component[dna-region][+].code = http://loinc.org#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Codon #582 - #612"
* component[representative-coding-hgvs].code = http://loinc.org#48004-6 "DNA change (c.HGVS)"
* component[representative-coding-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#NM_004333.4:c.1799T>A
* component[representative-protein-hgvs].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[representative-protein-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#p.(Val600Glu)
* component[sample-allelic-frequency].code = http://loinc.org#81258-6 "Sample variant allelic frequency [NFr]"
* component[sample-allelic-frequency].valueQuantity = 30.25 '%'
* component[cytogenetic-location].code = http://loinc.org#48001-2 "Cytogenetic (chromosome) location"
* component[cytogenetic-location].valueCodeableConcept = urn:oid:2.16.840.1.113883.6.335#7q34
* component[coding-change-type].code = http://loinc.org#48019-4 "DNA change type"
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SO:1000008 "point_mutation"
//* component[amino-acid-change-type].code = http://loinc.org#48006-1 "Amino acid change [Type]"
//* component[amino-acid-change-type].valueCodeableConcept = http://loinc.org#LA6698-0 "Missense"
* component[variation-code].code = http://loinc.org#81252-9 "Discrete genetic variant"
* component[variation-code].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/projects/SNP#rs113488022

Instance: mii-exa-molgen-variante-2
InstanceOf: mii-pr-molgen-variante
Usage: #example
Title: "NIPBL Variante"
Description: "Beispiel für genetische Variante im NIPBL Gen an Hand von WGS."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant|3.0.0"
* basedOn = Reference(mii-exa-molgen-anforderung-2)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-molgen-patient-2)
* effectiveDateTime = "2022-03-16"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* method.coding[0] = http://loinc.org#LA26398-0 "Sequencing"
* method.coding[1] = http://loinc.org#86206-0 "Whole genome sequence analysis in Blood or Tissue by Molecular genetics method"
* specimen = Reference(mii-exa-molgen-specimen-2)
* device = Reference(mii-exa-molgen-device-sequencer-2)
//* derivedFrom = Reference(mii-exa-molgen-untersuchte-region-1)
* component[gene-studied].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:28862 "NIPBL"
* component[representative-transcript-ref-seq].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_133433.4
* component[dna-region][+].code = http://loinc.org#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Exon #10"
* component[representative-coding-hgvs].code = http://loinc.org#48004-6 "DNA change (c.HGVS)"
* component[representative-coding-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#NM_133433.4:c.2207del
* component[representative-protein-hgvs].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[representative-protein-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#p.(Pro736Glnfs*58)
* component[allelic-state].code = http://loinc.org#53034-5 "Allelic state"
* component[allelic-state].valueCodeableConcept = http://loinc.org#LA6706-1 "Heterozygous"
* component[coding-change-type].code = http://loinc.org#48019-4 "DNA change type"
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SO:0000159 "Deletion"
//* component[amino-acid-change-type].code = http://loinc.org#48006-1 "Amino acid change [Type]"
//* component[amino-acid-change-type].valueCodeableConcept = http://loinc.org#LA6694-9 "Frameshift"
* component[cytogenetic-location].code = http://loinc.org#48001-2 "Cytogenetic (chromosome) location"
* component[cytogenetic-location].valueCodeableConcept = urn:oid:2.16.840.1.113883.6.335#5p13.2
* component[variation-code].code = http://loinc.org#81252-9 "Discrete genetic variant"
* component[variation-code].valueCodeableConcept.coding[0] = http://www.ncbi.nlm.nih.gov/clinvar#1076298
* component[variation-code].valueCodeableConcept.coding[1] = http://www.ncbi.nlm.nih.gov/clinvar#VCV001076298.1

// CNV

Instance: mii-exa-molgen-variante-cnv-4
InstanceOf: mii-pr-molgen-variante
Usage: #example
Title: "Variante SMO CNV"
Description: "Beispiel für genetische Copy Number Variante SMO Gen."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant|3.0.0"
//* basedOn = Reference(mii-exa-molgen-anforderung-2)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-molgen-patient-2)
* effectiveDateTime = "2022-03-16"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* method.coding[0] = http://loinc.org#LA26398-0 "Sequencing"
* method.text = "Analysepipeline XXX, Auswertungssoftware XXX, Prozessierungssystem XXX"
//* method.coding[1] = http://loinc.org#86206-0 "Whole genome sequence analysis in Blood or Tissue by Molecular genetics method"
//* specimen = Reference(mii-exa-molgen-specimen-2)
//* device = Reference(mii-exa-molgen-device-sequencer-2)
//* derivedFrom = Reference(mii-exa-molgen-untersuchte-region-1)
* component[gene-studied].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:11119 "SMO"
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SO:0001742 "copy_number_gain"
* component[copy-number].valueQuantity = 6 http://unitsofmeasure.org#1 "1"
* component[dna-region].valueString = "Ex 1-10"
* component[chromosome-identifier].valueCodeableConcept = http://loinc.org#LA21260-7 "Chromosome 7"
* component[cytogenetic-location].valueCodeableConcept = urn:oid:2.16.840.1.113883.6.335#7q32.1
* component[sample-allelic-frequency].valueQuantity = 55 http://unitsofmeasure.org#% "%"
//* component[molecular-consequence].valueCodeableConcept = http://sequenceontology.org#SO:0001458 "unigene_cluster"
* component[detection-limit].valueQuantity.value = 95 
* component[detection-limit].valueQuantity.comparator = #>
* component[detection-limit].valueQuantity.unit = "%"
* component[detection-limit].valueQuantity.system = "http://unitsofmeasure.org"
* component[detection-limit].valueQuantity.code = #%
// cluster?

// 04 docx
// https://www.ncbi.nlm.nih.gov/clinvar/RCV000119097.19/

Instance: mii-exa-molgen-variante-brca1
InstanceOf: mii-pr-molgen-variante
Usage: #example
Title: "Variante BRCA1"
Description: "Beispiel für genetische Variante BRCA1"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant|3.0.0"
* basedOn = Reference(mii-exa-molgen-anforderung-trurisk-panel)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-molgen-patient-brca1)
* effectiveDateTime = "2022-11-01"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* method.coding[0] = http://loinc.org#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-molgen-specimen-brca1)
* device = Reference(mii-exa-molgen-device-sequencer-nextseq)
//* derivedFrom = Reference(mii-exa-molgen-untersuchte-region-1)
* component[gene-studied].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:1100 "BRCA1"
* component[cytogenetic-location].valueCodeableConcept = urn:oid:2.16.840.1.113883.6.335#17q21.31
* component[representative-coding-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#NM_007294.3:c.5266dupC
* component[representative-transcript-ref-seq].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_007294.3
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SO:1000035 "Duplication"
* component[allelic-read-depth].valueQuantity = 50 http://unitsofmeasure.org#1 "Abdeckung der Fragmente"
* component[variation-code].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/projects/SNP#rs80357906
* component[chromosome-identifier].valueCodeableConcept = http://loinc.org#LA21270-6 "Chromosome 17"
* component[representative-protein-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#p.Gln1756Profs 
//* component[amino-acid-change-type].valueCodeableConcept = http://loinc.org#LA6694-9 "Frameshift"
* component[detection-limit].valueQuantity.value = 95 
* component[detection-limit].valueQuantity.comparator = #>
* component[detection-limit].valueQuantity.unit = "%"
* component[detection-limit].valueQuantity.system = "http://unitsofmeasure.org"
* component[detection-limit].valueQuantity.code = #%
