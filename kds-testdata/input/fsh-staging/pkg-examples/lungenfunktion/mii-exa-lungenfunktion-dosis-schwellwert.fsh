Instance: mii-exa-lungenfunktion-dosis-schwellwert
InstanceOf: MII_PR_Lungenfunktion_Dosis
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf[0] = Reference(mii-exa-lungenfunktion-provokationstest-messung)
* partOf[+] = Reference(mii-exa-lungenfunktion-dosis-gabe-3)
* status = #final
* code.coding = http://snomed.info/sct#1376040001 "Dose of methacholine to achieve maximal drop of forced expired volume in 1 second (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 0.12 'mg'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N