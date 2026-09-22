Instance: mii-exa-kardio-score-nyha-ii
InstanceOf: MII_PR_Kardio_Score_NYHA
Usage: #example
* contained[0] = Beispielpatient
* contained[+] = Beispielfall
* identifier.system = "http://demo.org/observation-ids"
* identifier.value = "NYHA-OBS-123456"
* code.coding[0] = http://snomed.info/sct#762994006 "New York Heart Association Classification class"
* code.coding[=].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.coding[+] = http://loinc.org#93124-6 "New York Heart Association Functional Classification panel"
* code.coding[=].version = "2.83"
* performer = Reference(mii-exa-kardio-rolle-kardiologe)
* note.text = "Patient berichtet über leichte Einschränkungen bei moderater körperlicher Aktivität. Keine Beschwerden in Ruhe."
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* language = #de
* status = #final
* subject = Reference(Beispielpatient)
* encounter = Reference(Beispielfall)
* effectiveDateTime = "2024-11-12T14:23:00+01:00"
* issued = "2024-11-12T15:00:00+01:00"
* valueCodeableConcept.coding = http://snomed.info/sct#421704003 "New York Heart Association Classification - Class II"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"