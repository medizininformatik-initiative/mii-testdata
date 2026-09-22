Instance: mii-exa-lungenfunktion-frc-b
InstanceOf: MII_PR_Lungenfunktion_FRC
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-provokationstest-messung)
* status = #final
* code = http://loinc.org#19843-2 "Functional residual capacity"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 3.58 'L'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component.code = http://loinc.org#19847-3 "Functional residual capacity Predicted"
* component.valueQuantity = 3.72 'L'