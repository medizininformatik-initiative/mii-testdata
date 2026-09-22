Instance: mii-exa-bildgebung-radiologische-diagnose
InstanceOf: Condition
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* code.text = "Liver lesion"
* subject = Reference(mii-exa-bildgebung-radiologischer-patient)
* encounter = Reference(mii-exa-bildgebung-radiologischer-fall)