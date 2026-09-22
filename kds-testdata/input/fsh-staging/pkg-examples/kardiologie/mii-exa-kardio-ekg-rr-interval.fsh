Instance: mii-exa-kardio-ekg-rr-interval
InstanceOf: Observation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-annotation"
* contained = Beispielpatient
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.coding.version = "2.0.0"
* effectivePeriod.start = "2023-05-03T07:38:07Z"
* effectivePeriod.end = "2023-05-03T07:38:17Z"
* performer.display = "Kardiologe"
* derivedFrom = Reference(mii-exa-kardio-ekg-referenz)
* language = #de
* status = #final
* code.coding = urn:iso:std:iso:11073:10101#147240 "MDC_ECG_TIME_PD_RR_GL"
* code.coding.version = "2024-12-05"
* subject = Reference(Beispielpatient)
* valueQuantity = 1000 'ms' "millisecond"
* device = Reference(mii-exa-kardio-ekg-geraet-mortara)