Instance: mii-exa-test-data-onko-mamma-systemische-procedure
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie
Usage: #example
Description: "Procedure: Systemische Therapie für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* reasonReference = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* extension[intention]
  * url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention"
  * valueCodeableConcept = $mii-cs-onko-intention#K
* extension[+]
  * url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop"
  * valueCodeableConcept = $mii-cs-onko-stellungzurop#A
* status = $event-status#completed
* category.coding = $sct#367336001 "Chemotherapy (procedure)"
* usedCode.coding = $mii-cs-onko-therapie-protokolle#AC "AC"
* code.coding = $mii-cs-onko-therapie-typ#Chemotherapy
* code.coding[+] = $ops#8-52
* performedPeriod
  * start = "2021-12-04"
  * end = "2022-04-06"