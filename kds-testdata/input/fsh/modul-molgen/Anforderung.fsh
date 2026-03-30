// Patient-3
Instance: mii-exa-test-data-patient-3-molgen-anforderung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test
Usage: #example
Description: "ServiceRequest: Anforderung genetischer Test fuer BRAF-Mutation"
* insert TestDataLabel
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure (procedure)"
* code.coding[0] = $sct#405825005 "Molecular genetic test (procedure)"
* code.coding[+] = $loinc#53844-7 "BRAF gene targeted mutation analysis in Blood or Tissue by Molecular genetics method"
* code.coding[+] = $HGNC#HGNC:1097 "BRAF"
* code.text = "BRAF: Exon 15 (Codon 600)"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* encounter = Reference(mii-exa-test-data-molgen-encounter-1)
* authoredOn = "2022-04-07"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#447886005 "Adenocarcinoma of anorectum (disorder)"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)
* supportingInfo[familienanamnese] = Reference(mii-exa-test-data-patient-3-molgen-family-member-history-1)
* note.text = "Dringender Verdacht auf BRAF V600E bei bekanntem kolorektalem Karzinom. Therapieentscheidung abhaengig von Ergebnis."

//Patient-4
Instance: mii-exa-test-data-patient-4-molgen-anforderung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test
Usage: #example
Description: "ServiceRequest: Anforderung molekulargenetische Stufendiagnostik"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/auftragsnummern"
* identifier.value = "7B369EB0"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure (procedure)"
* code.coding[0] = $sct#405825005 "Molecular genetic test (procedure)"
* code.text = "Molekulargenetische Untersuchung (Stufendiagnostik) der relevanten Gene"
* subject = Reference(mii-exa-test-data-molgen-patient-2)
* encounter = Reference(mii-exa-test-data-molgen-encounter-2)
* authoredOn = "2022-11-30"
* requester = Reference(mii-exa-test-data-practitioner-physician-2)
* specimen = Reference(mii-exa-test-data-patient-4-specimen-1)
* reasonCode[0].coding[0] = $sct#87737001 "Signet ring cell carcinoma (morphologic abnormality)"
* reasonCode[0].text = "Eigenanamnese: Siegelringkarzinom des Magens, diffus wachsend"
* reasonCode[1].coding[0] = $sct#429740004 "Family history of malignant neoplasm of breast (situation)"
* reasonCode[1].text = "Mutter an Brustkrebs verstorben"
* reasonReference[0] = Reference(mii-exa-test-data-patient-4-diagnose-1)
* supportingInfo[familienanamnese] = Reference(mii-exa-test-data-patient-4-molgen-family-member-history-1)

// Patient-3 NSCLC Stadium IV
Instance: mii-exa-test-data-patient-3-molgen-anforderung-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test
Usage: #example
Description: "ServiceRequest: Anforderung NGS-Panel bei NSCLC Stadium IV gemaess S3-Leitlinie"
* insert TestDataLabel
* extension[workflow-relatedArtifact].valueRelatedArtifact.type = $related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact].valueRelatedArtifact.citation = "S3-Leitlinie Lungenkarzinom, Version 4.0 (April 2025), Empfehlung 6.60, AWMF 020-007OL"
* extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://register.awmf.org/de/leitlinien/detail/020-007OL"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure (procedure)"
* code.coding[0] = $sct#405825005 "Molecular genetic test (procedure)"
* code.text = "NGS-Panel NSCLC: EGFR Exon 18-21, BRAF V600, ALK, ROS1, RET, NTRK 1-3, KRAS G12C, MET Exon 14, NRG1, HER2 Exon 8/18-21"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* encounter = Reference(mii-exa-test-data-molgen-encounter-1)
* authoredOn = "2024-03-15"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#254637007 "Non-small cell carcinoma of lung (disorder)"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)
* note.text = "NSCLC Stadium IV. Molekularpathologische Untersuchung gemaess S3-Leitlinie Empfehlung 6.60 vor Einleitung der Erstlinientherapie."
