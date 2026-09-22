Instance: mii-exa-bildgebung-anforderung-bildgebung
InstanceOf: MII_PR_Bildgebung_Anforderung_Bildgebung
Usage: #example
* status = #completed
* intent = #order
* category.coding = http://snomed.info/sct#363679005 "Imaging (procedure)"
* category.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-bildgebung-radiologischer-patient)
* code.coding = http://snomed.info/sct#71651007 "Mammography (procedure)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* encounter = Reference(mii-exa-bildgebung-radiologischer-fall)
* authoredOn = "2024-07-19T12:03:30+02:00"
* requester = Reference(mii-exa-bildgebung-radiologischer-practitioner)
* reasonCode.coding = http://snomed.info/sct#53430007 "Pain of breast (finding)"
* reasonCode.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* reasonReference = Reference(Condition/CondExample)
* supportingInfo = Reference(DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund)