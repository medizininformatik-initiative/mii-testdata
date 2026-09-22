Instance: mii-exa-molgen-genotyp-1
InstanceOf: mii-pr-molgen-genotyp
Usage: #example
Title: "Genotyp BRAF"
Description: "Beispiel für Genotyp BRAF Gen."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genotyp)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype|3.0.0"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#84413-4 "Genotype display name"
* subject = Reference(mii-exa-molgen-patient)
* effectiveDateTime = "2022-04-07"
* valueCodeableConcept.text = "BRAF rs113488022 T>A"
* method = http://loinc.org#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-molgen-specimen-1)
* device = Reference(mii-exa-molgen-device-sequencer)
* derivedFrom = Reference(mii-exa-molgen-variante-1)
* component[gene-studied].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:1097 "BRAF"
* component[cytogenetic-location].code = http://loinc.org#48001-2 "Cytogenetic (chromosome) location"
* component[cytogenetic-location].valueCodeableConcept = urn:oid:2.16.840.1.113883.6.335#7q34

Instance: mii-exa-molgen-genotyp-2
InstanceOf: mii-pr-molgen-genotyp
Usage: #example
Title: "Genotyp NIPBL"
Description: "Beispiel für Genotyp NIPBL Gen."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genotyp)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype|3.0.0"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#84413-4 "Genotype display name"
* subject = Reference(mii-exa-molgen-patient-2)
* effectiveDateTime = "2022-03-16"
* valueCodeableConcept.text = "NIPBL Variante c.2207del p.(Pro736Glnfs*58) (heterozygot)"
* method = http://loinc.org#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-molgen-specimen-2)
* device = Reference(mii-exa-molgen-device-sequencer-2)
* derivedFrom = Reference(mii-exa-molgen-variante-2)
* component[gene-studied].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:28862 "NIPBL"
* component[cytogenetic-location].code = http://loinc.org#48001-2 "Cytogenetic (chromosome) location"
* component[cytogenetic-location].valueCodeableConcept = urn:oid:2.16.840.1.113883.6.335#7q34

Instance: mii-exa-molgen-genotyp-brca1
InstanceOf: mii-pr-molgen-genotyp
Usage: #example
Title: "Genotyp BRCA1"
Description: "Beispiel für Genotyp BRCA1 Gen."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genotyp)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype|3.0.0"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#84413-4 "Genotype display name"
* subject = Reference(mii-exa-molgen-patient-brca1)
* effectiveDateTime = "2022-11-01"
* valueCodeableConcept.text = "BRCA1, c.5266dup, p.(Gln1756Profs*74)"
* method = http://loinc.org#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-molgen-specimen-brca1)
* device = Reference(mii-exa-molgen-device-sequencer-nextseq)
* derivedFrom = Reference(mii-exa-molgen-variante-brca1)
* component[gene-studied].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:1100 "BRCA1"
* component[cytogenetic-location].code = http://loinc.org#48001-2 "Cytogenetic (chromosome) location"
* component[cytogenetic-location].valueCodeableConcept = urn:oid:2.16.840.1.113883.6.335#17q21.31
