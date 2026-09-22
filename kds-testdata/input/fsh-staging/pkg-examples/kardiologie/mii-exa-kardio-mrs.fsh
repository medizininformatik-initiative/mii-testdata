Instance: mii-exa-kardio-mrs
InstanceOf: MII_PR_Kardio_Score_Modifizierte_Rankin_Skala
Usage: #example
* contained[0] = Beispielpatient
* contained[+] = Beispielfall
* identifier.system = "http://demo.org/observation-ids"
* identifier.value = "MRS-OBS-123457"
* code.coding[0] = http://snomed.info/sct#1255866005 "Modified Rankin Scale score"
* code.coding[=].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.coding[+] = http://loinc.org#75859-9 "Modified rankin scale"
* code.coding[=].version = "2.83"
* performer.display = "Beispielkardiologe"
* note.text = "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)"
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* language = #de
* status = #final
* subject = Reference(Beispielpatient)
* encounter = Reference(Beispielfall)
* effectiveDateTime = "2024-11-12T14:23:00+01:00"
* issued = "2024-11-12T15:00:00+01:00"
* valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-modifizierte-rankin-skala#mRSbigger3 "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)"
* valueCodeableConcept.coding.version = "2027.0.0-ballot"