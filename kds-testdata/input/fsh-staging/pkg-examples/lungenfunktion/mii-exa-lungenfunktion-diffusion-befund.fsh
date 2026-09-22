Instance: mii-exa-lungenfunktion-diffusion-befund
InstanceOf: MII_PR_Lungenfunktion_Diffusion
Usage: #example
* category.coding = http://snomed.info/sct#720449003 "Pulmonary function report (record artifact)"
* category.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* status = #final
* code.coding = http://snomed.info/sct#36421003 "Carbon monoxide diffusing capacity measurement (procedure)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* encounter = Reference(mii-exa-lungenfunktion-kontakt)
* effectiveDateTime = "2024-07-19T12:03:30+02:00"
* issued = "2024-07-19T13:03:20+02:00"
* result[0] = Reference(mii-exa-lungenfunktion-dlco)
* result[+] = Reference(mii-exa-lungenfunktion-dlcoc)
* result[+] = Reference(mii-exa-lungenfunktion-kco)
* result[+] = Reference(mii-exa-lungenfunktion-kcoc)
* result[+] = Reference(mii-exa-lungenfunktion-va)
* result[+] = Reference(mii-exa-lungenfunktion-hb)
* conclusion = "Increased lung compliance"
* conclusionCode.coding = http://snomed.info/sct#21368004 "Increased lung compliance (finding)"
* conclusionCode.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"