Instance: mii-exa-lungenfunktion-r-p5
InstanceOf: MII_PR_Lungenfunktion_R
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf[0] = Reference(mii-exa-lungenfunktion-bodyplethysmographie-messung)
* partOf[+] = Reference(mii-exa-lungenfunktion-dosis-gabe-3)
* status = #final
* code = http://loinc.org#75946-4 "Airway resistance"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 0.49 'kPa/(L/s)'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component.code.coding = http://snomed.info/sct#TODO
* component.code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component.valueQuantity = 0.3 'kPa/(L/s)'