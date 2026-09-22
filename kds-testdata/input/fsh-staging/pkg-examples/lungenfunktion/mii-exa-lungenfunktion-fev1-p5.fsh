Instance: mii-exa-lungenfunktion-fev1-p5
InstanceOf: MII_PR_Lungenfunktion_FEV
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf[0] = Reference(mii-exa-lungenfunktion-provokationstest-messung)
* partOf[+] = Reference(mii-exa-lungenfunktion-dosis-gabe-3)
* status = #final
* code.coding = http://snomed.info/sct#59328004 "Forced expired volume in 1 second (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 1.91 'L'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component.code.coding = http://snomed.info/sct#310520004 "Expected forced expired volume in 1 second (observable entity)"
* component.code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component.valueQuantity = 2.71 'L'