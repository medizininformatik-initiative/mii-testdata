Instance: mii-exa-seltene-narse-gentherapie-sma
InstanceOf: MII_PR_Seltene_TherapieDurchgefuehrt
Usage: #example
Title: "Beispiel NARSE Gentherapie bei SMA"
Description: "Beispiel einer durchgeführten Gentherapie bei Spinaler Muskelatrophie"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt)
* status = #completed
* code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp"
* code.coding.code = #gentherapie
* code.coding.display = "Gentherapie"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* performedDateTime = "2024-07-29"
