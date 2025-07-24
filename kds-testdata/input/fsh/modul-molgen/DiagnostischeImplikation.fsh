// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-diagnostische-implikation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation
Usage: #example
Description: "Observation: Diagnostische Implikation für BRAF-Mutation"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation|1.0.0"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(mii-exa-test-data-patient-3)
* derivedFrom[variant] = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* component[conclusion-string].code = $tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis einer aktivierenden Mutation BRAF V600E"

// Patient-4
Instance: mii-exa-test-data-patient-4-molgen-diagnostische-implikation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation
Usage: #example
Description: "Observation: Diagnostische Implikation für Magenkarzinom"
* insert TestDataLabel
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-artifact"
* extension[0].valueRelatedArtifact.type = $related-artifact-type#citation "Citation"
* extension[0].valueRelatedArtifact.citation = "ClinGen"
* extension[0].valueRelatedArtifact.url = "https://search.clinicalgenome.org/kb/gene-dosage/HGNC:2509"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(mii-exa-test-data-patient-4)
* performer = Reference(mii-exa-test-data-practitioner-physician-2)
* derivedFrom[variant] = Reference(mii-exa-test-data-patient-4-molgen-variante-1)
* component[conclusion-string].valueString = "Diese Variante wird nach den ACMG/AMP-Kriterien zusammenfasssend als pathogen bewertet entsprechend IARC Class 5."
* component[clinical-significance].valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"
* component[functional-effect].valueCodeableConcept = $SO#SO:0002054 "loss_of_function_variant"
* component[predicted-phenotype].valueCodeableConcept.coding[0] = $sct#716859000 "Hereditary diffuse carcinoma of stomach (disorder)"