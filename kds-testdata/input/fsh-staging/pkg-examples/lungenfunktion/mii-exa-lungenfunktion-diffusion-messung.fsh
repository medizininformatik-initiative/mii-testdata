Instance: mii-exa-lungenfunktion-diffusion-messung
InstanceOf: MII_PR_Lungenfunktion_Diffusion_Messung
Usage: #example
* status = #completed
* category.coding = http://snomed.info/sct#23426006 "Measurement of respiratory function (procedure)"
* category.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.coding = http://snomed.info/sct#36421003 "Carbon monoxide diffusing capacity measurement (procedure)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* encounter = Reference(mii-exa-lungenfunktion-kontakt)
* performedDateTime = "2024-07-19T12:03:30+02:00"
* outcome.coding = http://snomed.info/sct#385669000 "Successful (qualifier value)"
* outcome.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* report = Reference(mii-exa-lungenfunktion-diffusion-befund)