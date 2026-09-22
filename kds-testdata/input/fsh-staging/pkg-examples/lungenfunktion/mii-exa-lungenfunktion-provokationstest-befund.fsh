Instance: mii-exa-lungenfunktion-provokationstest-befund
InstanceOf: MII_PR_Lungenfunktion_Provokationstest
Usage: #example
* category.coding = http://snomed.info/sct#720449003 "Pulmonary function report (record artifact)"
* category.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* status = #final
* code.coding = http://snomed.info/sct#252520007 "Methacholine challenge (procedure)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* encounter = Reference(mii-exa-lungenfunktion-kontakt)
* effectiveDateTime = "2024-07-19T12:03:30+02:00"
* issued = "2024-07-19T13:03:20+02:00"
* result[0] = Reference(mii-exa-lungenfunktion-fev1-b)
* result[+] = Reference(mii-exa-lungenfunktion-fev1-p3)
* result[+] = Reference(mii-exa-lungenfunktion-fev1-p4)
* result[+] = Reference(mii-exa-lungenfunktion-fev1-p5)
* result[+] = Reference(mii-exa-lungenfunktion-pef-b)
* result[+] = Reference(mii-exa-lungenfunktion-pef-p3)
* result[+] = Reference(mii-exa-lungenfunktion-pef-p4)
* result[+] = Reference(mii-exa-lungenfunktion-pef-p5)
* result[+] = Reference(mii-exa-lungenfunktion-frc-b)
* result[+] = Reference(mii-exa-lungenfunktion-frc-p3)
* result[+] = Reference(mii-exa-lungenfunktion-frc-p4)
* result[+] = Reference(mii-exa-lungenfunktion-frc-p5)
* result[+] = Reference(mii-exa-lungenfunktion-r-b)
* result[+] = Reference(mii-exa-lungenfunktion-r-p3)
* result[+] = Reference(mii-exa-lungenfunktion-r-p4)
* result[+] = Reference(mii-exa-lungenfunktion-r-p5)
* result[+] = Reference(mii-exa-lungenfunktion-sr-total-b)
* result[+] = Reference(mii-exa-lungenfunktion-sr-total-p3)
* result[+] = Reference(mii-exa-lungenfunktion-sr-total-p4)
* result[+] = Reference(mii-exa-lungenfunktion-sr-total-p5)
* result[+] = Reference(mii-exa-lungenfunktion-dosis-kumuliert)
* result[+] = Reference(mii-exa-lungenfunktion-dosis-schwellwert)
* conclusion = "Increased lung compliance"
* conclusionCode.coding = http://snomed.info/sct#21368004 "Increased lung compliance (finding)"
* conclusionCode.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"