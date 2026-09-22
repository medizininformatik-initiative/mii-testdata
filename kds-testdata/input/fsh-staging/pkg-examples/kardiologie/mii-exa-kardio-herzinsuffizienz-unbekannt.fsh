Instance: mii-exa-kardio-herzinsuffizienz-unbekannt
InstanceOf: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Usage: #example
* contained = Beispielpatient
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* category.coding.version = "2.0.0"
* code.coding = http://snomed.info/sct#84114007 "Heart failure"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* performer.display = "Beispielkardiologe"
* device.display = "Beispieltablet"
* derivedFrom.display = "Beispielfragebogen"
* language = #de
* status = #final
* subject = Reference(Beispielpatient)
* effectiveDateTime = "2025-06-06T14:29:34.214+02:00"
* valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/v2-0532#ASKU "gefragt, aber nicht genannt"
* valueCodeableConcept.coding.version = "3.0.0"
* method.coding = http://snomed.info/sct#129431000 "History taking - action"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"