// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-variante-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante
Usage: #example
Description: "Observation: Genetische Variante fuer BRAF-Mutation"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* basedOn = Reference(mii-exa-test-data-patient-3-molgen-anforderung-1)
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* effectiveDateTime = "2022-04-07"
* issued = "2022-04-12T10:30:00+02:00"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-test-data-molgen-specimen-1)
* device = Reference(mii-exa-test-data-molgen-device-sequencer)
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:1097 "BRAF"
* component[genomic-ref-seq].code = $loinc#48013-7 "Genomic reference sequence [ID]"
* component[genomic-ref-seq].valueCodeableConcept = $RefSeq#NM_004333.4
* component[dna-region][+].code = $loinc#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Exon #15"
* component[dna-region][+].code = $loinc#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Codon #582 - #612"
* component[representative-coding-hgvs].code = $loinc#48004-6 "DNA change (c.HGVS)"
* component[representative-coding-hgvs].valueCodeableConcept = $HGVS#NM_004333.4:c.1799T>A
* component[representative-protein-hgvs].code = $loinc#48005-3 "Amino acid change (pHGVS)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#p.(Val600Glu)
* component[sample-allelic-frequency].code = $loinc#81258-6 "Sample variant allelic frequency [NFr]"
* component[sample-allelic-frequency].valueQuantity = 30.25 '%'
* component[cytogenetic-location].code = $loinc#48001-2 "Cytogenetic (chromosome) location"
* component[cytogenetic-location].valueCodeableConcept = $ChromLoc#7q34
* component[coding-change-type].code = $loinc#48019-4 "DNA change type"
* component[coding-change-type].valueCodeableConcept = $SO#SO:1000008 "point_mutation"
* component[variation-code].code = $loinc#81252-9 "Discrete genetic variant"
* component[variation-code].valueCodeableConcept = $dbSNP#rs113488022
* component[reference-sequence-assembly].code = $loinc#62374-4 "Human reference sequence assembly version"
* component[reference-sequence-assembly].valueCodeableConcept = $loinc#LA26806-2 "GRCh38"
* component[exact-start-end].code = $loinc#81254-5 "Genomic allele start-end"
* component[exact-start-end].valueRange.low.value = 140753336
* component[exact-start-end].valueRange.high.value = 140753336
* component[ref-allele].code = $loinc#69547-8 "Genomic ref allele [ID]"
* component[ref-allele].valueString = "T"
* component[alt-allele].code = $loinc#69551-0 "Genomic alt allele [ID]"
* component[alt-allele].valueString = "A"
* component[genomic-source-class].code = $loinc#48002-0 "Genomic source class [Type]"
* component[genomic-source-class].valueCodeableConcept = $loinc#LA6684-0 "Somatic"

Instance: mii-exa-test-data-molgen-device-sequencer
InstanceOf: Device
Usage: #example
Description: "Device: Sequencer used for BRAF mutation analysis"
* insert TestDataLabel
* status = #active
* manufacturer = "Illumina"
* deviceName.name = "MiSeq"
* deviceName.type = $DeviceNameType#manufacturer-name

// Patient-4
Instance: mii-exa-test-data-patient-4-molgen-variante-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante
Usage: #example
Description: "Observation: Genetische Variante fuer CTNNA1-Mutation"
* insert TestDataLabel
* basedOn = Reference(mii-exa-test-data-patient-4-molgen-anforderung-1)
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-test-data-molgen-patient-2)
* effectiveDateTime = "2022-11-30"
* issued = "2022-12-05T14:00:00+01:00"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method.coding[0] = $loinc#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-test-data-molgen-specimen-2)
* device = Reference(mii-exa-test-data-molgen-device-sequencer)
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:2509 "CTNNA1"
* component[representative-transcript-ref-seq].valueCodeableConcept = $RefSeq#NM_001903.5
* component[representative-coding-hgvs].valueCodeableConcept = $HGVS#NM_001903.5:c.1030del
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000005.9:g.138163372del
* component[genomic-ref-seq].valueCodeableConcept = $RefSeq#NC_000005.9
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#p.(Leu344CysfsTer25)
* component[allelic-state].valueCodeableConcept = $loinc#LA6706-1 "Heterozygous"
* component[coding-change-type].valueCodeableConcept = $SO#SO:0000159 "Deletion"
* component[cytogenetic-location].valueCodeableConcept = $ChromLoc#5q31.2
* component[chromosome-identifier].code = $loinc#48000-4 "Chromosome [Identifier] in Blood or Tissue by Molecular genetics method"
* component[chromosome-identifier].valueCodeableConcept = $loinc#LA21257-8 "Chromosome 5"

// Patient-3 EGFR L858R (NSCLC Stadium IV)
Instance: mii-exa-test-data-patient-3-molgen-variante-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante
Usage: #example
Description: "Observation: Genetische Variante EGFR L858R bei NSCLC"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* basedOn = Reference(mii-exa-test-data-patient-3-molgen-anforderung-2)
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* effectiveDateTime = "2024-03-20"
* issued = "2024-03-25T10:00:00+01:00"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-test-data-molgen-specimen-1)
* device = Reference(mii-exa-test-data-molgen-device-sequencer)
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:3236 "EGFR"
* component[genomic-ref-seq].code = $loinc#48013-7 "Genomic reference sequence [ID]"
* component[genomic-ref-seq].valueCodeableConcept = $RefSeq#NM_005228.5
* component[dna-region][+].code = $loinc#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Exon 21"
* component[representative-coding-hgvs].code = $loinc#48004-6 "DNA change (c.HGVS)"
* component[representative-coding-hgvs].valueCodeableConcept = $HGVS#NM_005228.5:c.2573T>G
* component[representative-protein-hgvs].code = $loinc#48005-3 "Amino acid change (pHGVS)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#p.(Leu858Arg)
* component[sample-allelic-frequency].code = $loinc#81258-6 "Sample variant allelic frequency [NFr]"
* component[sample-allelic-frequency].valueQuantity = 42.3 '%'
* component[cytogenetic-location].code = $loinc#48001-2 "Cytogenetic (chromosome) location"
* component[cytogenetic-location].valueCodeableConcept = $ChromLoc#7p11.2
* component[coding-change-type].code = $loinc#48019-4 "DNA change type"
* component[coding-change-type].valueCodeableConcept = $SO#SO:1000008 "point_mutation"
* component[variation-code].code = $loinc#81252-9 "Discrete genetic variant"
* component[variation-code].valueCodeableConcept = $dbSNP#rs121434568
// Hinweis: CIViC Variant 33 (EGFR L858R) referenziert GRCh37-Koordinaten;
// genomische Koordinaten hier basieren auf GRCh38 (NC_000007.14:g.55191822T>G)
* component[reference-sequence-assembly].code = $loinc#62374-4 "Human reference sequence assembly version"
* component[reference-sequence-assembly].valueCodeableConcept = $loinc#LA26806-2 "GRCh38"
* component[exact-start-end].code = $loinc#81254-5 "Genomic allele start-end"
* component[exact-start-end].valueRange.low.value = 55191822
* component[exact-start-end].valueRange.high.value = 55191822
* component[ref-allele].code = $loinc#69547-8 "Genomic ref allele [ID]"
* component[ref-allele].valueString = "T"
* component[alt-allele].code = $loinc#69551-0 "Genomic alt allele [ID]"
* component[alt-allele].valueString = "G"
* component[genomic-source-class].code = $loinc#48002-0 "Genomic source class [Type]"
* component[genomic-source-class].valueCodeableConcept = $loinc#LA6684-0 "Somatic"

// Patient-3 EGFR Exon-20-Insertion p.Ala767_Val769dup (NSCLC Stadium IV)
// Hinweis: EGFR-Exon-20-Insertionen zeigen primaere Resistenz gegenueber
// gaengigen EGFR-TKIs (Osimertinib, Erlotinib, Gefitinib). Testung gemaess
// S3-Leitlinie 6.60 (Exon 18-21), Therapieoptionen abseits der Standardtherapie.
Instance: mii-exa-test-data-patient-3-molgen-variante-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante
Usage: #example
Description: "Observation: Genetische Variante EGFR Exon-20-Insertion p.Ala767_Val769dup bei NSCLC"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* basedOn = Reference(mii-exa-test-data-patient-3-molgen-anforderung-2)
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* effectiveDateTime = "2024-03-20"
* issued = "2024-03-25T10:00:00+01:00"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-test-data-molgen-specimen-1)
* device = Reference(mii-exa-test-data-molgen-device-sequencer)
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:3236 "EGFR"
* component[genomic-ref-seq].code = $loinc#48013-7 "Genomic reference sequence [ID]"
* component[genomic-ref-seq].valueCodeableConcept = $RefSeq#NM_005228.5
* component[dna-region][+].code = $loinc#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Exon 20"
* component[representative-coding-hgvs].code = $loinc#48004-6 "DNA change (c.HGVS)"
* component[representative-coding-hgvs].valueCodeableConcept = $HGVS#NM_005228.5:c.2300_2308dup
* component[representative-protein-hgvs].code = $loinc#48005-3 "Amino acid change (pHGVS)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#p.(Ala767_Val769dup)
* component[sample-allelic-frequency].code = $loinc#81258-6 "Sample variant allelic frequency [NFr]"
* component[sample-allelic-frequency].valueQuantity = 18.7 '%'
* component[cytogenetic-location].code = $loinc#48001-2 "Cytogenetic (chromosome) location"
* component[cytogenetic-location].valueCodeableConcept = $ChromLoc#7p11.2
* component[coding-change-type].code = $loinc#48019-4 "DNA change type"
* component[coding-change-type].valueCodeableConcept = $SO#SO:1000035 "duplication"
* component[reference-sequence-assembly].code = $loinc#62374-4 "Human reference sequence assembly version"
* component[reference-sequence-assembly].valueCodeableConcept = $loinc#LA26806-2 "GRCh38"
* component[genomic-source-class].code = $loinc#48002-0 "Genomic source class [Type]"
* component[genomic-source-class].valueCodeableConcept = $loinc#LA6684-0 "Somatic"
