Instance: mii-exa-onko-krk-anastomoseninsuffizienz
InstanceOf: MII_PR_Onko_KRK_Anastomoseninsuffizienz
Usage: #example
Title: "MII EXA Onko KRK Anastomoseninsuffizienz"
Description: "Beispiel für die Bewertung einer Anastomoseninsuffizienz beim Kolorektalen Karzinom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-anastomoseninsuffizienz)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-anastomoseninsuffizienz"

* status = #final

* code.coding = http://snomed.info/sct#236091002 "Large intestine anastomotic leak (disorder)"

* subject = Reference(mii-exa-onko-krk-bundle-patient)
* encounter = Reference(mii-exa-onko-krk-bundle-encounter)
* focus = Reference(Procedure/mii-exa-onko-krk-operation)

* effectiveDateTime = "2024-03-25T08:00:00+01:00"

* valueCodeableConcept = MII_CS_Onko_KRK_Anastomoseninsuffizienz#B "Anastomoseninsuffizienz Grad B"
