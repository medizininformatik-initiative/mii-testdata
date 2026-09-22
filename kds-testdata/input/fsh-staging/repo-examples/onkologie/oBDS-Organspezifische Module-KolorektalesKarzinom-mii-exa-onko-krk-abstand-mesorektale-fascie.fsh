Instance: mii-exa-onko-krk-abstand-mesorektale-fascie
InstanceOf: MII_PR_Onko_KRK_MRT_Mesorektale_Faszie
Usage: #example
Title: "MII EXA Onko KRK Abstand Mesorektale Fascie"
Description: "Beispiel für den Abstand des Tumors zur mesorektalen Faszie bei MRT-Untersuchung"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-mrt-mesorektale-faszie)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-mrt-mesorektale-faszie"

* status = #final

* code.coding = https://radelement.org#RDE96 "Distance to MRF"

* subject = Reference(mii-exa-onko-krk-bundle-patient)
* encounter = Reference(mii-exa-onko-krk-bundle-encounter)
* focus = Reference(mii-exa-onko-krk-diagnose)

* effectiveDateTime = "2024-03-12T16:00:00+01:00"

* valueQuantity.value = 3.2
* valueQuantity.unit = "mm"
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.code = #mm
