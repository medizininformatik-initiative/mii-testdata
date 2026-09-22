Instance: mii-exa-onko-operation-1
InstanceOf: MII_PR_Onko_Operation
Usage: #example
Title: "Example surgical therapy"
Description: "Example surgical therapy"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-01)
* status = #completed
* extension[Intention].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention#K // kurativ
* category = http://snomed.info/sct#387713003 "Surgical procedure (procedure)"
* code.coding[ops] = http://fhir.de/CodeSystem/bfarm/ops#5-870 "Partielle (brusterhaltende) Exzision der Mamma und Destruktion von Mammagewebe"
* code.coding[ops].version = "2021"

* performedDateTime = 2021-12-04
* complication.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-komplikation#HNK "Hautnekrose im Operationsbereich"
* outcome = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus#R1 "Mikroskopischer Residualtumor"
