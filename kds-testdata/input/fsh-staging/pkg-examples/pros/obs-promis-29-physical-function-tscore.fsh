Instance: obs-promis-29-physical-function-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-physical-function-tscore
Usage: #inline
* valueQuantity = 42.6 '{score}' "{score}"
* method.text = "PROMIS-29 Profile v2.1"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension.valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-physical-function-tscore"
* derivedFrom = Reference(promis-29-response-1)
* code = http://loinc.org#91721-1 "PROMIS physical function - version 2.0 T-score"
* status = #final
* subject = Reference(patient-example-1)
* effectiveDateTime = "2025-01-30T14:30:00Z"