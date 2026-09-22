Instance: mii-exa-molgen-genomic-study-1
InstanceOf: mii-pr-molgen-genomic-study
Title: "Molekulargentischer Befund 1: BRAF mutiert colorektales Adenokarzinom"
Description: "Beispiel für molekulargenetischen Befund BRAF mutiert bei colorektalem Adenokarzniom."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study)
* status = #completed
* subject = Reference(mii-exa-molgen-patient)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(mii-exa-molgen-genomic-study-analysis-braf)

Instance: mii-exa-molgen-genomic-study-analysis-braf
InstanceOf: mii-pr-molgen-genomic-study-analysis
Title: "Genomic Study Analysis BRAF"
Description: "Analyse der BRAF Region mittels NGS"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study-analysis)
* status = #completed
* subject = Reference(mii-exa-molgen-patient)
* extension[specimen].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen"
* extension[specimen].valueReference = Reference(mii-exa-molgen-specimen-1)
* extension[device].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
* extension[device].extension[device].url = "device"
* extension[device].extension[device].valueReference = Reference(mii-exa-molgen-device-sequencer)
* extension[method-type].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[method-type].valueCodeableConcept = http://loinc.org#LA26398-0 "Sequencing"
* extension[regions].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-regions"
* extension[regions].extension[description].url = "description"
* extension[regions].extension[description].valueString = "BRAF: Exon 15 (Codon 600)"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:1097 "BRAF"

Instance: mii-exa-molgen-genomic-study-trurisk-panel
InstanceOf: mii-pr-molgen-genomic-study
Title: "Genomic Study TruRisk Panel v3"
Description: "Genomische Studie für TruRisk Panel v3"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study)
* status = #completed
* subject = Reference(mii-exa-molgen-patient-brca1)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(mii-exa-molgen-genomic-study-analysis-trurisk-panel)

Instance: mii-exa-molgen-genomic-study-analysis-trurisk-panel
InstanceOf: mii-pr-molgen-genomic-study-analysis
Title: "Genomic Study Analysis TruRisk Panel v3"
Description: "NGS-Analyse des TruRisk Panel v3 für erblichen Brust- und Eierstockkrebs"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study-analysis)
* status = #completed
* subject = Reference(mii-exa-molgen-patient-brca1)
* extension[specimen].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen"
* extension[specimen].valueReference = Reference(mii-exa-molgen-specimen-brca1)
* extension[device].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
* extension[device].extension[device].url = "device"
* extension[device].extension[device].valueReference = Reference(mii-exa-molgen-device-sequencer-nextseq)
* extension[method-type].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[method-type].valueCodeableConcept = http://loinc.org#LA26398-0 "Sequencing"
* extension[regions].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-regions"
* extension[regions].extension[description].url = "description"
* extension[regions].extension[description].valueString = "TruRisk Panel v3: Alle kodierenden Exons der Core-Gene für erblichen Brust- und Eierstockkrebs"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:795 "ATM"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:1100 "BRCA1"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:952 "BARD1"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:1101 "BRCA2"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:20473 "BRIP1"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:1748 "CDH1"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:16627 "CHEK2"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:7127 "MLH1"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:7325 "MSH2"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:7329 "MSH6"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:26144 "PALB2"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:9122 "PMS2"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:9588 "PTEN"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:9820 "RAD51C"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:9823 "RAD51D"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:11998 "TP53"

Instance: mii-exa-molgen-genomic-study-cornelia-de-lange
InstanceOf: mii-pr-molgen-genomic-study
Title: "Genomic Study Cornelia de Lange Panel"
Description: "Genomische Studie für Cornelia de Lange-Syndrom Panel"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study)
* status = #completed
* subject = Reference(mii-exa-molgen-patient-2)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(mii-exa-molgen-genomic-study-analysis-cornelia-de-lange)

Instance: mii-exa-molgen-genomic-study-analysis-cornelia-de-lange
InstanceOf: mii-pr-molgen-genomic-study-analysis
Title: "Genomic Study Analysis Cornelia de Lange Panel"
Description: "NGS-Analyse des Cornelia de Lange-Syndrom Panels"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study-analysis)
* status = #completed
* subject = Reference(mii-exa-molgen-patient-2)
* extension[specimen].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen"
* extension[specimen].valueReference = Reference(mii-exa-molgen-specimen-2)
* extension[device].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
* extension[device].extension[device].url = "device"
* extension[device].extension[device].valueReference = Reference(mii-exa-molgen-device-sequencer-2)
* extension[method-type].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[method-type].valueCodeableConcept = http://loinc.org#LA26398-0 "Sequencing"
* extension[regions].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-regions"
* extension[regions].extension[description].url = "description"
* extension[regions].extension[description].valueString = "Cornelia de Lange Panel: Alle kodierenden Exons der Gene NIPBL, HDAC8, RAD21, SMC1A, SMC3, TP63"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:28862 "NIPBL"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:13315 "HDAC8"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:9811 "RAD21"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:11111 "SMC1A"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:2468 "SMC3"
* extension[regions].extension[studied][+].url = "studied"
* extension[regions].extension[studied][=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:15979 "TP63"
