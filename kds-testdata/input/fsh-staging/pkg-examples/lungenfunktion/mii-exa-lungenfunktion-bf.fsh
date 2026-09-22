Instance: mii-exa-lungenfunktion-bf
InstanceOf: MII_PR_Lungenfunktion_BF
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[0] = http://loinc.org#9279-1
* code.coding[+] = http://snomed.info/sct#271625008 "Rate of spontaneous respiration (observable entity)"
* code.coding[=].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* valueQuantity = 12 '/min'
* partOf = Reference(mii-exa-lungenfunktion-spirometrie-messung)
* status = #final
* subject = Reference(mii-exa-lungenfunktion-patient)
* effectiveDateTime = "2024-07-18T13:03:20+02:00"
* issued = "2024-07-19T13:03:20+02:00"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"