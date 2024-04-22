// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-untersuchte-region-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region|1.0.0"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/region-studied"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#53041-0 "DNA region of interest panel"
* subject = Reference(mii-exa-test-data-patient-3)
* method = $loinc#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)
* device = Reference(mii-exa-test-data-molgen-device-sequencer)
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:1097 "BRAF"
* component[gene-mutations].code = $loinc#36908-2 "Gene mutations tested for in Blood or Tissue by Molecular genetics method Nominal"
* component[gene-mutations].valueCodeableConcept = $HGVS#NM_004333.4:c.1799T>A
* component[region-description].code = $loinc#81293-3 "Description of ranges of DNA sequences examined"
* component[region-description].valueString = "BRAF: Exon 15 (Codon 600)"
* component[ranges-examined][+].code = $loinc#51959-5 "Range(s) of DNA sequence examined"
* component[ranges-examined][=].valueRange.low = 15 $ucum#{Exon} "Exon"
* component[ranges-examined][=].valueRange.high = 15 $ucum#{Exon} "Exon"
* component[ranges-examined][+].code = $loinc#51959-5 "Range(s) of DNA sequence examined"
* component[ranges-examined][=].valueRange.low = 582 $ucum#{Codon} "Codon"
* component[ranges-examined][=].valueRange.high = 612 $ucum#{Codon} "Codon"
* component[genomic-ref-seq].code = $loinc#48013-7 "Genomic reference sequence [ID]"
* component[genomic-ref-seq].valueCodeableConcept = $RefSeq#NM_004333.4