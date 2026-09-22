Instance: mii-exa-seltene-narse-stoffwechseltherapie-pompe
InstanceOf: MII_PR_Seltene_TherapieDurchgefuehrt
Usage: #example
Title: "Beispiel NARSE Stoffwechseltherapie bei Morbus Pompe"
Description: "Beispiel einer durchgeführten Enzymersatztherapie bei Morbus Pompe"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt)
* status = #in-progress
* code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp"
* code.coding.code = #stoffwechseltherapie
* code.coding.display = "Stoffwechseltherapie"
* subject = Reference(mii-exa-seltene-patient)
* subject.display = "Pompe Patient"
* performedPeriod.start = "2024-01-15"
