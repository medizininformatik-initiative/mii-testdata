Instance: obs-promis-29-sleep-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-sleep-disturbance-tscore
Usage: #inline
* valueQuantity = 53.6 '{score}' "{score}"
* method.text = "PROMIS-29 Profile v2.1"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension.valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-sleep-disturbance-tscore"
* derivedFrom = Reference(promis-29-response-1)
* code = http://loinc.org#77860-5 "PROMIS sleep disturbance - version 1.0 Tscore"
* status = #final
* subject = Reference(patient-example-1)
* effectiveDateTime = "2025-01-30T14:30:00Z"