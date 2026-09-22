Instance: MII-EXA-MTB-GenomicStudy-1
InstanceOf: MII_PR_MTB_Genomic_Study
Usage: #example
Title: "Beispiel fuer einen GenomicStudy"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study)
* extension[genomic-study-analysis][+].valueReference = Reference(MII-EXA-MTB-GenomicStudyAnalysis-1)
* status = #completed
* subject = Reference(Patient/mii-exa-mtb-patient)
* reasonReference = Reference(Condition/mii-exa-mtb-kim-diagnose)

Instance: MII-EXA-MTB-GenomicStudyAnalysis-1
InstanceOf: MII_PR_MTB_Genomic_Study_Analysis
Usage: #example
Title: "Beispiel fuer einen GenomicStudyAnalysis"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis)
* status = #completed
* subject = Reference(Patient/mii-exa-mtb-patient)
* extension[method-type][+].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs#ngs-mps "Next-Generation (NGS)/Massively parallel sequencing (MPS)"
* extension[focus].valueReference = Reference(Patient/mii-exa-mtb-patient)
* extension[device][+].extension[device].valueReference = Reference(MII-EXA-MTB-Device-Sequencer-1)
* extension[device][=].extension[function].valueCodeableConcept = MII_CS_MTB_GenomicStudyAnalysis_DeviceFunction#sequencing-device
* extension[device][+].extension[device].valueReference = Reference(MII-EXA-MTB-Device-SequencingKit-1)
* extension[device][=].extension[function].valueCodeableConcept = MII_CS_MTB_GenomicStudyAnalysis_DeviceFunction#sequencing-kit
* extension[device][+].extension[device].valueReference = Reference(MII-EXA-MTB-Device-LibraryPreparation-Kit-1)
* extension[device][=].extension[function].valueCodeableConcept = MII_CS_MTB_GenomicStudyAnalysis_DeviceFunction#library-preparation-kit
* extension[genome-build].valueCodeableConcept =  http://loinc.org#LA26806-2 "GRCh38"

Instance: MII-EXA-MTB-Device-Sequencer-1
InstanceOf: MII_PR_MTB_Genomic_Study_Device
Usage: #example
Title: "Beispiel fuer einen Sequencer"
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-device)
* manufacturer = "Illumina"
* deviceName.name = "Illumina NovaSeq X Plus"
* deviceName.type = #user-friendly-name

Instance: MII-EXA-MTB-Device-SequencingKit-1
InstanceOf: Device
Usage: #example
Title: "Beispiel für ein SequencingKit"
* manufacturer = "Illumina"
* deviceName.name = "NovaSeq X Reagent Kit (300 cycles)"
* deviceName.type = #user-friendly-name

Instance: MII-EXA-MTB-Device-LibraryPreparation-Kit-1
InstanceOf: Device
Usage: #example
Title: "Beispiel für ein Library Preparation Kit"
* manufacturer = "Illumina"
* deviceName.name = " Illumina TruSeq DNA PCR-Free"
* deviceName.type = #user-friendly-name
