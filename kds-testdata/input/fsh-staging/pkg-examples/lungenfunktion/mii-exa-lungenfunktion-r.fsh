Instance: mii-exa-lungenfunktion-r
InstanceOf: MII_PR_Lungenfunktion_R
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-bodyplethysmographie-messung)
* status = #final
* code = http://loinc.org#75946-4 "Airway resistance"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 0.45 'kPa/(L/s)'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[0].code.coding = http://snomed.info/sct#TODO
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 0.3 'kPa/(L/s)'
* component[+].code = http://loinc.org#91981-1 "Airway resistance measured/predicted by Plethysmograph body box"
* component[=].valueQuantity = 150 '%'