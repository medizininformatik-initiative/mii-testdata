Instance: mii-exa-mikrobio-resistenzkategorie-vre-positiv
InstanceOf: MII_PR_Mikrobio_Resistenzkategorie_Status
Usage: #example
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier.system = "https://example.org/fhir/sid/test-lab-results"
* identifier.value = "reskat-vre-pos"
* identifier.assigner = Reference(mii-exa-mikrobio-labor)
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[=].coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category[=].coding[=].version = "2.82"
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* performer = Reference(mii-exa-mikrobio-labor)
* derivedFrom[0] = Reference(mii-exa-mikrobio-workflow-vre-02-identifikation)
* derivedFrom[+] = Reference(mii-exa-mikrobio-workflow-vre-03-empfindlichkeit)
* status = #final
* code = https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie#vre-status "VRE-Status"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-03T15:00:00+01:00"
* valueCodeableConcept.coding = http://snomed.info/sct#10828004 "Positive"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* specimen = Reference(mii-exa-mikrobio-probe)