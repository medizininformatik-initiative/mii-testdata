Instance: mii-exa-bildgebung-radiologischer-befund
InstanceOf: MII_PR_Bildgebung_Radiologischer_Befund
Usage: #example
* category.coding = http://snomed.info/sct#4201000179104 "Imaging report (record artifact)"
* category.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* basedOn = Reference(mii-exa-bildgebung-anforderung-bildgebung)
* status = #final
* code.coding = http://snomed.info/sct#4231000179109 "Mammography report"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-bildgebung-radiologischer-patient)
* encounter = Reference(mii-exa-bildgebung-radiologischer-fall)
* effectiveDateTime = "2024-07-19T12:03:30+02:00"
* issued = "2024-07-19T12:03:30+02:00"
* result = Reference(mii-exa-bildgebung-radiologische-beobachtung)
* imagingStudy = Reference(mii-exa-bildgebung-bildgebungsstudie-ct)
* conclusion = "There are suspicious microcalcifications in the upper outer quadrant in the left breast"
* conclusionCode.coding = http://snomed.info/sct#44771000 "Microcalcifications of the breast (disorder)"
* conclusionCode.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"