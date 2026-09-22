Instance: mii-exa-molgen-bundle-comprehensive-wes
InstanceOf: Bundle
Usage: #example
Title: "Comprehensive WES Bundle with Full Technical Documentation"
Description: "Transaktions-Bundle für eine vollständige Whole Exome Sequencing Analyse mit detaillierten technischen Angaben zu Geräten, Kits, Metriken und Bioinformatik-Pipeline. Dieses Beispiel zeigt die erweiterten Dokumentationsmöglichkeiten für Forschungsprojekte."
* type = #transaction
* timestamp = "2024-01-20T10:00:00+01:00"

// Patient
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Patient/mii-exa-molgen-patient-wes"
* entry[=].resource = mii-exa-molgen-patient-wes
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

// Devices
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Device/mii-exa-molgen-device-illumina-novaseq"
* entry[=].resource = mii-exa-molgen-device-illumina-novaseq
* entry[=].request.method = #POST
* entry[=].request.url = "Device"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Device/mii-exa-molgen-device-thermofisher-ionchef"
* entry[=].resource = mii-exa-molgen-device-thermofisher-ionchef
* entry[=].request.method = #POST
* entry[=].request.url = "Device"

// Specimens
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Specimen/mii-exa-molgen-specimen-blood-edta-bundle"
* entry[=].resource = mii-exa-molgen-specimen-blood-edta-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Specimen/mii-exa-molgen-specimen-dna-library-bundle"
* entry[=].resource = mii-exa-molgen-specimen-dna-library-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"

// Protocol/PlanDefinition
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/PlanDefinition/mii-exa-molgen-protocol-agilent-sureselect"
* entry[=].resource = mii-exa-molgen-protocol-agilent-sureselect
* entry[=].request.method = #POST
* entry[=].request.url = "PlanDefinition"

// DocumentReferences for data files
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/DocumentReference/mii-exa-molgen-documentreference-bed-file-bundle"
* entry[=].resource = mii-exa-molgen-documentreference-bed-file-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "DocumentReference"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/DocumentReference/mii-exa-molgen-documentreference-fastq-bundle"
* entry[=].resource = mii-exa-molgen-documentreference-fastq-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "DocumentReference"

// GenomicStudy and Analyses
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Procedure/mii-exa-molgen-genomic-study-comprehensive-wes-bundle"
* entry[=].resource = mii-exa-molgen-genomic-study-comprehensive-wes-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Procedure/mii-exa-molgen-genomic-study-analysis-wes-library-prep-bundle"
* entry[=].resource = mii-exa-molgen-genomic-study-analysis-wes-library-prep-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Procedure/mii-exa-molgen-genomic-study-analysis-wes-sequencing-bundle"
* entry[=].resource = mii-exa-molgen-genomic-study-analysis-wes-sequencing-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Procedure/mii-exa-molgen-genomic-study-analysis-wes-bioinformatics-bundle"
* entry[=].resource = mii-exa-molgen-genomic-study-analysis-wes-bioinformatics-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

// ServiceRequest
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ServiceRequest/mii-exa-molgen-anforderung-wes-bundle"
* entry[=].resource = mii-exa-molgen-anforderung-wes-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "ServiceRequest"

// Observations (Variant and Diagnostic Implication)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Observation/mii-exa-molgen-variante-comprehensive-pathogenic-bundle"
* entry[=].resource = mii-exa-molgen-variante-comprehensive-pathogenic-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Observation/mii-exa-molgen-diagnostische-implikation-comprehensive-bundle"
* entry[=].resource = mii-exa-molgen-diagnostische-implikation-comprehensive-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Media (Coverage Plot)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Media/mii-exa-molgen-media-coverage-plot"
* entry[=].resource = mii-exa-molgen-media-coverage-plot
* entry[=].request.method = #POST
* entry[=].request.url = "Media"

// DiagnosticReport
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/DiagnosticReport/mii-exa-molgen-befundbericht-comprehensive-wes-bundle"
* entry[=].resource = mii-exa-molgen-befundbericht-comprehensive-wes-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "DiagnosticReport"

// Practitioners
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Practitioner/mii-exa-molgen-practitioner-bundle"
* entry[=].resource = mii-exa-molgen-practitioner-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/Practitioner/mii-exa-molgen-practitioner-lab-bundle"
* entry[=].resource = mii-exa-molgen-practitioner-lab-bundle
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"

// Bundle-specific instances with updated references

Instance: mii-exa-molgen-patient-wes
InstanceOf: Patient
Usage: #inline
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/patient-ids"
* identifier.value = "WES2024001"
* name.family = "Mustermann"
* name.given = "Max"
* gender = #male
* birthDate = "1970-01-01"

Instance: mii-exa-molgen-specimen-blood-edta-bundle
InstanceOf: Specimen
Usage: #inline
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/specimen-ids"
* identifier.value = "EDTA-2024-001"
* type = http://snomed.info/sct#119361006 "Plasma specimen"
* subject = Reference(Patient/mii-exa-molgen-patient-wes)
* collection.collectedDateTime = "2024-01-15T09:30:00+01:00"
* container.type = http://snomed.info/sct#767384004 "Evacuated blood collection tube with clot activator"
* container.capacity = 10 'mL' "milliliter"
* container.specimenQuantity = 10 'mL' "milliliter"

Instance: mii-exa-molgen-specimen-dna-library-bundle
InstanceOf: Specimen
Usage: #inline
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/specimen-ids"
* identifier.value = "LIB-2024-001"
* type = http://snomed.info/sct#119342007 "Saliva specimen"
* type.text = "DNA Library"
* subject = Reference(Patient/mii-exa-molgen-patient-wes)
* parent = Reference(Specimen/mii-exa-molgen-specimen-blood-edta)
* processing.description = "DNA extraction and library preparation using Agilent SureSelect"
* processing.timeDateTime = "2024-01-16T14:00:00+01:00"

Instance: mii-exa-molgen-documentreference-bed-file-bundle
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* type.text = "BED file - Agilent SureSelect V7 target regions"
* subject = Reference(Patient/mii-exa-molgen-patient-wes)
* content.attachment.url = "https://www.medizininformatik-initiative.de/fhir/files/agilent_v7_targets.bed"
* content.attachment.title = "Agilent SureSelect Human All Exon V7 Target Regions"
* content.attachment.contentType = #text/plain

Instance: mii-exa-molgen-documentreference-fastq-bundle
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* type.text = "FASTQ files - paired-end sequencing data"
* subject = Reference(Patient/mii-exa-molgen-patient-wes)
* content[+].attachment.url = "https://www.medizininformatik-initiative.de/fhir/files/sample_R1.fastq.gz"
* content[=].attachment.title = "Forward reads"
* content[=].attachment.contentType = #application/gzip
* content[+].attachment.url = "https://www.medizininformatik-initiative.de/fhir/files/sample_R2.fastq.gz"
* content[=].attachment.title = "Reverse reads"
* content[=].attachment.contentType = #application/gzip

Instance: mii-exa-molgen-genomic-study-comprehensive-wes-bundle
InstanceOf: mii-pr-molgen-genomic-study
Usage: #inline
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study)
* status = #completed
* subject = Reference(Patient/mii-exa-molgen-patient-wes)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(Procedure/mii-exa-molgen-genomic-study-analysis-wes-library-prep)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(Procedure/mii-exa-molgen-genomic-study-analysis-wes-sequencing)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(Procedure/mii-exa-molgen-genomic-study-analysis-wes-bioinformatics)

Instance: mii-exa-molgen-genomic-study-analysis-wes-library-prep-bundle
InstanceOf: mii-pr-molgen-genomic-study-analysis
Usage: #inline
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study-analysis)
* status = #completed
* subject = Reference(Patient/mii-exa-molgen-patient-wes)
* extension[specimen].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen"
* extension[specimen].valueReference = Reference(Specimen/mii-exa-molgen-specimen-blood-edta)
* extension[device].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
* extension[device].extension[device].url = "device"
* extension[device].extension[device].valueReference = Reference(Device/mii-exa-molgen-device-thermofisher-ionchef)
* extension[method-type].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[method-type].valueCodeableConcept = http://loinc.org#LA26810-4 "DNA hybridization"
// Protocol reference removed - genomic-study-analysis-protocol-performed only accepts Task/Procedure in STU3, not PlanDefinition

Instance: mii-exa-molgen-genomic-study-analysis-wes-sequencing-bundle
InstanceOf: mii-pr-molgen-genomic-study-analysis
Usage: #inline
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study-analysis)
* status = #completed
* subject = Reference(Patient/mii-exa-molgen-patient-wes)
* extension[specimen].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen"
* extension[specimen].valueReference = Reference(Specimen/mii-exa-molgen-specimen-dna-library)
* extension[device].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
* extension[device].extension[device].url = "device"
* extension[device].extension[device].valueReference = Reference(Device/mii-exa-molgen-device-illumina-novaseq)
* extension[method-type].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[method-type].valueCodeableConcept = http://loinc.org#LA26398-0 "Sequencing"

Instance: mii-exa-molgen-genomic-study-analysis-wes-bioinformatics-bundle
InstanceOf: mii-pr-molgen-genomic-study-analysis
Usage: #inline
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study-analysis)
* status = #completed
* subject = Reference(Patient/mii-exa-molgen-patient-wes)
* extension[method-type].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[method-type].valueCodeableConcept = http://loinc.org#LA26811-2 "Computational analysis"

Instance: mii-exa-molgen-anforderung-wes-bundle
InstanceOf: mii-pr-molgen-anforderung-genetischer-test
Usage: #inline
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test)
* status = #completed
* intent = #order
* code = http://loinc.org#86205-2 "Whole exome sequence analysis in Blood or Tissue by Molecular genetics method"
* subject = Reference(Patient/mii-exa-molgen-patient-wes)
* authoredOn = "2024-01-10"
* requester = Reference(Practitioner/mii-exa-molgen-practitioner-bundle)
* reasonCode = http://snomed.info/sct#110359009 "Intellectual disability (disorder)"

Instance: mii-exa-molgen-variante-comprehensive-pathogenic-bundle
InstanceOf: mii-pr-molgen-variante
Usage: #inline
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/mii-exa-molgen-patient-wes)
* effectiveDateTime = "2024-01-10"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* component[gene-studied].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:7132 "KMT2A"
* component[representative-coding-hgvs].code = http://loinc.org#48004-6 "DNA change (c.HGVS)"
* component[representative-coding-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#NM_005933.3:c.3463C>T "NM_005933.3:c.3463C>T"
* component[representative-protein-hgvs].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[representative-protein-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#p.(Arg1155Ter) "p.(Arg1155Ter)"

Instance: mii-exa-molgen-diagnostische-implikation-comprehensive-bundle
InstanceOf: mii-pr-molgen-diagnostische-implikation
Usage: #inline
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(Patient/mii-exa-molgen-patient-wes)
* effectiveDateTime = "2024-01-10"
* derivedFrom = Reference(Observation/mii-exa-molgen-variante-comprehensive-pathogenic)
* component[clinical-significance].code = http://loinc.org#53037-8
* component[clinical-significance].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"

Instance: mii-exa-molgen-befundbericht-comprehensive-wes-bundle
InstanceOf: mii-pr-molgen-molekulargenetischer-befundbericht
Usage: #inline
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report|3.0.0"
* extension[genomic-study].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-reference"
* extension[genomic-study].valueReference = Reference(Procedure/mii-exa-molgen-genomic-study-comprehensive-wes)
* basedOn = Reference(ServiceRequest/mii-exa-molgen-anforderung-wes)
* status = http://hl7.org/fhir/diagnostic-report-status#final
* category[Genetics] = http://terminology.hl7.org/CodeSystem/v2-0074#GE "Genetics"
* code = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(Patient/mii-exa-molgen-patient-wes)
* performer = Reference(Practitioner/mii-exa-molgen-practitioner-lab)
* specimen = Reference(Specimen/mii-exa-molgen-specimen-blood-edta)
* result[variant] = Reference(Observation/mii-exa-molgen-variante-comprehensive-pathogenic)
* result[diagnostic-implication] = Reference(Observation/mii-exa-molgen-diagnostische-implikation-comprehensive)
* media[+].comment = "Coverage plot showing uniform coverage across all exons"
* media[=].link = Reference(Media/mii-exa-molgen-media-coverage-plot)
* conclusion = "Whole exome sequencing identified a pathogenic de novo variant in the KMT2A gene, consistent with Wiedemann-Steiner syndrome. Technical quality metrics met all acceptance criteria."
* conclusionCode = http://loinc.org#LA6576-8 "Positive"

Instance: mii-exa-molgen-practitioner-bundle
InstanceOf: Practitioner
Usage: #inline
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/practitioner-ids"
* identifier.value = "12345"
* name.family = "Schmidt"
* name.given = "Anna"
* name.prefix = "Dr."

Instance: mii-exa-molgen-practitioner-lab-bundle
InstanceOf: Practitioner
Usage: #inline
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/practitioner-ids"
* identifier.value = "67890"
* name.family = "Weber"
* name.given = "Thomas"
* name.prefix = "Dr."
