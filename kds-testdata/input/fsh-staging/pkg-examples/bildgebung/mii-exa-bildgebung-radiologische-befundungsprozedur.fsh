Instance: mii-exa-bildgebung-radiologische-befundungsprozedur
InstanceOf: MII_PR_Bildgebung_Radiologische_Befundungsprozedur
Usage: #example
* status = #completed
* category.coding = http://snomed.info/sct#363679005 "Imaging (procedure)"
* category.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.coding = http://snomed.info/sct#28191001 "Consultation and report by radiologist (procedure)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-bildgebung-radiologischer-patient)
* performedDateTime = "2024-07-19T12:03:30+02:00"
* report = Reference(DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund)