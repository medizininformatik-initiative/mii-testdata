Instance: mii-exa-onko-prostata-psa-diagnose-1
InstanceOf: MII_PR_Onko_Prostata_PSA
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-psa)
* status = #final
* code.coding = http://loinc.org#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus = Reference(mii-exa-onko-prostata-diagnose)

* effectiveDateTime = "2024-01-02"
* valueQuantity.value = 12
* valueQuantity.unit = "ng/ml"

Instance: mii-exa-onko-prostata-psa-verlauf-1
InstanceOf: MII_PR_Onko_Prostata_PSA
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-psa)
* status = #final
* code.coding = http://loinc.org#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus = Reference(mii-exa-onko-prostata-diagnose)

* effectiveDateTime = "2024-06-24"
* valueQuantity.value = 3.4
* valueQuantity.unit = "ng/ml"
