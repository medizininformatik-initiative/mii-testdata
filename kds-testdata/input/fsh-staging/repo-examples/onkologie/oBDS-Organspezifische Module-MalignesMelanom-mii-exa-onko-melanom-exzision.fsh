Instance: mii-exa-onko-melanom-exzision-oberarm
InstanceOf: MII_PR_Onko_Melanom_Exzision
Usage: #example
Title: "Melanom Exzision Oberarm Beispiel"
Description: "Beispiel einer Melanom-Exzision am linken Oberarm mit Sicherheitsabstand"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-exzision)
* status = #completed
* category = http://snomed.info/sct#387713003 "Surgical procedure"
* code.coding[ops] = http://fhir.de/CodeSystem/bfarm/ops#5-894.06 "Lokale Exzision von erkranktem Gewebe an Haut und Unterhaut: Ohne primären Wundverschluss: Schulter und Axilla"
* code.coding[ops].version = "2024"
* code.coding[sct] = http://snomed.info/sct#177281002 "Excision of melanoma (procedure)"
* bodySite = http://snomed.info/sct#368208006 "Left upper arm structure"
* subject = Reference(mii-exa-onko-melanom-bundle-patient)
* performedDateTime = "2024-03-20"
* extension[Intention].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention#K "kurativ"
* reasonReference = Reference(mii-exa-onko-melanom-diagnose)
* outcome = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus#R0 "Kein Residualtumor"

Instance: mii-exa-onko-melanom-exzision-ruecken
InstanceOf: MII_PR_Onko_Melanom_Exzision
Usage: #example
Title: "Melanom Exzision Rücken Beispiel"
Description: "Beispiel einer Melanom-Nachexzision am oberen Rücken"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-exzision)
* status = #completed
* category = http://snomed.info/sct#387713003 "Surgical procedure"
* code.coding[ops] = http://fhir.de/CodeSystem/bfarm/ops#5-894.0a "Lokale Exzision von erkranktem Gewebe an Haut und Unterhaut: Ohne primären Wundverschluss: Brustwand und Rücken"
* code.coding[ops].version = "2024"
* code.coding[sct] = http://snomed.info/sct#177281002 "Excision of melanoma (procedure)"
* bodySite = http://snomed.info/sct#304036007 "Structure of posterior region of neck"
* subject = Reference(mii-exa-onko-melanom-bundle-patient)
* performedDateTime = "2024-04-05"
* extension[Intention].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention#K "kurativ"
* reasonReference = Reference(mii-exa-onko-melanom-diagnose)
* outcome = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus#R0 "Kein Residualtumor"
* note.text = "Nachexzision mit 2cm Sicherheitsabstand"
