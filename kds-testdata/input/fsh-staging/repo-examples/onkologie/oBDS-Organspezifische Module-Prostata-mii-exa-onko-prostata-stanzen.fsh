Instance: mii-exa-onko-prostata-anzahl-stanzen-1
InstanceOf: MII_PR_Onko_Prostata_Anzahl_Stanzen
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-stanzen)
* status = #final
* code.coding = http://loinc.org#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus = Reference(mii-exa-onko-prostata-diagnose)

* effectiveDateTime = "2024-01-02"
* valueInteger = 12

Instance: mii-exa-onko-prostata-anzahl-positiver-stanzen-1
InstanceOf: MII_PR_Onko_Prostata_Anzahl_Positive_Stanzen
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen)
* status = #final
* code.coding = http://loinc.org#44651-8 "Tissue cores.positive.carcinoma in Tissue core" 
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus = Reference(mii-exa-onko-prostata-diagnose)

* effectiveDateTime = "2024-01-02"
* valueInteger = 8

Instance: mii-exa-onko-prostata-ca-befall-stanze-1
InstanceOf: MII_PR_Onko_Prostata_CA_Befall_Stanze
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-ca-befall-stanze)
* status = #final
* code.coding = http://loinc.org#44654-2 "Tissue involved by tumor in Prostate tumor"
* effectiveDateTime = "2024-01-02"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus = Reference(mii-exa-onko-prostata-diagnose)
* specimen = Reference(mii-exa-onko-prostata-specimen-stanze)

* valueQuantity.value = 80 
* valueQuantity.unit = "%"
