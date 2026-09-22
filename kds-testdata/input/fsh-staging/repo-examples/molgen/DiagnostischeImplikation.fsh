Instance: mii-exa-molgen-diagnostische-implikation-1
InstanceOf: mii-pr-molgen-diagnostische-implikation
Usage: #example
Title: "BRAF Variante Diagnostische Implikation"
Description: "Beispiel für diagnostische Implikation abgeleitet von genetischer Variante im BRAF Gen an Hand von NGS."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication|3.0.0"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(mii-exa-molgen-patient)
* effectiveDateTime = "2022-04-07"
* performer = Reference(mii-exa-molgen-practitioner-lab)
* derivedFrom[variant] = Reference(mii-exa-molgen-variante-1)
* component[conclusion-string].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis einer aktivierenden Mutation BRAF V600E"

Instance: mii-exa-molgen-diagnostische-implikation-2
InstanceOf: mii-pr-molgen-diagnostische-implikation
Usage: #example
Title: "NIPBL Variante Diagnostische Implikation"
Description: "Beispiel für diagnostische Implikation abgeleitet von genetischer Variante im NIPBL Gen an Hand von WGS."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication|3.0.0"
* extension[workflow-relatedArtifact].url = "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact"
* extension[workflow-relatedArtifact].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact].valueRelatedArtifact.citation = "Richards et al., Genet Med. 2015; 17:405-24"
* extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://doi.org/10.1038/gim.2015.30"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(mii-exa-molgen-patient-2)
* effectiveDateTime = "2022-03-16"
* performer = Reference(mii-exa-molgen-practitioner-lab)
* derivedFrom[variant] = Reference(mii-exa-molgen-variante-2)
* component[conclusion-string].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis einer pathogenen Variante im NIPBL-Gen in heterozygoter Form."
* component[clinical-significance].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[clinical-significance].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"
* component[mode-of-inheritance].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#condition-inheritance //CS updaten, wenn gen-reporting v2.0
* component[mode-of-inheritance].valueCodeableConcept = http://human-phenotype-ontology.org#HP:0000006 "Autosomal dominant inheritance"
* component[predicted-phenotype].code = http://loinc.org#81259-4 "Associated phenotype"
* component[predicted-phenotype].valueCodeableConcept = http://snomed.info/sct#40354009 "De Lange syndrome (disorder)"


// CNV (17.pdf)

Instance: mii-exa-molgen-diagnostische-implikation-cnv-4
InstanceOf: mii-pr-molgen-diagnostische-implikation
Usage: #example
Title: "CNV SMO Diagnostische Implikation"
Description: "Beispiel für diagnostische Implikation abgeleitet von Copy Number Variante im SMO Gen."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication|3.0.0"
//* extension[workflow-relatedArtifact].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/workflow-relatedArtifact"
//* extension[workflow-relatedArtifact].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
//* extension[workflow-relatedArtifact].valueRelatedArtifact.citation = "Richards et al., Genet Med. 2015; 17:405-24"
//* extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/25741868/"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(mii-exa-molgen-patient-2)
* effectiveDateTime = "2022-03-16"
* performer = Reference(mii-exa-molgen-practitioner-lab)
* derivedFrom[variant] = Reference(mii-exa-molgen-variante-cnv-4)
* component[conclusion-string].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "onkogene Veränderung "
* component[clinical-significance].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[clinical-significance].valueCodeableConcept = http://loinc.org#LA26332-9 "Likely pathogenic"

// 04 docx

Instance: mii-exa-molgen-diagnostische-implikation-brca1
InstanceOf: mii-pr-molgen-diagnostische-implikation
Usage: #example
Title: "Diagnostische Implikation BRCA1 Variante"
Description: "Beispiel für diagnostische Implikation abgeleitet von SNP im BRCA1."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication|3.0.0"
//* extension[workflow-relatedArtifact].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/workflow-relatedArtifact"
//* extension[workflow-relatedArtifact].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
//* extension[workflow-relatedArtifact].valueRelatedArtifact.citation = "Richards et al., Genet Med. 2015; 17:405-24"
//* extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/25741868/"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(mii-exa-molgen-patient-brca1)
* effectiveDateTime = "2022-11-01"
* performer = Reference(mii-exa-molgen-practitioner-lab)
* derivedFrom[variant] = Reference(mii-exa-molgen-variante-brca1)
* component[conclusion-string].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis heterozygoter Sequenzveränderung, die zum Funktionsverlust führt"
* component[clinical-significance].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[clinical-significance].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"
* component[predicted-phenotype].valueCodeableConcept.coding[0] = http://human-phenotype-ontology.org#HP:0003002 "Breast carcinoma"
* component[predicted-phenotype].valueCodeableConcept.coding[+] = http://human-phenotype-ontology.org#HP:0100615 "Ovarian neoplasm"
* component[evidence-level].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/clinvar-evidence-level-custom-cs#2-star "2 star"
