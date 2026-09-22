Instance: mii-exa-mikrobio-mrgn-klasse-negativ
InstanceOf: MII_PR_Mikrobio_MRGN_Klasse
Usage: #example
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier.system = "https://example.org/fhir/sid/test-lab-results"
* identifier.value = "mrgn-neg-1"
* identifier.assigner = Reference(mii-exa-mikrobio-labor)
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[=].coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category[=].coding[=].version = "2.82"
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* performer = Reference(mii-exa-mikrobio-labor)
* derivedFrom = Reference(mii-exa-mikrobio-empfindlichkeit)
* code.coding = http://loinc.org#99780-9 "Multidrug resistant gram-negative organism classification [Type]"
* code.coding.version = "2.82"
* status = #final
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-mrgn-ergebnis#keine-mrgn-klasse "Keine MRGN-Klasse"
* specimen = Reference(mii-exa-mikrobio-probe)