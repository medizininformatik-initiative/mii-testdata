Instance: mii-exa-kardio-hoehergradiges-vitium-nein
InstanceOf: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Usage: #example
* contained = Beispielpatient
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* category.coding.version = "2.0.0"
* code.coding = http://snomed.info/sct#368009:{116676008=49755003,363698007=17401000},{246112005=24484000} "368009|Heart valve disorder|:{116676008|Associated morphology|=49755003|Morphologically abnormal structure|,363698007|Finding site|=17401000|Cardiac valve structure|},{246112005|Severity|=24484000|Severe|}"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.text = "Höhergradiges Vitium primärer Genese"
* performer.display = "Facharzt für Kardiologie"
* device.display = "Beispieltablet"
* derivedFrom.display = "Beispielfragebogen"
* language = #de
* status = #final
* bodySite.coding = http://snomed.info/sct#17401000 "Cardiac valve structure"
* bodySite.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(Beispielpatient)
* effectiveDateTime = "2025-06-06T14:29:34.214+02:00"
* valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/v2-0532#N "Nein"
* valueCodeableConcept.coding.version = "3.0.0"
* method.coding = http://snomed.info/sct#129431000 "History taking - action"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"