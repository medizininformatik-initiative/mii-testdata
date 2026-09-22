Instance: mii-exa-onko-prostata-surgery-2
InstanceOf: MII_PR_Onko_Operation
Usage: #example
Title: "MII EXA Onko Prostata Operation"
Description: "Beispiel für eine Prostatektomie in der Onkologie"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)
* status = #completed  // Valid Procedure status: completed
* category = http://snomed.info/sct#387713003 "Surgical procedure"
* code.coding[ops] = http://fhir.de/CodeSystem/bfarm/ops#5-604.02 "Radikale Prostatovesikulektomie: Retropubisch: Mit regionaler Lymphadenektomie"
* code.coding[ops].version = "2024"
* code.coding[sct] = http://snomed.info/sct#26294005 "Radical prostatectomy (procedure)"

* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* encounter = Reference(mii-exa-onko-prostata-bundle-encounter)

* performedDateTime = "2024-02-15T10:00:00+01:00"

* reasonReference = Reference(mii-exa-onko-prostata-diagnose)

* extension[Intention].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention#K "kurativ"
* complication[compl_obds].coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-komplikation#N "nein"

* outcome.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus#R0 "Kein Residualtumor"
