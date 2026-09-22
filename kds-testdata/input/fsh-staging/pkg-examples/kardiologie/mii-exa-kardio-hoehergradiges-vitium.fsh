Instance: mii-exa-kardio-hoehergradiges-vitium
InstanceOf: MII_PR_Kardio_Klappenvitium
Usage: #example
* contained = Beispielpatient
* severity.coding = http://snomed.info/sct#423343006 "Grade 3 on a scale of 1 to 3"
* severity.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.coding = http://snomed.info/sct#368009:{116676008=49755003,363698007=17401000},{246112005=24484000} "368009|Heart valve disorder|:{116676008|Associated morphology|=49755003|Morphologically abnormal structure|,363698007|Finding site|=17401000|Cardiac valve structure|},{246112005|Severity|=24484000|Severe|}"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.text = "Vitium primärer Genese"
* bodySite.coding = http://snomed.info/sct#17401000 "Cardiac valve structure"
* bodySite.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* recorder.display = "Facharzt für Kardiologie"
* asserter.display = "Facharzt für Kardiologie"
* language = #de
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* subject = Reference(Beispielpatient)
* recordedDate = "2025-05-13"