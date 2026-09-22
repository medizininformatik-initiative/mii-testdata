Instance: mii-exa-molgen-devicedef-tso500
InstanceOf: DeviceDefinition
Usage: #example
Title: "TruSight Oncology 500 v2 Panel (DeviceDefinition)"
Description: "Katalogeintrag des TSO500 v2 Capture Panels: 523 Gene für SNV/Indel, 59 Gene für CNV, 23 Gene für DNA-Rearrangements, 55 Gene für RNA-Fusionen und Splice-Varianten; integrierte Biomarker TMB, MSI und HRD; Panelgröße 1,94 Mb"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/panel-catalog"
* identifier.value = "TSO500-v2"
* manufacturerString = "Illumina Inc."
* deviceName[+].name = "TruSight Oncology 500 v2"
* deviceName[=].type = #model-name
* modelNumber = "20130527"
// DeviceDefinition.version ist in FHIR R4 ein einfacher string (0..*);
// die BackboneElement-Form mit .value gibt es erst in R5.
* version = "2"
* specialization.systemType = "Hybrid capture-based comprehensive genomic profiling panel for solid tumors (RUO)"
* specialization.version = "523 SNV/Indel genes; 59 CNV genes; 23 DNA rearrangement genes; 55 RNA fusion/splice genes; TMB; MSI; HRD; 1.94 Mb panel size"
* type.text = "Comprehensive genomic profiling capture panel"

// === Concrete lot/inventory instance ===

Instance: mii-exa-molgen-device-tso500-lot
InstanceOf: Device
Usage: #example
Title: "TSO500 v2 Kit Lot 20240518"
Description: "Konkrete Kit-Charge des TSO500 v2 Panels im Labor, verweist auf den Katalog-Eintrag in der DeviceDefinition"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/lab-devices"
* identifier.value = "TSO500v2-LOT-20240518-A"
* definition = Reference(mii-exa-molgen-devicedef-tso500)
* manufacturer = "Illumina Inc."
* modelNumber = "20130527"
* lotNumber = "20240518-A"
* expirationDate = "2026-12-31"
* type.text = "Comprehensive genomic profiling capture panel (TSO500 v2)"
* status = #active

// === Probenmaterial: FFPE-Tumorgewebe ===
// TSO500 v2 ist auf FFPE-Gewebe ausgelegt -- Illumina gibt fuer die v2 einen
// abgesenkten Input von 10-30 ng DNA und 20-40 ng RNA an, gerade damit
// limitiertes und degradiertes FFPE-Material verwendbar bleibt.
// Kodierung: SNOMED CT 441652008 als Probenart (im biobank-ValueSet
// mii-vs-biobank-probenart-sct, Descendant von 123038009 Specimen) und
// 39607008 als Entnahmeort (mii-vs-biobank-body-structures-sct, Descendant
// von 123037004 Body structure); beide gegen den Terminologieserver validiert.

Instance: mii-exa-molgen-specimen-ffpe-tumor
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore
Usage: #example
Title: "FFPE-Tumorgewebe (NSCLC) fuer TSO500"
Description: "Formalinfixiertes, in Paraffin eingebettetes Tumorgewebe aus der Lunge, Ausgangsmaterial der TSO500-v2-Analyse bei nicht-kleinzelligem Lungenkarzinom"
* status = #available
* type = http://snomed.info/sct#441652008 "Formalin-fixed paraffin-embedded tissue specimen"
* subject = Reference(mii-exa-molgen-patient)
* receivedTime = "2024-05-16T09:20:00+02:00"
* collection.collectedDateTime = "2024-05-15"
* collection.bodySite = http://snomed.info/sct#39607008 "Lung structure"
* identifier.system = "https://www.charite.de/fhir/sid/bioproben"
* identifier.value = "specimen_tso500_ffpe_01"

// === GenomicStudy: TSO500 NSCLC Profiling ===

Instance: mii-exa-molgen-genomic-study-tso500
InstanceOf: mii-pr-molgen-genomic-study
Title: "Genomic Study TSO500 NSCLC"
Description: "Komprehensives Tumor-Profiling mit TSO500 bei nicht-kleinzelligem Lungenkarzinom (NSCLC)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study)
* status = #completed
* subject = Reference(mii-exa-molgen-patient)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(mii-exa-molgen-genomic-study-analysis-tso500-libprep)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(mii-exa-molgen-genomic-study-analysis-tso500-sequencing)

// === Analysis 1: Library Preparation / Target Enrichment mit TSO500 ===

Instance: mii-exa-molgen-genomic-study-analysis-tso500-libprep
InstanceOf: mii-pr-molgen-genomic-study-analysis
Title: "TSO500 Library Preparation"
Description: "Library Preparation und Hybrid-Capture-Target-Enrichment mit dem TSO500 Panel"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study-analysis)
* status = #completed
* subject = Reference(mii-exa-molgen-patient)
* extension[specimen].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen"
* extension[specimen].valueReference = Reference(mii-exa-molgen-specimen-ffpe-tumor)
* extension[device].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
* extension[device].extension[device].url = "device"
* extension[device].extension[device].valueReference = Reference(mii-exa-molgen-device-tso500-lot)
* extension[device].extension[function].url = "function"
* extension[device].extension[function].valueCodeableConcept = http://loinc.org#LA26810-4 "DNA hybridization"
* extension[method-type].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[method-type].valueCodeableConcept = http://loinc.org#LA26810-4 "DNA hybridization"
* extension[regions].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-regions"
* extension[regions].extension[description].url = "description"
* extension[regions].extension[description].valueString = "TSO500 v2 Panel: 523 Gene für SNV/Indel, 59 für CNV, 23 für DNA-Rearrangements, 55 Gene für RNA-Fusionen/Splice-Varianten; integrierte Biomarker TMB/MSI/HRD. Unten repräsentatives, NSCLC-relevantes Subset; vollständige Genliste siehe DeviceDefinition mii-exa-molgen-devicedef-tso500"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:3236 "EGFR"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:6407 "KRAS"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:1097 "BRAF"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:7989 "NRAS"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:427 "ALK"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:10261 "ROS1"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:7029 "MET"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:9967 "RET"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:11998 "TP53"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:8975 "PIK3CA"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:3430 "ERBB2"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:3689 "FGFR2"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:3690 "FGFR3"

// === Analysis 2: Sequenzierung auf NovaSeq 6000 ===

Instance: mii-exa-molgen-genomic-study-analysis-tso500-sequencing
InstanceOf: mii-pr-molgen-genomic-study-analysis
Title: "TSO500 Sequencing on NovaSeq 6000"
Description: "Paired-end Sequenzierung der TSO500-Library auf Illumina NovaSeq 6000"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study-analysis)
* status = #completed
* subject = Reference(mii-exa-molgen-patient)
* extension[specimen].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen"
* extension[specimen].valueReference = Reference(mii-exa-molgen-specimen-ffpe-tumor)
* extension[device].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
* extension[device].extension[device].url = "device"
* extension[device].extension[device].valueReference = Reference(mii-exa-molgen-device-illumina-novaseq)
* extension[method-type].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[method-type].valueCodeableConcept = http://loinc.org#LA26398-0 "Sequencing"
* extension[metrics].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-metrics"
* extension[metrics].extension[read-depth].url = "read-depth"
* extension[metrics].extension[read-depth].valueQuantity = 1000 '1' "reads"
* extension[metrics].extension[sequencing-coverage].url = "sequencing-coverage"
* extension[metrics].extension[sequencing-coverage].valueQuantity = 95.0 '%' "percent"
* extension[metrics].extension[metrics-description].url = "metrics-description"
* extension[metrics].extension[metrics-description].valueString = "Mean target coverage 1000X; 95% der Zielregionen >250X; Q30 >90%; FFPE-bedingte Qualitätsfilter angewandt"
