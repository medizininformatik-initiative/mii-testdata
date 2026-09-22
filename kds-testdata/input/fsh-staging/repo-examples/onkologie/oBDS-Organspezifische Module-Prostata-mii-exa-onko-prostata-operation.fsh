Instance: mii-exa-onko-prostata-operation-prostatektomie
InstanceOf: MII_PR_Onko_Prostata_Operation
Usage: #example
Title: "Prostata Operation Prostatektomie Beispiel"
Description: "Beispiel einer radikalen Prostatektomie"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostata-operation)
* status = #completed
* category = http://snomed.info/sct#387713003 "Surgical procedure"
* code.coding[ops] = http://fhir.de/CodeSystem/bfarm/ops#5-604.02 "Radikale Prostatovesikulektomie: Retropubisch: Mit regionaler Lymphadenektomie"
* code.coding[ops].version = "2024"
* code.coding[sct] = http://snomed.info/sct#26294005 "Radical prostatectomy (procedure)"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* performedDateTime = "2024-03-15"
* extension[Intention].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention#K "kurativ"
* reasonReference = Reference(mii-exa-onko-prostata-diagnose)
* outcome = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus#R0 "Kein Residualtumor"

Instance: mii-exa-onko-prostata-operation-turp
InstanceOf: MII_PR_Onko_Prostata_Operation
Usage: #example
Title: "Prostata Operation TURP Beispiel"
Description: "Beispiel einer transurethralen Resektion der Prostata"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostata-operation)
* status = #completed
* category = http://snomed.info/sct#387713003 "Surgical procedure"
* code.coding[ops] = http://fhir.de/CodeSystem/bfarm/ops#5-601.0 "Transurethrale Exzision und Destruktion von Prostatagewebe: Elektroresektion"
* code.coding[ops].version = "2024"
* code.coding[sct] = http://snomed.info/sct#90199006 "Transurethral prostatectomy"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* performedDateTime = "2024-02-20"
* extension[Intention].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention#D "diagnostisch"
* reasonReference = Reference(mii-exa-onko-prostata-diagnose)
* outcome = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus#R1 "Mikroskopischer Residualtumor"
