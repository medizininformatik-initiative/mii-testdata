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
* supportingInfo[familienanamnese] = Reference(mii-exa-test-data-patient-3-molgen-family-member-history-1)

//Patient-4
Instance: mii-exa-test-data-patient-4-molgen-anforderung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test
Usage: #example
* identifier.system = "https://www.charite.de/fhir/auftragsnummern"
* identifier.value = "7B369EB0"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure (procedure)"
* code.coding[0] = $sct#405825005 "Molecular genetic test (procedure)"
* code.text = "Molekulargenetische Untersuchung (Stufendiagnostik) der relevanten Gene"
* subject = Reference(mii-exa-test-data-patient-4)
* authoredOn = "2022-11-30"
* requester = Reference(mii-exa-test-data-practitioner-physician-2)
* specimen = Reference(mii-exa-test-data-patient-4-specimen-1)
* reasonCode[0].coding[0] = $sct#87737001 "Signet ring cell carcinoma (morphologic abnormality)"
* reasonCode[0].text = "Eigenanamnese: Siegelringkarzinom des Magens, diffus wachsend"
* reasonCode[1].coding[0] = $sct#429740004 "Family history of malignant neoplasm of breast (situation)"
* reasonCode[1].text = "Mutter an Brustkrebs verstorben"
* reasonReference[0] = Reference(mii-exa-test-data-patient-4-diagnose-1)