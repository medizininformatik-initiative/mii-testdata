// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-variante-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante
Usage: #example
Description: "Observation: Genetische Variante für BRAF-Mutation"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante|1.0.0"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* basedOn = Reference(mii-exa-test-data-patient-3-molgen-anforderung-1)
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-test-data-patient-3)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)
* device = Reference(mii-exa-test-data-molgen-device-sequencer)
* derivedFrom = Reference(mii-exa-test-data-patient-3-molgen-untersuchte-region-1)
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:1097 "BRAF"
* component[genomic-ref-seq].code = $loinc#48013-7 "Genomic reference sequence [ID]"
* component[genomic-ref-seq].valueCodeableConcept = $RefSeq#NM_004333.4
* component[dna-region][+].code = $loinc#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Exon #15"
* component[dna-region][+].code = $loinc#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Codon #582 - #612"
* component[coding-hgvs].code = $loinc#48004-6 "DNA change (c.HGVS)"
* component[coding-hgvs].valueCodeableConcept = $HGVS#NM_004333.4:c.1799T>A
* component[protein-hgvs].code = $loinc#48005-3 "Amino acid change (pHGVS)"
* component[protein-hgvs].valueCodeableConcept = $HGVS#p.(Val600Glu)
* component[sample-allelic-frequency].code = $loinc#81258-6 "Sample variant allelic frequency [NFr]"
* component[sample-allelic-frequency].valueQuantity = 30.25 '%'
* component[cytogenetic-location].code = $loinc#48001-2 "Cytogenetic (chromosome) location"
* component[cytogenetic-location].valueCodeableConcept = $ChromLoc#7q34
* component[coding-change-type].code = $loinc#48019-4 "DNA change type"
* component[coding-change-type].valueCodeableConcept = $SO#SO:1000008 "point_mutation"
* component[amino-acid-change-type].code = $loinc#48006-1 "Amino acid change [Type]"
* component[amino-acid-change-type].valueCodeableConcept = $loinc#LA6698-0 "Missense"
* component[variation-code].code = $loinc#81252-9 "Discrete genetic variant"
* component[variation-code].valueCodeableConcept = $dbSNP#rs113488022

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
Description: "Observation: Genetische Variante für CTNNA1-Mutation"
* insert TestDataLabel
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* basedOn = Reference(mii-exa-test-data-patient-4-molgen-anforderung-1)
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-test-data-patient-4)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method.coding[0] = $loinc#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-test-data-patient-4-specimen-1)
* device = Reference(mii-exa-test-data-molgen-device-sequencer)
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:2509 "CTNNA1"
* component[transcript-ref-seq].valueCodeableConcept = $RefSeq#NM_001903.5
* component[coding-hgvs].valueCodeableConcept = $HGVS#NM_001903.5:c.1030del
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000005.9:g.138163372del
* component[genomic-ref-seq].valueCodeableConcept = $RefSeq#NC_000005.9
* component[protein-hgvs].valueCodeableConcept = $HGVS#p.(Leu344CysfsTer25)
* component[allelic-state].valueCodeableConcept = $loinc#LA6706-1 "Heterozygous"
* component[coding-change-type].valueCodeableConcept = $SO#SO:0000159 "Deletion"
* component[amino-acid-change-type].valueCodeableConcept = $loinc#LA6694-9 "Frameshift"
* component[cytogenetic-location].valueCodeableConcept = $ChromLoc#5q31.2