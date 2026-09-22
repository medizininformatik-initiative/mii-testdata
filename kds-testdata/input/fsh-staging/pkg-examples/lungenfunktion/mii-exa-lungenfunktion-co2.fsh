Instance: mii-exa-lungenfunktion-co2
InstanceOf: MII_PR_Lungenfunktion_CO2_Konzentration
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* status = #final
* code.coding = http://snomed.info/sct#250780004 "Carbon dioxide concentration (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* focus = Reference(mii-exa-lungenfunktion-location)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 0.1 '%'