Instance: mii-exa-mtb-kim-diagnose
InstanceOf: MII_PR_MTB_Diagnose_Primaertumor
Usage: #example
Title: "Bestätigte Primärdiagnose"
Description: "Bestätigte Primärdiagnose C48.2 für Kim Musterperson"
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor)
* extension[Feststellungsdatum].valueDateTime = 2021-06-10
* recordedDate = 2021-06-10
* subject = Reference(Patient/PatientKimMusterperson)
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus.coding[condition-ver-status][+] = http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed
* verificationStatus.coding[primaertumorDiagnosesicherung][+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung#2
* code.coding[+]  = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C48.2 "Bösartige Neubildung: Peritoneum, nicht näher bezeichnet"
* code.coding[=].version = "2023"
* bodySite = http://terminology.hl7.org/CodeSystem/icd-o-3#C56.9 "Ovar"
* stage[ErstdiagnoseZeitpunkt].assessment[+] = Reference(Observation/mii-exa-mtb-kim-tumorausbreitung)
* stage[OncoTree].type.coding = http://snomed.info/sct#371441004 "Histologic type of proliferative mass"
* stage[OncoTree].assessment[+] = Reference(Observation/mii-exa-mtb-kim-oncotree)

Instance: mii-exa-mtb-kim-tumorausbreitung
InstanceOf: MII_PR_MTB_Tumorausbreitung
Usage: #example
Title: "Lokale Tumorausbreitung"
Description: "Lokale Tumorausbreitung bei Kim Musterperson"
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung)
* status = #final
* category = http://snomed.info/sct#473302008 "Aware of diagnosis"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = 2021-06-10 
* valueCodeableConcept = http://snomed.info/sct#255127006

Instance: mii-exa-mtb-kim-oncotree
InstanceOf: MII_PR_MTB_Oncotree
Usage: #example
Title: "High-Grade Neuroendocrine Carcinoma of the Ovary"
Description: "High-Grade Neuroendocrine Carcinoma of the Ovary (HGONEC) bei Kim Musterperson"
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree)
* status = #final
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = 2021-06-10 
* valueCodeableConcept = http://data.mskcc.org/ontologies/oncotree#HGONEC
