Instance: mii-exa-kardio-atherosklerotisches-erstereignis
InstanceOf: MII_PR_Kardio_Atherosklerotisches_Erstereignis
Usage: #example
* contained = Beispielpatient
* performer.display = "Beispielkardiologe"
* component[0].code.coding = http://snomed.info/sct#439401001 "Diagnosis"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis#ae "Atherosklerotisches Ereignis"
* component[=].valueCodeableConcept.coding.version = "2027.0.0-ballot"
* component[+].code.coding = http://snomed.info/sct#432213005 "Date of diagnosis"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueDateTime = "2023-01"
* code.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis#ae "Atherosklerotisches Ereignis"
* code.coding.version = "2027.0.0-ballot"
* language = #de
* status = #final
* subject = Reference(Beispielpatient)
* effectiveDateTime = "2025-05-23T13:48:17+02:00"