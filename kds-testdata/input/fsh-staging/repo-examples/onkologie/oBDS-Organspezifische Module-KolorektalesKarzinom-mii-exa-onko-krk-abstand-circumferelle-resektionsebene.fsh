Instance: mii-exa-onko-krk-abstand-circumferelle-resektionsebene
InstanceOf: MII_PR_Onko_KRK_Abstand_Circumferelle_Resektionsebene
Usage: #example
Title: "MII EXA Onko KRK Abstand Circumferelle Resektionsebene"
Description: "Beispiel für den minimalen Abstand des Tumorrandes zur circumferellen Dissektionslinie"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene"

* status = #final

* code.coding = http://loinc.org#81176-0 "Distance of tumor from circumferential resection margin [Length] in Specimen by Macroscopy"

* subject = Reference(mii-exa-onko-krk-bundle-patient)
* encounter = Reference(mii-exa-onko-krk-bundle-encounter)
* focus = Reference(mii-exa-onko-krk-diagnose)

* effectiveDateTime = "2024-03-20T10:15:00+01:00"

* valueQuantity.value = 2.5
* valueQuantity.unit = "mm"
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.code = #mm
