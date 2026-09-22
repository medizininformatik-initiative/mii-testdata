Instance: mii-exa-kardio-raucherstatus
InstanceOf: MII_PR_Kardio_Observation_Rauchen
Usage: #example
* contained[0] = Beispielpatient
* contained[+] = Beispielfall
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#social-history "Social History"
* category.coding.version = "2.0.0"
* code.coding = http://loinc.org#72166-2 "Raucherstatus"
* code.coding.version = "2.83"
* performer.display = "Beispielkardiologe"
* component[0].code.coding = http://snomed.info/sct#401201003 "Cigarette pack-years"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 35.5 '{pack-years}' "{pack-years}"
* component[+].code.coding = http://loinc.org#63640-7
* component[=].code.coding.version = "2.83"
* component[=].valueQuantity = 1 '{cigarettes-per-day}' "{cigarettes-per-day}"
* component[+].code.coding = http://snomed.info/sct#266929003
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueDateTime = "2025-01-31"
* component[+].code.coding = http://snomed.info/sct#266929003
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 19 'a' "year"
* component[+].valueQuantity = 35.5 'a' "year"
* component[=].valueQuantity.comparator = #<=
* component[=].code.coding = http://snomed.info/sct#228487000
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* language = #de
* status = #final
* subject = Reference(Beispielpatient)
* encounter = Reference(Beispielfall)
* effectiveDateTime = "2023-12-01"
* valueCodeableConcept.coding = http://loinc.org#LA18976-3 "Current every day smoker"
* valueCodeableConcept.coding.version = "2.83"