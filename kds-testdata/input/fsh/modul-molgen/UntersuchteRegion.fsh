// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-untersuchte-region-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region BRAF Exon 15"
* insert TestDataLabel
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

// Patient-4
RuleSet: Region(subject, specimen, device, HGNC-ID, HGNC-symbol, RefSeq)
* insert TestDataLabel
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/region-studied"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#53041-0 "DNA region of interest panel"
* subject = Reference({subject})
* performer = Reference(mii-exa-test-data-practitioner-physician-2)
* method = $loinc#LA26398-0 "Sequencing"
* specimen = Reference({specimen})
* device = Reference({device})
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#{HGNC-ID} "{HGNC-symbol}"
* component[region-description].code = $loinc#81293-3 "Description of ranges of DNA sequences examined"
* component[region-description].valueString = "direkte Sequenzierung der codierenden Exons inkl. flankierender intronischer Bereiche"
* component[transcript-ref-seq].valueCodeableConcept = $RefSeq#{RefSeq}

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region APC-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:583, APC, NM_000038.4)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region ATM-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:795, ATM, NM_000051.3)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region BRCA1-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:1100, BRCA1, NM_007294.3)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region BRCA2-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:1101, BRCA2, NM_000059.3)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-5
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region CDH1-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:1748, CDH1, NM_004360.4)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-6
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region MLH1-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:7127, MLH1, NM_000249.3)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-7
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region MSH2-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:7325, MSH2, NM_000251.2)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-8
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region MSH3-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:7326, MSH3, NM_002439.4)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-9
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region MSH6-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:7329, MSH6, NM_000179.2)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-10
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region MUTYH-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:7527, MUTYH, NM_001128425.1)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-11
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region NTHL1-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:8028, NTHL1, NM_002528.7)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-12
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region PMS2-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:9122, PMS2, NM_000535.5)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-13
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region POLD1-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:9175, POLD1, NM_001256849.1)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-14
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region POLE-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:9177, POLE, NM_006231.3)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-15
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region STK11-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:11389, STK11, NM_000455.4)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-16
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region SMAD4-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:6770, SMAD4, NM_005359.5)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-17
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region TP53-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:11998, TP53, NM_000546.5)

Instance: mii-exa-test-data-patient-4-molgen-untersuchte-region-18
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region
Usage: #example
Description: "Observation: Untersuchte genomische Region CTNNA1-Gen"
* insert TestDataLabel
* insert Region(mii-exa-test-data-patient-4, mii-exa-test-data-patient-4-specimen-1, mii-exa-test-data-molgen-device-sequencer, HGNC:2509, CTNNA1, NM_001903.5)