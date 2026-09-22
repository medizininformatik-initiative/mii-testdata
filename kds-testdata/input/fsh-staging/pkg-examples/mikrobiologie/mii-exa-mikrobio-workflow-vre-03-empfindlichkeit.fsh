Instance: mii-exa-mikrobio-workflow-vre-03-empfindlichkeit
InstanceOf: MII_PR_Mikrobio_Empfindlichkeit
Usage: #example
* identifier[analyseBefundCode].type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "wf-vre-3"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[=].coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category[=].coding[=].version = "2.82"
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* performer = Reference(mii-exa-mikrobio-labor)
* extension.extension[0].url = "observation"
* extension.extension[=].valueReference = Reference(mii-exa-mikrobio-workflow-vre-02-identifikation)
* extension.extension[+].url = "type"
* extension.extension[=].valueCode = #reflex
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* valueQuantity = 64 'mg/L' "mg/L"
* interpretation.extension.url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm"
* interpretation.extension.valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm#EUCAST "EUCAST"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#R "Resistant"
* status = #final
* code.coding = http://loinc.org#524-9 "Vancomycin [Susceptibility] by Minimum inhibitory concentration (MIC)"
* code.coding.version = "2.82"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-03T14:00:00+01:00"
* specimen = Reference(mii-exa-mikrobio-probe)