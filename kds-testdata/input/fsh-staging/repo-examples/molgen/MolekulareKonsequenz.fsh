Instance: mii-exa-molgen-molekulare-konsequenz-1
InstanceOf: mii-pr-molgen-molekulare-konsequenz
Usage: #example
Title: "BRAF Variante Molekulare Konsequenz"
Description: "Beispiel für molekulare Konsequenz abgeleitet von genetischer Variante im BRAF Gen an Hand von NGS."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence|3.0.0"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence "Molecular Consequence"
* subject = Reference(mii-exa-molgen-patient)
* effectiveDateTime = "2022-04-07"
* performer = Reference(mii-exa-molgen-practitioner-lab)
* derivedFrom[variant] = Reference(mii-exa-molgen-variante-1)
* component[conclusion-string].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis einer aktivierenden Mutation BRAF V600E"

Instance: mii-exa-molgen-molekulare-konsequenz-2
InstanceOf: mii-pr-molgen-molekulare-konsequenz
Usage: #example
Title: "NIPBL Variante Molekulare Konsequenz"
Description: "Beispiel für molekulare Konsequenz abgeleitet von genetischer Variante im NIPBL Gen an Hand von WGS."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence|3.0.0"
* extension[workflow-relatedArtifact].url = "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact"
* extension[workflow-relatedArtifact].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact].valueRelatedArtifact.citation = "Richards et al., Genet Med. 2015; 17:405-24"
* extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://doi.org/10.1038/gim.2015.30"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence "Molecular Consequence"
* subject = Reference(mii-exa-molgen-patient-2)
* effectiveDateTime = "2022-03-16"
* performer = Reference(mii-exa-molgen-practitioner-lab)
* derivedFrom[variant] = Reference(mii-exa-molgen-variante-2)
* component[conclusion-string].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis einer pathogenen Variante im NIPBL-Gen in heterozygoter Form."
* component[clinical-significance].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[clinical-significance].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"
//* component[mode-of-inheritance].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#condition-inheritance //CS updaten, wenn gen-reporting v2.0
//* component[mode-of-inheritance].valueCodeableConcept = http://human-phenotype-ontology.org#HP:0000006 "Autosomal dominant inheritance"
//* component[predicted-phenotype].code = http://loinc.org#81259-4 "Associated phenotype"
//* component[predicted-phenotype].valueCodeableConcept = http://snomed.info/sct#40354009 "De Lange syndrome (disorder)"


// CNV (17.pdf)

Instance: mii-exa-molgen-molekulare-konsequenz-cnv-4
InstanceOf: mii-pr-molgen-molekulare-konsequenz
Usage: #example
Title: "CNV SMO Molekulare Konsequenz"
Description: "Beispiel für molekulare Konsequenz abgeleitet von Copy Number Variante im SMO Gen."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence|3.0.0"
* extension[workflow-relatedArtifact].url = "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact"
* extension[workflow-relatedArtifact].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact].valueRelatedArtifact.citation = "Richards et al., Genet Med. 2015; 17:405-24"
* extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/25741868/"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence "Molecular Consequence"
* subject = Reference(mii-exa-molgen-patient-2)
* effectiveDateTime = "2022-03-16"
* performer = Reference(mii-exa-molgen-practitioner-lab)
* derivedFrom[variant] = Reference(mii-exa-molgen-variante-cnv-4)
* component[conclusion-string].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "onkogene Veränderung mögl. Überexpression"
* component[clinical-significance].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[clinical-significance].valueCodeableConcept = http://loinc.org#LA26332-9 "Likely pathogenic"
* component[functional-effect].valueCodeableConcept.coding[+] = http://sequenceontology.org#SO:0002315 "increased_gene_product_level"
* component[functional-effect].valueCodeableConcept.coding[+] = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C36337 "Messenger RNA Overexpression"
* component[functional-effect].valueCodeableConcept.text = "mögl. Überexpression" // (13581-fach, Rang 1)???

// 04 docx

Instance: mii-exa-molgen-molekulare-konsequenz-brca1
InstanceOf: mii-pr-molgen-molekulare-konsequenz
Usage: #example
Title: "Molekulare Konsequenz BRCA1 Variante"
Description: "Beispiel für molekulare Konsequenz abgeleitet von SNP im BRCA1."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence|3.0.0"
* extension[workflow-relatedArtifact].url = "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact"
* extension[workflow-relatedArtifact].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact].valueRelatedArtifact.citation = "Richards et al., Genet Med. 2015; 17:405-24"
* extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/25741868/"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence "Molecular Consequence"
* subject = Reference(mii-exa-molgen-patient-brca1)
* effectiveDateTime = "2022-11-01"
* performer = Reference(mii-exa-molgen-practitioner-lab)
* derivedFrom[variant] = Reference(mii-exa-molgen-variante-brca1)
* component[conclusion-string].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis heterozygoter Sequenzveränderung, die zum Funktionsverlust führt"
* component[clinical-significance].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[clinical-significance].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"
* component[functional-effect].valueCodeableConcept = http://sequenceontology.org#SO:0002054 "loss_of_function_variant"
* component[functional-effect].valueCodeableConcept.text = "Funktionsverlust des Genprodukts"
* component[evidence-level].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/clinvar-evidence-level-custom-cs#2-star "2 star"
