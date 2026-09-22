Instance: mii-exa-lungenfunktion-erv
InstanceOf: MII_PR_Lungenfunktion_IRV_ERV
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-spirometrie-messung)
* status = #final
* code.coding = http://snomed.info/sct#55532004 "Expiratory reserve volume (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 0.23 'L'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 1.31 'L'
* component[0].code = http://loinc.org#19923-2 "Expiratory reserve Predicted"
* component[=].valueQuantity = 1.31 'L'
* component[+].code.coding = http://snomed.info/sct#TODO
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 18 '%'