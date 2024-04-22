// Patient-3
Instance: mii-exa-test-data-patient-3-molgen-anforderung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test|1.0.0"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure (procedure)"
* code.coding[0] = $sct#405825005 "Molecular genetic test (procedure)"
* code.coding[+] = $loinc#53844-7 "BRAF gene targeted mutation analysis in Blood or Tissue by Molecular genetics method"
* code.coding[+] = $HGNC#HGNC:1097 "BRAF"
* code.text = "BRAF: Exon 15 (Codon 600)"
* subject = Reference(mii-exa-test-data-patient-3)
* authoredOn = "2022-04-07"
* reasonCode = $sct#447886005 "Adenocarcinoma of anorectum (disorder)"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)
* supportingInfo[familienanamnese] = Reference(mii-exa-molgen-family-member-history-1)

