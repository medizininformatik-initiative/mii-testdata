Instance: mii-exa-mikrobio-allgemeine-bestimmung
InstanceOf: MII_PR_Mikrobio_Allgemeine_Bestimmung
Usage: #example
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier.system = "https://example.org/fhir/sid/test-lab-results"
* identifier.value = "allg-best-1"
* identifier.assigner = Reference(mii-exa-mikrobio-labor)
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[=].coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category[=].coding[=].version = "2.82"
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* performer = Reference(mii-exa-mikrobio-labor)
* extension.extension[0].url = "observation"
* extension.extension[=].valueReference = Reference(mii-exa-mikrobio-allgemeine-kultur)
* extension.extension[+].url = "type"
* extension.extension[=].valueCode = #reflex
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* status = #final
* code.coding = http://loinc.org#41852-5 "Microorganism or agent identified in Specimen"
* code.coding.version = "2.82"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept.coding = http://snomed.info/sct#52499004 "Pseudomonas aeruginosa"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* method.coding = http://snomed.info/sct#278289002 "Microscopy technique"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* specimen = Reference(mii-exa-mikrobio-probe)