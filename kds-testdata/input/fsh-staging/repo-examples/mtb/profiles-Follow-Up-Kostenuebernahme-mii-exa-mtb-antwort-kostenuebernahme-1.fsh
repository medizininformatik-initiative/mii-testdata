Instance: MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1
InstanceOf: MII_PR_MTB_Antwort_Kostenuebernahme
Usage: #example
Title: "Beispiel fuer eine Antwort auf den Antrag auf Kostenuebernahme"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme)
* type = #institutional
* use = #claim
* patient = Reference(Patient/mii-exa-mtb-patient)
* created = "2024-07-07"
* insurer = Reference(Organization/MyInsurer)
* request = Reference(MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1)

* extension[Entscheidung].valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-entscheidung#rejected
* extension[Ablehnungsgrund].valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund#other-therapy-recommended
