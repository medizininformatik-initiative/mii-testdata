Instance: mii-exa-mikrobio-probe-katheterspitze
InstanceOf: MII_PR_Mikrobio_Probe
Usage: #example
* identifier.system = "https://example.org/fhir/sid/test-specimen"
* identifier.value = "probe-katheterspitze-1"
* collection.collectedDateTime = "2026-04-02T08:00:00+01:00"
* type.coding = http://snomed.info/sct#119312009 "Catheter tip submitted as specimen"
* type.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* status = #available
* subject = Reference(mii-exa-mikrobio-patient)
* receivedTime = "2026-04-02T08:30:00+01:00"