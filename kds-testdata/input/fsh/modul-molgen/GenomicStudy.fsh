// =============================================================================
// GenomicStudy + GenomicStudyAnalysis (replaces untersuchte-region)
// =============================================================================

// Patient-3: BRAF Exon 15 Analysis
Instance: mii-exa-test-data-patient-3-molgen-genomic-study-analysis-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study-analysis
Usage: #example
Description: "Procedure: Genomic Study Analysis BRAF Exon 15 mittels NGS"
* insert TestDataLabel
* status = #completed
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* extension[title].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-title"
* extension[title].valueString = "BRAF Exon 15 Analyse"
* extension[method-type].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[method-type].valueCodeableConcept = $loinc#LA26398-0 "Sequencing"
* extension[change-type].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-change-type"
* extension[change-type].valueCodeableConcept = $SO#SO:1000008 "point_mutation"
* extension[genome-build].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-genome-build"
* extension[genome-build].valueCodeableConcept = $loinc#LA26806-2 "GRCh38"
* extension[specimen].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen"
* extension[specimen].valueReference = Reference(mii-exa-test-data-patient-3-specimen-1)
* extension[device].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
* extension[device].extension[+].url = "device"
* extension[device].extension[=].valueReference = Reference(mii-exa-test-data-molgen-device-sequencer)
* extension[regions].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-regions"
* extension[regions].extension[+].url = "description"
* extension[regions].extension[=].valueString = "BRAF: Exon 15 (Codon 582-612)"
* extension[regions].extension[+].url = "studied"
* extension[regions].extension[=].valueCodeableConcept = $HGNC#HGNC:1097 "BRAF"

Instance: mii-exa-test-data-patient-3-molgen-genomic-study-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study
Usage: #example
Description: "Procedure: Genomic Study BRAF-Analyse bei kolorektalem Adenokarzinom"
* insert TestDataLabel
* status = #completed
* code = $sct#405825005 "Molecular genetic test (procedure)"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* encounter = Reference(mii-exa-test-data-molgen-encounter-1)
* performedDateTime = "2022-04-07"
* reasonReference = Reference(mii-exa-test-data-patient-3-diagnose-1)
* extension[genomic-study-analysis][+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[genomic-study-analysis][=].valueReference = Reference(mii-exa-test-data-patient-3-molgen-genomic-study-analysis-1)

// Patient-4: Stufendiagnostik Panel (18 genes)
Instance: mii-exa-test-data-patient-4-molgen-genomic-study-analysis-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study-analysis
Usage: #example
Description: "Procedure: Genomic Study Analysis Stufendiagnostik Magenkarzinom-Panel"
* insert TestDataLabel
* status = #completed
* subject = Reference(mii-exa-test-data-molgen-patient-2)
* extension[title].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-title"
* extension[title].valueString = "Stufendiagnostik hereditaeres Magenkarzinom"
* extension[method-type].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[method-type].valueCodeableConcept = $loinc#LA26398-0 "Sequencing"
* extension[genome-build].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-genome-build"
* extension[genome-build].valueCodeableConcept = $loinc#LA26806-2 "GRCh38"
* extension[specimen].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen"
* extension[specimen].valueReference = Reference(mii-exa-test-data-patient-4-specimen-1)
* extension[device].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
* extension[device].extension[+].url = "device"
* extension[device].extension[=].valueReference = Reference(mii-exa-test-data-molgen-device-sequencer)
* extension[regions].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-regions"
* extension[regions].extension[+].url = "description"
* extension[regions].extension[=].valueString = "Direkte Sequenzierung der codierenden Exons inkl. flankierender intronischer Bereiche"
* extension[regions].extension[+].url = "studied"
* extension[regions].extension[=].valueCodeableConcept = $HGNC#HGNC:583 "APC"
* extension[regions].extension[+].url = "studied"
* extension[regions].extension[=].valueCodeableConcept = $HGNC#HGNC:795 "ATM"
* extension[regions].extension[+].url = "studied"
* extension[regions].extension[=].valueCodeableConcept = $HGNC#HGNC:1100 "BRCA1"
* extension[regions].extension[+].url = "studied"
* extension[regions].extension[=].valueCodeableConcept = $HGNC#HGNC:1101 "BRCA2"
* extension[regions].extension[+].url = "studied"
* extension[regions].extension[=].valueCodeableConcept = $HGNC#HGNC:1748 "CDH1"
* extension[regions].extension[+].url = "studied"
* extension[regions].extension[=].valueCodeableConcept = $HGNC#HGNC:2509 "CTNNA1"
* extension[regions].extension[+].url = "studied"
* extension[regions].extension[=].valueCodeableConcept = $HGNC#HGNC:7127 "MLH1"
* extension[regions].extension[+].url = "studied"
* extension[regions].extension[=].valueCodeableConcept = $HGNC#HGNC:7325 "MSH2"
* extension[regions].extension[+].url = "studied"
* extension[regions].extension[=].valueCodeableConcept = $HGNC#HGNC:7329 "MSH6"
* extension[regions].extension[+].url = "studied"
* extension[regions].extension[=].valueCodeableConcept = $HGNC#HGNC:11998 "TP53"

Instance: mii-exa-test-data-patient-4-molgen-genomic-study-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study
Usage: #example
Description: "Procedure: Genomic Study Stufendiagnostik Magenkarzinom"
* insert TestDataLabel
* status = #completed
* code = $sct#405825005 "Molecular genetic test (procedure)"
* subject = Reference(mii-exa-test-data-molgen-patient-2)
* encounter = Reference(mii-exa-test-data-molgen-encounter-2)
* performedDateTime = "2022-11-30"
* reasonReference = Reference(mii-exa-test-data-patient-4-diagnose-1)
* extension[genomic-study-analysis][+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[genomic-study-analysis][=].valueReference = Reference(mii-exa-test-data-patient-4-molgen-genomic-study-analysis-1)
