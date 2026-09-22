Instance: mii-exa-kardio-diagnose-myokardinfarkt
InstanceOf: MII_PR_Kardio_Diagnose
Usage: #example
* contained = Beispielpatient
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code.coding[0] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#I21.9 "Akuter Myokardinfarkt, nicht näher bezeichnet"
* code.coding[=].version = "2026"
* code.coding[+] = http://snomed.info/sct#22298006 "Myocardial infarction"
* code.coding[=].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* asserter.display = "Facharzt für Kardiologie"
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension.valueDateTime = "2023-11-05"
* language = #de
* subject = Reference(Beispielpatient)
* recorder = Reference(Beispielpatient)
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* recordedDate = "2025-05-13"
* onsetDateTime = "2023-11-05"