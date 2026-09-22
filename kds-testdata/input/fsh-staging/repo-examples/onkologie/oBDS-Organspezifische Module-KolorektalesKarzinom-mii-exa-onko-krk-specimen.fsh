Instance: mii-exa-onko-krk-specimen
InstanceOf: MII_PR_Onko_KRK_Specimen
Usage: #example
Title: "MII EXA Onko KRK Specimen"
Description: "Beispiel für ein Histologie-Specimen beim Kolorektalen Karzinom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen"

* status = #available

* type.coding = http://snomed.info/sct#122652004 "Specimen from colon obtained by rectal/rectosigmoid (low anterior) resection (specimen)"

* subject = Reference(mii-exa-onko-krk-bundle-patient)

* collection.collectedDateTime = "2024-03-22T08:30:00+01:00"

* accessionIdentifier.value = "KRK-2024-001234"

* condition = MII_CS_Onko_KRK_TME_Qualitaet#1 "Grad 1 (gut)"

* note.text = "Sigmaresekat mit Primärtumor und regionären Lymphknoten"
