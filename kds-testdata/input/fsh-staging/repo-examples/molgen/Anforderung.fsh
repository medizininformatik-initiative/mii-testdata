Instance: mii-exa-molgen-anforderung-1
InstanceOf: mii-pr-molgen-anforderung-genetischer-test
Usage: #example
Title: "Anforderung BRAF Genetische Testung"
Description: "Beispiel für Anforderung für genetische Testung auf genetische Variante im BRAF Gen an Hand von NGS."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test)
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/servicerequest"
* status = #active
* intent = #order
* category = http://snomed.info/sct#108252007 "Laboratory procedure (procedure)"
* code.coding[0] = http://snomed.info/sct#405825005 "Molecular genetic test (procedure)"
* code.coding[+] = http://loinc.org#53844-7 "BRAF gene targeted mutation analysis in Blood or Tissue by Molecular genetics method"
* code.coding[+] = http://www.genenames.org/geneId#HGNC:1097 "BRAF"
* code.text = "BRAF: Exon 15 (Codon 600)"
* subject = Reference(mii-exa-molgen-patient)
* authoredOn = "2022-04-07"
* requester = Reference(mii-exa-molgen-practitioner-physician)
* reasonCode = http://snomed.info/sct#447886005 "Adenocarcinoma of anorectum (disorder)"
* specimen = Reference(mii-exa-molgen-specimen-1)
* supportingInfo[familienanamnese] = Reference(mii-exa-molgen-family-member-history-1)

Instance: mii-exa-molgen-anforderung-2
InstanceOf: mii-pr-molgen-anforderung-genetischer-test
Usage: #example
Title: "Anforderung Molekulargenetische Diagnose eines Cornelia de Lange-Syndrom"
Description: "Beispiel für Anforderung für genetische Testung auf pathogene Variante im NIPBL Gen."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test)
* identifier.system = "https://www.charite.de/fhir/auftragsnummern"
* identifier.value = "gen_test_02"
* status = #active
* intent = #order
* category = http://snomed.info/sct#108252007 "Laboratory procedure (procedure)"
* code.coding[0] = http://snomed.info/sct#405825005 "Molecular genetic test (procedure)"
* code.coding[+] = http://loinc.org#40428-5 "NIPBL gene targeted mutation analysis in Blood or Tissue by Molecular genetics method"
* code.coding[+] = http://www.genenames.org/geneId#HGNC:28862 "NIPBL"
* code.text = "Molekulargenetische Diagnose eines Cornelia de Lange-Syndrom (MIM122470),autosomal dominanter Erbgang"
* subject = Reference(mii-exa-molgen-patient-2)
* authoredOn = "2022-03-16"
* requester = Reference(mii-exa-molgen-practitioner-physician)
* specimen = Reference(mii-exa-molgen-specimen-2)
* reasonCode[0] = http://snomed.info/sct#395507008 "Premature infant (finding)"
* reasonCode[1].coding[0] = http://snomed.info/sct#276610007 "Low birth weight infant (disorder)"
* reasonCode[1].coding[1] = http://human-phenotype-ontology.org#HP:0001518 "Small for gestational age"
* reasonCode[2].coding[0] = http://snomed.info/sct#431265009 "Fetal microcephaly (disorder)"
* reasonCode[2].coding[1] = http://human-phenotype-ontology.org#HP:0000252 "Microcephaly"
* reasonCode[3].coding[0] = http://snomed.info/sct#137511000119103 "Carrier of muscular dystrophy (finding)"
* reasonCode[3].coding[1] = http://human-phenotype-ontology.org#HP:0003560 "Muscular dystrophy"
* reasonCode[4] = http://human-phenotype-ontology.org#HP:0000527 "Long eyelashes"
* reasonReference[0] = Reference(mii-exa-molgen-phenotypic-feature-1)
* reasonReference[1] = Reference(mii-exa-molgen-phenotypic-feature-2)
* reasonReference[2] = Reference(mii-exa-molgen-phenotypic-feature-3)
* reasonReference[3] = Reference(mii-exa-molgen-phenotypic-feature-4)

Instance: mii-exa-molgen-anforderung-trurisk-panel
InstanceOf: mii-pr-molgen-anforderung-genetischer-test
Usage: #example
Title: "Anforderung Molekulargenetische Diagnose Familiäre Belastung für Brust- und Eierstockkrebs"
Description: "Beispiel für Anforderung für genetische Testung bei Familiärer Belastung für Brust- und Eierstockkrebs."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test)
* identifier.system = "https://www.charite.de/fhir/auftragsnummern"
* identifier.value = "gen_test_03"
* status = #active
* intent = #order
* category = http://snomed.info/sct#108252007 "Laboratory procedure (procedure)"
* code.coding[0] = http://snomed.info/sct#405825005 "Molecular genetic test (procedure)"
* code.text = "Panelanalyse TruRisk®-V3 mit NGS basierter CNV-Analyse Bestimmung des Polygenen Risikoscores (PRS) für Brustkrebs"
* subject = Reference(mii-exa-molgen-patient-brca1)
* authoredOn = "2022-11-01"
* requester = Reference(mii-exa-molgen-practitioner-physician)
* specimen = Reference(mii-exa-molgen-specimen-brca1)
* reasonCode[0] = http://snomed.info/sct#429740004 "Family history of malignant neoplasm of breast (situation)"
* reasonCode[1] = http://snomed.info/sct#430705002 "Family history of malignant neoplasm of ovary (situation)"
* reasonCode[2] = http://www.orpha.net#145 "Hereditary breast and/or ovarian cancer syndrome"
* reasonCode[3] = http://www.omim.org#604370 "BREAST-OVARIAN CANCER, FAMILIAL, SUSCEPTIBILITY TO, 1; BROVCA1"
