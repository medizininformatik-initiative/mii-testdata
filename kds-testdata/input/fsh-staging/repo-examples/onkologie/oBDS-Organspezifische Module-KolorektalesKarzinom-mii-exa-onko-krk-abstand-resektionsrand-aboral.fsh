Instance: mii-exa-onko-krk-abstand-resektionsrand-aboral
InstanceOf: MII_PR_Onko_KRK_Abstand_Aboral
Usage: #example
Title: "MII EXA Onko KRK Abstand Resektionsrand Aboral"
Description: "Beispiel für den minimalen Abstand des Tumorrandes zur aboralen Dissektionslinie"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-aboral)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-aboral"

* status = #final

* code.coding = http://loinc.org#81175-2 "Distance of tumor from closest margin [Length] in Specimen by Macroscopy"

* subject = Reference(mii-exa-onko-krk-bundle-patient)
* encounter = Reference(mii-exa-onko-krk-bundle-encounter)
* focus = Reference(mii-exa-onko-krk-diagnose)

* effectiveDateTime = "2024-03-20T10:15:00+01:00"

* valueQuantity.value = 15.0
* valueQuantity.unit = "mm"
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.code = #mm
