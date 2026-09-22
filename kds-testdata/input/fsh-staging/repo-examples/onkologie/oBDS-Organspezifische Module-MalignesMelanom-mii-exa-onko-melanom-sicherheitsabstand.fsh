Instance: mii-exa-onko-melanom-sicherheitsabstand
InstanceOf: MII_PR_Onko_Melanom_Sicherheitsabstand
Usage: #example
Title: "MII EXA Onko Melanom Sicherheitsabstand"
Description: "Beispiel für die Messung des Sicherheitsabstands beim Malignen Melanom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-sicherheitsabstand)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-sicherheitsabstand"

* status = #final

* code.coding = http://snomed.info/sct#396511007 "Distance of in situ melanoma from closest lateral surgical margin in excised specimen of skin (observable entity)"

* subject = Reference(mii-exa-onko-melanom-bundle-patient)
* encounter = Reference(mii-exa-onko-melanom-bundle-encounter)
* focus = Reference(mii-exa-onko-melanom-diagnose)

* effectiveDateTime = "2024-03-25T10:00:00+01:00"

* valueQuantity.value = 5
* valueQuantity.unit = "mm"
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.code = #mm
