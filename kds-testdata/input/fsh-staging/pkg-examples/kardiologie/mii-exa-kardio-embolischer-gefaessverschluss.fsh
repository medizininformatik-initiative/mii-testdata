Instance: mii-exa-kardio-embolischer-gefaessverschluss
InstanceOf: MII_PR_Kardio_Diagnose
Usage: #example
* contained = Beispielpatient
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis#eg-cv "Embolischer Gefäßverschluss cerebro-vaskulär"
* code.coding.version = "2027.0.0-ballot"
* asserter.display = "Facharzt für Kardiologie"
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension.valueDateTime = "2025-02-02"
* language = #de
* subject = Reference(Beispielpatient)
* recorder = Reference(Beispielpatient)
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* recordedDate = "2025-02-02"
* onsetDateTime = "2024-11-05"