// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-genotyp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genotyp
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genotyp|1.0.0"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#84413-4 "Genotype display name"
* subject = Reference(mii-exa-test-data-patient-3)
* valueCodeableConcept.text = "BRAF rs113488022 T>A"
* method = $loinc#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)
* device = Reference(mii-exa-test-data-molgen-device-sequencer)
* derivedFrom = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:1097 "BRAF"
* component[cytogenetic-location].code = $loinc#48001-2 "Cytogenetic (chromosome) location"
* component[cytogenetic-location].valueCodeableConcept = $ChromLoc#7q34