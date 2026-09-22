Instance: mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld
InstanceOf: MII_PR_Mikrobio_Spezifische_Mikroskopie
Usage: #example
* identifier[analyseBefundCode].type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spez-mikroskopie-leuko-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[=].coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category[=].coding[=].version = "2.82"
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* extension.url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-faerbung"
* extension.valueCodeableConcept.coding = http://snomed.info/sct#62777006 "Gram stain method"
* extension.valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* performer = Reference(mii-exa-mikrobio-labor)
* component.valueRange.low = 10 '/[HPF]' "je Gesichtsfeld"
* component.valueRange.high = 25 '/[HPF]' "je Gesichtsfeld"
* component.code.coding = http://snomed.info/sct#103392008 "Semi-quantitative value"
* component.code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* status = #final
* code.coding = http://loinc.org#72163-9 "Leukocytes [Presence] in Specimen by Gram stain"
* code.coding.version = "2.82"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept.coding = http://snomed.info/sct#260373001 "Detected (qualifier value)"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* specimen = Reference(mii-exa-mikrobio-probe)