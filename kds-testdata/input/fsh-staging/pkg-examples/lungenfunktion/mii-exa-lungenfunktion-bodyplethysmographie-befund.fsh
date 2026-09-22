Instance: mii-exa-lungenfunktion-bodyplethysmographie-befund
InstanceOf: MII_PR_Lungenfunktion_Bodyplethysmographie
Usage: #example
* category.coding = http://snomed.info/sct#720449003 "Pulmonary function report (record artifact)"
* category.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* status = #final
* code.coding = http://snomed.info/sct#28275007 "Total body plethysmography (procedure)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* encounter = Reference(mii-exa-lungenfunktion-kontakt)
* effectiveDateTime = "2024-07-19T12:03:30+02:00"
* issued = "2024-07-19T13:03:20+02:00"
* result[0] = Reference(mii-exa-lungenfunktion-fev1)
* result[+] = Reference(mii-exa-lungenfunktion-fvc)
* result[+] = Reference(mii-exa-lungenfunktion-fev1-fvc)
* result[+] = Reference(mii-exa-lungenfunktion-mef25)
* result[+] = Reference(mii-exa-lungenfunktion-mef50)
* result[+] = Reference(mii-exa-lungenfunktion-mef75)
* result[+] = Reference(mii-exa-lungenfunktion-frc)
* result[+] = Reference(Observation/mii-exa-lungenfunktion-rvl)
* result[+] = Reference(mii-exa-lungenfunktion-tlc)
* result[+] = Reference(Observation/mii-exa-lungenfunktion-rvl-tlc)
* result[+] = Reference(mii-exa-lungenfunktion-r)
* result[+] = Reference(mii-exa-lungenfunktion-sg-total)
* result[+] = Reference(mii-exa-lungenfunktion-sr-eff)
* result[+] = Reference(mii-exa-lungenfunktion-sr-total)
* conclusion = "Increased lung compliance"
* conclusionCode.coding = http://snomed.info/sct#21368004 "Increased lung compliance (finding)"
* conclusionCode.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"