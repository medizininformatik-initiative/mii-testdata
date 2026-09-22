Instance: mii-exa-lungenfunktion-pef-p3
InstanceOf: MII_PR_Lungenfunktion_PEF
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf[0] = Reference(mii-exa-lungenfunktion-spirometrie-messung)
* partOf[+] = Reference(mii-exa-lungenfunktion-dosis-gabe-1)
* status = #final
* code.coding = http://snomed.info/sct#18491006 "Peak expiratory flow rate (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 8.07 'L/s'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component.code.coding = http://snomed.info/sct#313192007 "Expected peak expiratory flow rate (observable entity)"
* component.code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component.valueQuantity = 7.45 'L/s'