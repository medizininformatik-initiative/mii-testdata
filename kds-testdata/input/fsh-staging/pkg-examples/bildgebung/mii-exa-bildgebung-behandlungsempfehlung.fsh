Instance: mii-exa-bildgebung-behandlungsempfehlung
InstanceOf: MII_PR_Bildgebung_Behandlungsempfehlung
Usage: #example
* status = #completed
* intent = #proposal
* description = "The patient must receive vacuum biopsy"
* subject = Reference(mii-exa-bildgebung-radiologischer-patient)
* supportingInfo = Reference(mii-exa-bildgebung-radiologischer-befund)