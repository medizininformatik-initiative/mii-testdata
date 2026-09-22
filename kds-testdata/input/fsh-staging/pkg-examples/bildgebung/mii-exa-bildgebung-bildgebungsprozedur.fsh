Instance: mii-exa-bildgebung-bildgebungsprozedur
InstanceOf: MII_PR_Bildgebung_Bildgebungsprozedur
Usage: #example
* basedOn = Reference(mii-exa-bildgebung-anforderung-bildgebung)
* status = #completed
* category.coding = http://snomed.info/sct#363679005 "Imaging (procedure)"
* category.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.coding = http://snomed.info/sct#384151000119104 "Screening mammography of bilateral breasts (procedure)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-bildgebung-radiologischer-patient)
* performedDateTime = "2024-07-19T12:03:30+02:00"