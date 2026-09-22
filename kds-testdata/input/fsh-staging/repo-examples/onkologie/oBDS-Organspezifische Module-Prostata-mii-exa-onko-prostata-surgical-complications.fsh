Instance: mii-exa-onko-prostata-surgery-1
InstanceOf: MII_PR_Onko_Operation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)
* status = #completed
* category.coding = http://snomed.info/sct#387713003 "Surgical procedure"
* code.coding[ops] = http://fhir.de/CodeSystem/bfarm/ops#5-604 "Radikale Prostatovesikulektomie"
* code.coding[ops].version = "2024"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* reasonReference = Reference(mii-exa-onko-prostata-diagnose)
* extension[Intention].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention#K "Kurativ"
* performedDateTime = "2024-06-24"

Instance: mii-exa-onko-prostata-surgical-complication-1
InstanceOf: MII_PR_Onko_Prostata_Clavien_Dindo
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-clavien-dindo)
* status = #final
* code.coding = http://snomed.info/sct#789279006 "Clavien-Dindo classification grade (observable entity)"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus[Diagnose] = Reference(mii-exa-onko-prostata-diagnose)
* focus[Operation] = Reference (mii-exa-onko-prostata-surgery-1)
* effectiveDateTime = "2024-06-24"
* valueCodeableConcept.coding[ClavienDindo] = http://snomed.info/sct#1367522003 "Clavien-Dindo classification grade IIIa (finding)"
* valueCodeableConcept.coding[OBDSPostOPKompl] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-prostata-postsurgical-complications#J "Ja"
